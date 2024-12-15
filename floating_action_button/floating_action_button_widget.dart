import 'package:flutter/material.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Action Button"),
      ),
      body: const Center(
        child: FlutterLogo(
          size: 300,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const StadiumBorder(),
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
