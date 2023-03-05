import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:onlineshop_delivery/constants/map-constance.dart';
import 'package:onlineshop_delivery/constants/marker-costants.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';

class MyMap extends StatelessWidget {
  const MyMap({super.key});

  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/marker.png';
    return FlutterMap(
      options: MapOptions(
        minZoom: 5,
        maxZoom: 18,
        zoom: 13,
        center: AppConstants.myLocation,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate:
              "https://api.mapbox.com/styles/v1/ahzaam/{mapStyleId}/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",
          additionalOptions: {
            'mapStyleId': AppConstants.mapBoxStyleId,
            'accessToken': AppConstants.mapBoxAccessToken,
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              height: 40.0,
              width: 40.0,
              point: LatLng(7.00000, 80.000000),
              builder: (_) {
                return GestureDetector(
                  onTap: () {},
                  child: Image.asset(assetName),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
