class Songs {
  final String name;
  final String artist;
  final String cover;
  final String thisIsImage;
  final String bandImage;
  Songs(
      {required this.name,
      required this.artist,
      required this.cover,
      required this.thisIsImage,
      required this.bandImage});

  factory Songs.fromJson(Map<String, dynamic> json) {
    return Songs(
        name: json['name'],
        artist: json['artist'],
        cover: json['cover'],
        thisIsImage: json['thisIsImage'],
        bandImage: json['bandImage']);
  }
}
