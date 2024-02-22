part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  loadingLogin,
  initiateOtpVerification,
  verifyOtp,
  verifyOtpLoading,
  verifyOtpFailure,
  verifyDevice,
  verifyDeviceLoading,
  newUserPassword,
  chooseBusiness,
  chooseBusinessLoading,
  success,
  failure
}

class LoginState extends Equatable {
  final LoginStatus status;
  final CognitoUser? user;
  final int retryCount;
  final String error;
  final List<dynamic> deviceList;
  final String? deviceKey;
  final CountryEntity? country;
  final String username;
  final String password;
  final String newPassword;
  final String otp;
  // final List<dynamic> businessList;

  const LoginState({
    this.status = LoginStatus.initial,
    this.user,
    this.retryCount = 0,
    this.deviceList = const [],
    this.error = '',
    this.deviceKey,
    this.country,
    this.username = '',
    this.password = '',
    this.newPassword = '',
    this.otp = '',
  });

  String get loginType {
    if (username.contains('@')) {
      return 'email';
    } else {
      return 'phone';
    }
  }

  bool get validOtp {
    return otp.length == 6;
  }

  String get validation {
    return LoginInputValidator.validateUsername(username) ?? '';
  }

  String get validUserName {
    // Check if username is valid
    if (validation.isEmpty) {
      if (LoginInputValidator.validatePhoneNumber(username) == null && country != null) {
        return '+${country!.phoneCode}$username';
      } else if (LoginInputValidator.validateEmail(username) == null) {
        return username;
      } else if (LoginInputValidator.validateUsername(username) == null) {
        return username;
      } else {
        throw 'Not a valid email or phone number';
      }
    } else {
      throw 'Invalid username';
    }
  }

  LoginState copyWith(
      {LoginStatus? status,
      CognitoUser? user,
      int? retryCount,
      List<dynamic>? deviceList,
      String? error,
      String? deviceKey,
      CountryEntity? country,
      String? username,
        String? password,
        String? newPassword,
      String? otp}) {
    return LoginState(
        status: status ?? this.status,
        user: user ?? this.user,
        deviceList: deviceList ?? this.deviceList,
        retryCount: retryCount ?? this.retryCount,
        error: error ?? this.error,
        deviceKey: deviceKey ?? this.deviceKey,
        country: country ?? this.country,
        username: username ?? this.username,
        password: password ?? this.password,
        newPassword: newPassword ?? this.newPassword,
        otp: otp ?? this.otp);
  }

  @override
  List<Object?> get props => [
        status,
        user,
        retryCount,
        deviceList,
        error,
        deviceKey,
        country,
        username,
        password,
        newPassword,
        otp
      ];

  @override
  String toString() {
    return 'LoginState{status: $status, user: $user, retryCount: $retryCount, error: $error, deviceList: $deviceList, deviceKey: $deviceKey, country: $country, username: $username}';
  }
}
