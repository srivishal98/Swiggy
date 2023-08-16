import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:swiggy/views/homeScreen/popular_brand_view.dart';
import 'package:swiggy/views/homeScreen/popular_categories_view.dart';
import 'package:swiggy/views/homeScreen/restaurant_vertical_list_view.dart';
import 'package:swiggy/views/homeScreen/swiggy_safetybanner_view.dart';
import 'package:swiggy/views/homeScreen/top_offers_view.dart';
import 'package:swiggy/views/homeScreen/top_picks_for_you.dart';
import '../../amplifyconfiguration.dart';
import '../../models/ModelProvider.dart';
import '../../models/spot_light_best_top_food.dart';
import '../../resuable_views/genie_household/genie_view.dart';
import '../../resuable_views/indian_food/indian_food_view.dart';
import '../../resuable_views/offers/offer_banner_view.dart';
import '../../resuable_views/offers/offer_screen.dart';
import '../../utils/app_colors.dart';
import '../../utils/ui_helper.dart';
import '../../widget/custom_divider_view.dart';
import 'all_restaurant/all_restaurants_screen.dart';
import 'best_in_safety_view.dart';
import 'food_groceries_availability_view.dart';
import 'in_the_spotlight_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const FoodGroceriesAvailabilityView(),
                    TopPicksForYouView(),
                    const CustomDividerView(),
                    IndianFoodView(),
                    const CustomDividerView(),
                    InTheSpotlightView(),
                    const CustomDividerView(),
                    PopularBrandsView(),
                    const CustomDividerView(),
                    const SwiggySafetyBannerView(),
                    BestInSafetyViews(),
                    const CustomDividerView(),
                    TopOffersViews(),
                    const CustomDividerView(),
                    const GenieView(),
                    const CustomDividerView(),
                    PopularCategoriesView(),
                    const CustomDividerView(),
                    RestaurantVerticalListView(
                      title: 'Popular Restaurants',
                      restaurants:
                      SpotlightBestTopFood.getPopularAllRestaurants(),
                    ),
                    const CustomDividerView(),
                    RestaurantVerticalListView(
                      title: 'All Restaurants Nearby',
                      restaurants:
                      SpotlightBestTopFood.getPopularAllRestaurants(),
                      isAllRestaurantNearby: true,
                    ),
                    const SeeAllRestaurantBtn(),
                    const LiveForFoodView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildAppBar(BuildContext context) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 15.0),
    height: 60.0,
    child: Row(
      children: <Widget>[
        Text(
          'Other',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 21.0),
        ),
        UIHelper.horizontalSpaceExtraSmall(),
        const Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Icon(Icons.keyboard_arrow_down),
        ),
        const Spacer(),
        const Icon(Icons.local_offer),
        UIHelper.horizontalSpaceExtraSmall(),
        InkWell(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Offer',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 18.0),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OffersScreen(),
              ),
            );
          },
        ),
      ],
    ),
  );
}

class SeeAllRestaurantBtn extends StatelessWidget {
  const SeeAllRestaurantBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      height: 50.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: darkOrange),
        child: Text(
          'See all restaurants',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontSize: 19.0),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AllRestaurantsScreen(),
            ),
          );
        },
      ),
    );
  }
}

class LiveForFoodView extends StatelessWidget {
  const LiveForFoodView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(15.0),
      height: 400.0,
      color: Colors.grey[200],
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'LIVE\nFOR\nFOOD',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.grey[400],
                  fontSize: 80.0,
                  letterSpacing: 0.2,
                  height: 0.8,
                ),
              ),
              UIHelper.verticalSpaceLarge(),
              Text(
                'MADE BY FOOD LOVERS',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.grey),
              ),
              Text(
                'SWIGGY , CHENNAI',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.grey),
              ),
              UIHelper.verticalSpaceExtraLarge(),
              Row(
                children: <Widget>[
                  Container(
                    height: 1.0,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          ),
          Positioned(
            left: 140.0,
            top: 90.0,
            child: Image.asset(
              'assets/restuarant/img6.jpg',
              height: 80.0,
              width: 80.0,
            ),
          )
        ],
      ),
    );
  }
}
