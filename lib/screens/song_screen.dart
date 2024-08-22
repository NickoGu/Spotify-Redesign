import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:text_scroll/text_scroll.dart';

class SongScreen extends StatefulWidget {
  const SongScreen(
      {super.key,
      required this.songName,
      required this.artistName,
      required this.cover});

  final String songName;
  final String artistName;
  final String cover;

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  IconData icon = Iconsax.heart;
  var currentSliderValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 16),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Estás escuchando', style: TextStyle(fontSize: 16)),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          SizedBox(
            width: 300,
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(widget.cover, fit: BoxFit.cover)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextScroll(
                            widget.songName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            delayBefore: const Duration(seconds: 3),
                            pauseBetween: const Duration(seconds: 3),
                            intervalSpaces: 10,
                            velocity:
                                const Velocity(pixelsPerSecond: Offset(35, 0)),
                          ),
                          Text(
                            widget.artistName,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(icon),
                      iconSize: 20,
                      onPressed: () {
                        icon = Iconsax.heart5;
                        setState(() {});
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: const Color(0XFF1ED760),
              inactiveTrackColor: Colors.white,
              trackShape: const RoundedRectSliderTrackShape(),
              trackHeight: 2.0,
              thumbColor: const Color(0XFF1ED760),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 4.0),
            ),
            child: Slider(
              value: currentSliderValue,
              thumbColor: const Color(0XFF1ED760),
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
              min: 0,
              max: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Iconsax.shuffle, size: 18),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Iconsax.previous, size: 18),
                  onPressed: () {},
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0XFF1ED760),
                  child: IconButton(
                    icon: const Icon(Iconsax.play5,
                        size: 18, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: const Icon(Iconsax.next, size: 18),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Iconsax.repeate_one5, size: 18),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Spacer(),
          const Column(
            children: [
              Icon(Icons.keyboard_arrow_up_rounded,
                  color: Colors.grey, size: 20),
              Text('Lyrics',
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
