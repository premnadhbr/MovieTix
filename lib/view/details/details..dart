import 'package:cinema_ticket_booking_app/model/movies_model.dart';
import 'package:cinema_ticket_booking_app/utils/const.dart';
import 'package:cinema_ticket_booking_app/view/reservation/reservation.dart';
import 'package:cinema_ticket_booking_app/widgets/movie_info.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final MoviesModel moviesModel;
  const DetailsScreen({super.key, required this.moviesModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          "Movie Detail",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Hero(
                tag: 'Hero',
                child: SizedBox(
                  height: 335,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          moviesModel.poster,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MovieInfo(
                            icon: Icons.videocam_rounded,
                            name: "General",
                            value: moviesModel.genre,
                          ),
                          const MovieInfo(
                            icon: Icons.timer,
                            name: "Duration",
                            value: "2.5 m",
                          ),
                          MovieInfo(
                            icon: Icons.star,
                            name: "Rating",
                            value: moviesModel.rating.toString(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                moviesModel.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
              const Text(
                "Synopsis",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                moviesModel.synopsis,
                style: const TextStyle(
                  fontSize: 13,
                  height: 2,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xff1c1c27),
            blurRadius: 60,
            spreadRadius: 80,
          ),
        ]),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {},
          label: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReservationScreen(),
                  ));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            color: buttonColor,
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: const Center(
              child: Text(
                "Get Reservation",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
