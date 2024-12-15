import 'package:flutter/material.dart';

class FadeInWadget extends StatefulWidget {
  const FadeInWadget({super.key});

  @override
  State<FadeInWadget> createState() => _FadeInWadgetState();
}

class _FadeInWadgetState extends State<FadeInWadget>
    with SingleTickerProviderStateMixin {
  /// SingleTickerProviderStateMixin used to provide a ticker (stopWatch with ticks) to single animation
  /// if we use multiple animation we use TickerProviderStateMixin
  late AnimationController _controller;

  /// Controler which passed to animation to controll it
  late Animation<double> _animation;

  /// Animation Widget
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    /// initialize Controller with Ticker-> this, duration and repeat with reverse
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    /// initalize animation after initalize controller by using CurvedAnimation which take
    /// 2 parameters which are parent--> animationController which control animation and curve
    super.initState();

    /// Example when aply feedTransition in splashScreen
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Scaffold(
                    body: Center(
                      child: Text("Body"),
                    ),
                  )));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// it's very easy widget used with 2 params which are opacity --> animation, child --> what this animated will apply
    return FadeTransition(
      opacity: _animation,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FlutterLogo(
            size: 400,
          ),
          Spacer(),
          Text(
            "Splash Screen",
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
