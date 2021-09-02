import 'package:flutter/material.dart';
import 'package:nubank_interface/app/core/theme/app_colors.dart';
import 'package:nubank_interface/app/core/theme/app_typography.dart';

class OptionTileComponent extends StatelessWidget {
  const OptionTileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(

      delegate: SliverChildListDelegate([
        Container(
          height: 1,
          color: AppColors.grey300,
          margin: EdgeInsets.only(top: 24),
        ),
        OptionTileItem(
          icon: Icons.phone_iphone_outlined,
          optionTitle: "Cartão de crédito",
          optionSubtitleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fatura atual',
                style: AppTypography.subtitle1(context)
                    ?.copyWith(color: AppColors.grey600, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'R\$ 0,00',
                  style: AppTypography.headline5(context)
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'Limite disponível de R\$ 700,00',
                style: AppTypography.bodyText(context)
                    ?.copyWith(color: AppColors.grey600),
              ),
            ],
          ),
        ),
        OptionTileItem(
          icon: Icons.paid_outlined,
          optionTitle: "Empréstimo",
          optionSubtitleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Valor disponível de até',
                style: AppTypography.bodyText(context)
                    ?.copyWith(color: AppColors.grey600),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  'R\$ 25.000,00',
                  style: AppTypography.bodyText(context)
                      ?.copyWith(color: AppColors.grey600),
                ),
              ),
            ],
          ),
        ),
        OptionTileItem(
          icon: Icons.favorite_border_outlined,
          optionTitle: "Seguro de vida",
          optionSubtitleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Conheça o Nubank Vida: um seguro simples e que cabe no seu bolso',
                  style: AppTypography.bodyText(context)
                      ?.copyWith(color: AppColors.grey600),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class OptionTileItem extends StatelessWidget {
  const OptionTileItem(
      {Key? key,
      required this.icon,
      required this.optionTitle,
      required this.optionSubtitleWidget})
      : super(key: key);

  final IconData icon;
  final String optionTitle;
  final Widget optionSubtitleWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      optionTitle,
                      style: AppTypography.headline6(context),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                optionSubtitleWidget
              ],
            ),
          ),
          Container(
            height: 1,
            color: AppColors.grey300,
          ),
        ],
      ),
    );
  }
}
