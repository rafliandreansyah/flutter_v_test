import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';

class CardServiceLocation extends StatelessWidget {
  final String serviceName;
  final String price;
  final String lenmarcName;
  final String lenmarcLocation;
  final String lenmarcPhoto;
  const CardServiceLocation({
    super.key,
    required this.serviceName,
    required this.price,
    required this.lenmarcName,
    required this.lenmarcLocation,
    required this.lenmarcPhoto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            spreadRadius: 5,
            blurRadius: 8,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(
                15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    serviceName,
                    style: proximaSemiBold.copyWith(
                      fontSize: 14,
                      color: colorPrimary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    price,
                    style: proximaSemiBold.copyWith(
                      fontSize: 14,
                      color: colorOrange,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/ic_lenmarc.png',
                            width: 14,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              lenmarcName,
                              style: proximaSemiBold.copyWith(
                                fontSize: 14,
                                color: colorGrey,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/ic_location.png',
                            width: 16,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              lenmarcLocation,
                              style: proximaRegular.copyWith(
                                fontSize: 14,
                                color: colorLightGrey,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 120,
            height: double.infinity,
            decoration: BoxDecoration(
              color: colorLightBlue,
              borderRadius: BorderRadius.circular(
                16,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  lenmarcPhoto,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
