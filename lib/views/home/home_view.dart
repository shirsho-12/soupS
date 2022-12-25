import 'package:flutter/material.dart';
import 'package:soups/models/soup_kitchen.dart';
import 'package:soups/views/auth/auth.dart';

const kBorderRadius = 15.0;
const kSpacing = 15.0;
const kFontColorPallets = [
  Color.fromRGBO(84, 82, 91, 1),
  Color.fromRGBO(108, 107, 112, 1),
  Color.fromRGBO(173, 178, 188, 1),
];

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SoupKitchenObject> list = SoupKitchenObject.soupKitchenList;
    List<SoupKitchenObject> staffingShortagesList =
        SoupKitchenObject.staffingShortagesList;

    return Scaffold(
      drawer: ListView(
        padding: const EdgeInsets.symmetric(vertical: 80),
        children: [
          ListTile(
            // dense: true,
            leading: const Icon(Icons.home),
            title: const Text(
              'Home',
            ),
            horizontalTitleGap: 0,
            minVerticalPadding: 0,
            // minLeadingWidth: 12,
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.support),
            title: const Text('Donate'),
            horizontalTitleGap: 0,
            minVerticalPadding: 0,
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black,
            indent: 12,
            endIndent: 12,
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text('About us'),
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Help'),
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Contact us'),
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Privacy and security'),
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          IconButton(
              onPressed: () {
                MaterialPageRoute(builder: (context) => const LoginView());
              },
              icon: const Icon(Icons.login_outlined))
        ],
      ),
      body: Column(
        children: [
          const Text(
            "Places Near You",
            style: TextStyle(
              // color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.all(kSpacing),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: kSpacing,
                crossAxisSpacing: kSpacing,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      list[index].image,
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(kBorderRadius),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.8),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            list[index].location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // const Text("Welcome to soupS",
          //     style: TextStyle(
          //         // color: Colors.black,
          //         fontSize: 40,
          //         fontWeight: FontWeight.bold)),
          // const SizedBox(height: 20),
          const Text("Staffing Shortages",
              style: TextStyle(
                  // color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Expanded(
              child: ListView.builder(
            itemCount: staffingShortagesList.length,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(staffingShortagesList[index].name),
                subtitle: Row(children: [
                  Text(staffingShortagesList[index].location),
                ]),
                trailing: SizedBox(
                  width: 77,
                  child: Row(
                    children: [
                      Text(staffingShortagesList[index].staff.toString()),
                      const SizedBox(width: 5),
                      const Icon(Icons.person),
                      const SizedBox(width: 15),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
