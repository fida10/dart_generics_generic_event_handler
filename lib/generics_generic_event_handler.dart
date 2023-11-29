/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/generics_generic_event_handler_base.dart';

/*
Question:

Create a generic class EventHandler<T> in Dart that is capable of handling events with data of type T.
This class should maintain a collection (like a list) of subscriber callback functions. 
Each callback function should have the signature void Function(T).
Implement a method listen(void Function(T) listener) in the EventHandler<T> class. 
This method should add the provided listener (callback function) to the collection of subscribers.
Implement a method void emit(T eventData) in the EventHandler<T> class. 
This method should iterate over all the subscribed listener callbacks in the collection and 
invoke each one of them, passing the eventData as an argument.
Ensure that the EventHandler<T> class allows for multiple listeners to be 
subscribed and that all listeners receive the event data when emit is called.
Your task is to design the EventHandler<T> class such that it can manage 
multiple subscriber callbacks and notify them appropriately when an event occurs. 
This will involve storing the callbacks in a suitable collection and iterating over 
this collection in the emit method to invoke each callback with the event data.

Note: Pay special attention to how you store and manage the 
subscriber callbacks within the EventHandler<T> class. 
Consider the implications of multiple subscribers and the need 
to notify each one when an event is emitted.
*/
class EventHandler<T> {
  List<void Function(T)> listeners = [];

  void listen(void Function(T) listener) {
    this.listeners.add(listener);
  }

  void emit(T eventData) {
    // listeners.forEach((element) {
    //   element(eventData);
    // });
    listeners.forEach((element) {
      element(eventData);
    });
  }
}