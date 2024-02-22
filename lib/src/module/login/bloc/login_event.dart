part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginUserWithPhone extends LoginEvent {
  final String phoneNumber;

  LoginUserWithPhone(this.phoneNumber);
}

class LoginUserWithUsernamePassword extends LoginEvent {
  final String username;
  final String password;

  LoginUserWithUsernamePassword(this.username, this.password);
}

class VerifyUserOtp extends LoginEvent {
  final String otp;

  VerifyUserOtp(this.otp);
}

class RemoveDevice extends LoginEvent {
  final List<String> devices;

  RemoveDevice(this.devices);
}

class OnCountryChange extends LoginEvent {
  final CountryEntity country;

  OnCountryChange(this.country);
}

class OnUsernameChange extends LoginEvent {
  final String username;

  OnUsernameChange(this.username);
}

class OnPasswordChange extends LoginEvent {
  final String password;

  OnPasswordChange(this.password);
}

class OnOtpChange extends LoginEvent {
  final String otp;

  OnOtpChange(this.otp);
}

class OnNewPasswordChange extends LoginEvent {
  final String newPassword;

  OnNewPasswordChange(this.newPassword);
}

class OnNewPasswordAnswer extends LoginEvent {
  final String newPassword;

  OnNewPasswordAnswer(this.newPassword);
}

class OnResetLogin extends LoginEvent {}