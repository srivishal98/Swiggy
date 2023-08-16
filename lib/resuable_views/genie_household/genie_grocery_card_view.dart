import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/ui_helper.dart';

class GenieGroceryCardView extends StatelessWidget {
  const GenieGroceryCardView({
    Key? key,
    required this.title,
    required this.image,
    required this.subtitle,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                padding: const EdgeInsets.only(top: 8.0),
                height: 120.0,
                decoration: BoxDecoration(
                  color: swiggyOrange,
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3.0,
                      offset: Offset(1, 4),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 18.0, color: Colors.white),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Expanded(
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpaceMedium(),
            Text(
              subtitle,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
