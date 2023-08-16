class PopularCategory {
  const PopularCategory({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<PopularCategory> getPopularCategories() {
    return const [
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Cold\nBeverages',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Veg only',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Only on\nSwiggy',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Offers',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Meals',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Milkshakes',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Kawaii\n Sushi',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Bread',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Only on\nSwiggy',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Meals',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Veg only',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Cold\nBeverages',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Kawaii\n Sushi',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Bread',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Meals',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Milkshakes',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Cold\nBeverages',
      ),
      PopularCategory(
        image: 'assets/restuarant/img1.jpg',
        name: 'Veg only',
      ),
    ];
  }
}
