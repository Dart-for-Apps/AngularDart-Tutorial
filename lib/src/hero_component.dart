import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component (
  selector: 'my-hero',
  templateUrl: 'hero_component.html',
  directives: [coreDirectives, formDirectives],
)
class HeroComponent {
  @Input()
  Hero hero;
}
