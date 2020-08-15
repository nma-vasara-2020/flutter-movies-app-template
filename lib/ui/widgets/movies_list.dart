import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';
import 'package:movies/routes.dart';

class MoviesListView extends StatelessWidget {
  final List<Movie> movies;

  const MoviesListView({Key key, @required this.movies})
      : assert(movies != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // https://flutter.dev/docs/cookbook/lists/mixed-list
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: movies.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        return MoviesListViewCell(
          movie: movies[index],
        );
      },
    );
  }
}

class MoviesListViewCell extends StatelessWidget {
  final Movie movie;

  const MoviesListViewCell({Key key, @required this.movie})
      : assert(movie != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: InkWell(
        onTap: () => _launchMovieDetailsScreen(context),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Positioned.fill(
                  child: MovieCoverImage(movie: movie),
                ),
                Positioned.fill(
                  child: MovieTitle(movie: movie),
                ),
                MovieRating(movie: movie),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchMovieDetailsScreen(BuildContext context) {
    // TODO: Task 3
  }
}

class MovieCoverImage extends StatelessWidget {
  final Movie movie;

  const MovieCoverImage({Key key, @required this.movie})
      : assert(movie != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Task 4
    return Container(color: Colors.blue);
  }
}

class MovieTitle extends StatelessWidget {
  final Movie movie;

  const MovieTitle({Key key, @required this.movie})
      : assert(movie != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: double.infinity,
        child: Container(
          color: Colors.black.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movie.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

class MovieRating extends StatelessWidget {
  final Movie movie;

  const MovieRating({Key key, @required this.movie})
      : assert(movie != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Icon(
                    Icons.stars,
                    color: Colors.white,
                  ),
                ),
                Text(
                  movie.voteAverage.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
