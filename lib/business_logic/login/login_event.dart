// part of 'login_bloc.dart';

class SignInEvent {
  // const LoginEvent();

  // @override
  // List<Object> get props => [];
}

class SigninEmailChangedEvent extends SignInEvent {
  final emailValue;
  // String passwordValue;
  SigninEmailChangedEvent(this.emailValue);

  // @override
  // List<Object> get props => [this.username];
}

class SigninPasswordChangedEvent extends SignInEvent {
  // String emailValue;
  final passwordValue;
  SigninPasswordChangedEvent(this.passwordValue);

  // @override
  // List<Object> get props => [this.username];
}

class SigninSubmittedEvent extends SignInEvent {
  final email;
  final password;
  SigninSubmittedEvent(this.email, this.password);
}
