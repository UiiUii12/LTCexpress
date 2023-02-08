// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i13;
import 'package:get/get.dart' as _i15;

import 'classes/Category.dart' as _i16;
import 'classes/OpenTime.dart' as _i17;
import 'View/AdresseScreen.dart' as _i5;
import 'View/CartScreen.dart' as _i10;
import 'View/categoryScreen.dart' as _i6;
import 'View/ConfirmationOrdersScreen.dart' as _i11;
import 'View/currentPage.dart' as _i1;
import 'View/HomeScreen.dart' as _i4;
import 'View/MesCommandes.dart' as _i3;
import 'View/RestaurantScreen.dart' as _i8;
import 'View/RestaurantsScreen.dart' as _i7;
import 'View/SearchScreen.dart' as _i9;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    CurrentPageRouter.name: (routeData) {
      final args = routeData.argsAs<CurrentPageRouterArgs>(
          orElse: () => const CurrentPageRouterArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.Main_Page(key: args.key),
      );
    },
    HomeRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CartRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MesCommandesRouter.name: (routeData) {
      final args = routeData.argsAs<MesCommandesRouterArgs>(
          orElse: () => const MesCommandesRouterArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.MesCommandesScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.HomeScreen(key: args.key),
      );
    },
    AdresseRoute.name: (routeData) {
      final args = routeData.argsAs<AdresseRouteArgs>(
          orElse: () => const AdresseRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.AdresseScreen(key: args.key),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.CategoryScreen(
          key: args.key,
          categoryname: args.categoryname,
          categoryId: args.categoryId,
        ),
      );
    },
    RestaurantsRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantsRouteArgs>(
          orElse: () => const RestaurantsRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.RestaurantsScreen(key: args.key),
      );
    },
    RestaurantRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.RestaurantScreen(
          key: args.key,
          image: args.image,
          name: args.name,
          category: args.category,
          adress: args.adress,
          state: args.state,
          openTime: args.openTime,
          restaurantId: args.restaurantId,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.SearchScreen(key: args.key),
      );
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.CartScreen(key: args.key),
      );
    },
    ConfirmationOrdersRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ConfirmationOrdersScreen(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          CurrentPageRouter.name,
          path: '/currentPage',
          children: [
            _i12.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: CurrentPageRouter.name,
              children: [
                _i12.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  AdresseRoute.name,
                  path: 'adresse',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  CategoryRoute.name,
                  path: ':categoryId',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  RestaurantsRoute.name,
                  path: 'restaurants',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  RestaurantRoute.name,
                  path: ':restaurantId',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: CurrentPageRouter.name,
              children: [
                _i12.RouteConfig(
                  SearchRoute.name,
                  path: '',
                  parent: SearchRouter.name,
                ),
                _i12.RouteConfig(
                  RestaurantRoute.name,
                  path: ':restaurantId',
                  parent: SearchRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              CartRouter.name,
              path: 'cart',
              parent: CurrentPageRouter.name,
              children: [
                _i12.RouteConfig(
                  CartRoute.name,
                  path: '',
                  parent: CartRouter.name,
                ),
                _i12.RouteConfig(
                  ConfirmationOrdersRoute.name,
                  path: 'confirmationOrders',
                  parent: CartRouter.name,
                ),
                _i12.RouteConfig(
                  RestaurantRoute.name,
                  path: ':restaurantId',
                  parent: CartRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              MesCommandesRouter.name,
              path: 'mesCommandes',
              parent: CurrentPageRouter.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.Main_Page]
class CurrentPageRouter extends _i12.PageRouteInfo<CurrentPageRouterArgs> {
  CurrentPageRouter({
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CurrentPageRouter.name,
          path: '/currentPage',
          args: CurrentPageRouterArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CurrentPageRouter';
}

class CurrentPageRouterArgs {
  const CurrentPageRouterArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'CurrentPageRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRouter extends _i12.PageRouteInfo<void> {
  const SearchRouter({List<_i12.PageRouteInfo>? children})
      : super(
          SearchRouter.name,
          path: 'search',
          initialChildren: children,
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CartRouter extends _i12.PageRouteInfo<void> {
  const CartRouter({List<_i12.PageRouteInfo>? children})
      : super(
          CartRouter.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i3.MesCommandesScreen]
class MesCommandesRouter extends _i12.PageRouteInfo<MesCommandesRouterArgs> {
  MesCommandesRouter({_i14.Key? key})
      : super(
          MesCommandesRouter.name,
          path: 'mesCommandes',
          args: MesCommandesRouterArgs(key: key),
        );

  static const String name = 'MesCommandesRouter';
}

class MesCommandesRouterArgs {
  const MesCommandesRouterArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'MesCommandesRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i14.Key? key})
      : super(
          HomeRoute.name,
          path: '',
          args: HomeRouteArgs(key: key),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.AdresseScreen]
class AdresseRoute extends _i12.PageRouteInfo<AdresseRouteArgs> {
  AdresseRoute({_i14.Key? key})
      : super(
          AdresseRoute.name,
          path: 'adresse',
          args: AdresseRouteArgs(key: key),
        );

  static const String name = 'AdresseRoute';
}

class AdresseRouteArgs {
  const AdresseRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'AdresseRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.CategoryScreen]
class CategoryRoute extends _i12.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    _i14.Key? key,
    required String categoryname,
    required dynamic categoryId,
  }) : super(
          CategoryRoute.name,
          path: ':categoryId',
          args: CategoryRouteArgs(
            key: key,
            categoryname: categoryname,
            categoryId: categoryId,
          ),
          rawPathParams: {'categoryId': categoryId},
        );

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    required this.categoryname,
    required this.categoryId,
  });

  final _i14.Key? key;

  final String categoryname;

  final dynamic categoryId;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, categoryname: $categoryname, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i7.RestaurantsScreen]
class RestaurantsRoute extends _i12.PageRouteInfo<RestaurantsRouteArgs> {
  RestaurantsRoute({_i14.Key? key})
      : super(
          RestaurantsRoute.name,
          path: 'restaurants',
          args: RestaurantsRouteArgs(key: key),
        );

  static const String name = 'RestaurantsRoute';
}

class RestaurantsRouteArgs {
  const RestaurantsRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'RestaurantsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.RestaurantScreen]
class RestaurantRoute extends _i12.PageRouteInfo<RestaurantRouteArgs> {
  RestaurantRoute({
    _i14.Key? key,
    required String image,
    required String name,
    required _i15.RxList<_i16.Category> category,
    required String adress,
    required bool state,
    required _i17.OpenTime openTime,
    required dynamic restaurantId,
  }) : super(
          RestaurantRoute.name,
          path: ':restaurantId',
          args: RestaurantRouteArgs(
            key: key,
            image: image,
            name: name,
            category: category,
            adress: adress,
            state: state,
            openTime: openTime,
            restaurantId: restaurantId,
          ),
          rawPathParams: {'restaurantId': restaurantId},
        );

  static const String name = 'RestaurantRoute';
}

class RestaurantRouteArgs {
  const RestaurantRouteArgs({
    this.key,
    required this.image,
    required this.name,
    required this.category,
    required this.adress,
    required this.state,
    required this.openTime,
    required this.restaurantId,
  });

  final _i14.Key? key;

  final String image;

  final String name;

  final _i15.RxList<_i16.Category> category;

  final String adress;

  final bool state;

  final _i17.OpenTime openTime;

  final dynamic restaurantId;

  @override
  String toString() {
    return 'RestaurantRouteArgs{key: $key, image: $image, name: $name, category: $category, adress: $adress, state: $state, openTime: $openTime, restaurantId: $restaurantId}';
  }
}

/// generated route for
/// [_i9.SearchScreen]
class SearchRoute extends _i12.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({_i14.Key? key})
      : super(
          SearchRoute.name,
          path: '',
          args: SearchRouteArgs(key: key),
        );

  static const String name = 'SearchRoute';
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.CartScreen]
class CartRoute extends _i12.PageRouteInfo<CartRouteArgs> {
  CartRoute({_i14.Key? key})
      : super(
          CartRoute.name,
          path: '',
          args: CartRouteArgs(key: key),
        );

  static const String name = 'CartRoute';
}

class CartRouteArgs {
  const CartRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.ConfirmationOrdersScreen]
class ConfirmationOrdersRoute extends _i12.PageRouteInfo<void> {
  const ConfirmationOrdersRoute()
      : super(
          ConfirmationOrdersRoute.name,
          path: 'confirmationOrders',
        );

  static const String name = 'ConfirmationOrdersRoute';
}
