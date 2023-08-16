import 'package:flutter/material.dart';

import '../../models/spot_light_best_top_food.dart';
import '../../resuable_views/spotlightbesttopfood.dart';
import '../../utils/ui_helper.dart';

class InTheSpotlightView extends StatelessWidget {
  final restaurants = SpotlightBestTopFood.getSpotlightRestaurants();

  InTheSpotlightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final customWidth =
        MediaQuery.of(context).size.width / (1.1);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          UIHelper.verticalSpaceSmall(),
          _buildSpotlightHeaderView(context),
          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 270.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (context, index) => SizedBox(
                width: customWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SpotlightBestTopFoodItem(restaurant: restaurants[index][0]),
                    SpotlightBestTopFoodItem(restaurant: restaurants[index][1])
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildSpotlightHeaderView(BuildContext context) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Icon(Icons.shopping_basket, size: 20.0),
            UIHelper.horizontalSpaceSmall(),
            Text(
              'In the Spotlight!',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 20.0),
            )
          ],
        ),
        UIHelper.verticalSpaceExtraSmall(),
        Text(
          'Explore sponsored partner brands',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.grey),
        ),
      ],
    ),
  );
}
