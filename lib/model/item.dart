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
  Item(name: "S1",imgPath: "assets/images/1.png", price: 100, location: "ShadowCompany Shop"),
  Item(name: "S2",imgPath: "assets/images/2.png", price: 600),
  Item(name: "S3",imgPath: "assets/images/3.png", price: 200),
  Item(name: "S4",imgPath: "assets/images/4.png", price: 1000),
  Item(name: "S5",imgPath: "assets/images/5.png", price: 600),
  Item(name: "S6",imgPath: "assets/images/6.png", price: 200),
  Item(name: "S7",imgPath: "assets/images/7.png", price: 500),
  Item(name: "S8",imgPath: "assets/images/8.png", price: 300),
  Item(name: "S9",imgPath: "assets/images/9.png", price: 90),
];
