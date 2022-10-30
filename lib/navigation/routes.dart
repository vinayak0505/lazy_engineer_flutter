import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/auth_screen.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/lazy_engineer.dart';
import 'package:lazy_engineer/features/account/presentation/pages/account_screen.dart';
import 'package:lazy_engineer/features/account/presentation/pages/profile_screen.dart';
import 'package:lazy_engineer/features/account/presentation/pages/settings_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/book_description_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/practical_file_description_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/book_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/jobs_description_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/jobs_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/notes_description_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/notes_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/practicle_file_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/question_paper_description_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_book_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_file_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_job_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_notes_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_screen.dart';
import 'package:lazy_engineer/features/components/error_screen.dart';

import '../features/bottom_navigation/ui/bottom_nav_screen.dart';
import '../features/upload/presentation/pages/upload_paper_screen.dart';

class RouteGenerator {
  static const String initialRoute = '/';
  static const String splashPage = '/splashPage';
  static const String authRoute = '/auth';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String dashboardRoute = '/dashboard';

  /// Home Screen
  static const String homeRoute = '/home';
  static const String notesRoute = '/home/notes';
  static const String fileRoute = '/home/practicle_file';
  static const String questionPaperRoute = '/home/question_paper';
  static const String booksRoute = '/home/books';
  static const String notesDescriptionRoute = '/home/notes/notes_description';
  static const String bookDescriptionRoute = '/home/books/book_description';
  static const String fileDescriptionRoute = '/home/practicle_file_description';
  static const String jobsRoute = '/home/jobs';
  static const String jobsDescriptionRoute = '/home/jobs/jobs_description';

  /// Upload Screen
  static const String uploadRoute = '/upload';
  static const String uploadNotesRoute = '/upload/notes';
  static const String uploadFileRoute = '/upload/practicle_file';
  static const String uploadQuestionPaperRoute =
      '/upload/upload_question_paper';
  static const String uploadBooksRoute = '/upload/books';
  static const String uploadJobsRoute = '/upload/jobs';
  // static const String uploadJobsCompanyPhotoRoute = '/upload/jobs/fullscreen_view';
  static const String uploadPaperRoute = '/upload/question_paper';
  static const String uploadBookRoute = '/upload/books';

  /// Account Screen
  static const String accountRoute = '/account';
  static const String settingsRoute = '/account/settings';
  static const String profileRoute = '/account/profile';

  // private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  final GoRouter goRouter;

  RouteGenerator() : goRouter = router;

  static GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: initialRoute,
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (_, __) => const LazyEngineer(),
      ),
      GoRoute(
        path: authRoute,
        builder: (_, __) => const AuthScreen(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        // path: dashboardRoute,
        builder: (context, state, child) {
          return BottomNavScreen(child: child);
        },
        routes: [
          GoRoute(
            name: 'Home',
            path: homeRoute,
            builder: (_, __) => const HomeScreen(),
            routes: [
              GoRoute(
                  path: 'books',
                  builder: (_, __) => const BookScreen(),
                  routes: [
                    GoRoute(
                      path: 'book_description/:id',
                      pageBuilder: (context, state) {
                        int id = int.parse(state.params['id']!);
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: BookDescriptionScreen(id: id),
                        );
                      },
                    )
                  ]),
              GoRoute(
                  path: 'jobs',
                  builder: (_, __) => const JobsScreen(),
                  routes: [
                    GoRoute(
                      path: 'jobs_description/:id',
                      pageBuilder: (context, state) {
                        int id = int.parse(state.params['id']!);
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: JobsDescriptionScreen(id: id),
                        );
                      },
                    )
                  ]),
              GoRoute(
                  path: 'notes',
                  builder: (_, __) => const NotesScreen(),
                  routes: [
                    GoRoute(
                      path: 'notes_description/:id',
                      pageBuilder: (context, state) {
                        int id = int.parse(state.params['id']!);
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: NotesDescriptionScreen(id: id),
                        );
                      },
                    )
                  ]),
              GoRoute(
                  path: 'practile_file',
                  builder: (_, __) => const NotesScreen(),
                  routes: [
                    GoRoute(
                      path: 'practicle_file_description/:id',
                      pageBuilder: (context, state) {
                        int id = int.parse(state.params['id']!);
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: FileDescriptionScreen(id: id),
                        );
                      },
                    )
                  ]),
            ],
          ),
          GoRoute(
            name: 'Upload',
            path: uploadRoute,
            builder: (_, __) => const UploadScreen(),
            routes: [
              GoRoute(
                path: 'notes',
                builder: (_, __) => const UploadNotesScreen(),
              ),
              GoRoute(
                path: 'practicle_file',
                builder: (_, __) => const UploadFileScreen(),
              ),
              GoRoute(
                path: 'question_paper',
                builder: (_, __) => const UploadPaperScreen(),
              ),
              GoRoute(
                path: 'books',
                builder: (_, __) => const UploadBookScreen(),
              ),
              GoRoute(
                path: 'jobs',
                builder: (_, __) => const UploadJobScreen(),
                // routes: [
                //   GoRoute(
                //     path: 'fullscreen_view',
                //     builder: (context, state) => FullScreenPhoto(
                //       index: 1,
                //       list: [],
                //     ),
                //   )
                // ],
              ),
            ],
          ),
          GoRoute(
            name: 'Account',
            path: accountRoute,
            builder: (_, __) => const AccountScreen(),
            routes: [
              GoRoute(
                path: 'settings',
                builder: (_, __) => const SettingsScreen(),
              ),
              GoRoute(
                path: 'profile',
                builder: (_, __) => const ProfileScreen(),
              ),
            ],
          )
        ],
      ),
    ],
    errorBuilder: (_, __) => const ErrorScreen(),
  );
}
