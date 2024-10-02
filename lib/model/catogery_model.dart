// ignore_for_file: public_member_api_docs, sort_constructors_first
class CatogeryModel {
  final String emoji, name;
  CatogeryModel({required this.name, required this.emoji});
}

List<CatogeryModel> categories = [
  CatogeryModel(
    name: "Romance",
    emoji: "assets/images/love.png",
  ),
  CatogeryModel(
    name: "Comedy",
    emoji: "assets/images/comedy.png",
  ),
  CatogeryModel(
    name: "Horror",
    emoji: "assets/images/horror.png",
  ),
  CatogeryModel(
    name: "Drama",
    emoji: "assets/images/drama.png",
  ),
];
