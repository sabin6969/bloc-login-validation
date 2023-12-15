import 'package:bloc/bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressedeEvent>((event, emit) async {
      emit(LoadingState());
      await Future.delayed(const Duration(seconds: 3));
      if (event.email.isEmpty || event.password.isEmpty) {
        return emit(ValidationFailedError(message: "Both fields are required"));
      } else {
        return emit(ValidationSucess());
      }
    });
  }
}
