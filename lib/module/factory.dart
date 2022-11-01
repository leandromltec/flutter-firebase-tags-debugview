import '../injector/injector.dart';
import '../presentation/pages/home_page_presenter.dart';
import '../presentation/pages/product_selected_page.dart';
import '../presentation/pages/products_page.dart';
import '../presentation/value_notifier/value_notifier_home_presenter.dart';

//Possui os métodos de chamadas para rotas das páginas e respectivos parâmetros

makeProducts() => ValueNotifierProductsPresenter();

makePageProducts() => ProductsPage(presenter: Injector.instance.get<ProductsPagePresenter>());

makePageSelectedProduct() => ProductSelectedPage(presenter: Injector.instance.get<ProductsPagePresenter>());