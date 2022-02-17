import '../core/base_object.dart';
import '../core/network/base_response.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../core/utils/log.dart';
import '../core/utils/extensions.dart';

class GraphQLService {
  final GraphQLClient _client;

  GraphQLService(this._client);

  Future<ApiResponse<T>> query<T, K>(String document,
      {BaseObject? baseObject, Map<String, dynamic>? filter}) async {
    Log.debug(document, title: "Query document");
    Log.debug(filter, title: "Query filter");

    final QueryOptions options = QueryOptions(
      document: gql(document),
      variables: filter != null
          ? {
              "filter": filter,
            }
          : {},
    );

    final QueryResult response = await _client.query(options);

    Log.debug(response, title: "Query response");

    return response.hasException
        ? _handleExceptionResponse<T, K>(response)
        : _handleResponse<T, K>(response, baseObject);
  }

  Future<ApiResponse<T>> mutation<T, K>(String document,
      {BaseObject? baseObject, Map<String, dynamic>? input}) async {
    final MutationOptions options = MutationOptions(
      document: gql(document),
      variables: input != null
          ? {
              "input": input,
            }
          : {},
    );

    Log.debug(document, title: "Mutate document");
    Log.debug(input, title: "Mutate input");

    var response = await _client.mutate(options);

    Log.debug(response, title: "Mutate response");

    return response.hasException
        ? _handleExceptionResponse<T, K>(response)
        : _handleResponse<T, K>(response, baseObject);
  }

  ApiResponse<T> _handleResponse<T, K>(
      QueryResult response, BaseObject? baseObject) {
    final _result = ApiResponse<T>();
    if (response.data != null) {
      try {
        _result.success = true;
        _result.parseJson<K>(response.data, baseObject);
      } catch (e) {
        Log.error(e.toString(), error: 'ParseJson ERROR');
        return ApiResponse(
            success: false, data: null, message: 'ParseJson ERROR');
      }
    } else {
      _result.success = false;
      _result.data = null;
    }

    return _result;
  }

  ApiResponse<T> _handleExceptionResponse<T, K>(QueryResult response) {
    String? errorMessage;
    if (response.exception!.linkException != null) {
      errorMessage = response.exception!.linkException!.toString();
    } else {
      errorMessage = response.exception.toString();
    }

    if (errorMessage.isTextNotEmpty) {
      return ApiResponse<T>(success: false, message: errorMessage, data: null);
    }
    return ApiResponse<T>(success: false, message: "Unknown error", data: null);
  }
}
