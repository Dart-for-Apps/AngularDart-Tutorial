import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HeroComponent],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;
  void onSelect(Hero hero) => selected = hero;
}

