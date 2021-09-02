import 'package:flutter/material.dart';
import 'package:nubank_interface/app/core/theme/app_colors.dart';
import 'package:nubank_interface/app/core/theme/app_typography.dart';
import 'package:nubank_interface/app/models/CategoryModel.dart';

class CategoriesComponent extends StatelessWidget {
  const CategoriesComponent({Key? key, required this.listCategories})
      : super(key: key);
  final List<CategoryModel> listCategories;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      margin: EdgeInsets.only(top: 8),
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: listCategories[index]);
        },
        itemCount: listCategories.length,
        physics: BouncingScrollPhysics(),
      ),
    ));
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.categoryModel}) : super(key: key);
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            child: Icon(
              categoryModel.icon,
              color: AppColors.black,
            ),
            backgroundColor: AppColors.cardBackgroundColor,
            radius: 37,
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            width: 74,
            child: Text(
              categoryModel.name,
              textAlign: TextAlign.center,
              style: AppTypography.subtitle2(context),
            ),
          ),
        ],
      ),
    );
  }
}
