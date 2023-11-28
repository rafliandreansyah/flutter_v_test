import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';
import 'package:flutter_v_test/widget/rating.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(
              10,
            ),
            spreadRadius: 5,
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
          SizedBox(
            height: 115,
            width: double.infinity,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Image.asset(
                      'assets/images/img_placeholder_product.png',
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Rating(
                    rating: '5',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Suntik Steril',
                  style: proximaSemiBold.copyWith(
                    fontSize: 14,
                    color: colorPrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Rp. 10.000',
                        style: proximaSemiBold.copyWith(
                          fontSize: 12,
                          color: colorOrange,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 2,
                      ),
                      decoration: BoxDecoration(
                        color: colorLightGreen,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Ready Stok',
                          style: proximaRegular.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
