import 'package:flutter/material.dart';
import 'package:hallify/models/hotel.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/rating.dart';

class Search extends StatefulWidget {
  final String location;
  const Search({super.key, required this.location});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Hotel> matchedHotels(String s) {
    List<Hotel> temp = [];
    for (var element in hotels) {
      if (element.location == s) temp.add(element);
    }

    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () => Navigator.of(context).pop(), child: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: authPadding),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: primaryColor,
                  size: 38,
                ),
                Text(
                  widget.location,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: authPadding,
            ),
            Container(
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(99)),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: authPadding, vertical: authPadding / 2),
              child: Row(
                children: [
                  const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    "Location",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 16, color: Colors.white),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...matchedHotels(widget.location)
                        .map((e) => searchResults(context, e)),
                    const SizedBox(
                      height: authPadding,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchResults(BuildContext context, Hotel hotel) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const SizedBox(
          height: authPadding,
        ),
        Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  hotel.imgList[0],
                  fit: BoxFit.cover,
                  width: width,
                  height: width / 2,
                )),
            Positioned(
              bottom: authPadding,
              left: authPadding,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(authPadding / 2),
                ),
                padding: const EdgeInsets.all(authPadding / 4),
                child: const Text("100m"),
              ),
            )
          ],
        ),
        const SizedBox(
          height: authPadding / 2,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  hotel.name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        height: 0,
                        color: primaryColor,
                        fontSize: 24,
                      ),
                ),
                Row(
                  children: [
                    Text(
                      "Views:",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "679",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: primaryColor,
                            fontSize: 18,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                setState(() {
                  hotel.isLiked = !hotel.isLiked;
                });
              },
              borderRadius: BorderRadius.circular(99),
              child: hotel.isLiked
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: primaryColor,
                    ),
            ),
          ],
        ),
        Row(
          children: [
            Rating(
              rating: hotel.review,
              size: width / 4,
              color: primaryColor,
            ),
            Text(
              "(${hotel.reviewCount.toInt()} reviews)",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: primaryColor),
            ),
            Expanded(child: Container()),
            Text(
              "\$${hotel.price.toInt()}",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
