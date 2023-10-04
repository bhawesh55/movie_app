import 'package:flutter/material.dart';
import 'package:movie_app_getx/generated/l10n.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).hiiText,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage(("assets/images/dp.jpg"))),
            ))
      ],
    );
  }
}
