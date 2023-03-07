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
bool make_center = true;
MapController _mapController = MapController();

class _NavMapState extends State<NavMap> {
  @override
  Widget build(BuildContext context) {
    determinePosition().then((value) => {
          value.listen((position_data) {
            setState(() {
              if (position != null) {
                position =
                    LatLng(position_data.latitude, position_data.longitude);
                if (make_center) {
                  _mapController.move(position, 16);
                }
              }
            });
          })
        });

    final String assetName = 'assets/marker.png';
    return Listener(
      onPointerMove: (_) {
        make_center = false;
      },
      child: FlutterMap(
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
      ),
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
        margin: const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
        alignment: FractionalOffset.bottomCenter,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 28, 28),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: const Icon(
                        Icons.view_in_ar_outlined,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      child: const Text(
                        '800m',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Next Delivery . Go Strait in A18 Road',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        child: const Text(
                          'B92 Babila, Gampola',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                )),
          ],
        ));
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
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
          onTap: () {
            setState(() {
              expand = !expand;
            });
          },
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: expand ? 500 : 180,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 28, 28, 28)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: RichText(
                                text: TextSpan(
                              // Note: Styles for TextSpans must be explicitly defined.
                              // Child text spans will inherit styles from parent
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.green,
                              ),
                              children: <TextSpan>[
                                const TextSpan(text: '19 '),
                                const TextSpan(
                                    text: 'min',
                                    style: TextStyle(fontSize: 25)),
                                TextSpan(
                                    text: ' ( 7.3 km )',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.grey.shade600)),
                              ],
                            ))),
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {
                            make_center = true;
                            setState(() {
                              _mapController.move(position, 16);
                            });
                          },
                          color: Colors.blue,
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(16),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.navigation_outlined,
                            size: 24,
                          ),
                        ))
                      ],
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    endIndent: 0,
                    color: Colors.grey.shade800,
                  ),
                ],
              ))),
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
