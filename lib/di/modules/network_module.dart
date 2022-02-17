import 'package:graphql_flutter/graphql_flutter.dart';

import '../../resources/r.dart';
import '../../services/shared_pref_service.dart';

abstract class NetWorkModule {
  /// A singleton dio provider.
  ///
  /// Calling it multiple times will return the same instance.

  static Map<String, dynamic> _getHeader() {
    // return {
    //   "Authorization": kmApiDomain.authorization,
    //   "client-version": kmApiDomain.clientVersion,
    //   "content-type": kmApiDomain.contentType,
    //   "language": getDisplayLanguageCode(kmDisplayLanguage),
    //   "Accept-Encoding": "gzip",
    // };

    return {};
  }

  static GraphQLClient providerGrapQLCient(
      SharedPreferenceService sharedPreferenceService) {
    final HttpLink httpLink = HttpLink(R.httpLink);

    GraphQLClient client = GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(),
        defaultPolicies: DefaultPolicies(
          watchQuery: Policies(
            fetch: FetchPolicy.networkOnly,
          ),
          query: Policies(
            fetch: FetchPolicy.cacheAndNetwork,
          ),
          mutate: Policies(
            fetch: FetchPolicy.networkOnly,
          ),
        ));

    return client;
  }
}
