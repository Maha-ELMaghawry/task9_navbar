import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.house_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            label: 'Favourite',
          ),
          NavigationDestination(
            icon: Icon(Icons.face),
            label: 'Profile',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 1,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 10.0 / 4.0,
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 35.0 / 35.0,
                  child: Image.asset('assets/images/pullover.webp'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Pullover',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10.0),
                     const  Text(
                          '27 USD',
                      style: TextStyle(fontSize: 17),),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: RatingBar.builder(
                      itemSize: 23,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 35.0 / 35.0,
                  child: Image.asset('assets/images/blouse.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Blouse',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '19 USD',
                        style: TextStyle(fontSize: 17),),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: RatingBar.builder(
                          itemSize: 23,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 35.0 / 35.0,
                  child: Image.asset('assets/images/T-shirt.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'T-Shirt',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '12 USD',
                        style: TextStyle(fontSize: 17),),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: RatingBar.builder(
                          itemSize: 23,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 35.0 / 35.0,
                  child: Image.asset('assets/images/shirt.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Shirt',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '15 USD',
                        style: TextStyle(fontSize: 17),),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: RatingBar.builder(
                          itemSize: 23,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 35.0 / 35.0,
                  child: Image.asset('assets/images/heels.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Heels',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '38 USD',
                        style: TextStyle(fontSize: 17),),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: RatingBar.builder(
                          itemSize: 23,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 35.0 / 35.0,
                  child: Image.asset('assets/images/bag.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Bag',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '36 USD',
                        style: TextStyle(fontSize: 17),),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: RatingBar.builder(
                          itemSize: 23,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
