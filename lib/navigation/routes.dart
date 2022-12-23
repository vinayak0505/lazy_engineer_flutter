import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/auth_screen.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/lazy_engineer.dart';
import 'package:lazy_engineer/features/account/presentation/pages/account_screen.dart';
import 'package:lazy_engineer/features/settings/presentation/pages/settings_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_book_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_file_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_job_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_notes_screen.dart';
import 'package:lazy_engineer/features/upload/presentation/pages/upload_screen.dart';
import 'package:lazy_engineer/features/components/error_screen.dart';
import '../features/books/presentation/pages/book_description_screen.dart';
import '../features/books/presentation/pages/book_screen.dart';
import '../features/bottom_navigation/ui/bottom_nav_screen.dart';
import '../features/file/presentation/pages/file_detail_screen.dart';
import '../features/file/presentation/pages/file_screen.dart';
import '../features/home/presentation/pages/home_screen.dart';
import '../features/jobs/presentation/pages/jobs_description_screen.dart';
import '../features/jobs/presentation/pages/jobs_screen.dart';
import '../features/notes/presentation/pages/notes_detail_screen.dart';
import '../features/notes/presentation/pages/notes_screen.dart';
import '../features/papers/presentation/pages/question_paper_description_screen.dart';
import '../features/papers/presentation/pages/question_paper_screen.dart';
import '../features/profile/presentation/pages/profile_screen.dart';
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
  static const String notesDescriptionRoute = '/home/notes/notes_description';
  static const String fileRoute = '/home/practical_file';
  static const String fileDescriptionRoute =
      '/home/practical_file/practicle_file_description';
  static const String questionPaperRoute = '/home/question_paper';
  static const String questionPaperDescriptionRoute =
      '/home/question_paper/question_paper_description';
  static const String booksRoute = '/home/books';
  static const String bookDescriptionRoute = '/home/books/book_description';
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
        builder: (context, state, child) {
          return BottomNavScreen(child);
        },
        routes: [
          GoRoute(
            name: 'Home',
            path: homeRoute,
            pageBuilder: (_, __) => const NoTransitionPage(
              child: HomeScreen(),
            ),
            routes: [
              GoRoute(
                  path: 'books',
                  builder: (_, __) => const BookScreen(),
                  routes: [
                    GoRoute(
                      path: 'book_description/:id',
                      pageBuilder: (context, state) {
                        String? id = state.params['id'];
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: BookDescriptionScreen(id),
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
                        String? id = state.params['id'];
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: JobsDescriptionScreen(id),
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
                        String? id = state.params['id'];
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: NotesDetailScreen(id),
                        );
                      },
                    )
                  ]),
              GoRoute(
                  path: 'question_paper',
                  builder: (_, __) => const QuestionPaperScreen(),
                  routes: [
                    GoRoute(
                      path: 'question_paper_description/:id',
                      pageBuilder: (context, state) {
                        String? id = state.params['id'];
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: PaperDescriptionScreen(id),
                        );
                      },
                    )
                  ]),
              GoRoute(
                  path: 'practical_file',
                  builder: (_, __) => const FileScreen(),
                  routes: [
                    GoRoute(
                      path: 'practicle_file_description/:id',
                      pageBuilder: (context, state) {
                        String? id = state.params['id'];
                        return MaterialPage<void>(
                          key: state.pageKey,
                          child: FileDetailScreen(id),
                        );
                      },
                    )
                  ]),
            ],
          ),
          GoRoute(
            name: 'Upload',
            path: uploadRoute,
            pageBuilder: (_, __) => const NoTransitionPage(
              child: UploadScreen(),
            ),
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
            pageBuilder: (_, __) => const NoTransitionPage(
              child: AccountScreen(),
            ),
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

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
