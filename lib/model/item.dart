class Item
{
  String imgPath;
  double price;
  String location;
  String name;


  Item({required this.name, required this.imgPath, required this.price, this.location = "HQ"});
}

final List<Item> itemes =
[
  Item(name: "S1",imgPath: "assets/images/1.jpg", price: 10000, location: "ShadowCompany Shop"),
  Item(name: "S2",imgPath: "assets/images/2.jpg", price: 6000),
  Item(name: "S3",imgPath: "assets/images/3.jpg", price: 5000),
  Item(name: "S4",imgPath: "assets/images/4.jpg", price: 12000),
  Item(name: "S5",imgPath: "assets/images/5.jpg", price: 7000),
  Item(name: "S6",imgPath: "assets/images/6.jpg", price: 4000),
  Item(name: "S7",imgPath: "assets/images/7.jpg", price: 8000),
  Item(name: "S8",imgPath: "assets/images/8.jpg", price: 11000),
  Item(name: "S9",imgPath: "assets/images/9.jpg", price: 9000),
];
