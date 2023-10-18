import 'package:flutter/material.dart';
import 'package:hallify/pages/login.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/button.dart';
import 'package:hallify/widgets/input.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

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
                  "Verification",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 30,
                right: 20,
              ),
              child: Text(
                "Enter the verification code we just sent on your email address.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff676767),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.17,
              child: const Row(
                children: [
                  Expanded(
                    child: Input(hintText: "3"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Input(hintText: "3"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Input(hintText: "0"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Input(hintText: "1"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5,
                bottom: 40,
              ),
              child: Button(
                text: "Verify",
                width: double.infinity,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn’t receive code?",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    " Resend now ",
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
