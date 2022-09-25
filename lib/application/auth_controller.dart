import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider =
    ChangeNotifierProvider<AuthController>((ref) => AuthController());

/// A mock authentication service
class AuthController extends ChangeNotifier {
  bool _signedIn = false;
  bool _isLoading = false;

  bool get signedIn => _signedIn;
  bool get loading => _isLoading;

  Future<void> signOut() async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    // Sign out.
    _signedIn = false;
    notifyListeners();
  }

  Future<bool> signIn(String username, String password) async {
    _isLoading = true;
    notifyListeners();
    await Future<void>.delayed(const Duration(seconds: 3));

    // Sign in. Allow any password.
    _signedIn = true;
    _isLoading = false;
    notifyListeners();
    return _signedIn;
  }
}
