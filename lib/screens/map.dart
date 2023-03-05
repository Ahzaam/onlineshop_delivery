import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:onlineshop_delivery/constants/map-constance.dart';
import 'package:onlineshop_delivery/constants/marker-costants.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:onlineshop_delivery/Services/location.dart';

class NavMap extends StatefulWidget {
  const NavMap({super.key});

  @override
  State<NavMap> createState() => _NavMapState();
}

LatLng position = LatLng(7, 80);

class _NavMapState extends State<NavMap> {
  @override
  Widget build(BuildContext context) {
    MapController _mapController = MapController();
    determinePosition().then((value) => {
          value.listen((position_data) {
            setState(() {
              if (position != null) {
                position =
                    LatLng(position_data.latitude, position_data.longitude);
                _mapController.move(position, 16);
              }
            });
          })
        });

    final String assetName = 'assets/marker.png';
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        minZoom: 5,
        maxZoom: 18,
        zoom: 13,
        center: LatLng(position.latitude, position.longitude),
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
              point: LatLng(position.latitude, position.longitude),
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
