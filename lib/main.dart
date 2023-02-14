import 'package:flutter/material.dart';
import 'package:our_universe/constant.dart';
import 'package:our_universe/moon_animation_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Our Universe",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kWhite,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MoonAnimationWidget(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const MoonAnimationWidget();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/img/space_background.svg',
            alignment: Alignment.center,
            width: size.width,
            height: size.height,
          ),
          Column(
            children: const [Expanded(child: Text('Home'))],
          ),
        ],
      ),
    );
  }
}
