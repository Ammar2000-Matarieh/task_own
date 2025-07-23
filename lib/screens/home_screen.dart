import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_one_2025/screens/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
          child: Column(
            children: [
              Text(
                "Register and Login Application ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  // letterSpacing: 6.2,
                ),
              ),

              SizedBox(height: 20),
              Lottie.asset("assets/Login.json"),

              SizedBox(height: 200),
              // SizedBox(height: ),
              // Spacer(),
              CustomButton(
                textButton: "Login",
                onPressed: () => Navigator.pushNamed(context, '/login'),
                backgroundColor: Colors.black,
                textColor: Colors.white,
              ),

              SizedBox(height: 25),

              CustomButton(
                textButton: "Register",
                onPressed: () => Navigator.pushNamed(context, '/register'),
                backgroundColor: Colors.white,
                textColor: Colors.black,
                elevation: 2,
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: SizedBox(
              //         height: 60,
              //         child: ElevatedButton(
              //           onPressed: () =>
              //               Navigator.pushNamed(context, '/register'),
              //           style: ElevatedButton.styleFrom(
              //             // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 18),
              //             backgroundColor: Colors.white,
              //             shape: RoundedRectangleBorder(
              //               side: BorderSide(color: Colors.grey.shade900),
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //           ),
              //           child: Text(
              //             "Register",
              //             style: TextStyle(
              //               fontSize: 16,
              //               fontWeight: FontWeight.w600,
              //               color: Colors.black,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Continue as a guest",
                  style: TextStyle(color: Colors.cyan, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
