import 'package:flutter/material.dart';
import 'package:nubank_interface/app/core/theme/app_colors.dart';
import 'package:nubank_interface/app/core/theme/app_typography.dart';

class CardsComponent extends StatelessWidget {
  const CardsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        height: MediaQuery.of(context).size.height * 0.07,
        padding: const EdgeInsets.only(
          left: 16.0,
        ),
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 18,
        ),
        child: Row(
          children: [
            Icon(
              Icons.phone_iphone_outlined,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Meus cartões',
                style: AppTypography.subtitle2(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
