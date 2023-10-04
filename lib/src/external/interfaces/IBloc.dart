import 'package:flutter/widgets.dart';

import 'IBlocEvent.dart';

abstract class IBloc<ENUM> {
  void initState(BuildContext context);

  void onEvent(ENUM type, [IBlocEvent event = IBlocEvent.empty]);

  void dispose();
}