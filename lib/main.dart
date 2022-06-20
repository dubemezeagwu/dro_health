import 'package:dro_health/bloc/cart/cart_bloc.dart';
import 'package:dro_health/bloc/catalog/catalog_bloc.dart';
import 'package:dro_health/data/repository/shop_repository.dart';
import 'package:dro_health/utils/colors.dart';
import 'package:dro_health/utils/routes/dashboard.dart';
import 'package:dro_health/utils/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => ShopRepository())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CartBloc(
              cartRepository: RepositoryProvider.of<ShopRepository>(context)
          )..add(CartStarted()),
          ),
          BlocProvider(
              create: (context) => CatalogBloc(
                  shopRepository: RepositoryProvider.of<ShopRepository>(context)
              )..add(CatalogStarted())
          )
        ],
        child: MaterialApp(
          onGenerateRoute: generateRoute,
          debugShowCheckedModeBanner: false,
          title: 'DRO Health',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(
              elevation: 0,
              color: AppColors.darkPurple,
            ),
          ),
        ),
      ),
    );
  }
}


