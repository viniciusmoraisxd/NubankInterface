import 'package:flutter/material.dart';
import 'package:nubank_interface/app/core/theme/app_colors.dart';
import 'package:nubank_interface/app/core/theme/app_typography.dart';

class AccountComponent extends StatelessWidget {
  const AccountComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.036,
            horizontal: 24),
        height: MediaQuery.of(context).size.height * 0.15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Conta',
                  style: AppTypography.headline6(context),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.grey700,
                )
              ],
            ),
            Text(
              "R\$ 399,92",
              style: AppTypography.headline5(context)
                  ?.copyWith(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
