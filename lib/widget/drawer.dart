import 'package:flutter/material.dart';
import 'package:flutter_v_test/constant/pref.dart';
import 'package:flutter_v_test/screen/login_screen.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';
import 'package:flutter_v_test/widget/menu_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 60,
            height: double.infinity,
            decoration: BoxDecoration(
              color: colorPrimary.withAlpha(
                90,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: mediaQueryHeight * 0.08,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Image.asset(
                      'assets/icons/ic_close.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Drawer(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              child: ListView(
                padding: EdgeInsets.only(
                  left: mediaQueryWidth * 0.1,
                  right: mediaQueryWidth * 0.1,
                  top: mediaQueryHeight * 0.2,
                ),
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img_profile.jpg'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  'Angga',
                                  style: gilroyBold,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Praja',
                                  style: gilroyMedium,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Membership BBLK',
                              style: proximaSemiBold.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: mediaQueryWidth * 0.25,
                    ),
                    child: MenuDrawer(
                      onTap: () {},
                      label: 'Profile Saya',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: mediaQueryWidth * 0.25,
                    ),
                    child: MenuDrawer(
                      onTap: () {},
                      label: 'Pengaturan',
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(
                      right: mediaQueryWidth * 0.25,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: colorRed,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () async {
                        final pref = await SharedPreferences.getInstance();
                        await pref.remove(tokenPrefKey);
                        Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.route);
                      },
                      child: Text(
                        'Logout',
                        style: proximaRegular.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.1,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ikuti kami di',
                          style: gilroyMedium.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/ic_facebook.png',
                                width: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/ic_instagram.png',
                                width: 14,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/icons/ic_twitter.png',
                                width: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'FAQ',
                          style: proximaBold.copyWith(
                            color: colorLightGrey,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Terms and Conditions',
                          style: proximaBold.copyWith(
                            color: colorLightGrey,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
