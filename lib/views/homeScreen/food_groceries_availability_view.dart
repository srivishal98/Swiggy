import 'package:flutter/material.dart';

import '../../resuable_views/genie_household/genie_grocery_card_view.dart';
import '../../resuable_views/genie_household/genie_screen.dart';
import '../../resuable_views/meat/meat_screen.dart';
import '../../utils/app_colors.dart';
import '../../utils/ui_helper.dart';
import 'all_restaurant/all_restaurants_screen.dart';


class FoodGroceriesAvailabilityView extends StatelessWidget {
  const FoodGroceriesAvailabilityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Container(
                    width: 10.0,
                    height: 140.0,
                    color: swiggyOrange,
                  ),
                ),
                UIHelper.horizontalSpaceMedium(),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'We are now delivering food groceries and other essentials.',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Food & Genie service (Mon-Sat)-6:00 am to 9:00pm. Groceries & Meat (Mon-Sat)-6:00 am to 6:00pm. Dairy (Mon-Sat)-6:00 am to 6:00pm (Sun)-6:00 am to 12:00 pm',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.0,
                          color: Colors.grey[800],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          UIHelper.verticalSpaceLarge(),
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllRestaurantsScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 150.0,
                    color: swiggyOrange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Restaurants',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(color: Colors.white),
                                  ),
                                  UIHelper.verticalSpaceExtraSmall(),
                                  Text(
                                    'No-contact delivery available',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 45.0,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: darkOrange,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'View all',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              UIHelper.horizontalSpaceSmall(),
                              const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -10.0,
                right: -10.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/restuarant/img1.jpg',
                    width: 130.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: 'Genie',
                subtitle: 'Anything you need,\ndelivered',
                image: 'assets/restuarant/img1.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GenieScreen(),
                    ),
                  );
                },
              ),
              GenieGroceryCardView(
                title: 'Grocery',
                subtitle: 'Essentials delivered\nin 2 Hrs',
                image: 'assets/restuarant/img1.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GenieScreen(),
                    ),
                  );
                },
              ),
              GenieGroceryCardView(
                title: 'Meat',
                subtitle: 'Fresh meat\ndelivered safe',
                image: 'assets/restuarant/img1.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MeatScreen(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
