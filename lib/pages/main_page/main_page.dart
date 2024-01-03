import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_time/core/constants/custom_colors.dart';
import 'package:movie_time/core/extensions/widget_extensions.dart';
import 'package:movie_time/l10n/l10n.dart';
import 'package:movie_time/models/app/bottom_navigation_bar_model.dart';
import 'package:movie_time/pages/main_page/cubit/main_page_cubit.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainPageCubit(),
      child: const MainPageView(),
    );
  }
}

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarModel> bottomNavItems = [
      BottomNavigationBarModel(
        icon: FontAwesomeIcons.house,
        title: context.l10n.home,
      ),
      BottomNavigationBarModel(
        icon: FontAwesomeIcons.magnifyingGlass,
        title: context.l10n.search,
      ),
      BottomNavigationBarModel(
        icon: FontAwesomeIcons.bookmark,
        title: context.l10n.bookmarks,
      ),
    ];
    return BlocBuilder<MainPageCubit, MainPageState>(
      builder: (context, state) {
        int currentIndex = context.watch<MainPageCubit>().currentIndex;
        final Widget currentPage = context.read<MainPageCubit>().pages[currentIndex];
        return Scaffold(
          body: currentPage,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.25),
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ],
            ),
            child: BottomNavigationBar(
              items: bottomNavItems
                  .map(
                    (e) => BottomNavigationBarItem(
                      icon: _BottomNavIcon(
                        icon: e.icon,
                        currentIndex: currentIndex,
                        index: bottomNavItems.indexOf(e),
                      ),
                      label: e.title,
                    ),
                  )
                  .toList(),
              currentIndex: currentIndex,
              onTap: (index) => context.read<MainPageCubit>().onItemTapped(index),
            ),
          ),
        );
      },
    );
  }
}

class _BottomNavIcon extends StatelessWidget {
  const _BottomNavIcon({
    required this.currentIndex,
    required this.index,
    required this.icon,
  });
  final int currentIndex;
  final int index;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FaIcon(
      icon,
      size: 20,
      color: currentIndex == index ? CustomColors.color0296E5 : CustomColors.color67686D,
    ).paddingOnly(
      top: 4,
      bottom: 4,
    );
  }
}
