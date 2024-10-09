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
          "https://m.media-amazon.com/images/M/MV5BZmI4YTgxOGQtNzU5MS00OTIyLThmMDQtZjljMWFjZDU0YTQ0XkEyXkFqcGc@._V1_.jpg",
      title: "Black Adam",
      genre: 'Action, Fantasy, Sci-Fi',
      synopsis:
          "After being imprisoned for nearly 5,000 years, Black Adam is freed and must now face modern-day heroes to decide if he's a hero or villain.",
      rating: 6.3,
      duration: 125),
  MoviesModel(
      poster:
          "https://m.media-amazon.com/images/M/MV5BMjdlYzAwYTMtMWJlOC00OTQ5LWJhMmYtMDhjNGY4M2RhMGU4XkEyXkFqcGc@._V1_.jpg",
      title: "Shazam! Fury of the Gods",
      genre: 'Action, Comedy, Fantasy',
      synopsis:
          "Billy Batson and his fellow foster kids must fight the Daughters of Atlas to save the world after receiving godlike powers.",
      rating: 6.6,
      duration: 130),
  MoviesModel(
      poster:
          "https://m.media-amazon.com/images/M/MV5BMGJlZjg2ZjEtYjUzOC00NWJmLTlmMTEtZDQ2YjgzNTg5ZjRjXkEyXkFqcGc@._V1_.jpg",
      title: "Ant-Man and the Wasp: Quantumania",
      genre: 'Action, Adventure, Comedy',
      synopsis:
          "Scott Lang and Hope van Dyne face new threats in the Quantum Realm, with Kang the Conqueror aiming for multiversal domination.",
      rating: 6.1,
      duration: 125),
  MoviesModel(
      poster:
          "https://m.media-amazon.com/images/M/MV5BZDU4MGExZGEtMWRlMC00NjRhLThhZGQtMGIxMDFlNjE5MWVlXkEyXkFqcGc@._V1_.jpg",
      title: "The Flash",
      genre: 'Action, Adventure, Drama',
      synopsis:
          "Barry Allen uses his super speed to travel back in time, but his actions result in a multiverse of chaos and alternate realities.",
      rating: 6.7,
      duration: 144)
];
