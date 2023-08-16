class RestaurantDetail {
  const RestaurantDetail({
    required this.title,
    required this.price,
    this.image = '',
    this.desc = '',
  });

  final String title;
  final int price;
  final String image;
  final String desc;

  static List<RestaurantDetail> getBreakfast() {
    return const [
      RestaurantDetail(
        title: 'Idly(2Pcs) (Breakfast)',
        price: 48,
        image: 'assets/restuarant/img1.jpg',
        desc:
        'A healthy breakfast item and an authentic south indian delicacy! Steamed and fluffy rice cake..more',
      ),
      RestaurantDetail(
        title: 'Sambar Idly (2Pcs)',
        image: 'assets/restuarant/img1.jpg',
        price: 70,
      ),
      RestaurantDetail(
        title: 'Ghee Pongal',
        image: 'assets/restuarant/img1.jpg',
        price: 85,
        desc:
        'Cute, button idlis with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
      RestaurantDetail(
        title: 'Boori (1Set)',
        image: 'assets/restuarant/img1.jpg',
        price: 85,
      ),
      RestaurantDetail(
        title: 'Podi Idly(2Pcs)',
        image: 'assets/restuarant/img1.jpg',
        price: 110,
      ),
      RestaurantDetail(
        title: 'Mini Idly with Sambar',
        image: 'assets/restuarant/img1.jpg',
        price: 85,
        desc:
        'Cute, button idlis with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
    ];
  }

  static List<RestaurantDetail> getAllTimeFavFoods() {
    return const [
      RestaurantDetail(
        title: 'Plain Dosa',
        price: 30,
        desc:
        'A healthy breakfast item and an authentic south indian delicacy!',
      ),
      RestaurantDetail(
        title: 'Rava Dosa',
        price: 70,
      ),
      RestaurantDetail(
        title: 'Onion Dosa',
        price: 85,
        desc:
        'Cute, button dosas with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
      RestaurantDetail(
        title: 'Onion Uttapam',
        price: 85,
      ),
      RestaurantDetail(
        title: 'Tomato Uttapam',
        price: 110,
      ),
      RestaurantDetail(
        title: 'Onion Dosa & Sambar Vadai',
        price: 85,
      ),
    ];
  }

  static List<RestaurantDetail> getOtherDishes() {
    return const [
      RestaurantDetail(
        title: 'Kuzhi Paniyaram Karam (4Pcs)',
        price: 70,
      ),
      RestaurantDetail(
        title: 'Kuzhi Paniyaram Sweet (4Pcs)',
        price: 70,
      ),
      RestaurantDetail(
        title: 'Kuzhi Paniyaram Sweet & Karam (4Pcs)',
        price: 110,
      ),
      RestaurantDetail(
        title: 'Ghee Kuzhi Paniyaram',
        price: 85,
      ),
    ];
  }
}