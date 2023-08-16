class TopPicksFood {
  const TopPicksFood({
    required this.image,
    required this.name,
    required this.minutes,
  });

  final String image;
  final String name;
  final String minutes;

  static List<TopPicksFood> getTopPicksfoods() {
    return const [
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Murugan Idli Shop',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Thalappakati Biryani Hotel',
          minutes: '32 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Sangeetha',
          minutes: '26 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Hotel Chennai',
          minutes: '38 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Shri Balaajee',
          minutes: '53 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Namma Veedu Vasantha',
          minutes: '22 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'SK Parota Stall',
          minutes: '13 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Aasife Biryani',
          minutes: '31 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Jesus Fast Food',
          minutes: '44 mins'),
      TopPicksFood(
          image: 'assets/restuarant/img1.jpg',
          name: 'Ananda Bhavan',
          minutes: '55 mins'),
    ];
  }
}
