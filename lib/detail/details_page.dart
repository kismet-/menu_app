import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/common/widgets/custom_button.dart';
import 'package:menu_app/common/widgets/custom_icon_button.dart';
import 'package:menu_app/model/menu_item.dart';
import 'package:menu_app/theme/theme.dart';

class DetailPage extends StatelessWidget {
  final MenuItem menuItem;
  const DetailPage({
    Key? key,
    required this.menuItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section -> Card Image
              Expanded(
                child: CardImageView(menuItem: menuItem),
              ),
              const SizedBox(height: 30),
              // Section -> Description
              Text(
                'Description',
                style: AppTheme.descriptionTitle,
              ),
              const SizedBox(height: 15),
              Expanded(
                  child: DescriptionView(
                      description:
                          menuItem.longDescription ?? menuItem.description)),
              const SizedBox(height: 30),
              const SizedBox(height: 30),
              // Section -> Price
              SizedBox(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Price',
                          style: AppTheme.priceTitleLarge,
                        ),
                        const Spacer(),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: '\$ ',
                                  style: AppTheme.priceCurrencyLarge),
                              TextSpan(
                                text: menuItem.price.toString(),
                                style: AppTheme.priceValueLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomButton(
                      onTap: () {},
                      width: 188,
                      height: 56,
                      borderRadius: 16,
                      color: AppTheme.buttonBackground1Color,
                      child: Text('Buy Now', style: AppTheme.buttonTextStyle),
                    ),
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

class CardImageView extends StatelessWidget {
  final MenuItem menuItem;
  const CardImageView({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              menuItem.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: CustomIconButton(
            onTap: () {
              Navigator.pop(context);
            },
            width: 38,
            height: 38,
            borderRadius: 10,
            child: const Icon(
              CupertinoIcons.back,
              color: AppTheme.iconColor,
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: CustomIconButton(
            onTap: () {},
            width: 38,
            height: 38,
            borderRadius: 10,
            child: const Icon(
              Icons.favorite,
              color: AppTheme.iconColor,
            ),
          ),
        ),

        // BlurCardView
        BlurCardView(
          menuItem: menuItem,
        ),
      ],
    );
  }
}

class BlurCardView extends StatelessWidget {
  final MenuItem menuItem;
  const BlurCardView({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4,
          sigmaY: 4,
        ),
        child: Container(
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            menuItem.name,
                            maxLines: 2,
                            style: AppTheme.cardTitleLarge,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            menuItem.description,
                            style: AppTheme.cardSubtitleLarge,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.star,
                      color: AppTheme.reviewIconColor,
                      size: 20,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      menuItem.rating.toString(),
                      style: AppTheme.cardTitleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DescriptionView extends StatelessWidget {
  final String description;
  const DescriptionView({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: description,
              style: AppTheme.descriptionContent,
            ),
            TextSpan(
              text: ' ...',
              style: AppTheme.descriptionReadMore,
            ),
            TextSpan(
              text: ' Read More',
              style: AppTheme.descriptionReadMore,
            ),
          ],
        ),
      ),
    );
  }
}
