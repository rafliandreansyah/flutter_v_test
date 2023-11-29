import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';

class BannerNotification extends StatelessWidget {
  final Function() onPressed;
  const BannerNotification({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      decoration: BoxDecoration(
        color: colorPrimary,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/img_bg_banner_notification.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 22,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Ingin mendapat update dari kami ?',
                style: gilroyBold.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Dapatkan\nnotifikasi',
                    style: proximaRegular.copyWith(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
