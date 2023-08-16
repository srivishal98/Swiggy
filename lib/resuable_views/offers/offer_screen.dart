import 'package:flutter/material.dart';

import '../../models/available_coupon.dart';
import '../../models/spot_light_best_top_food.dart';
import '../../utils/ui_helper.dart';
import '../../widget/custom_divider_view.dart';
import '../../widget/food_list_item_view.dart';
import '../restaurant/restaurantdetail.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            'OFFERS',
            style:
            Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 17.0),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(child: Text('RESTAURANT OFFERS')),
              Tab(child: Text('PAYMENT OFFERS/COUPONS')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _RestaurantOfferView(),
            _PaymentOffersCouponView(),
          ],
        ),
      ),
    );
  }
}

class _RestaurantOfferView extends StatelessWidget {
  final foods = [
    ...SpotlightBestTopFood.getPopularAllRestaurants(),
    ...SpotlightBestTopFood.getPopularAllRestaurants(),
    ...SpotlightBestTopFood.getPopularAllRestaurants()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          UIHelper.verticalSpaceSmall(),
          Text(
            'All Offers (${foods.length})',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 19.0),
          ),
          UIHelper.verticalSpaceMedium(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: foods.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RestaurantDetailScreen(),
                      ),
                    );
                  },
                  child: FoodListItemView(
                    restaurant: foods[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PaymentOffersCouponView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final coupons = AvailableCoupon.getAvailableCoupons();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15.0),
          height: 40.0,
          color: Colors.grey[200],
          child: Text('Available Coupons',
              style: Theme.of(context).textTheme.titleSmall),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: coupons.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      border: Border.all(color: Colors.grey[400]!),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'assets/restuarant/img1.jpg',
                          height: 30.0,
                          width: 30.0,
                          fit: BoxFit.cover,
                        ),
                        UIHelper.horizontalSpaceMedium(),
                        Text(coupons[index].coupon,
                            style: Theme.of(context).textTheme.titleSmall)
                      ],
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text(
                    coupons[index].discount,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  const CustomDividerView(
                    dividerHeight: 1.0,
                    color: Colors.grey,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  Text(
                    coupons[index].desc,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 13.0),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  InkWell(
                    child: Text(
                      '+ MORE',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
