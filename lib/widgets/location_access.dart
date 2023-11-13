import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/button.dart';

class LocationAccess extends StatelessWidget {
  const LocationAccess({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: AlertDialog(
        actionsPadding: const EdgeInsets.all(authPadding),
        // icon: Image.asset("assets/tick.png"),
        actions: [
          Row(
            children: [
              Image.asset("assets/tick.png"),
            ],
          ),
          const SizedBox(
            height: authPadding,
          ),
          Row(
            children: [
              Text(
                "Location Access",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.left,
              ),
            ],
          ),
          const SizedBox(
            height: authPadding * 0.8,
          ),
          const Text(
            "This blog post has been published. Team members will be able to edit this post and republish changes.",
          ),
          const SizedBox(
            height: authPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                text: "Cancel",
                height: size.width / 7,
                width: size.width / 3,
                textSize: 17,
                color: Colors.white,
                func: () {
                  Navigator.of(context).pop();
                },
              ),
              Button(
                text: "Confirm",
                height: size.width / 7,
                width: size.width / 3,
                textSize: 17,
                func: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
