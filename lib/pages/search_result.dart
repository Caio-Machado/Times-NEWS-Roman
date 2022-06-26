import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/search_news/list_search.dart';
import 'package:timesnewsroman/components/template/generic_templates.dart';

class SearchResult extends StatefulWidget {
  SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResult();
}

class _SearchResult extends State<SearchResult> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _valores = [
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'he',
    'it',
    'nl',
    'no',
    'pt',
    'ru',
    'sv',
    'ud',
    'zh'
  ];
  String linguaSelecionada = "pt";

  String? textoFiltro = '';
  String? linguaFiltro = '';

  void abrirModalPesquisa() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
            return Container(
          height: 250,
          color: Colors.white10,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Busca de Noticias',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Selecione apenas um campo para filtro para realizar uma busca',
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: false,
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Palavra Chave'),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 42,
                  underline: const SizedBox(),
                  items: _valores.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (String? x) => {
                    if (x != null) { setState(() => linguaSelecionada = x ) }
                  },
                  value: linguaSelecionada,
                ),
              ),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => pesquisar(),
              )
            ],
          ),
        );
      });
      },
    );
  }

  List<dynamic>? dados;

  void pesquisar(){
    Navigator.pop(context);
    setState(() {
      linguaFiltro = linguaSelecionada;
      textoFiltro = _controller.text;
    });
    print(linguaFiltro);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 0)).then((_) {
      abrirModalPesquisa();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(
      child: ListSearch(filtro: textoFiltro!, country: linguaFiltro!),
    );
  }
}
