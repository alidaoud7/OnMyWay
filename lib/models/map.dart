


class Restaurants {
  List<String> favorites;
  String uid;
  String id;
  Restaurants(
  {
    required this.uid,
    required this.favorites,
    required this.id
}
      );
  factory Restaurants.fromJson(Map< String , dynamic> map, {required String id}) => Restaurants(
    id: id,
    uid:map["uid"],
    favorites: map["favorites"] == null
        ? []
        : map["favorites"].map<String>((i) => i as String).toList());
      Map<String, dynamic> toMap() {
      return{
        "uid":uid,
        "favorites":favorites,
  };
}

}