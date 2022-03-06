class Pokemon{
  final String name;
  final String id;
  final String image;

  factory Pokemon.fromMap(Map<String, dynamic> json){
    return Pokemon(
      name: json['name'],
      id: json['id'],
      image: json['img'],
    );
  }

  Pokemon({
    required this.name,
    required this.id,
    required this.image,
  });
}
