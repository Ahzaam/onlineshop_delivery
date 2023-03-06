import 'package:flutter/material.dart';

class DisplayOrder extends StatefulWidget {
  const DisplayOrder({super.key});

  @override
  State<DisplayOrder> createState() => _DisplayOrderState();
}

bool expand = false;

class _DisplayOrderState extends State<DisplayOrder> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          expand = !expand;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: expand ? 200 : 100,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 4,
                offset: const Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/grocery.jpg'),
                ),
              )),
          const Expanded(
              flex: 4,
              child: Text(
                'Hapugastalawa, Kandy ',
                style: TextStyle(fontSize: 20),
              ))
        ]),
      ),
    );
  }
}
