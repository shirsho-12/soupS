import 'package:bloc/bloc.dart';
import 'package:soups/services/cloud/bloc/cloud_event.dart';
import 'package:soups/services/cloud/bloc/cloud_state.dart';
import 'package:soups/services/cloud/firebase_cloud_storage.dart';

class CloudBloc extends Bloc<CloudEvent, CloudState> {
  final _storage = FirebaseCloudStorage();

  CloudBloc() : super(const CloudStateInitialized()) {
    on<CloudEventGetSoupKitchen>(_onGetAppUser);
    // on<CloudEventCreateAppUser>(_onCreateAppUser);
    on<CloudEventUpdateSoupKitchen>(_onUpdateAppUser);
  }

  void _onGetAppUser(CloudEventGetSoupKitchen event, emit) async {
    try {
      emit(CloudStateGetSoupKitchen(
          user: await _storage.getAppUserFromEmail(
        event.email,
      )));
    } on Exception catch (e) {
      emit(CloudStateGetSoupKitchen(user: null, exception: e));
    }
  }
  // New users are only created during registration
  // void _onCreateAppUser(CloudEventCreateAppUser event, emit) async {
  //   try {
  //     await _storage.createNewAppUser(
  //         userAuthId: event.userAuthId,
  //         fullName: event.fullName,
  //         email: event.email,
  //         department: event.department);
  //     emit(const CloudStateCreateAppUser());
  //   } on Exception catch (e) {
  //     emit(CloudStateCreateAppUser(exception: e));
  //   }
  // }

  void _onUpdateAppUser(CloudEventUpdateSoupKitchen event, emit) async {
    try {
      await _storage.updateBillUser(
        email: event.email,
        userName: event.userName,
        name: event.name,
        userAvatarLink: event.userAvatarLink,
      );
      emit(const CloudStateUpdateSoupKitchen());
    } on Exception catch (e) {
      emit(CloudStateUpdateSoupKitchen(exception: e));
    }
  }
}
