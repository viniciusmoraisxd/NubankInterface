import 'package:flutter/material.dart';
import 'package:nubank_interface/app/core/theme/app_theme.dart';

import 'views/content/home_page.dart';

class NubankInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: HomePage(),
    );
  }
}
