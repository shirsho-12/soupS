class SoupKitchenObject {
  String name;
  String image;
  String location;
  int staff;

  SoupKitchenObject({
    required this.name,
    required this.image,
    required this.location,
    required this.staff,
  });

  static List<SoupKitchenObject> soupKitchenList = [
    SoupKitchenObject(
      name: 'Soup Kitchen \nInternational',
      image: 'assets/images/soup_kitchen_1.jpg',
      location: '259A W 55th St, New York',
      staff: 10,
    ),
    SoupKitchenObject(
      name: 'Masbia Soup Kitchen',
      image: 'assets/images/soup_kitchen_2.jpg',
      location: '1272 54th St, Brooklyn',
      staff: 10,
    ),
    SoupKitchenObject(
      name: 'Holy Apostles \nSoup Kitchen',
      image: 'assets/images/soup_kitchen_3.jpg',
      location: '296 9th Ave, New York',
      staff: 10,
    ),
    SoupKitchenObject(
      name: 'Charoset Drive',
      image: 'assets/images/soup_kitchen_4.png',
      location: '1272 54th St, Brooklyn',
      staff: 10,
    ),
    SoupKitchenObject(
      name: 'Guild of St. Margaret \n Soup Kitchen',
      image: 'assets/images/soup_kitchen_5.jpg',
      location: '12 Depot St, Middletown',
      staff: 10,
    ),
    SoupKitchenObject(
      name: 'New York \nCommon Pantry',
      image: 'assets/images/soup_kitchen_9.jpg',
      location: '8 E 109th St, New York',
      staff: 4,
    ),
    SoupKitchenObject(
      name: 'SAME Soup Kitchen',
      image: 'assets/images/soup_kitchen_6.jpg',
      location: '00-20-11',
      staff: 10,
    ),
  ];

  static List<SoupKitchenObject> staffingShortagesList = [
    SoupKitchenObject(
      name: 'Soup Kitchen International',
      image: 'assets/images/soup_kitchen_1.jpg',
      location: '259A W 55th St, New York',
      staff: 5,
    ),
    SoupKitchenObject(
      name: 'Masbia Soup Kitchen',
      image: 'assets/images/soup_kitchen_2.jpg',
      location: '1272 54th St, Brooklyn',
      staff: 9,
    ),
    SoupKitchenObject(
      name: "St. Joe's Soup Kitchen",
      image: 'assets/images/soup_kitchen_8.jpg',
      location: '12 W 12th St, New York',
      staff: 8,
    ),
    SoupKitchenObject(
      name: 'New York Common Pantry',
      image: 'assets/images/soup_kitchen_9.jpg',
      location: '8 E 109th St, New York',
      staff: 4,
    ),
    SoupKitchenObject(
      name: 'Love Kitchen Inc.',
      image: 'assets/images/soup_kitchen_6.jpg',
      location: '3816 9th Ave, New York,',
      staff: 5,
    ),
    SoupKitchenObject(
      name: 'Broadway Community, Inc.',
      image: 'assets/images/soup_kitchen_6.jpg',
      location: ' 601 W 114th St, New York',
      staff: 6,
    ),
  ];
}
