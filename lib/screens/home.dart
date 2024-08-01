import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> restaurants = [
    {
      'name': 'Restaurant 1',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
    {
      'name': 'Restaurant 2',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
    {
      'name': 'Restaurant 1',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
    {
      'name': 'Restaurant 2',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
    {
      'name': 'Restaurant 1',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
    {
      'name': 'Restaurant 2',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
    {
      'name': 'Restaurant 1',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
    {
      'name': 'Restaurant 2',
      'rating': '4.5',
      'image': 'assets/img1.jpeg',
    },
  ];

  final List<Map<String, String>> category = [
    {
      'name': 'Pizza',
      'image': 'assets/food1.jpeg',
    },
    {
      'name': 'Burger',
      'image': 'assets/food2.jpeg',
    },
    {
      'name': 'Cold Drinks',
      'image': 'assets/food3.jpeg',
    },
    {
      'name': 'Burger',
      'image': 'assets/food2.jpeg',
    },
    {
      'name': 'Cold Drinks',
      'image': 'assets/food3.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 250,
              child: Text(
                "Order Food from your favourite place",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  final image = category[index]['image'];

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(image ?? 'assets/food1.jpeg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.darken,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          category[index]['name']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 20),
              child: Text(
                "See nearby places",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 0),
                scrollDirection: Axis.vertical,
                children: restaurants.map(
                  (restaurantData) {
                    final image = restaurantData['image'];

                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(image ?? 'assets/img1.jpeg'),
                      ),
                      title: Text(restaurantData['name']!),
                      subtitle: Row(children: [
                        Text('Rating : ${restaurantData['rating']}'),
                        const Icon(Icons.star,
                            size: 15, color: Color.fromARGB(255, 168, 168, 168))
                      ]),
                      onTap: () {},
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
