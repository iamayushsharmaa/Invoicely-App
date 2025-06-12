import 'dart:async';

import 'package:flutter/foundation.dart';

import '../features/auth/presentation/bloc/auth_bloc.dart';

class BlocListenable extends ChangeNotifier {
  final AuthBloc authBloc;
  StreamSubscription? _subscription;

  BlocListenable(this.authBloc) {
    _subscription = authBloc.stream.listen((state) {
      notifyListeners(); // Notify GoRouter on state change
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
