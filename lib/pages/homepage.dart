import 'package:flutter/material.dart';
import 'package:hallify/pages/hotel_info.dart';
import 'package:hallify/utils/constants.dart';
import 'package:hallify/widgets/input.dart';
import 'package:hallify/widgets/rating.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            color: const Color(0xffAFACAC),
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(authPadding),
            topRight: Radius.circular(authPadding),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/map.png",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: authPadding, vertical: authPadding * 1.5),
              child: Input(hintText: "Search"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: authPadding),
              child: SizedBox(
                height: size / 3.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: authPadding),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => HotelInfo(
                              hotel: hotels[index],
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: size / 4,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade300.withOpacity(0.5),
                                borderRadius:
                                    BorderRadius.circular(authPadding * 0.5),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        authPadding * 0.5),
                                    child: Image.asset(
                                      hotels[index].imgList[0],
                                    ),
                                  ),
                                  Text(hotels[index].name),
                                  Rating(
                                    rating: hotels[index].review,
                                    size: size / 4,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
