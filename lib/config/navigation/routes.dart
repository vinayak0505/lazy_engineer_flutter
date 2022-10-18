import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/auth_screen.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/lazy_engineer.dart';
import 'package:lazy_engineer/screens/AccountsScreen/accounts_screen/ui/account_screen.dart';
import 'package:lazy_engineer/screens/AccountsScreen/profile_screen/ui/profile_screen.dart';
import 'package:lazy_engineer/screens/AccountsScreen/settings_screen/ui/settings_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/book_screen/ui/book_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/home_screen/ui/home_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/jobs_screen/ui/jobs_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/notes_screen/ui/notes_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/practicle_file_screen/ui/practicle_file_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/question_paper_screen/ui/question_paper_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_file_screen/ui/upload_file_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_notes_screen/ui/upload_notes_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_screen/ui/upload_screen.dart';
import 'package:lazy_engineer/screens/bottom_navigation/ui/bottom_nav_screen.dart';
import 'package:lazy_engineer/screens/components/error_screen.dart';


class RouteGenerator {
  static const String splashPage = '/splashPage';
  static const String initialRoute = '/';
  static const String authRoute = '/auth';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String desktopRoute = '/desktop';

  /// Home Screen
  static const String homeRoute = '/home';
  static const String notesRoute = '/notes';
  static const String fileRoute = '/practicle_file';
  static const String questionPaperRoute = '/question_paper';
  static const String booksRoute = '/books';
  static const String bookDescriptionRoute = '/book_description';
  static const String jobsRoute = '/jobs';
  static const String jobsDescriptionRoute = '/jobs_description';

  /// Upload Screen
  static const String uploadRoute = '/upload';
  static const String uploadNotesRoute = '/upload_notes';
  static const String uploadFileRoute = '/upload_practicle_file';
  static const String uploadQuestionPaperRoute = '/upload_question_paper';
  static const String uploadBooksRoute = '/upload_books';
  static const String uploadJobsRoute = '/upload_jobs';

  /// Account Screen
  static const String accountRoute = '/account';
  static const String settingsRoute = '/settings';
  static const String profileRoute = '/profile';

  // private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  final goRouter = GoRouter(
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
          return BottomNavScreen(child: child);
        },
        routes: [
          GoRoute(
            name: 'Home',
            path: homeRoute,
            builder: (_, __) => const HomeScreen(),
            routes: [
              GoRoute(
                path: notesRoute,
                builder: (_, __) => const NotesScreen(),
              ),
              GoRoute(
                path: fileRoute,
                builder: (_, __) => const PracticleFileScreen(),
              ),
              GoRoute(
                path: questionPaperRoute,
                builder: (_, __) => const QuestionPaperScreen(),
              ),
              GoRoute(
                path: booksRoute,
                builder: (_, __) => const BookScreen(),
              ),
              GoRoute(
                path: jobsRoute,
                builder: (_, __) => const JobsScreen(),
              ),
            ],
          ),
          GoRoute(
            name: 'Upload',
            path: uploadRoute,
            builder: (_, __) => const UploadScreen(),
            routes: [
              GoRoute(
                path: uploadNotesRoute,
                builder: (_, __) => const UploadNotesScreen(),
              ),
              GoRoute(
                path: uploadFileRoute,
                builder: (_, __) => const UploadFileScreen(),
              ),
              GoRoute(
                path: uploadQuestionPaperRoute,
                builder: (_, __) => Container(),
              ),
              GoRoute(
                path: uploadBooksRoute,
                builder: (_, __) => Container(),
              ),
              GoRoute(
                path: uploadJobsRoute,
                builder: (_, __) => Container(),
              ),
            ],
          ),
          GoRoute(
            name: 'Account',
            path: accountRoute,
            builder: (_, __) => const AccountScreen(),
            routes: [
              GoRoute(
                path: settingsRoute,
                builder: (_, __) => const SettingsScreen(),
              ),
              GoRoute(
                path: profileRoute,
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