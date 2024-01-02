import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_time/app/app_config.dart';
import 'package:movie_time/core/constants/custom_colors.dart';
import 'package:movie_time/core/extensions/context_extensions.dart';
import 'package:movie_time/core/extensions/widget_extensions.dart';
import 'package:movie_time/models/services/movie_detail_model.dart';
import 'package:movie_time/pages/home_page/cubit/home_page_cubit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageCubit(
        restClient: context.restClient,
      ),
      child: const HomePageView(),
    );
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<HomePageCubit, HomePageState>(
          listener: (context, state) {
            if (state is HomePageError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    state.message,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is HomePageInitial) {
              context.read<HomePageCubit>().getMovies();
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomePageLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomePageLoaded) {
              return _Body(movies: state.movies);
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final List<MovieDetail> movies;
  const _Body({
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Popular Movies',
              style: TextStyle(
                color: CustomColors.colorEEEEEE,
                shadows: [
                  Shadow(
                    color: CustomColors.color0296E5,
                    blurRadius: 15,
                    offset: Offset(0, 2),
                  ),
                ],
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20, vertical: 10),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < movies.length; i++) ...[
                _PopularCard(
                  movies: movies,
                  index: i,
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _PopularCard extends StatelessWidget {
  const _PopularCard({
    required this.movies,
    required this.index,
  });

  final List<MovieDetail> movies;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: 150,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  AppConfig.of(context).imageUrl + (movies[index].poster_path ?? ''),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 20,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
                shadows: [
                  Shadow(
                    color: CustomColors.color0296E5,
                    blurRadius: 5,
                  ),
                ],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: Container(
              width: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      movies[index].title ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
