import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_v_test/bloc/bloc/navigation_bloc.dart';
import 'package:flutter_v_test/screen/home_screen.dart';
import 'package:flutter_v_test/screen/profile_screen.dart';
import 'package:flutter_v_test/screen/setting_screen.dart';
import 'package:flutter_v_test/widget/banner_notification.dart';
import 'package:flutter_v_test/widget/drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const route = '/main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerCustom(
        homeTap: () {
          BlocProvider.of<NavigationBloc>(context)
              .add(NavigationInitialEvent());
          Navigator.of(context).pop();
        },
        profileTap: () {
          BlocProvider.of<NavigationBloc>(context)
              .add(NavigationProfilesEvent());
          Navigator.of(context).pop();
        },
        settingTap: () {
          BlocProvider.of<NavigationBloc>(context)
              .add(NavigationSettingsEvent());
          Navigator.of(context).pop();
        },
      ),
      key: _key,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openEndDrawer();
          },
          icon: const Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/ic_cart.png',
              width: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/ic_new_notification.png',
              width: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: BlocBuilder<NavigationBloc, NavigationState>(
                builder: (context, state) {
                  if (state is NavigationProfiles) {
                    return const ProfileScreen();
                  } else if (state is NavigationSettings) {
                    return const SettingScreen();
                  } else {
                    return const HomeScreen();
                  }
                },
              ),
            ),
            BannerNotification(
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
