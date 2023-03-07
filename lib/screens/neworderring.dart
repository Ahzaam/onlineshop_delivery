import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class NewOrderRing extends StatefulWidget {
  const NewOrderRing({super.key});

  @override
  State<NewOrderRing> createState() => _NewOrderRingState();
}

class _NewOrderRingState extends State<NewOrderRing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: new AssetImage('assets/maps-bg.png'), fit: BoxFit.cover),
      ),
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Your Location',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade700),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '4.3 km',
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.blue),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: RichText(
                                      text: const TextSpan(
                                    // Note: Styles for TextSpans must be explicitly defined.
                                    // Child text spans will inherit styles from parent
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Time '),
                                      TextSpan(
                                          text: '10mins',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ))),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Cargills Food City',
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.grey.shade800),
                                          )),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'Phone',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blue.shade800),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '077 888 9999',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade800),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    ),
                    Center(
                        child: Transform.rotate(
                      angle: 90 * pi / 180,
                      child: const Icon(
                        Icons.route,
                        color: Colors.blue,
                        size: 50,
                      ),
                    )),
                    // /////////////////////////////////////////////////////
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Destination',
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade700),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '8.6 km',
                        style: TextStyle(fontSize: 40, color: Colors.blue),
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: const TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Time '),
                            TextSpan(
                                text: '20mins',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ))),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Gelioya Elamaldeniya',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.grey.shade800),
                                )),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Phone',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.blue.shade800),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '077 888 9999',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade800),
                              ),
                            )
                          ],
                        )),
                  ],
                )),
          ),

          // **************************************************************
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            'Total Distance',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 3),
                              child: RichText(
                                  text: const TextSpan(
                                // Note: Styles for TextSpans must be explicitly defined.
                                // Child text spans will inherit styles from parent
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.blue,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: '30'),
                                  TextSpan(
                                      text: 'mins',
                                      style: const TextStyle(fontSize: 20)),
                                ],
                              )))
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            'Total Duration',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 3),
                              child: RichText(
                                  text: const TextSpan(
                                // Note: Styles for TextSpans must be explicitly defined.
                                // Child text spans will inherit styles from parent
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.blue,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: '30'),
                                  TextSpan(
                                      text: 'mins',
                                      style: const TextStyle(fontSize: 20)),
                                ],
                              )))
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            'Fare',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 3),
                              child: RichText(
                                  text: const TextSpan(
                                // Note: Styles for TextSpans must be explicitly defined.
                                // Child text spans will inherit styles from parent
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.red,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: '300'),
                                  TextSpan(
                                      text: 'LKR',
                                      style: const TextStyle(fontSize: 20)),
                                ],
                              )))
                        ],
                      )),
                    ],
                  ),
                ),
                Container(
                    child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.red,
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(16),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.close,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.green,
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(16),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.local_shipping,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  )
                ])),
              ]),
            ),
          ),
        ],
      ),
    );

    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Center(
    //       child: MaterialButton(
    //         onPressed: () {},
    //         color: Colors.red,
    //         textColor: Colors.white,
    //         child: Icon(
    //           Icons.local_shipping,
    //           size: 24,
    //         ),
    //         padding: EdgeInsets.all(16),
    //         shape: CircleBorder(),
    //       ),
    //     ),
    //     SizedBox(width: 20),
    //     Center(
    //       child: ElevatedButton.icon(
    //         onPressed: () {},
    //         icon: const Icon(
    //           Icons.local_shipping,
    //         ),
    //         label: const Text('Like'),
    //       ),
    //     )
    //   ],
    // );
  }
}


