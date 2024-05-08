import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_market/core/router/app_router.dart';
import 'package:open_market/features/auth/data/repo/auth_repo.dart';
import 'package:open_market/features/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:open_market/features/home/data/repo/product_repo.dart';
import 'package:open_market/features/home/logic/cubit/products_cubit.dart';

class OpenMarket extends StatelessWidget {
  const OpenMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AuthRepository authRepository = AuthRepository();
    final ProductRepo productsRepository = ProductRepo();
    return MultiBlocProvider(
      providers: [
           BlocProvider(create: (context) => AuthCubit(authRepository),),
           BlocProvider(create: (context) => ProductsCubit(productsRepository),)
      ],
      child: MaterialApp.router(
        title: 'Open Market',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}