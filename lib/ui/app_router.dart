import 'package:busconnect/ui/screens/home_screen.dart';
import 'package:busconnect/ui/screens/login_screen.dart';
import 'package:busconnect/ui/screens/registrations/guest_registration_screen.dart';
import 'package:busconnect/ui/screens/registrations/student_registration_screen.dart';
import 'package:busconnect/ui/screens/select_route_screen.dart';

class AppRouter {

  // Routes
  static final routes = {
    '/': (context) => const LoginScreen(),
    '/login': (context) => const HomeScreen(),
    '/guest-registration': (context) => const GuestRegistrationScreen(),
    '/student-registration': (context) => const StudentRegistrationScreen(),
    '/select-bus-route': (context) => const SelectRouteScreen(),
  };

  // Initial route
  static const initialRoute = '/';

}