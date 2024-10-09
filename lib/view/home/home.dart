import 'dart:math';

import 'package:cinema_ticket_booking_app/model/catogery_model.dart';
import 'package:cinema_ticket_booking_app/model/movies_model.dart';
import 'package:cinema_ticket_booking_app/utils/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controller;
  int currentIndex = 1;
  double pageoffset = 1;
  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: currentIndex,
      viewportFraction: 0.7,
    )..addListener(
        () {
          setState(() {
            pageoffset = controller.page!;
          });
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerpart(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            searchField(),
            const SizedBox(height: 35),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 13,
                            color: buttonColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: buttonColor,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                customItems(),
                const SizedBox(height: 40),
              ],
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Showing this month",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: PageView.builder(
                    controller: controller,
                    itemCount: movies.length,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value % movies.length;
                      });
                    },
                    itemBuilder: (context, index) {
                      double scale = max(
                        0.6,
                        (1 - (pageoffset - index).abs() + 0.6),
                      );
                      double angle = (controller.position.haveDimensions
                              ? index.toDouble() - (controller.page ?? 0)
                              : index.toDouble() - 1) *
                          5;
                      angle = angle.clamp(-5, 5);
                      final movie = movies[index % movies.length];
                      // final movie = movies[index];
                      return Padding(
                        padding:
                            EdgeInsets.only(top: 100 - (scale / 1.6 * 100)),
                        child: GestureDetector(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Transform.rotate(
                              angle: angle * pi / 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  25,
                                ),
                                child: Image.network(
                                  movie.poster,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Row customItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        categories.length,
        (index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  categories[index].emoji,
                  fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                categories[index].name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  TextField searchField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 19),
        fillColor: Colors.white.withOpacity(0.05),
        filled: true,
        hintText: "Search",
        hintStyle: const TextStyle(color: Colors.white54),
        prefixIcon: const Icon(
          Icons.search,
          size: 33,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(27),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  AppBar headerpart() {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "Welcome Angelina",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: Colors.white54),
                    ),
                    TextSpan(
                      text: "👋",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
                ),
                SizedBox(height: 10),
                Text(
                  "Let's relax and watch movie!",
                  style: TextStyle(
                      color: Colors.white,
                      height: 0.5,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ],
            ),
            Container(
              width: 40,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/premium-photo/cute-emoji-person-speaking-with-no-background-6_634278-1251.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
