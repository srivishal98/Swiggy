import 'package:flutter/material.dart';

import '../../utils/ui_helper.dart';
import '../models/spot_light_best_top_food.dart';

class FoodListItemView extends StatelessWidget {
  final SpotlightBestTopFood restaurant;

  const FoodListItemView({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Image.asset(
              restaurant.image,
              height: 80.0,
              width: 80.0,
              fit: BoxFit.fill,
            ),
          ),
          UIHelper.horizontalSpaceMedium(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                restaurant.name,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 18.0),
              ),
              Text(restaurant.desc,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey[800], fontSize: 13.5)),
              UIHelper.verticalSpaceExtraSmall(),
              Text(
                restaurant.coupon,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.red[900], fontSize: 13.0),
              ),
              UIHelper.verticalSpaceSmall(),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 14.0,
                    color: Colors.grey[600],
                  ),
                  Text(restaurant.ratingTimePrice)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
