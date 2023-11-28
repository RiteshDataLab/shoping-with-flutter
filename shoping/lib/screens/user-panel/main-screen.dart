import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 134, 156, 236),
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: const Color.fromARGB(255, 134, 156, 236),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: const NetworkImage(
                          'https://imgv3.fotor.com/images/cover-photo-image/a-beautiful-girl-with-gray-hair-and-lucxy-neckless-generated-by-Fotor-AI.jpg',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ai alena',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('AI@gmail.com'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.send_and_archive),
                title: Text('Share With Me'),
              ),
              ListTile(
                leading: Icon(Icons.star_border),
                title: Text('starred'),
              ),
              ListTile(
                leading: Icon(Icons.group_add),
                title: Text('trash'),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('trash'),
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('image'),
              ),
              ListTile(
                leading: Icon(Icons.open_in_browser),
                title: Text('open'),
              ),
              ListTile(
                leading: Icon(Icons.pin_drop),
                title: Text('drop'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('log out'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: const CircleAvatar(
              radius: 12,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.shop,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 134, 156, 236),
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: AnotherCarousel(
                images: const [
                  NetworkImage(
                    "https://img.freepik.com/free-vector/gradient-sale-background_23-2148934477.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=ais",
                  ),
                  NetworkImage(
                    "https://img.freepik.com/premium-vector/sale-banner-template-design_74379-121.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=ais",
                  ),
                  NetworkImage(
                    "https://img.freepik.com/free-vector/gradient-flash-sale-background_23-2149027975.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=ais",
                  ),
                  NetworkImage(
                    "https://img.freepik.com/free-psd/special-deal-super-offer-upto-60-parcent-off-isolated-3d-render-with-editable-text_47987-15330.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                  ),
                  NetworkImage(
                    "https://img.freepik.com/free-psd/discount-offer-40-off-promotion-banner-with-editable-text_47987-11947.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 210, 195, 195),
                        child: Image.network(
                          "https://img.freepik.com/premium-psd/premium-classic-watch-promotion-social-media-instagram-post-banner-template_70055-878.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 157, 38, 38),
                        child: Image.network(
                          "https://img.freepik.com/free-psd/black-friday-super-sale-social-media-banner-template_120329-1078.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 157, 38, 38),
                        child: Image.network(
                          "https://img.freepik.com/free-psd/shoes-sale-social-media-post-square-banner-template-design_505751-2856.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 157, 38, 38),
                        child: Image.network(
                          "https://img.freepik.com/premium-psd/camera-sale-social-media-post-instagram-post-banner-template_179771-204.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 230, 208, 208),
                        child: Image.network(
                          "https://img.freepik.com/free-vector/realistic-cleaning-products-ad_52683-38716.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 157, 38, 38),
                        child: Image.network(
                          "https://img.freepik.com/premium-psd/mockup-small-natural-herbal-cosmetic-jar-skincare_475259-2441.jpg?w=996",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 230, 208, 208),
                        child: Image.network(
                          "https://img.freepik.com/free-photo/flat-lay-natural-self-care-products-composition_23-2148990019.jpg?size=626&ext=jpg&ga=GA1.1.1060172839.1701158559&semt=sph",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 157, 38, 38),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 230, 208, 208),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 157, 38, 38),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(66, 230, 208, 208),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
