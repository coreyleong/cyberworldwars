library cw2game;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'scoreboard.dart';
part 'board.dart';
part 'terminal.dart';
part 'cloud.dart';
part 'router.dart';
part 'switch.dart';
part 'desktop.dart';
part 'player.dart';
part 'virus.dart';
part 'hcable.dart';
part 'vcable.dart';
part 'antivirus.dart';
part 'points.dart';


void main() {
  new Scoreboard(document.querySelector('#scoreboard'));
  new Board(document.querySelector('#canvas'));
  new Terminal(document.querySelector('#terminal'));
 
}