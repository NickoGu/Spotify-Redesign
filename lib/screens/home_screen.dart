import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_redesign/widgets/home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeWidget(),
    const PlaylistWidget(),
    const HistoryWidget(),
    const ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 64,
        color: const Color.fromARGB(255, 15, 15, 15),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          alignment: AlignmentDirectional.topCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Iconsax.home_15,
                    color: _selectedIndex == 0
                        ? const Color(0XFF1ED760)
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Iconsax.music_playlist,
                    color: _selectedIndex == 1
                        ? const Color(0XFF1ED760)
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                const SizedBox(width: 64),
                IconButton(
                  icon: Icon(
                    Iconsax.clock,
                    color: _selectedIndex == 2
                        ? const Color(0XFF1ED760)
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Iconsax.profile_circle,
                    color: _selectedIndex == 3
                        ? const Color(0XFF1ED760)
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
            const Positioned(
              top: -15,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/icons/bnb_logo.png'),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Iconsax.search_normal_1),
          onPressed: () {},
        ),
        actions: [
          IconButton(icon: const Icon(Iconsax.setting_24), onPressed: () {})
        ],
        title: Image.asset('assets/logo.png', height: 30),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: _pages[
              _selectedIndex], // Mostrar el widget correspondiente al índice seleccionado
        ),
      ),
    );
  }
}
