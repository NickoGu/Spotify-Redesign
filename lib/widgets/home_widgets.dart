import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
          height: MediaQuery.sizeOf(context).height / 1.8,
          child: ContainedTabBarView(
            tabs: const [
              Text('Artists'),
              Text('Albums'),
              Text('Podcasts'),
              Text('Genres'),
            ],
            views: [
              const ArtistsWidget(),
              const AlbumsWidget(),
              const PodcastsWidget(),
              SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, snapshot) {
                        return ListTile(
                          title: const Text('Rock Nacional'),
                          subtitle: const Text('123165 monthly listeners'),
                          trailing: IconButton(
                            icon: const Icon(Icons.chevron_right),
                            onPressed: () {},
                          ),
                        );
                      })),
            ],
            onChange: (index) => print(index),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class PodcastsWidget extends StatelessWidget {
  const PodcastsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(height: 8),
                Text('Podcast: $index'),
              ],
            );
          },
        ));
  }
}

class AlbumsWidget extends StatelessWidget {
  const AlbumsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(height: 8),
                Text('Album: $index'),
              ],
            );
          },
        ));
  }
}

class ArtistsWidget extends StatelessWidget {
  const ArtistsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, snapshot) {
          return SizedBox(
              width: double.infinity,
              child: ListTile(
                leading: const CircleAvatar(),
                title:
                    const Text('Charly García', style: TextStyle(fontSize: 16)),
                subtitle: const Text('2.6M monthly listeners',
                    style: TextStyle(fontSize: 10)),
                trailing: IconButton(
                  icon: const Icon(Icons.chevron_right),
                  onPressed: () {},
                ),
              ));
        });
  }
}
