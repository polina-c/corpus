// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:flutter_corpus/corpus_tool.dart';

void main(List<String> args) async {
  var runner = CorpusToolCommandRunner();
  try {
    var result = await runner.run(args);
    exit(result is int ? result : 0);
  } catch (e) {
    if (e is UsageException) {
      stderr.writeln('$e');
      exit(64);
    } else {
      stderr.writeln('$e');
      exit(1);
    }
  }
}
