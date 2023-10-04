abstract class IBlocEvent {
  static const IBlocEvent empty = const _EmptyEvent();
  const IBlocEvent();
}

class _EmptyEvent extends IBlocEvent {
  const _EmptyEvent();
}