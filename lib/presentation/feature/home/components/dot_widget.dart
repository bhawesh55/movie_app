import 'package:flutter/cupertino.dart';
import 'package:movie_app_getx/utils/app_color.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: AppColor.darkBackgroundGrey.withOpacity(0.32),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
              4,
              (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == 0
                            ? AppColor.white
                            : AppColor.white.withOpacity(0.32)),
                  )),
        ),
      ),
    );
  }
}
