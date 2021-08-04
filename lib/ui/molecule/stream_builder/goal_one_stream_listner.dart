import 'dart:async';

import 'package:flutter/widgets.dart';

/// A convenience widget for listening to a stream without having
/// to create a [StatefulWidget] or canceling a [Stream] subscription.
/// If [child] is null, an empty [SizedBox] will be used.
class GoalOneStreamListener<T> extends StatefulWidget {
  final Stream<T> stream;
  final ValueChanged<T> onData;
  final ValueChanged<Object> onError;
  final VoidCallback onDone;
  final bool cancelOnError;
  final Widget child;

  const GoalOneStreamListener({
    Key key,
    @required this.stream,
    this.onData,
    this.onError,
    this.onDone,
    this.cancelOnError,
    this.child,
  })  : assert(stream != null),
        super(key: key);

  @override
  _GoalOneStreamListenerState<T> createState() =>
      _GoalOneStreamListenerState<T>();
}

class _GoalOneStreamListenerState<T> extends State<GoalOneStreamListener<T>> {
  StreamSubscription<T> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen(
      widget.onData,
      onError: widget.onError,
      onDone: widget.onDone,
      cancelOnError: widget.cancelOnError,
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox.shrink();
  }
}
