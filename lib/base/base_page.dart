import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_getx/base/base_controller.dart';
import 'package:movie_app_getx/base/base_widget.dart';
import 'package:movie_app_getx/utils/app_color.dart';

abstract class BasePage<T> extends GetView<T> {
  final contoller = Get.find<T>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  BasePage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return stateBuild(context, controller);
  }

  Widget stateBuild(BuildContext context, T controller) {
    return GestureDetector(
      child: _getLayout(controller, context),
    );
  }
  

  Widget _getLayout(controller, BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: scaffoldBackgroundColor(),
        appBar: buildAppbar(),
        extendBodyBehindAppBar: extendBodyBehindAppBar(),
        body: _buildScaffoldBody(context, controller!),
        drawer: buildDrawer(),
        drawerEnableOpenDragGesture: drawerEnableOpenDragGesture(),
        bottomNavigationBar: buildBottomNavigationBar(),
        bottomSheet: buildBottomSheet(),
        resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
        floatingActionButton: buildFloatingActionButton(),
      ),
    );
  }

  Future<bool> onBackPressed(BuildContext context, {dynamic params}) {
    return _onWillPop(context, params);
  }

  Future<bool> _onWillPop(BuildContext context, params) {
    if (Navigator.canPop(context)) {
      if (params != null) {
        Navigator.pop(context, params);
        return Future.value(false);
      } else {
        Navigator.pop(
          context,
        );
        return Future.value(false);
      }
    }
    return Future.value(true);
  }

  /// Building a appbar of screen
  PreferredSizeWidget? buildAppbar() {
    return null;
  }

  /// Building a appbar of screen
  Color scaffoldBackgroundColor() {
    return AppColor.scaffold_background_color;
  }

  /// Building a drawer of screen
  Widget? buildDrawer() {
    return null;
  }

  /// Building a bottom-sheet
  Widget? buildBottomSheet() {
    return null;
  }

  /// Building a bottomNaviagtion Bar
  Widget? buildBottomNavigationBar() {
    return null;
  }

  bool extendBodyBehindAppBar() {
    return false;
  }

  bool drawerEnableOpenDragGesture() {
    return false;
  }

  bool resizeToAvoidBottomInset() {
    return true;
  }

  Widget? buildFloatingActionButton() {
    return null;
  }

  /// The Background color for notch
  Color notchBackgroundColor() {
    return AppColor.black.withOpacity(0.2);
  }

  Widget _buildScaffoldBody(
    BuildContext context,
    T controller ,
  ) {
    return buildView(context, controller);
  }

  @mustCallSuper
  Widget buildView(
    BuildContext context,
    T controller,
  );
}
