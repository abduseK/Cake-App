class OnBaord {
  final String title;
  final String image;
  final String description;

  OnBaord(
      {required this.title, required this.image, required this.description});
}

final List<OnBaord> onBoardContent = [
  OnBaord(
      title: "Custom your cake",
      image: "images/ill1.png",
      description:
          "Custom your cake as you like, whenever you want \n from bread to topping, Everything"),
  OnBaord(
      title: "Order from your home",
      image: "images/ill2.png",
      description:
          "Wanna eat some cake while you're on your couch? \n Order your favorite cake from your home"),
  OnBaord(
      title: "Easy to use",
      image: "images/ill3.png",
      description:
          "Simple and easy to use. Manage your \n orders and your account"),
];
