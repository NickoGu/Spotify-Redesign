class Songs {
  final String name;
  final String artist;
  final String image;

  Songs({required this.name, required this.artist, required this.image});

  factory Songs.fromJson(Map<String, dynamic> json) {
    return Songs(
      name: json['name'],
      artist: json['artist'],
      image: json['image'],
    );
  }
}
