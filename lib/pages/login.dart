import 'package:flutter/material.dart';
import 'package:hallify/pages/forgot_pass.dart';
import 'package:hallify/pages/homepage.dart';
import 'package:hallify/pages/signup.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/button.dart';
import 'package:hallify/widgets/input.dart';
import 'package:hallify/widgets/location_access.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: authPadding),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Welcome back!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  "Glad to see!",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Input(hintText: "type you’r mail"),
            const Input(
              hintText: "Username",
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ForgotPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot password   ",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Button(
                text: "Login",
                width: double.infinity,
                func: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const HomePage(),
                    ),
                  );
                  showDialog(
                      context: context, builder: (_) => const LocationAccess());

                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialog(
                  //       icon: const Icon(Icons.check),
                  //       iconColor: Colors.green,
                  //       title: const Text("Location Access"),
                  //       actionsPadding: const EdgeInsets.all(authPadding),
                  //       actions: [
                  //         Text("Location Access"),
                  //         Text(
                  //           "This blog post has been published. Team members will be able to edit this post and republish changes.",
                  //         ),
                  //         Row(
                  //           children: [
                  //             Button(
                  //               text: "Cancel",
                  //               size: 0.6,
                  //               color: Colors.white,
                  //               func: () {
                  //                 Navigator.of(context).pop();
                  //               },
                  //             ),
                  //             const SizedBox(
                  //               width: authPadding,
                  //             ),
                  //             Button(
                  //               text: "Confirm",
                  //               size: 0.6,
                  //               func: () {
                  //                 Navigator.of(context).pop();
                  //               },
                  //             ),
                  //           ],
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // );
                },
              ),
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0), // Add some horizontal space
                  child: Text(
                    "or sign up with",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/signup.png"),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const SignupScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    " Sign up now ",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
