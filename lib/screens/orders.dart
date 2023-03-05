import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('These ListTiles are expanded '),
          ),
        ),
        Expanded(
          child: ListTile(
            trailing: FlutterLogo(),
            title: Text('to fill the available space.'),
          ),
        ),
      ],
    );
  }
}
