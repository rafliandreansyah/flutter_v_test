import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';
import 'package:flutter_v_test/widget/button_primary.dart';
import 'package:flutter_v_test/widget/text_field_default.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final idNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 40,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(
              10,
            ),
            spreadRadius:
                5, //also play with this two values to achieve your ideal result
            blurRadius: 8,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.circular(
                25,
              ),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/img_bg_card_profiles.png',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 16,
                bottom: 8,
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(
                          2,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/img_profile.jpg',
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
                                  style: gilroyBold.copyWith(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Praja',
                                  style: gilroyMedium.copyWith(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Text(
                              'Membership BBLK',
                              style: proximaSemiBold.copyWith(
                                fontSize: 12,
                                color: Colors.white.withAlpha(
                                  90,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi',
                    style: proximaRegular.copyWith(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pilih data yang ingin ditampilkan',
                  style: gilroySemiBold.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/ic_profile_info.png',
                      width: 40,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Data Diri',
                            style: gilroySemiBold.copyWith(color: colorBlack),
                          ),
                          Text(
                            'Data diri anda sesuai KTP',
                            style: proximaRegular.copyWith(
                              fontSize: 12,
                              color: colorLightGrey,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'assets/icons/ic_location_profile.png',
                      width: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldDefault(
                  label: 'Nama Depan',
                  hint: 'Masukan nama depan',
                  controller: firstNameController,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldDefault(
                  label: 'Nama Belakang',
                  hint: 'Masukan nama belakang',
                  controller: lastNameController,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldDefault(
                  label: 'Email',
                  hint: 'Masukan email',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldDefault(
                  label: 'No Telpon',
                  hint: 'Masukan no. telpon',
                  controller: phoneController,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldDefault(
                  label: 'No. KTP',
                  hint: 'Masukan no. KTP',
                  controller: idNumberController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 4.0,
                      ),
                      child: Image.asset(
                        'assets/icons/ic_info.png',
                        width: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        'Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya',
                        style: proximaRegular.copyWith(
                          fontSize: 12,
                          color: colorGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                ButtonPrimary(
                  label: 'Simpan Profile',
                  onPressed: () {},
                  iconEnd: Icons.save,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
