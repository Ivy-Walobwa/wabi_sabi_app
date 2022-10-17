// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note? initialNote)? initialized,
    TResult? Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult? Function(String bodyText)? noteBodyChanged,
    TResult? Function()? saved,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult? Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult? Function(_Saved value)? saved,
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
      _$NoteFormEventCopyWithImpl<$Res, NoteFormEvent>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res, $Val extends NoteFormEvent>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Note? initialNote});

  $NoteCopyWith<$Res>? get initialNote;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNote = freezed,
  }) {
    return _then(_$_Initialized(
      freezed == initialNote
          ? _value.initialNote
          : initialNote // ignore: cast_nullable_to_non_nullable
              as Note?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialNote, initialNote) ||
                other.initialNote == initialNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note? initialNote)? initialized,
    TResult? Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult? Function(String bodyText)? noteBodyChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialNote);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult? Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
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
  const factory _Initialized(final Note? initialNote) = _$_Initialized;

  Note? get initialNote;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeadOnTextChangedCopyWith<$Res> {
  factory _$$_LeadOnTextChangedCopyWith(_$_LeadOnTextChanged value,
          $Res Function(_$_LeadOnTextChanged) then) =
      __$$_LeadOnTextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String noteLeadingText});
}

/// @nodoc
class __$$_LeadOnTextChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$_LeadOnTextChanged>
    implements _$$_LeadOnTextChangedCopyWith<$Res> {
  __$$_LeadOnTextChangedCopyWithImpl(
      _$_LeadOnTextChanged _value, $Res Function(_$_LeadOnTextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteLeadingText = null,
  }) {
    return _then(_$_LeadOnTextChanged(
      null == noteLeadingText
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
        (other.runtimeType == runtimeType &&
            other is _$_LeadOnTextChanged &&
            (identical(other.noteLeadingText, noteLeadingText) ||
                other.noteLeadingText == noteLeadingText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteLeadingText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeadOnTextChangedCopyWith<_$_LeadOnTextChanged> get copyWith =>
      __$$_LeadOnTextChangedCopyWithImpl<_$_LeadOnTextChanged>(
          this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note? initialNote)? initialized,
    TResult? Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult? Function(String bodyText)? noteBodyChanged,
    TResult? Function()? saved,
  }) {
    return noteLeadOnTextChanged?.call(noteLeadingText);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult? Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return noteLeadOnTextChanged?.call(this);
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
  const factory _LeadOnTextChanged(final String noteLeadingText) =
      _$_LeadOnTextChanged;

  String get noteLeadingText;
  @JsonKey(ignore: true)
  _$$_LeadOnTextChangedCopyWith<_$_LeadOnTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoteBodyChangedCopyWith<$Res> {
  factory _$$_NoteBodyChangedCopyWith(
          _$_NoteBodyChanged value, $Res Function(_$_NoteBodyChanged) then) =
      __$$_NoteBodyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String bodyText});
}

/// @nodoc
class __$$_NoteBodyChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$_NoteBodyChanged>
    implements _$$_NoteBodyChangedCopyWith<$Res> {
  __$$_NoteBodyChangedCopyWithImpl(
      _$_NoteBodyChanged _value, $Res Function(_$_NoteBodyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyText = null,
  }) {
    return _then(_$_NoteBodyChanged(
      null == bodyText
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
        (other.runtimeType == runtimeType &&
            other is _$_NoteBodyChanged &&
            (identical(other.bodyText, bodyText) ||
                other.bodyText == bodyText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bodyText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteBodyChangedCopyWith<_$_NoteBodyChanged> get copyWith =>
      __$$_NoteBodyChangedCopyWithImpl<_$_NoteBodyChanged>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note? initialNote)? initialized,
    TResult? Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult? Function(String bodyText)? noteBodyChanged,
    TResult? Function()? saved,
  }) {
    return noteBodyChanged?.call(bodyText);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult? Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return noteBodyChanged?.call(this);
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
  const factory _NoteBodyChanged(final String bodyText) = _$_NoteBodyChanged;

  String get bodyText;
  @JsonKey(ignore: true)
  _$$_NoteBodyChangedCopyWith<_$_NoteBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note? initialNote)? initialized,
    TResult? Function(String noteLeadingText)? noteLeadOnTextChanged,
    TResult? Function(String bodyText)? noteBodyChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LeadOnTextChanged value)? noteLeadOnTextChanged,
    TResult? Function(_NoteBodyChanged value)? noteBodyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
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
      _$NoteFormStateCopyWithImpl<$Res, NoteFormState>;
  @useResult
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
class _$NoteFormStateCopyWithImpl<$Res, $Val extends NoteFormState>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? showError = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isBodyChanged = null,
    Object? saveFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isBodyChanged: null == isBodyChanged
          ? _value.isBodyChanged
          : isBodyChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: null == saveFailureOrSuccess
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$_NoteFormStateCopyWith(
          _$_NoteFormState value, $Res Function(_$_NoteFormState) then) =
      __$$_NoteFormStateCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res, _$_NoteFormState>
    implements _$$_NoteFormStateCopyWith<$Res> {
  __$$_NoteFormStateCopyWithImpl(
      _$_NoteFormState _value, $Res Function(_$_NoteFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? showError = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? isBodyChanged = null,
    Object? saveFailureOrSuccess = null,
  }) {
    return _then(_$_NoteFormState(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isBodyChanged: null == isBodyChanged
          ? _value.isBodyChanged
          : isBodyChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: null == saveFailureOrSuccess
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
        (other.runtimeType == runtimeType &&
            other is _$_NoteFormState &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isBodyChanged, isBodyChanged) ||
                other.isBodyChanged == isBodyChanged) &&
            (identical(other.saveFailureOrSuccess, saveFailureOrSuccess) ||
                other.saveFailureOrSuccess == saveFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, showError, isEditing,
      isSaving, isBodyChanged, saveFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      __$$_NoteFormStateCopyWithImpl<_$_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final Note note,
      required final bool showError,
      required final bool isEditing,
      required final bool isSaving,
      required final bool isBodyChanged,
      required final Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccess}) = _$_NoteFormState;

  @override
  Note get note;
  @override
  bool get showError;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get isBodyChanged;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
