import 'package:flutter/material.dart';
import 'package:nubank_interface/app/core/theme/app_colors.dart';
import 'package:nubank_interface/app/core/theme/app_typography.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: AppColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.person_outline_outlined,
                      color: AppColors.white,
                    ),
                    radius: 24,
                    backgroundColor: AppColors.primaryColorVariant,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_outlined),
                        color: Colors.white,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.help_outline_outlined),
                          color: Colors.white),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.attach_email_outlined),
                          color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.02, left: 8),
              child: Text(
                'Olá, Vinícius',
                style: AppTypography.headline6(context)?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
