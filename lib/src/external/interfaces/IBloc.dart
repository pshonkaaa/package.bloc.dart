import 'package:bloc_common/library.dart';
import 'package:flutter/widgets.dart';

abstract class IBloc<TEnum> implements ICommonBloc<TEnum, BuildContext> {
  @override
  void initState(BuildContext context);

  @override
  void onEvent(TEnum type, [IBlocEvent event = IBlocEvent.empty]);

  @override
  void dispose();
}