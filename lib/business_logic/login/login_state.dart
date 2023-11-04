// part of 'login_bloc.dart';

abstract class SignInState {}

class SigninInititalState extends SignInState {}

class SigninValidState extends SignInState {}

// class SigninInvalidState extends SignInState {}

class SigninLoadingState extends SignInState {}

class SigninErrorState extends SignInState {
  final String errorMessage;
  SigninErrorState(this.errorMessage);
}

// part of 'login_bloc.dart';clas

// class LoginState extends Equatable {
//   final FormzStatus status;
//   final Username username;
//   final Password password;

//   const LoginState(
//       {this.status = FormzStatus.pure,
//       this.username = const Username.pure(),
//       this.password = const Password.pure()});

//   @override
//   List<Object> get props => [this.status, this.username, this.password];

//   LoginState copyWith(
//       {FormzStatus? status, Username? username, Password? password}) {
//     return LoginState(
//         status: status ?? this.status,
//         username: username ?? this.username,
//         password: password ?? this.password);
//   }
// }

// class LoginInitial extends LoginState {}
