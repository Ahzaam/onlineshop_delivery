import 'package:flutter/material.dart';
import 'package:onlineshop_delivery/screens/orders.dart';
import 'screens/map.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:wakelock/wakelock.dart';
import 'package:onlineshop_delivery/screens/orders.dart';

import 'package:onlineshop_delivery/screens/neworderring.dart';

// The following line will enable the Android and iOS wakelock.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Wakelock.enable();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: BottomNavigation()),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Orders(),
    NewOrderRing(),
    Maps(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.reorder),
            label: 'Available',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grading),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Direction',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// import 'package:onlineshop_delivery/screens/home.dart';
// import 'package:onlineshop_delivery/screens/map.dart';
// import 'package:onlineshop_delivery/screens/orders.dart';

// import 'services/location.dart';

// Future main() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static List<Widget> _widgetOptions = <Widget>[
//     AppHome(),
//     NavMap(),
//     Orders(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Bottom NavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
