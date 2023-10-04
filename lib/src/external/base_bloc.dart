import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:true_core/library.dart';

import 'base_repository.dart';
import 'interfaces/IBloc.dart';
import 'interfaces/IBlocEvent.dart';
import 'interfaces/IRepository.dart';

abstract class BaseBloc<T extends IRepository, ENUM extends Object> implements IBloc<ENUM> {
  BaseBloc({
    required this.repository,
  }) {
    if(repository is! BaseRepository)
      throw ArgumentError('repository is! BaseRepository');
    _repository = repository as BaseRepository;
  }
  
  final T repository;
  late final BaseRepository _repository;

  final NotifierStorage storage = NotifierStorage();

  late final BuildContext context;
  
  @override
  @mustCallSuper
  @mustBeOverridden
  void initState(BuildContext context) {
    this.context = context;
    // _repository.context = context;
  }

  @override
  @mustCallSuper
  @mustBeOverridden
  void onEvent(ENUM type, [IBlocEvent event = IBlocEvent.empty]) {
    // assert(false, 
    //   "Unhandled event!\n"
    //   "Enum: $type\n"
    //   "Event: $event"
    // );
  }

  @override
  @mustCallSuper
  @mustBeOverridden
  void dispose() {
    storage.dispose();
  }
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