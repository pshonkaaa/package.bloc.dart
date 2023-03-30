part of truecollaboration.bloc;

/// ## Using:
/// ```dart
/// // bloc.dart
/// //--------------------------------------------------------------------------
/// enum BlocEventType {
///   initState,
///   dispose,
/// }
///
/// class BlocImpl extends IBlocBase<BlocEventType> {
///   @override
///   void onEvent(BlocEventType type, [IBlocEvent event = IBlocEvent.empty]) {
///     super.onEvent(type, event);
///
///     switch(type) {
///       case BlocEventType.initState:
///         event as OnInitState;
///         /// DO SMTH
///         break;
///       case BlocEventType.dispose:
///         /// DO SMTH
///         break;
///     }
///   }
/// }
///
/// // events.dart
/// //--------------------------------------------------------------------------
/// class OnInitState extends IBlocEvent {
///   final BuildContext context;
///   OnInitState(this.context);
/// }
///
/// // screen.dart
/// //--------------------------------------------------------------------------
/// class Widget extends StatefulWidget {
///   final BlocImpl bloc;
///   const Widget({
///     Key? key,
///     required this.bloc,
///   }) : super(key: key);
///
///   @override
///   _WidgetState createState() => _WidgetState();
/// }
///
/// class _WidgetState extends State<Widget> {
///   late final BlocImpl bloc;
///
///   @override
///   void initState() {
///     super.initState();
///     bloc = widget.bloc;
///
///     bloc.onEvent(BlocEvent.initState, new OnInitState(context));
///   }
///
///   @override
///   void dispose() {
///     super.dispose();
///
///     bloc.onEvent(BlocEvent.dispose);
///   }
///
///   @override
///   Widget build(BuildContext context) {
///     return Container();
///   }
/// }
/// ```
abstract class IBlocBase<ENUM extends Object> {
  /// Should be call from Widget
  @mustCallSuper
  void onEvent(ENUM type, [IBlocEvent event = IBlocEvent.empty]) {
    assert(false, 
      "Unhandled event!\n"
      "Enum: $type\n"
      "Event: $event"
    );
  }

  // void dispose() {
  // }
}




// class BlocRouteResult extends IBlocRouteResult {
//   @override
//   Future<IBlocRouteResult> get future => _completer.future;


//   Completer<IBlocRouteResult> _completer = new Completer();
//   void complete() {
//     _completer.complete(this);
//   }
// }

// abstract class IBlocRouteResult {
//   // Future<IBlocRouteResult> get future;
// }


// abstract class IBlocRouteResult<ENUM extends Object> {
//   void onInitState(BuildContext context) {}
//   void onBuild(BuildContext context) {}
//   void onEvent(ENUM type, IBlocEvent event) {}
//   void onResult(ENUM type, IBlocEvent event) {}
//   void onDispose(BuildContext context) {}
// }