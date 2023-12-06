import 'package:flutter/material.dart';
import 'package:pdfs_4th_grade/modules/math_screen.dart';
import 'package:pdfs_4th_grade/modules/phys_screen.dart';
import 'package:pdfs_4th_grade/shared/colors.dart';
import 'package:pdfs_4th_grade/shared/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: const Text('Welcome Back,Students'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0, bottom: 35),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    navigateTo(context, const MathScreen());
                  },
                  child: Center(
                    child: Container(
                      height: 180,
                      width: 250,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Column(
                          children: [
                            Text(
                              'Math\n   π',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    navigateTo(context, const PhysScreen());
                  },
                  child: Center(
                    child: Container(
                      height: 180,
                      width: 250,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Column(
                          children: const [
                            Text('Engineering Scince',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.white)),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.speed,
                              size: 60,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
