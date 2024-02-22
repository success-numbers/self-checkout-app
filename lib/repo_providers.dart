import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selfcheckout/src/repositories/business_repository.dart';
import 'package:selfcheckout/src/repositories/employee_repository.dart';
import 'package:selfcheckout/src/repositories/item_repository.dart';
import 'package:selfcheckout/src/repositories/med_repository.dart';

import 'my_app.dart';
import 'src/repositories/price_repository.dart';
import 'src/util/helper/rest_api.dart';

class MyAppRepoProviders extends StatelessWidget {
  final CognitoUserPool userPool;
  final RestApiClient restClient;
  const MyAppRepoProviders(
      {Key? key, required this.userPool, required this.restClient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(lazy: false, create: (context) => restClient),
        RepositoryProvider(
            lazy: false,
            create: (context) => MposClient(
                baseUrl: "http://52.66.221.28:5002", userPool: userPool)),
        RepositoryProvider(create: (context) => userPool),
        RepositoryProvider(
          create: (context) => BusinessRepository(
            restClient: restClient,
          ),
        ),
        RepositoryProvider(
          create: (context) => EmployeeRepository(restClient: restClient),
        ),
        RepositoryProvider(
          create: (context) => MedRepository(restClient: restClient),
        ),
        RepositoryProvider(
          create: (context) => PriceRepository(),
        ),
        RepositoryProvider(
        create: (context) => ItemRepository(restClient: restClient)
        )
      ],
      child: const MyApp(),
    );
  }
}
