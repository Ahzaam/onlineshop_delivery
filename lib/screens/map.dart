import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:onlineshop_delivery/constants/map-constance.dart';
import 'package:onlineshop_delivery/constants/marker-costants.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:onlineshop_delivery/Services/location.dart';
import 'package:indexed/indexed.dart';

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

class MapsData extends StatefulWidget {
  const MapsData({super.key});

  @override
  State<MapsData> createState() => _MapsDataState();
}

class _MapsDataState extends State<MapsData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 50),
      alignment: FractionalOffset.bottomCenter,
      child: Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.green.shade500,
                    Colors.green.shade800,
                  ],
                )),
            child: Center(
                child: Column(
              children: [
                Text(
                  '5/20',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                Text('Delivered',
                    style: TextStyle(color: Colors.white, fontSize: 16))
              ],
            )),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.green.shade500,
                    Colors.green.shade800,
                  ],
                )),
            child: Center(
                child: Column(
              children: [
                Text(
                  '800m',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                Text('Next Delivery',
                    style: TextStyle(color: Colors.white, fontSize: 16))
              ],
            )),
          ),
        )
      ]),
    );
  }
}

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

bool expand = false;

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.transparent,
          ),
        ),

        /// Below container will go to bottom
        GestureDetector(
          onTap: () {
            setState(() {
              expand = !expand;
            });
          },
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: expand ? 200 : 57,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.blue.shade500,
                      Colors.blue.shade800,
                    ],
                  )),
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.only(left: 8),
                            child: const Text(
                              'Next Address',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          )),
                      const Text(
                        'D72 Hapugatalawa Nawalapitiya',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  )),
                  Visibility(
                    maintainState: true,
                    visible: expand,
                    child: const Text(
                      'Order Id : b2yu3f43BH22eby',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
}

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: <Widget>[NavMap(), MapsData(), Address()],
    );
  }
}
