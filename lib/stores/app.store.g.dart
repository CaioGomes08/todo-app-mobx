// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$currentStateAtom = Atom(name: '_AppStore.currentState');

  @override
  String get currentState {
    _$currentStateAtom.reportRead();
    return super.currentState;
  }

  @override
  set currentState(String value) {
    _$currentStateAtom.reportWrite(value, super.currentState, () {
      super.currentState = value;
    });
  }

  final _$busyAtom = Atom(name: '_AppStore.busy');

  @override
  bool get busy {
    _$busyAtom.reportRead();
    return super.busy;
  }

  @override
  set busy(bool value) {
    _$busyAtom.reportWrite(value, super.busy, () {
      super.busy = value;
    });
  }

  final _$todosAtom = Atom(name: '_AppStore.todos');

  @override
  ObservableList<TodoItem> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<TodoItem> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  void changeSelected(String state) {
    final _$actionInfo = _$_AppStoreActionController.startAction(
        name: '_AppStore.changeSelected');
    try {
      return super.changeSelected(state);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(TodoItem item) {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.add');
    try {
      return super.add(item);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTodos(List<TodoItem> items) {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.setTodos');
    try {
      return super.setTodos(items);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearTodos() {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.clearTodos');
    try {
      return super.clearTodos();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentState: ${currentState},
busy: ${busy},
todos: ${todos}
    ''';
  }
}
