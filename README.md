# Flutter Movie App
A minimalist movie app built with Flutter to delve into advanced state management using Cubit, API integration with Dio, and navigation management with AutoRoute.

## Features

- **Browse Movies:** Explore a curated list of movies.
- **Movie Details:** View detailed information about each movie.
- **Search Movies:** Search for your favorite movies.
- **Favorite Movies:** Mark movies as favorites.

## Technologies Used

- **Flutter:** Open-source UI development framework.
- **Dart:** Programming language for Flutter applications.
- **[Cubit:](https://pub.dev/packages/bloc)** State management library to handle app states.
- **[Dio:](https://pub.dev/packages/dio)** HTTP client for making API requests.
- **[AutoRoute:](https://pub.dev/packages/auto_route)** A declarative routing solution for Flutter applications.

## Configuration

Before running the app, you need to obtain an API key from [The Movie Database (TMDb)](https://www.themoviedb.org/documentation/api) to fetch movie data. Follow these steps to configure the API key:

1. Open the `api_service.dart` file located in the `lib/core/services/` directory.

2. Replace the placeholder `'PUT YOUR API KEY HERE'` with your actual TMDb API key.

    ```dart
    final String apiKey = 'PUT YOUR API KEY HERE';
    ```

3. Save the file.

Note: Make sure to keep your API key confidential and avoid sharing it publicly. You can use environment variables or other secure methods to handle sensitive information in a production environment.

Now, you're ready to run the app with the configured API key.
