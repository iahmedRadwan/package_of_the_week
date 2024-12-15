import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Widget"),
      ),
      body: Table(
        columnWidths: const {
          1: FixedColumnWidth(100),
          2: FixedColumnWidth(200),
        },
        border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
        children: [
          TableRow(children: [
            Container(
              width: 300,
              height: 100,
              decoration: const BoxDecoration(color: Colors.amber),
            ),
            Container(
              height: 100,
              decoration: const BoxDecoration(color: Colors.red),
            ),
            Container(
              height: 75,
              decoration: const BoxDecoration(color: Colors.teal),
            ),
          ]),
          TableRow(children: [
            Container(
              width: 300,
              height: 200,
              decoration: const BoxDecoration(color: Colors.black),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            Container(
              height: 75,
              decoration: const BoxDecoration(color: Colors.pinkAccent),
            ),
          ]),
        ],
      ),
    );
  }
}
