
import 'package:flutter/material.dart';
import 'package:taskn3/pages/details_screen.dart';
import 'package:taskn3/provider/cart.dart';
import 'package:taskn3/shared/colors.dart';
import 'package:provider/provider.dart';

import '../model/item.dart';
import '../shared/appbar.dart';
import 'checkout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: itemes.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: GridTile(
                  // ignore: sort_child_properties_last
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Details(product: itemes[index]),
                          ),
                        );
                      },
                      child: Image.asset(itemes[index].imgPath)),
                  footer: GridTileBar(
                    backgroundColor: const Color.fromARGB(66, 73, 127, 110),
                    trailing: IconButton(
                        color: const Color.fromARGB(255, 62, 94, 70),
                        onPressed: () {
                          cartt.add(itemes[index]);
                        },
                        icon: const Icon(Icons.add)),
                    leading: Text("\$ ${itemes[index].price}"),
                    title: const Text(
                      "",
                    ),
                  ),
                ),
              );
            }),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Back.jpg"),
                        fit: BoxFit.cover),
                  ),
                  accountName: Text("Shadow",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("ShadowCompany@gmail.com"),
                  currentAccountPictureSize: Size.square(90),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/1.jpeg")),
                ),
                ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                    }),
                ListTile(
                    title: const Text("My products"),
                    leading: const Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckOut(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text("Shadow company",
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("Home"),
        actions: const [ProductsAndPrice()],
      ), 
    );
  }
}