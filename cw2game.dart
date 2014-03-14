library cw2game;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'board.dart';
part 'cloud.dart';
part 'router.dart';
part 'switch.dart';
part 'desktop.dart';
part 'player.dart';
part 'virus.dart';
part 'hcable.dart';
part 'vcable.dart';


void main() {
  new Board(document.querySelector('#canvas'));
}

