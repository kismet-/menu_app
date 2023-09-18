import 'dart:ui';

import 'package:flutter/material.dart' hide MenuController;
import 'package:get/instance_manager.dart';
import 'package:menu_app/common/widgets/custom_button.dart';
import 'package:menu_app/detail/details_page.dart';
import 'package:menu_app/home/menu_controller.dart';
import 'package:menu_app/model/menu_item.dart';
import 'package:menu_app/theme/theme.dart';

class Menu extends StatelessWidget {
  final MenuItem menuItem;
  final String type;
  final int index;
  Menu({
    Key? key,
    required this.menuItem,
    required this.type,
    required this.index,
  }) : super(key: key);

  final controller = Get.find<MenuController>().menuItems;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(menuItem: menuItem),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 22),
        child: Container(
          padding: const EdgeInsets.all(9),
          width: 140,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff282C34),
                Color(0xff10131A),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    height: 180,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.network(
                          menuItem.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.08),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.star,
                              color: AppTheme.reviewIconColor,
                              size: 15,
                            ),
                            Text(
                              menuItem.rating,
                              style: AppTheme.reviewRatting,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Text(menuItem.name, style: AppTheme.cardTitleSmall),
              const SizedBox(height: 3),
              Text(
                  type == 'SANDWICHES'
                      ? index <= 3
                          ? 'COLD'
                          : 'HOT'
                      : '',
                  style: AppTheme.cardSubtitleSmall),
              const Spacer(),
              Row(
                children: [
                  Row(
                    children: [
                      Text('\$', style: AppTheme.priceCurrencySmall),
                      const SizedBox(width: 3),
                      Text(
                        menuItem.price.toString(),
                        style: AppTheme.priceValueSmall,
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomButton(
                    onTap: () {},
                    height: 31,
                    width: 34,
                    color: AppTheme.buttonBackground1Color,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
