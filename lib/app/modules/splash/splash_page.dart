import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/logo_transition.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController>
    with SingleTickerProviderStateMixin {
  Image splash;
  AnimationController _controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    splash = Image.asset(
      "images/logo.png",
      width: 150.0,
      //fit: BoxFit.cover,
    );
    SystemChrome.setEnabledSystemUIOverlays([]);
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1300),
    );

    animation = CurvedAnimation(parent: _controller, curve: Curves.ease);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(seconds: 2)).then((_) {
          _controller.reverse();
        });
      } else if (status == AnimationStatus.dismissed) {
        Modular.to.pushReplacementNamed('/home');
      }
    });
    _controller.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(splash.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            LogoTransition(
              childWidget: splash,
              animation: animation,
            ),
          ],
        ),
      ),
    );
  }
}
