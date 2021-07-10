import 'package:equatable/equatable.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endTemplate}
class User extends Equatable {
  const User({required this.id, this.email, this.name, this.photo});

  /// Current user's email
  final String? email;

  /// Current user's id
  final String id;

  /// Current user's name
  final String? name;

  /// Current user's photo
  final String? photo;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Getter to check whether the current user is empty
  bool get isEmpty => this == User.empty;

  /// Getter to check whether the current user is not empty
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];
}
