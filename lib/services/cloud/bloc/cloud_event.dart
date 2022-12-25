import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class CloudEvent {
  const CloudEvent();
}

// class CloudEventInitialize extends CloudEvent {
//   const CloudEventInitialize();
// }

class CloudEventGetSoupKitchen extends CloudEvent {
  final String email;
  const CloudEventGetSoupKitchen({required this.email});
}

class CloudEventUpdateSoupKitchen extends CloudEvent {
  final String? userName;
  final String email;
  final String? userAvatarLink;
  final String? name;
  const CloudEventUpdateSoupKitchen({
    required this.email,
    this.userName,
    this.userAvatarLink,
    this.name,
  });
}
