import 'package:flutter/material.dart';
import 'package:task_one_2025/constants/const.dart';
import 'package:task_one_2025/screens/widgets/custom_wrap_icons.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> keyMain = GlobalKey<FormState>();
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.3, color: Colors.black),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
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
                SizedBox(height: 30),

                TextFormField(
                  validator: (String? full) {
                    if (full!.isEmpty) {
                      return "Full Name is Required";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person_outline),
                    hintText: "Please Enter Your Full Name",
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
                SizedBox(height: 30),
                TextFormField(
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
                SizedBox(height: 30),
                TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Phone is required";
                    } else if (!phoneRegExp.hasMatch(value)) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_outlined),
                    hintText: "Please Enter your Phone",
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
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

                SizedBox(height: 30),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if (keyMain.currentState!.validate()) {
                        // call functions or navigator :
                      }
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
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
                    Text("Or Register with"),
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
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "Login Now",
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
