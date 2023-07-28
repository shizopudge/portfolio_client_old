import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MouseCubit extends Cubit<MouseState> {
  MouseCubit() : super(const MouseState());

  void setPosition(Offset position) => emit(state.copyWith(position: position));

  void setStatus(MouseStatus status) => emit(state.copyWith(status: status));
}

class MouseState extends Equatable {
  final Offset position;
  final MouseStatus status;

  const MouseState({
    this.position = Offset.zero,
    this.status = MouseStatus.casual,
  });

  MouseState copyWith({
    Offset? position,
    MouseStatus? status,
  }) {
    return MouseState(
      position: position ?? this.position,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [position, status];

  bool get isCasual => status == MouseStatus.casual;
  bool get isClickable => status == MouseStatus.click;
}

enum MouseStatus {
  casual,
  click;

  bool get isCasual => this == MouseStatus.casual;
  bool get isClickable => this == MouseStatus.click;
}
