// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart' show immutable;

// import '../services/cloud/cloud_constants.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
class SoupKitchen {
  /// {@macro user}
  const SoupKitchen({
    required this.kitchenId,
    required this.location,
    required this.name,
    required this.email,
  });

  /// Creates a User from Json map
  factory SoupKitchen.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  /// A description for userName
  final String kitchenId;

  /// A description for userAvatarLink
  final String location;

  /// A description for name
  final String name;

  final String email;

  SoupKitchen.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot)
      // : userID = snapshot.data()![userIDName],
      : name = snapshot.data()!['userName'],
        // firstName = snapshot.data()[userFirstName],
        // lastName = snapshot.data()[userLastName],
        kitchenId = snapshot.data()!['name'],
        location = snapshot.data()!['userAvatarLink'],
        email = snapshot.data()!['email'];

  /// Creates a Json map from a User
  Map<String, dynamic> toJson() => _$UserToJson(this);

  static const dummy = SoupKitchen(
      kitchenId: '@nyckitchen',
      location: '00-10-11',
      name: 'NYC Soup Kitchen',
      email: 'NYC Kitchen');
}
