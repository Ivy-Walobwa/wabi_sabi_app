// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  _Initialized initialized(Note? initialNote) {
    return _Initialized(
      initialNote,
    );
  }

  _LeadOnTextChanged noteLeadOnTextChanged(String noteLeadingText) {
    return _LeadOnTextChanged(
      noteLeadingText,
    );
  }

  _NoteBodyChanged noteBodyChanged(String bodyText) {
    return _NoteBodyChanged(
      bodyText,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? initialNote) initialized,
    required TResult Function(String noteLeadingText) noteLeadOnTextChanged,
    required TResult Function(String bodyText) noteBodyChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? initialNote)? initialized,
    TResult Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult Function(String bodyText)? noteBodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LeadOnTextChanged value) noteLeadOnTextChanged,
    required TResult Function(_NoteBodyChanged value) noteBodyChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Note? initialNote});

  $NoteCopyWith<$Res>? get initialNote;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialNote = freezed,
  }) {
    return _then(_Initialized(
      initialNote == freezed
          ? _value.initialNote
          : initialNote // ignore: cast_nullable_to_non_nullable
              as Note?,
    ));
  }

  @override
  $NoteCopyWith<$Res>? get initialNote {
    if (_value.initialNote == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.initialNote!, (value) {
      return _then(_value.copyWith(initialNote: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNote);

  @override
  final Note? initialNote;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(initialNote: $initialNote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialNote, initialNote) ||
                const DeepCollectionEquality()
                    .equals(other.initialNote, initialNote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialNote);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? initialNote) initialized,
    required TResult Function(String noteLeadingText) noteLeadOnTextChanged,
    required TResult Function(String bodyText) noteBodyChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? initialNote)? initialized,
    TResult Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult Function(String bodyText)? noteBodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LeadOnTextChanged value) noteLeadOnTextChanged,
    required TResult Function(_NoteBodyChanged value) noteBodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NoteFormEvent {
  const factory _Initialized(Note? initialNote) = _$_Initialized;

  Note? get initialNote => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeadOnTextChangedCopyWith<$Res> {
  factory _$LeadOnTextChangedCopyWith(
          _LeadOnTextChanged value, $Res Function(_LeadOnTextChanged) then) =
      __$LeadOnTextChangedCopyWithImpl<$Res>;
  $Res call({String noteLeadingText});
}

/// @nodoc
class __$LeadOnTextChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$LeadOnTextChangedCopyWith<$Res> {
  __$LeadOnTextChangedCopyWithImpl(
      _LeadOnTextChanged _value, $Res Function(_LeadOnTextChanged) _then)
      : super(_value, (v) => _then(v as _LeadOnTextChanged));

  @override
  _LeadOnTextChanged get _value => super._value as _LeadOnTextChanged;

  @override
  $Res call({
    Object? noteLeadingText = freezed,
  }) {
    return _then(_LeadOnTextChanged(
      noteLeadingText == freezed
          ? _value.noteLeadingText
          : noteLeadingText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LeadOnTextChanged implements _LeadOnTextChanged {
  const _$_LeadOnTextChanged(this.noteLeadingText);

  @override
  final String noteLeadingText;

  @override
  String toString() {
    return 'NoteFormEvent.noteLeadOnTextChanged(noteLeadingText: $noteLeadingText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeadOnTextChanged &&
            (identical(other.noteLeadingText, noteLeadingText) ||
                const DeepCollectionEquality()
                    .equals(other.noteLeadingText, noteLeadingText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(noteLeadingText);

  @JsonKey(ignore: true)
  @override
  _$LeadOnTextChangedCopyWith<_LeadOnTextChanged> get copyWith =>
      __$LeadOnTextChangedCopyWithImpl<_LeadOnTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? initialNote) initialized,
    required TResult Function(String noteLeadingText) noteLeadOnTextChanged,
    required TResult Function(String bodyText) noteBodyChanged,
    required TResult Function() saved,
  }) {
    return noteLeadOnTextChanged(noteLeadingText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? initialNote)? initialized,
    TResult Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult Function(String bodyText)? noteBodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (noteLeadOnTextChanged != null) {
      return noteLeadOnTextChanged(noteLeadingText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LeadOnTextChanged value) noteLeadOnTextChanged,
    required TResult Function(_NoteBodyChanged value) noteBodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return noteLeadOnTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (noteLeadOnTextChanged != null) {
      return noteLeadOnTextChanged(this);
    }
    return orElse();
  }
}

abstract class _LeadOnTextChanged implements NoteFormEvent {
  const factory _LeadOnTextChanged(String noteLeadingText) =
      _$_LeadOnTextChanged;

  String get noteLeadingText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LeadOnTextChangedCopyWith<_LeadOnTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoteBodyChangedCopyWith<$Res> {
  factory _$NoteBodyChangedCopyWith(
          _NoteBodyChanged value, $Res Function(_NoteBodyChanged) then) =
      __$NoteBodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyText});
}

/// @nodoc
class __$NoteBodyChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$NoteBodyChangedCopyWith<$Res> {
  __$NoteBodyChangedCopyWithImpl(
      _NoteBodyChanged _value, $Res Function(_NoteBodyChanged) _then)
      : super(_value, (v) => _then(v as _NoteBodyChanged));

  @override
  _NoteBodyChanged get _value => super._value as _NoteBodyChanged;

  @override
  $Res call({
    Object? bodyText = freezed,
  }) {
    return _then(_NoteBodyChanged(
      bodyText == freezed
          ? _value.bodyText
          : bodyText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoteBodyChanged implements _NoteBodyChanged {
  const _$_NoteBodyChanged(this.bodyText);

  @override
  final String bodyText;

  @override
  String toString() {
    return 'NoteFormEvent.noteBodyChanged(bodyText: $bodyText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteBodyChanged &&
            (identical(other.bodyText, bodyText) ||
                const DeepCollectionEquality()
                    .equals(other.bodyText, bodyText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyText);

  @JsonKey(ignore: true)
  @override
  _$NoteBodyChangedCopyWith<_NoteBodyChanged> get copyWith =>
      __$NoteBodyChangedCopyWithImpl<_NoteBodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? initialNote) initialized,
    required TResult Function(String noteLeadingText) noteLeadOnTextChanged,
    required TResult Function(String bodyText) noteBodyChanged,
    required TResult Function() saved,
  }) {
    return noteBodyChanged(bodyText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? initialNote)? initialized,
    TResult Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult Function(String bodyText)? noteBodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (noteBodyChanged != null) {
      return noteBodyChanged(bodyText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LeadOnTextChanged value) noteLeadOnTextChanged,
    required TResult Function(_NoteBodyChanged value) noteBodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return noteBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (noteBodyChanged != null) {
      return noteBodyChanged(this);
    }
    return orElse();
  }
}

abstract class _NoteBodyChanged implements NoteFormEvent {
  const factory _NoteBodyChanged(String bodyText) = _$_NoteBodyChanged;

  String get bodyText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NoteBodyChangedCopyWith<_NoteBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note? initialNote) initialized,
    required TResult Function(String noteLeadingText) noteLeadOnTextChanged,
    required TResult Function(String bodyText) noteBodyChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note? initialNote)? initialized,
    TResult Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult Function(String bodyText)? noteBodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LeadOnTextChanged value) noteLeadOnTextChanged,
    required TResult Function(_NoteBodyChanged value) noteBodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _NoteFormState call(
      {required Note note,
      required bool showError,
      required bool isEditing,
      required bool isSaving,
      required bool isBodyChanged,
      required Option<Either<NoteFailure, Unit>> saveFailureOrSuccess}) {
    return _NoteFormState(
      note: note,
      showError: showError,
      isEditing: isEditing,
      isSaving: isSaving,
      isBodyChanged: isBodyChanged,
      saveFailureOrSuccess: saveFailureOrSuccess,
    );
  }
}

/// @nodoc
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isBodyChanged => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      bool showError,
      bool isEditing,
      bool isSaving,
      bool isBodyChanged,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccess});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? showError = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? isBodyChanged = freezed,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isBodyChanged: isBodyChanged == freezed
          ? _value.isBodyChanged
          : isBodyChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: saveFailureOrSuccess == freezed
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      bool showError,
      bool isEditing,
      bool isSaving,
      bool isBodyChanged,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccess});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? showError = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? isBodyChanged = freezed,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isBodyChanged: isBodyChanged == freezed
          ? _value.isBodyChanged
          : isBodyChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: saveFailureOrSuccess == freezed
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.showError,
      required this.isEditing,
      required this.isSaving,
      required this.isBodyChanged,
      required this.saveFailureOrSuccess});

  @override
  final Note note;
  @override
  final bool showError;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool isBodyChanged;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccess;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showError: $showError, isEditing: $isEditing, isSaving: $isSaving, isBodyChanged: $isBodyChanged, saveFailureOrSuccess: $saveFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isBodyChanged, isBodyChanged) ||
                const DeepCollectionEquality()
                    .equals(other.isBodyChanged, isBodyChanged)) &&
            (identical(other.saveFailureOrSuccess, saveFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.saveFailureOrSuccess, saveFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isBodyChanged) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
          {required Note note,
          required bool showError,
          required bool isEditing,
          required bool isSaving,
          required bool isBodyChanged,
          required Option<Either<NoteFailure, Unit>> saveFailureOrSuccess}) =
      _$_NoteFormState;

  @override
  Note get note => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isBodyChanged => throw _privateConstructorUsedError;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
