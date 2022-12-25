import 'package:soups/models/user.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:equatable/equatable.dart';

@immutable
abstract class CloudState extends Equatable {
  const CloudState();
}

class CloudStateInitialized extends CloudState {
  const CloudStateInitialized();

  @override
  List<Object?> get props => [];
}

class CloudStateGetSoupKitchen extends CloudState {
  final SoupKitchen? user;
  final Exception? exception;
  const CloudStateGetSoupKitchen({this.user, this.exception});

  @override
  List<Object?> get props => [exception, user];
}

class CloudStateUpdateSoupKitchen extends CloudState {
  final Exception? exception;
  const CloudStateUpdateSoupKitchen({this.exception});

  @override
  List<Object?> get props => [exception];
}

// class CloudStateCreateAppUser extends CloudState {
//   final AppUserData? user;
//   final Exception? exception;
//   const CloudStateCreateAppUser({this.user, this.exception});

//   @override
//   List<Object?> get props => [exception, user];
// }

