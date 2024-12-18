import 'package:ai_health_trainer/views/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5), 
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.15),
            Container(
              alignment: Alignment.center,
              width: size.width * 0.7,
              height: size.width * 0.7,
              child: Lottie.asset(
                'assets/push-up-animation.json',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            
            const Text(
              'Ai Health Partner',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff273338), 
                letterSpacing: -0.2,
              ),
            ),
            const SizedBox(height: 20),
            
            Container(
              width: size.width * 0.8,
              child: const Text(
                'ML 파트너와 함께하는\n운동횟수 측정\n2022145135 박태하',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1.1,
                ),
              ),
            ),
            const Spacer(),
            // Start Now 버튼
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), 
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Home()),
                );
              },
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff6A11CB), Color(0xff2575FC)], 
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: size.width * 0.85,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'Start Now!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
