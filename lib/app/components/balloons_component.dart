import 'package:flutter/material.dart';
import 'package:nubank_interface/app/core/theme/app_colors.dart';

class BalloonsComponent extends StatelessWidget {
  const BalloonsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        child: ListView(
          addAutomaticKeepAlives: true,
          itemExtent: 280,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          // padding: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.only(left: 24, right: 8),
          children: [
            BalloonItem(
              textWidget: Text(
                'Você tem R\$ 25.000,00 disponíveis para empréstimo',
              ),
            ),
            BalloonItem(
              textWidget: Text(
                'Salve seus amigos da burocracia. Faça um convite pra o Nubank',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BalloonItem extends StatelessWidget {
  final Widget textWidget;
  const BalloonItem({Key? key, required this.textWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(top: 24.0),
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.74,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.cardBackgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: textWidget,
      ),
    );
  }
}
