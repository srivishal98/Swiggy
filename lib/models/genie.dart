class Genie {
  const Genie({
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  static List<Genie> getGenieServices() {
    return const [
      Genie(image: 'assets/restuarant/img1.jpg', title: 'Home\nFood'),
      Genie(image: 'assets/restuarant/img1.jpg', title: 'Documents\nBooks'),
      Genie(image: 'assets/restuarant/img1.jpg', title: 'Business\nDeliveries'),
      Genie(image: 'assets/restuarant/img1.jpg', title: 'Courier'),
      Genie(image: 'assets/restuarant/img1.jpg', title: 'Anything\nElse'),
    ];
  }
}
