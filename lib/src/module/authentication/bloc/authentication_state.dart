part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  authenticated,
  unauthenticated,
  verifyUser,
  verifyUserDevice,
  clockInChecking,
  clockInFailed,
  clockInRequired,
  clockOutRecommended,
  newPassword,
  chooseBusiness,
  chooseBusinessLoading,
  chooseBusinessSuccess,
  unknown,
  newUser
}

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final CognitoUser? user;
  final EmployeeEntity? employee;
  final RetailLocationEntity? store;
  final List<UserBusiness> userBusinesses;
  final int? rtlLocId;
  final Map<String, String> config;

  const AuthenticationState._(
      {required this.status,
      this.user,
      this.employee,
      this.store,
      this.userBusinesses = const [],
      this.rtlLocId,
      this.config = const {}})
      : assert(status == AuthenticationStatus.authenticated
            ? (store != null)
            : true);

  const AuthenticationState.newUserPassword()
      : this._(
          status: AuthenticationStatus.newPassword,
        );

  const AuthenticationState.unauthenticated()
      : this._(
          status: AuthenticationStatus.unauthenticated,
        );

  const AuthenticationState.unknown()
      : this._(
          status: AuthenticationStatus.unknown,
        );

  const AuthenticationState.newUser(CognitoUser user,
      {EmployeeEntity? employee})
      : this._(
            status: AuthenticationStatus.newUser,
            user: user,
            employee: employee);

  const AuthenticationState.authenticated(
      CognitoUser user,
      RetailLocationEntity store,
      EmployeeEntity employee,
      Map<String, String> config)
      : this._(
            status: AuthenticationStatus.authenticated,
            store: store,
            employee: employee,
            user: user,
            config: config);

  const AuthenticationState.verifyUser()
      : this._(
          status: AuthenticationStatus.verifyUser,
        );

  const AuthenticationState.chooseBusiness(List<UserBusiness> business)
      : this._(
          status: AuthenticationStatus.chooseBusiness,
          userBusinesses: business,
        );

  // const AuthenticationState.clockin()
  //     : this._(status: AuthenticationStatus.clockInRequired);
  //
  // const AuthenticationState.clockOut()
  //     : this._(status: AuthenticationStatus.clockOutRecommended);
  //
  // const AuthenticationState.clockingInOut()
  //     : this._(status: AuthenticationStatus.clockInChecking);
  //
  // const AuthenticationState.clockingInOutFailed()
  //     : this._(status: AuthenticationStatus.clockInFailed);

  const AuthenticationState.verifyUserDevice()
      : this._(
          status: AuthenticationStatus.verifyUserDevice,
        );

  AuthenticationState copyWith(
      {AuthenticationStatus? status,
      CognitoUser? user,
      EmployeeEntity? employee,
      RetailLocationEntity? store,
      List<UserBusiness>? userBusinesses,
      int? rtlLocId,
      Map<String, String>? config}) {
    return AuthenticationState._(
        status: status ?? this.status,
        user: user ?? this.user,
        employee: employee ?? this.employee,
        store: store ?? this.store,
        userBusinesses: userBusinesses ?? this.userBusinesses,
        rtlLocId: rtlLocId ?? this.rtlLocId,
        config: config ?? this.config);
  }

  String getConfig(String key) {
    return config[key] ?? "";
  }

  @override
  List<Object?> get props => [status, user, store, userBusinesses];
}
