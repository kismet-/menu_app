import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:menu_app/common/widgets/custom_container.dart';
import 'package:menu_app/common/widgets/custom_icon_button.dart';
import 'package:menu_app/home/menu_controller.dart';
import 'package:menu_app/home/menu_item.dart';
import 'package:menu_app/theme/theme.dart';
import 'package:menu_app/welcome/welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const menuSections = [
    'APPETIZERS',
    'ENTREES',
    'SANDWICHES',
    'SOUP & SALAD COMBOS',
    'FAJITAS',
    'TACOS',
    'ENCHILADAS',
    'QUICHE',
    'GREEN SALADS',
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, top: 30, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 25),
              Text(
                'Find the best',
                style: AppTheme.tileLarge,
              ),
              Text(
                'meal for you',
                style: AppTheme.tileLarge,
              ),
              const SizedBox(height: 28),
              const SizedBox(height: 25),
              // Chips
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    final item = HomePage.menuSections[index];
                    bool isActive = _activeIndex == index;
                    return GestureDetector(
                      onTap: () {
                        Get.find<MenuController>().onMenuOptionTapped(item);
                        setState(() {
                          _activeIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 27),
                        child: Column(
                          children: [
                            Text(
                              item,
                              style: isActive
                                  ? AppTheme.chipActive
                                  : AppTheme.chipInactive,
                            ),
                            const SizedBox(height: 2),
                            Icon(
                              Icons.circle,
                              color: isActive
                                  ? AppTheme.iconActiveColor
                                  : Colors.transparent,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 325,
                      child: Obx(() => ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                Get.find<MenuController>().menuItems.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Menu(
                                index: index,
                                type: HomePage.menuSections[_activeIndex],
                                menuItem:
                                    Get.find<MenuController>().menuItems[index],
                              );
                            },
                          )),
                    ),
                    const SizedBox(height: 25),
                    Text('Recommended for you', style: AppTheme.subtileLarge),
                    const SizedBox(height: 17),
                    // SizedBox(
                    //   height: 350,
                    //   child: ListView.builder(
                    //     physics: const NeverScrollableScrollPhysics(),
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: 10,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return const HorizontalCardWidget();
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WelcomePage(),
              ),
            );
          },
          width: 45,
          height: 45,
          child: const Icon(
            Icons.widgets,
            color: AppTheme.iconColor,
          ),
        ),
        const Spacer(),
        CustomContainer(
          width: 45,
          height: 45,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://i.imgur.com/uTjWuc8.jpg',
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
