import 'package:flutter/material.dart';

class WrapWidgetBodyWithOpacity extends StatelessWidget {
  const WrapWidgetBodyWithOpacity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Wrap Widget"),
      ),
      body: Column(
        children: [
          const Wrap(
            children: [
              WrapWidget(),
              WrapWidget(),
              Opacity(
                opacity: 0,
                child: WrapWidget(),
              ),
              WrapWidget(),
              WrapWidget(),
              WrapWidget(),
              WrapWidget(),
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: const Center(
                child: Text("Center Data"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
