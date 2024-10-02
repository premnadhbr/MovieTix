class MoviesModel {
  final String poster, title, genre, synopsis;
  final double rating;
  final double duration;

  MoviesModel(
      {required this.poster,
      required this.title,
      required this.genre,
      required this.synopsis,
      required this.rating,
      required this.duration});
}

List<MoviesModel> movies = [
  MoviesModel(
      poster:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaNwh58cSliL7X_iwDtd9pQFYUx38Z64AyXA&s",
      title: "Blue beetle",
      genre: 'Drama',
      synopsis: synopsis,
      rating: 7.5,
      duration: 150)
];

const String synopsis =
    "synopsis: in the year 2147, humanity lives in a dystopian society where time is the only";
