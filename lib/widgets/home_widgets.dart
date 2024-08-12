import 'package:flutter/material.dart';

class TodaysHitsWidget extends StatelessWidget {
  const TodaysHitsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Today's Hits",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          SizedBox(
            height: 164,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 124,
                          height: 124,
                          color: Colors.grey,
                        ),
                      ),
                      const Text(
                        "Texturas",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Soda Stereo",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Profile", style: TextStyle(fontSize: 24)),
      ],
    );
  }
}

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("History", style: TextStyle(fontSize: 24)),
      ],
    );
  }
}

class PlaylistWidget extends StatelessWidget {
  const PlaylistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Playlist", style: TextStyle(fontSize: 24)),
      ],
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/banner.png',
        ),
        const SizedBox(height: 32),
        const TodaysHitsWidget(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height / 10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(right: 48.0),
                child: Text("Artists", style: TextStyle(fontSize: 18)),
              );
            },
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
