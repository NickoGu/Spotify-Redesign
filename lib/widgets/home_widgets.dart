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
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(64),
            child: SizedBox(
              width: double.infinity,
              //color: const Color(0xFF333333),
              height: MediaQuery.sizeOf(context).height / 2.5,
              child: const Column(
                children: [
                  SizedBox(height: 8),
                  CircleAvatar(
                    radius: 40,
                  ),
                  SizedBox(height: 8),
                  Text("User Name", style: TextStyle(fontSize: 18)),
                  Text("email@email.com",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("Followers",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400)),
                          Text("1.2M", style: TextStyle(fontSize: 20))
                        ],
                      ),
                      Column(
                        children: [
                          Text("Following",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400)),
                          Text("1.2M", style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Iconsax.user_add),
                    onPressed: () {},
                  ),
                  const Text("Find a friend")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Iconsax.send_14),
                    onPressed: () {},
                  ),
                  const Text("Share")
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Most Played", style: TextStyle(fontSize: 24)),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.maxFinite,
                      child: ListTile(
                        title: const Text("Song Name",
                            style: TextStyle(fontSize: 16)),
                        subtitle: const Text("Artist Name",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w200)),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 56,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Iconsax.menu_14),
                          onPressed: () {},
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
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
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height - 150,
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
                  Text('Playlist: $index'),
                ],
              );
            },
          ),
        )
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
