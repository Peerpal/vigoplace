import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Image.asset("assets/logo.png"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/intro-bar1.png'),
              Image.asset('assets/intro-bar2.png'),
              Column(
                children: [
                  Container(
                    width: 82,
                    height: 82,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset('assets/intro-bar3.png'),
                  const SizedBox(height: 10),
                  Container(
                    width: 82,
                    height: 82,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HexColor('#FA5353'),
                    ),
                  ),
                ],
              ),
              Image.asset('assets/intro-bar-4.png'),
            ],
          ),
          const SizedBox(height: 35),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Build Connections. \n',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue, // TODO
                ),
                children: [
                  TextSpan(
                    text: "Build Wealth.",
                    style: TextStyle(
                      color: theme.primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Vigoplace integrates all of your personal, business and online interaction needs into one simple user-friendly application.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: HexColor('#6c6D79'),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            color: theme.primaryColor,
            child: Center(
              child: Text(
                'Login',
                style: theme.textTheme.button?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: theme.primaryColor),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            color: Colors.white,
            child: Center(
              child: Text(
                'Login',
                style: theme.textTheme.button?.copyWith(
                  color: theme.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
