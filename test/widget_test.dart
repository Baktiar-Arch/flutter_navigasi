import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_belanja/main.dart'; // sesuaikan nama project kamu

void main() {
  testWidgets('App should show Shopping List title', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(const MyApp());

    // Pastikan AppBar menampilkan "Shopping List"
    expect(find.text('Shopping List'), findsOneWidget);
  });
}
