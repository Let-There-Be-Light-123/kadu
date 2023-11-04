import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kadu_ngo/business_logic/login/login_event.dart';
import 'package:kadu_ngo/business_logic/login/login_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SigninInititalState()) {
    on<SigninTextChangedEvent>((event, emit) {
      if (event.emailValue == "" && EmailValidator.validate(event.emailValue)) {
        emit(SigninErrorState("Please Enter a Valid Email"));
      }
      if (event.passwordValue.length < 8) {
        emit(SigninErrorState("Please Enter a Valid Password"));
      } else {
        emit(SigninValidState());
      }
    });
    on<SigninSubmittedEvent>((event, emit) {
      emit(SigninLoadingState());
    });
  }
}


// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:kadu_ngo/models/values.dart';
// import 'package:equatable/equatable.dart';
// import 'package:formz/formz.dart';

// import 'package:kadu_ngo/repositories/authentication_repository.dart';
// part 'login_event.dart';
// part 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc({
//     required AuthenticationRepository authenticationRepository,
//   })  : _authenticationRepository = authenticationRepository,
//         super(const LoginState());

//   final AuthenticationRepository _authenticationRepository;

//   @override
//   Stream<LoginState> mapEventToState(
//     LoginEvent event,
//   ) async* {
//     if (event is LoginUsernameChanged) {
//       yield _mapUsernameChangedToState(event, state);
//     } else if (event is LoginPasswordChanged) {
//       yield _mapPasswordChangedToState(event, state);
//     } else if (event is LoginSubmitted) {
//       yield* _mapLoginSubmittedToState(event, state);
//     }
//   }

//   LoginState _mapUsernameChangedToState(
//     LoginUsernameChanged event,
//     LoginState state,
//   ) {
//     final username = Username.dirty(event.username);
//     return state.copyWith(
//       username: username,
//       status: Formz.validate([state.password, username]),
//     );
//   }

//   LoginState _mapPasswordChangedToState(
//     LoginPasswordChanged event,
//     LoginState state,
//   ) {
//     final password = Password.dirty(event.password);
//     return state.copyWith(
//       password: password,
//       status: Formz.validate([password, state.username]),
//     );
//   }

//   Stream<LoginState> _mapLoginSubmittedToState(
//     LoginSubmitted event,
//     LoginState state,
//   ) async* {
//     if (state.status.isValidated) {
//       yield state.copyWith(status: FormzSubmissionStatus.inProgress);
//       try {
//         await _authenticationRepository.logIn(
//           username: state.username.value,
//           password: state.password.value,
//         );
//         yield state.copyWith(status: FormzSubmissionStatus.success);
//       } on Exception catch (_) {
//         yield state.copyWith(status: FormzSubmissionStatus.failure);
//       }
//     }
//   }
// }
