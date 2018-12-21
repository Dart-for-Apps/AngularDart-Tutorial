import 'dart:async';
import 'hero.dart';
import 'mock_heroes.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
  Future<List<Hero>> getAllSlowly() {
    // 2초 걸리는 인터넷 연결을 시뮬레이션 하는 메소드
    return Future.delayed(Duration(seconds: 2), getAll);
  }
}