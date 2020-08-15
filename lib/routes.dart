import 'package:flutter/material.dart';

import 'models/movie.dart';
import 'ui/about_page.dart';
import 'ui/main_page.dart';
import 'ui/movie_details_page.dart';

class Routes {
  static const ROUTE_MAIN = "main";
  static const ROUTE_ABOUT = "about";
  static const ROUTE_MOVIE_DETAILS = "movie_details";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_MAIN:
        return MaterialPageRoute(builder: (context) {
          return MainPage();
        });
      case ROUTE_ABOUT:
        return MaterialPageRoute(builder: (context) {
          return AboutPage();
        });
      case ROUTE_MOVIE_DETAILS:
        final Movie movie = settings.arguments;

        return MaterialPageRoute(builder: (context) {
          return MovieDetailsPage(
            movie: movie,
          );
        });
      default:
        throw Exception("Unable to find route ${settings.name} in routes");
    }
  }
}