// Container(
//       alignment: FractionalOffset.bottomCenter,
//       child: Align(
//         alignment: Alignment.bottomCenter,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               flex: 7,
//               child: Container(
//                 height: 100,
//                 margin: const EdgeInsets.only(top: 200),
//                 child: Column(
//                   children: [
//                     Row(children: [
//                       Container(
//                         height: 100,
//                         width: 200,
//                         margin: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           gradient: LinearGradient(
//                             begin: Alignment.bottomLeft,
//                             end: Alignment.topRight,
//                             colors: [
//                               Colors.green.shade400,
//                               Colors.green.shade600,
//                             ],
//                           ),
//                         ),
//                         child: const Center(
//                           child: Row(
//                             children: [
//                               Expanded(
//                                   flex: 4,
//                                   child: Text(
//                                     'B63 Elamaldeniya, Gelioya',
//                                     style: TextStyle(
//                                         fontSize: 25, color: Colors.white),
//                                   )),
//                               Expanded(
//                                   flex: 1,
//                                   child: Text(
//                                     '40min',
//                                     style: TextStyle(
//                                         fontSize: 25, color: Colors.white),
//                                   ))
//                             ],
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: 100,
//                           margin: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             gradient: LinearGradient(
//                               begin: Alignment.bottomLeft,
//                               end: Alignment.topRight,
//                               colors: [
//                                 Colors.green.shade400,
//                                 Colors.green.shade600,
//                               ],
//                             ),
//                           ),
//                           child: const Center(
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                     flex: 4,
//                                     child: Text(
//                                       'B63 Elamaldeniya, Gelioya',
//                                       style: TextStyle(
//                                           fontSize: 25, color: Colors.white),
//                                     )),
//                                 Expanded(
//                                     flex: 1,
//                                     child: Text(
//                                       '40min',
//                                       style: TextStyle(
//                                           fontSize: 25, color: Colors.white),
//                                     ))
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     ]),
//                     Center(
//                         child: Transform.rotate(
//                       angle: 90 * pi / 180,
//                       child: const Icon(
//                         Icons.route,
//                         color: Colors.blue,
//                       ),
//                     )),
//                     Center(
//                         child: Container(
//                       height: 100,
//                       margin: const EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [
//                             Colors.green.shade400,
//                             Colors.green.shade600,
//                           ],
//                         ),
//                       ),
//                       child: const Center(
//                         child: Row(
//                           children: [
//                             Expanded(
//                                 flex: 4,
//                                 child: Text(
//                                   'B63 Elamaldeniya, Gelioya',
//                                   style: TextStyle(
//                                       fontSize: 25, color: Colors.white),
//                                 )),
//                             Expanded(
//                                 flex: 1,
//                                 child: Text(
//                                   '40min',
//                                   style: TextStyle(
//                                       fontSize: 25, color: Colors.white),
//                                 ))
//                           ],
//                         ),
//                       ),
//                     )),
//                     Center(
//                         child: Transform.rotate(
//                       angle: 90 * pi / 180,
//                       child: const Icon(
//                         Icons.route,
//                         color: Colors.blue,
//                       ),
//                     )),
//                     const Center(
//                         child: Text('40km', style: TextStyle(fontSize: 30))),
//                     Center(
//                       child: Transform.rotate(
//                         angle: 90 * pi / 180,
//                         child: const Icon(
//                           Icons.route,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                     Center(
//                         child: Container(
//                       height: 100,
//                       margin: const EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.topRight,
//                           colors: [
//                             Colors.green.shade400,
//                             Colors.green.shade600,
//                           ],
//                         ),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'B63 Elamaldeniya, Gelioya',
//                           style: TextStyle(fontSize: 30, color: Colors.white),
//                         ),
//                       ),
//                     )),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//                 flex: 1,
//                 child: Row(children: [
//                   Expanded(
//                     child: Container(
//                       margin: const EdgeInsets.all(10),
//                       padding: const EdgeInsets.all(10),
//                       child: Center(
//                         child: MaterialButton(
//                           onPressed: () {},
//                           color: Colors.red,
//                           textColor: Colors.white,
//                           padding: const EdgeInsets.all(16),
//                           shape: const CircleBorder(),
//                           child: const Icon(
//                             Icons.close,
//                             size: 24,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       margin: const EdgeInsets.all(10),
//                       padding: const EdgeInsets.all(10),
//                       child: Center(
//                         child: MaterialButton(
//                           onPressed: () {},
//                           color: Colors.green,
//                           textColor: Colors.white,
//                           padding: const EdgeInsets.all(16),
//                           shape: const CircleBorder(),
//                           child: const Icon(
//                             Icons.local_shipping,
//                             size: 24,
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 ]))
//           ],
//         ),
//       ),
//     );