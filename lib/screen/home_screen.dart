import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';
import 'package:flutter_v_test/widget/%20banner_notification.dart';
import 'package:flutter_v_test/widget/button_category.dart';
import 'package:flutter_v_test/widget/card_product.dart';
import 'package:flutter_v_test/widget/card_service_location.dart';
import 'package:flutter_v_test/widget/drawer.dart';
import 'package:flutter_v_test/widget/toggle_custom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const route = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<bool> isSelected = [true, false];
  List<String> titles = ['Satuan', 'Paket Pemeriksaan'];

  @override
  Widget build(BuildContext context) {
    Widget Card1() {
      return Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                16,
              ),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFFEFEFE),
                  Color(0xFFFAFAFA),
                  Color(0xFFDAE9F9)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: colorPrimary.withAlpha(30),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(
                    0,
                    20,
                  ),
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Text(
                              'Solusi,',
                              style: gilroyMedium.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Kesehatan Anda',
                              style: gilroyBold.copyWith(
                                fontSize: 18,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Update informasi seputar kesehatan semua bisa disini !',
                          style: proximaRegular.copyWith(
                            fontSize: 12,
                            color: colorLightBlue,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: colorPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Selengkapnya',
                            style: gilroySemiBold.copyWith(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 80,
                        right: 30,
                      ),
                      child: Image.asset(
                        'assets/images/img_indicator.png',
                        height: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/img_calendar.png',
              width: 140,
            ),
          ),
        ],
      );
    }

    Widget Card2() {
      return Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                16,
              ),
              boxShadow: [
                BoxShadow(
                  color: colorPrimary.withAlpha(30),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(
                    0,
                    20,
                  ),
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Layanan Khusus',
                          style: gilroySemiBold.copyWith(
                            fontSize: 18,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Tes Covid 19, Cegah Corona Sedini Mungkin',
                          style: proximaRegular.copyWith(
                            fontSize: 12,
                            color: colorLightBlue,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Daftar Tes',
                                style: gilroyBold.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.arrow_forward_rounded,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 120,
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Image.asset(
              'assets/images/img_drug.png',
              width: 120,
            ),
          ),
        ],
      );
    }

    Widget Card3() {
      return Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                16,
              ),
              boxShadow: [
                BoxShadow(
                  color: colorPrimary.withAlpha(30),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(
                    0,
                    20,
                  ),
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 120,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Track Pemeriksaan',
                          style: gilroySemiBold.copyWith(
                            fontSize: 18,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Kamu dapat mengecek progress pemeriksaanmu disini',
                          style: proximaRegular.copyWith(
                            fontSize: 12,
                            color: colorLightBlue,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Track',
                                style: gilroyBold.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.arrow_forward_rounded,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 30,
            child: Image.asset(
              'assets/images/img_search.png',
              width: 100,
            ),
          ),
        ],
      );
    }

    Widget SearchAndFilter() {
      return Row(
        children: [
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(10),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(
                      0,
                      8,
                    ),
                  )
                ]),
            child: Image.asset(
              'assets/icons/ic_filter.png',
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 8,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(10),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(
                        0,
                        8,
                      ),
                    )
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/ic_search.png',
                      width: 20,
                    ),
                    enableFeedback: false,
                  ),
                  hintText: 'Search',
                  hintStyle: proximaRegular.copyWith(
                    fontSize: 16,
                    color: colorLightGrey,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      endDrawer: const DrawerCustom(),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card1(),
                  const SizedBox(
                    height: 10,
                  ),
                  Card2(),
                  const SizedBox(
                    height: 10,
                  ),
                  Card3(),
                  const SizedBox(
                    height: 40,
                  ),
                  SearchAndFilter(),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ListView(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ButtonCategory(
                          label: 'All Product',
                          isSelected: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ButtonCategory(
                          label: 'Layanan Kesehatan',
                          isSelected: false,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ButtonCategory(
                          label: 'Alat Kesehatan',
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 195,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      children: const [
                        CardProduct(),
                        SizedBox(
                          width: 16,
                        ),
                        CardProduct(),
                        SizedBox(
                          width: 16,
                        ),
                        CardProduct(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Pilih Tipe Layanan Kesehatan Anda',
                    style: gilroySemiBold.copyWith(
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ToggleCustom(
                    isSelected: isSelected,
                    titles: titles,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const CardServiceLocation(
                    serviceName:
                        'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                    price: 'Rp. 14.000',
                    lenmarcName: 'Lenmarc Surabaya',
                    lenmarcLocation: 'Dukuh Pakis, Surabaya',
                    lenmarcPhoto: 'assets/images/img_location1.png',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CardServiceLocation(
                    serviceName:
                        'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                    price: 'Rp. 14.000',
                    lenmarcName: 'Lenmarc Surabaya',
                    lenmarcLocation: 'Dukuh Pakis, Surabaya',
                    lenmarcPhoto: 'assets/images/img_location2.png',
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
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
