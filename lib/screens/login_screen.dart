import 'package:flutter/material.dart';
import 'package:task_one_2025/constants/const.dart';
import 'package:task_one_2025/screens/widgets/custom_button.dart';
import 'package:task_one_2025/screens/widgets/custom_wrap_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> keyMain = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool dontHaveAccount = false;

  @override
  Widget build(BuildContext context) {
    if (dontHaveAccount) {
      Future.microtask(() {
        // Navigator.pushReplacementNamed(context, '/signup');
      });
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: keyMain,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.3, color: Colors.black),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 35),
                // Text(myname, style: TextStyle(fontSize: 30)),
                Text(
                  "Welcome back! Glad \nto see you, Again!",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(width: double.infinity, height: 120),
                SizedBox(height: 20),

                TextFormField(
                  controller: emailController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    } else if (!emailRegExp.hasMatch(value)) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    hintText: "Enter Your Email",
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 320,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: double.infinity, height: 30),
                TextFormField(
                  controller: passwordController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    } else if (!passwordRegExp.hasMatch(value)) {
                      return "Please enter a valid Password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.visibility_outlined),
                    ),
                    hintText: "Enter Your Password",
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 320,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      // call :
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(
                  textButton: "Login",
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    if (keyMain.currentState!.validate()) {
                      // call functions or navigator :
                    }
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade500,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                    Text("Or Logins with"),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade500,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                CustomWrapIcons(),

                // SizedBox(height: 80),
                SizedBox(height: 200),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/register");
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
