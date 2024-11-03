import 'package:chat_app/core/constants/asset_icons.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/features/calls/presentation/views/calls_view.dart';
import 'package:chat_app/features/chats/presentation/views/chats_view.dart';
import 'package:chat_app/features/status/presentation/views/status_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    ChatsView(),
    StatusView(),
    CallsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: AssetIcons.chats,
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: AssetIcons.status,
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: AssetIcons.calls,
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsApp.primaryColor,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsApp.secondryColor,
        elevation: 0,
        onPressed: () {},
        child: AssetIcons.newChat,
      ),
    );
  }
}
