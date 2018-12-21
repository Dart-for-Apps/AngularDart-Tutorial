import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HeroComponent,],
  providers: [ClassProvider(HeroService),],
)
class AppComponent implements OnInit {
  final title = 'Tour of Heroes';
  List<Hero> heroes;
  Hero selected;
  final HeroService _heroService;

  AppComponent(this._heroService);

  void ngOnInit() => _getHeroes();
  void onSelect(Hero hero) => selected = hero;
  Future<void> _getHeroes() async{
    heroes = await _heroService.getAll();
  }
}

