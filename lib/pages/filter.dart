import 'package:flutter/material.dart';
import 'package:hallify/pages/search_result.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/button.dart';
import 'package:hallify/widgets/input.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 38),
          // style: TextStyle(
          //   color: Colors.black,
          //   fontSize: 38,
          //   fontWeight: FontWeight.bold,
          // ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xffEFE9F5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(authPadding * 1.5),
            topRight: Radius.circular(authPadding * 1.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: authPadding * 1.5,
            ),
            field(const Icon(Icons.location_on_outlined), "Select Area",
                "Search Your Area"),
            field(const Icon(Icons.calendar_month_outlined), "Callendar",
                "dd/mm/yy"),
            // field(const Icon(Icons.groups_2), "Capacity", "Search Your Area"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: authPadding),
              child: Row(
                children: [
                  Icon(Icons.groups_2),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Capacity"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: authPadding, vertical: authPadding / 2),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "500 - 1k",
                    color: Colors.white,
                    textSize: 14,
                    textColor: Colors.black,
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.width / 8,
                  ),
                  Button(
                    text: "1k - 1.5k",
                    color: Colors.white,
                    textSize: 14,
                    textColor: Colors.black,
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.width / 8,
                  ),
                  Button(
                    text: "1.5k - 2k",
                    color: Colors.white,
                    textSize: 14,
                    textColor: Colors.black,
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.width / 8,
                  ),
                ],
              ),
            ),
            field(const Icon(Icons.cookie_outlined), "Custom Capcity",
                "2500 - 3000",
                count: 2),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: authPadding),
              child: Row(
                children: [
                  Icon(Icons.price_change_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Price Range"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: authPadding),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Input(hintText: "50000"),
                        Text("Minimum"),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Input(hintText: "100000"),
                        Text("Maximum"),
                      ],
                    ),
                  ),
                  // Expanded(child: Input(hintText: "50000"), flex: 5),
                  // Spacer(flex: 1,),
                  // Expanded(child: Input(hintText: "50000"), flex: 5,),
                ],
              ),
            ),
            const SizedBox(
              height: authPadding,
            ),
            Align(
              child: Button(
                text: "Save",
                func: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const Search(location: "Dhanmondi"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget field(Icon icon, String topic, String hint, {int count = 1}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: authPadding),
    child: Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            Text(topic),
          ],
        ),
        Input(
          hintText: hint,
        ),
      ],
    ),
  );
}
