import 'package:flutter/material.dart';
import 'package:hallify/models/hotel.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/button.dart';
import 'package:hallify/widgets/input.dart';

class ConfirmBooking extends StatelessWidget {
  final Hotel hotel;
  const ConfirmBooking({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Confirm Booking",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(authPadding),
                topRight: Radius.circular(authPadding),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    hotel.imgList[0],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: authPadding,
                    child: Text(
                      hotel.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(authPadding),
              child: Column(
                children: [
                  // amneties
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 28,
                      ),
                      Text(
                        "100m",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.group,
                        size: 28,
                      ),
                      Text(
                        "1.5K+Guest",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.ac_unit_rounded,
                        size: 28,
                      ),
                      Text(
                        "AC",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.local_parking_rounded,
                        size: 28,
                      ),
                      Text(
                        "Parking",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: authPadding * 1.5,
                  ),

                  //Prices
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        "\$${hotel.price.toStringAsFixed(hotel.price.truncateToDouble() == hotel.price ? 0 : 1)}",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: authPadding / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        "\$4",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: authPadding / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        "\$${hotel.price + 4}",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: authPadding,
                  ),

                  // Inputs
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Date",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 16)
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Stack(
                    children: [
                      Input(
                        hintText: "dd/mm/yy",
                        inputBackgroundColor: Colors.grey.shade50,
                      ),
                      Positioned(
                        right: authPadding,
                        bottom: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () => print("Hi"),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Full Name",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 16)
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Input(
                    hintText: "",
                    inputBackgroundColor: Colors.grey.shade50,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 16)
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Input(
                    hintText: "example@gmail.com",
                    inputBackgroundColor: Colors.grey.shade50,
                  ),
                ],
              ),
            ),
            Button(
              text: "Next",
              height: 31,
              textSize: 24,
              func: () => print("Hi"),
            ),
            const SizedBox(
              height: authPadding,
            ),
          ],
        ),
      ),
    );
  }
}
