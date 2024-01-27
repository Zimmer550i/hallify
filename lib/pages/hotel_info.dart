import 'package:flutter/material.dart';
import 'package:hallify/models/hotel.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/button.dart';
import 'package:hallify/widgets/rating.dart';

class HotelInfo extends StatefulWidget {
  final Hotel hotel;
  const HotelInfo({super.key, required this.hotel});

  @override
  State<HotelInfo> createState() => _HotelInfoState();
}

class _HotelInfoState extends State<HotelInfo> {
  int imgIdx = 0;
  late double size = MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
        ),
        actions: [
          Expanded(child: Container()),
          IconButton(
            onPressed: () {
              setState(() {
                widget.hotel.isLiked = !widget.hotel.isLiked;
              });
            },
            icon: Icon(
              widget.hotel.isLiked
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              color: widget.hotel.isLiked ? Colors.red : Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(authPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(
              text: "Call",
              color: const Color(0xffFFA127),
              size: 0.8,
              width: MediaQuery.of(context).size.width / 1.9,
            ),
            Button(
              text: "Book",
              size: 0.8,
              width: MediaQuery.of(context).size.width / 1.9,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: null,
        child: Column(
          children: [
            // const SizedBox(height: 50,),
            Image.asset(
              widget.hotel.imgList[imgIdx],
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          
            // Name
            Padding(
              padding: const EdgeInsets.all(authPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.hotel.name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                  ),
          
                  // Details
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size / 50),
                    child: Wrap(
                      // crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceBetween,
                      spacing: size / 4,
                      runSpacing: size / 50,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Rating(
                                rating: widget.hotel.review, size: size / 5),
                            Text(
                              "(${widget.hotel.reviewCount} reviews)",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Price "),
                            Text(
                              "US \$${widget.hotel.price.toInt()}",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: primaryColor,
                            ),
                            Text(
                              widget.hotel.location,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.calendar_month_sharp,
                              color: primaryColor,
                            ),
                            Text(
                              "dd/mm/yy",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            Text(
                              "300+",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Details",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      placeHolderString,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  Text(
                    "Amneties",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(authPadding),
                    child: Image.asset(
                      "assets/amneties.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Button(
                  //       text: "Call",
                  //       color: Color(0xffFFA127),
                  //       size: 0.8,
                  //       width: MediaQuery.of(context).size.width / 1.9,
                  //     ),
                  //     Button(
                  //       text: "Book",
                  //       size: 0.8,
                  //       width: MediaQuery.of(context).size.width / 1.9,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
