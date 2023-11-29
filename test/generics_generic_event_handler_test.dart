import 'package:generics_generic_event_handler/generics_generic_event_handler.dart';
import 'package:test/test.dart';

void main() {
  group('Generic Event Handler Tests', () {
    late EventHandler<int> intEventHandler;
    late List<int> intEventLog;

    setUp(() {
      intEventHandler = EventHandler<int>();
      intEventLog = [];
      intEventHandler.listen((int data) => intEventLog.add(data));
    });

    test('int EventHandler should correctly emit events to listeners', () {
      intEventHandler.emit(1);
      intEventHandler.emit(2);
      expect(intEventLog, equals([1, 2]));
    });

    test('int EventHandler should handle multiple emits correctly', () {
      intEventHandler.emit(3);
      intEventHandler.emit(4);
      expect(intEventLog, equals([3, 4]));
    });

    late EventHandler<String> stringEventHandler;
    late List<String> stringEventLog;

    setUp(() {
      stringEventHandler = EventHandler<String>();
      stringEventLog = [];
      stringEventHandler.listen((String data) => stringEventLog.add(data));
    });

    test('String EventHandler should correctly emit events to listeners', () {
      stringEventHandler.emit('Hello');
      stringEventHandler.emit('World');
      expect(stringEventLog, equals(['Hello', 'World']));
    });

    test('String EventHandler should handle multiple emits correctly', () {
      stringEventHandler.emit('Dart');
      stringEventHandler.emit('Flutter');
      expect(stringEventLog, equals(['Dart', 'Flutter']));
    });
  });
}
