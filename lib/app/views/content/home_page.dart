import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_interface/app/components/account_component.dart';
import 'package:nubank_interface/app/components/balloons_component.dart';
import 'package:nubank_interface/app/components/cards_component.dart';
import 'package:nubank_interface/app/components/categories_component.dart';
import 'package:nubank_interface/app/components/find_more_component.dart';
import 'package:nubank_interface/app/components/header_component.dart';
import 'package:nubank_interface/app/components/option_tile_component.dart';
import 'package:nubank_interface/app/controllers/home_controller.dart';
import 'package:nubank_interface/app/core/theme/app_colors.dart';
import 'package:nubank_interface/app/models/CategoryModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  List<CategoryModel> listCategories = [];

  @override
  void initState() {
    super.initState();
    listCategories = controller.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: AppColors.primaryColor,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () {
              return Future.delayed(Duration(seconds: 2));
            },
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                HeaderComponent(),
                AccountComponent(),
                CategoriesComponent(
                  listCategories: listCategories,
                ),
                CardsComponent(),
                BalloonsComponent(),
                OptionTileComponent(),
                FindMoreComponent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
