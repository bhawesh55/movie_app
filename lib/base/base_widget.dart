// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:movie_app_getx/base/base_controller.dart';

// class BasePageWidget<T extends BaseController> extends StatefulWidget {
//   final Widget? child;
//   final Function(T)? onModelReady;

//   const BasePageWidget({
//     super.key,
//     this.child,
//     this.onModelReady,
//   });

//   @override
//   State<StatefulWidget> createState() {
//     return _BasePageWidget();
//   }
// }

// class _BasePageWidget<T extends BaseController>
//     extends State<BasePageWidget<T>> {
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Builder(
//       builder: (context) {
//         return widget.child ?? const SizedBox();
//       }
//     );
//   }
// }
