import 'produto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'produto_page.dart';

class ProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProdutoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/:nomeDaLoja',
            child: (_, args) => ProdutoPage(
                  nomeDaLoja: args.params['nomeDaLoja'],
                )),
      ];

  static Inject get to => Inject<ProdutoModule>.of();
}
