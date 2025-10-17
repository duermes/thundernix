import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/view/login_page.dart';
import '../features/admin/view/tasks_created_page.dart';
import '../features/admin/view/tasks_completed_page.dart';
import '../features/admin/view/workers_active_page.dart';
import '../features/admin/view/task_new_page.dart';
import '../features/admin/view/worker_new_page.dart';
import '../features/admin/view/worker_select_page.dart';
import '../features/admin/view/notifications_page.dart';
import '../features/worker/view/tasks_assigned_page.dart';
import '../features/worker/view/task_current_page.dart';
import '../features/worker/view/task_expired_page.dart';
import '../features/worker/view/notifications_worker_page.dart';

class AppRoutes {
  static const login = '/login';

  // Admin
  static const adminCreated = '/admin/created';
  static const adminCompleted = '/admin/completed';
  static const adminWorkers = '/admin/workers';
  static const adminTaskNew = '/admin/task/new';
  static const adminWorkerNew = '/admin/worker/new';
  static const adminWorkerSelect = '/admin/worker/select';
  static const adminNotifications = '/admin/notifications';

  // Worker
  static const workerTasks = '/worker/tasks';
  static const workerTaskCurrent = '/worker/task/current';
  static const workerTaskExpired = '/worker/task/expired';
  static const workerNotifications = '/worker/notifications';
}

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(
        path: AppRoutes.login,
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),

      // Admin
      GoRoute(path: AppRoutes.adminCreated, name: 'admin-created', builder: (_, __) => const TasksCreatedPage()),
      GoRoute(path: AppRoutes.adminCompleted, name: 'admin-completed', builder: (_, __) => const TasksCompletedPage()),
      GoRoute(path: AppRoutes.adminWorkers, name: 'admin-workers', builder: (_, __) => const WorkersActivePage()),
      GoRoute(path: AppRoutes.adminTaskNew, name: 'admin-task-new', builder: (_, __) => const TaskNewPage()),
      GoRoute(path: AppRoutes.adminWorkerNew, name: 'admin-worker-new', builder: (_, __) => const WorkerNewPage()),
      GoRoute(path: AppRoutes.adminWorkerSelect, name: 'admin-worker-select', builder: (_, __) => const WorkerSelectPage()),
      GoRoute(path: AppRoutes.adminNotifications, name: 'admin-notifications', builder: (_, __) => const AdminNotificationsPage()),

      // Worker
      GoRoute(path: AppRoutes.workerTasks, name: 'worker-tasks', builder: (_, __) => const TasksAssignedPage()),
      GoRoute(path: AppRoutes.workerTaskCurrent, name: 'worker-task-current', builder: (_, __) => const TaskCurrentPage()),
      GoRoute(path: AppRoutes.workerTaskExpired, name: 'worker-task-expired', builder: (_, __) => const TaskExpiredPage()),
      GoRoute(path: AppRoutes.workerNotifications, name: 'worker-notifications', builder: (_, __) => const WorkerNotificationsPage()),
    ],
    errorBuilder: (_, state) => Scaffold(
      appBar: AppBar(title: const Text('ThunderNix')),
      body: Center(child: Text('Ruta no encontrada: ${state.uri}')),
    ),
  );
}
