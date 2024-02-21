import 'package:flutter/material.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/button.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(authPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: authPadding,
            ),
            Text(
              "Payment methods",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
            ),
            const SizedBox(
              height: authPadding,
            ),
            Text(
              "Choose desired Place. We offer  many comunity center for your needs",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: authPadding,
            ),
            methods(context, "Mobile Banking", [
              Padding(
                padding: const EdgeInsets.only(top: authPadding),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: authPadding),
                      child: Image.asset(
                        "assets/bkash.png",
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                    ),
                    const SizedBox(
                      width: authPadding,
                    ),
                    const Text("Bkash"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: authPadding),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: authPadding),
                      child: Image.asset(
                        "assets/nagad.png",
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                    ),
                    const SizedBox(
                      width: authPadding,
                    ),
                    const Text("Nagad"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: authPadding),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: authPadding),
                      child: Image.asset(
                        "assets/rocket.png",
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                    ),
                    const SizedBox(
                      width: authPadding,
                    ),
                    const Text("Rocket"),
                  ],
                ),
              ),
            ]),
            methods(context, "Card", [
              Padding(
                padding: const EdgeInsets.only(top: authPadding * 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: authPadding * 0),
                      child: Image.asset(
                        "assets/card.png",
                        width: MediaQuery.of(context).size.width / 5,
                        height: authPadding * 2,
                      ),
                    ),
                    const SizedBox(
                      width: authPadding,
                    ),
                    const Text("*********32"),
                  ],
                ),
              ),
            ]),
            methods(context, "Cash Payment", [
              Padding(
                padding: const EdgeInsets.only(top: authPadding * 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: authPadding * 0),
                      child: Image.asset(
                        "assets/cash.png",
                        width: MediaQuery.of(context).size.width / 5,
                        height: authPadding * 2,
                      ),
                    ),
                    const SizedBox(
                      width: authPadding,
                    ),
                    Text(
                      "Cash Payment",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ]),
            const SizedBox(
              height: authPadding/2,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(authPadding),
              decoration: const BoxDecoration(color: primaryColor),
              child: Text(
                "Add Payment Method",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 22,
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget methods(BuildContext context, String type, List<Widget> children) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(authPadding / 1.5),
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: authPadding, horizontal: authPadding / 2),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            ),
          ),
        ),
        Positioned(
          left: authPadding * 2,
          child: Container(
            padding: const EdgeInsets.all(authPadding / 4),
            color: Colors.white,
            child: Text(
              type,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
