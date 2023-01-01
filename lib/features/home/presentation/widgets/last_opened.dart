import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/home/presentation/widgets/last_seen_card.dart';

import '../../../components/failiure_screen.dart';
import '../../../components/loading_screen.dart';
import '../../data/repositories/home_repository_impl.dart';
import '../cubit/last_seen/last_seen_cubit.dart';

class LastOpened extends StatelessWidget {
  const LastOpened({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LastSeenCubit(HomeRepositoryImpl()),
      child: BlocBuilder<LastSeenCubit, LastSeenState>(
        builder: (context, state) {
          return state.when(
            loading: () => const LoadingScreen(),
            failure: (error) => FailureScreen(error),
            success: (data) => SizedBox(
              height: 250,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => LastSeenCard(
                  title: data[index].title,
                  category: data[index].category,
                  description: data[index].description,
                  date: data[index].lastSeen,
                ),
                separatorBuilder: (_, __) => const SizedBox(width: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}