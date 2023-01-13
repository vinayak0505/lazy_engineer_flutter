import 'package:lazy_engineer/navigation/routing_data.dart';

extension StringExtension on String {
  RoutingData get getRoutingData {
    final uriData = Uri.parse(this);
    return RoutingData(
      queryParameters: uriData.queryParameters,
      route: uriData.path,
    );
  }
}
