import 'package:flutter/material.dart';

import '../../models/spot_light_best_top_food.dart';
import '../../resuable_views/spotlightbesttopfood.dart';
import '../../utils/app_colors.dart';
import '../../utils/ui_helper.dart';

class BestInSafetyViews extends StatelessWidget {
  final restaurants = SpotlightBestTopFood.getBestRestaurants();

  BestInSafetyViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final customWidth =
        MediaQuery.of(context).size.width / ( 1.1);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Icon(Icons.security),
                    UIHelper.horizontalSpaceExtraSmall(),
                    Text(
                      'Best in Safety',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 20.0),
                    ),
                    const Spacer(),
                    Row(
                      children: <Widget>[
                        Text(
                          'SEE ALL',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        UIHelper.horizontalSpaceExtraSmall(),
                        ClipOval(
                          child: Container(
                            alignment: Alignment.center,
                            color: swiggyOrange,
                            height: 25.0,
                            width: 25.0,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                UIHelper.verticalSpaceExtraSmall(),
                Text(
                  'Restaurants with best safety standards',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
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
}
