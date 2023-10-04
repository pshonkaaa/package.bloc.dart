import 'package:bloc_common/library.dart';
import 'package:flutter/widgets.dart';

import 'interfaces/IBloc.dart';

abstract class BaseBloc<T extends IRepository, TEnum extends Object> extends BaseCommonBloc<T, TEnum, BuildContext> implements IBloc<TEnum> {
  BaseBloc({
    required super.repository,
  });
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


// abstract class IBlocRouteResult<TEnum extends Object> {
//   void onInitState(BuildContext context) {}
//   void onBuild(BuildContext context) {}
//   void onEvent(TEnum type, IBlocEvent event) {}
//   void onResult(TEnum type, IBlocEvent event) {}
//   void onDispose(BuildContext context) {}
// }