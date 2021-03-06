// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _Closure implements Function {
  bool operator ==(other) native "Closure_equals";

  int get hashCode native "Closure_hashCode";

  _Closure get call => this;

  _Closure _clone() native "Closure_clone";

  // No instance fields should be declared before the following 3 fields whose
  // offsets must be identical in Dart and C++.

  // The following 3 fields are declared both in raw_object.h (for direct access
  // from C++ code) and also here so that the offset-to-field map used by
  // deferred objects is properly initialized.
  // Caution: These fields are not Dart instances, but VM objects.
  // The fields had to be renamed here so that they would be private fields
  // in dart
  // instantiator_ ===> _instantiator
  // function_ ===> _function
  // context_ ===> _context
  var _instantiator;
  var _function;
  var _context;
}
