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
      alignment: FractionalOffset.bottomCenter,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                height: 100,
                margin: EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    Center(
                        child: Container(
                      height: 100,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.green.shade400,
                            Colors.green.shade600,
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'B63 Elamaldeniya, Gelioya',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    )),
                    const Center(
                      child: Icon(
                        Icons.south,
                        size: 40,
                      ),
                    ),
                    Center(child: Text('40km', style: TextStyle(fontSize: 30))),
                    Center(
                        child: Icon(
                      Icons.south,
                      size: 40,
                    )),
                    Center(
                        child: Container(
                      height: 100,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.green.shade400,
                            Colors.green.shade600,
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'B63 Elamaldeniya, Gelioya',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Icon(
                            Icons.close,
                            size: 24,
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Icon(
                            Icons.local_shipping,
                            size: 24,
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  )
                ]))
          ],
        ),
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
