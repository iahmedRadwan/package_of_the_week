import 'package:flutter/material.dart';

class WrapWidgetBodyWithAnimatedOpacity extends StatefulWidget {
  const WrapWidgetBodyWithAnimatedOpacity({
    super.key,
  });

  @override
  State<WrapWidgetBodyWithAnimatedOpacity> createState() =>
      _WrapWidgetBodyWithAnimatedOpacityState();
}

class _WrapWidgetBodyWithAnimatedOpacityState
    extends State<WrapWidgetBodyWithAnimatedOpacity> {
  double opacityValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Wrap Widget"),
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              const WrapWidget(),
              const WrapWidget(),
              AnimatedOpacity(
                opacity: opacityValue,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                child: GestureDetector(
                    onTap: () {
                      if (opacityValue == 1) {
                        opacityValue = 0.5;
                      } else if (opacityValue == 0.5) {
                        opacityValue = 0.25;
                      } else if (opacityValue == 0.25) {
                        opacityValue = 0;
                      } else {
                        opacityValue = 1;
                      }
                      setState(() {});
                    },
                    child: const WrapWidget()),
              ),
              const WrapWidget(),
              const WrapWidget(),
              const WrapWidget(),
              const WrapWidget(),
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
