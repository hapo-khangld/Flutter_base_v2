import 'package:flutter/material.dart';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  if (value != null) {
    final valueS = value.toString();
    if (0 is T) {
      return int.tryParse(valueS) as T?;
    } else if (0.0 is T) {
      return double.tryParse(valueS) as T?;
    } else if ('' is T) {
      return valueS as T;
    } else if (false is T) {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    }
  }
  return null;
}

double? initScale({
  required Size imageSize,
  required Size size,
  double? initialScale,
}) {
  final n1 = imageSize.height / imageSize.width;
  final n2 = size.height / size.width;
  if (n1 > n2) {
    final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
    //final Size sourceSize = fittedSizes.source;
    final destinationSize = fittedSizes.destination;
    return size.width / destinationSize.width;
  } else if (n1 / n2 < 1 / 4) {
    final fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
    //final Size sourceSize = fittedSizes.source;
    final destinationSize = fittedSizes.destination;
    return size.height / destinationSize.height;
  }

  return initialScale;
}

bool isNullOrEmpty(dynamic value) {
  if (value == null || value.toString().isEmpty) return true;
  return false;
}
