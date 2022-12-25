part of 'user.dart';

SoupKitchen _$UserFromJson(Map<String, dynamic> json) => SoupKitchen(
      kitchenId: json['userName'] as String,
      location: json['userAvatarLink'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserToJson(SoupKitchen instance) => <String, dynamic>{
      'userName': instance.kitchenId,
      'userAvatarLink': instance.location,
      'name': instance.name,
      'email': instance.email,
    };
