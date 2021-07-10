import 'package:flutter/widgets.dart';
import 'package:petscue/app/app.dart';
import 'package:petscue/home/home.dart';
import 'package:petscue/login/login.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}
