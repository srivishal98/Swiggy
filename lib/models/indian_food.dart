class IndianFood {
  const IndianFood({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<IndianFood> getIndianRestaurants() {
    return const [
      IndianFood(image: 'assets/restuarant/img1.jpg', name: 'South\nIndian'),
      IndianFood(image: 'assets/restuarant/img1.jpg', name: 'Indian\nChai'),
      IndianFood(image: 'assets/restuarant/img1.jpg', name: 'North \nIndian'),
      IndianFood(image: 'assets/restuarant/img1.jpg', name: 'Indian\nBiryani'),
      IndianFood(image: 'assets/restuarant/img1.jpg', name: 'Indian\nDosa'),
      IndianFood(image: 'assets/restuarant/img1.jpg', name: 'Indian\nIdly'),
    ];
  }
}
