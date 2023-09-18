import 'package:flutter/material.dart';
import 'package:menu_app/common/widgets/custom_button.dart';
import 'package:menu_app/home/home_page.dart';
import 'package:menu_app/theme/theme.dart';
import 'package:menu_app/welcome/fading_image_carousel.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadingImages(
            imageUrls: const [
              'https://images.squarespace-cdn.com/content/v1/5b3180c5da02bc47fb355ca6/1636085398018-YCEDJ94GEDCZESJ4BLXC/3422BF48-9BE9-41CA-BFC5-7800839CA289.jpeg',
              'https://images.squarespace-cdn.com/content/v1/5b3180c5da02bc47fb355ca6/1636085502527-EUI5DPQC81R8I0H7P0UW/IMG_3580.jpeg',
              'https://images.squarespace-cdn.com/content/v1/5b3180c5da02bc47fb355ca6/1636085645189-LTZ2BHODIA2ZVXCB7N2X/71F3514C-1A6E-4558-A9BB-B7CD284DF538.jpeg',
              'https://images.squarespace-cdn.com/content/v1/5b3180c5da02bc47fb355ca6/1637122302984-9J85UBR2K1Y9I824R7U1/DSC_0481.jpeg',
              'https://images.squarespace-cdn.com/content/v1/5b3180c5da02bc47fb355ca6/1647017812189-PGB3ENC7ML4QAVQQIS0X/chicken_and_pancakes.jpg'
            ],
            duration: const Duration(seconds: 4),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            alignment: const Alignment(0, 0.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'EAT DRINK \n HAPPY HOUR \nBRUNCH',
                  style: AppTheme.introtile,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  '3310 Rhode Island Avenue,  Mount Rainier, MD 20712 — 240-770-8579',
                  style: AppTheme.introSubtile,
                  textAlign: TextAlign.center,
                ),
                Container(
                  alignment: const Alignment(0, 0.85),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CustomButton(
                      width: 136,
                      height: 54,
                      color: AppTheme.buttonBackground2Color,
                      borderRadius: 16,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Text('View Menu', style: AppTheme.cardTitleSmall),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
