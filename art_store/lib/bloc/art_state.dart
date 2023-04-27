import 'dart:developer';

abstract class ArtState {}

class ArtInitial extends ArtState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArtLoadingState extends ArtState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArtSuccessState extends ArtState {
  final List product;
  final List history;
  ArtSuccessState(
    this.product,
    this.history,
  );

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArtFailState extends ArtState {
  String message;

  ArtFailState(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [];
}
