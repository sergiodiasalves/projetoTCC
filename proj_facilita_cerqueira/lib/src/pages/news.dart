// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/src/widgets/appBarCustom.dart';
import 'package:proj_facilita_cerqueira/src/widgets/lateralMenu.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  var idList = [
    'Notícia 01',
    'Notícia 02',
    'Notícia 03',
    'Notícia 04',
    'Notícia 05',
    'Notícia 06',
    'Notícia 07',
    'Notícia 08',
    'Notícia 09',
    'Notícia 10',
  ];
  var titleList = [
    'Pessoa com Deficiência e Idoso.',
    'Feira da Lua.',
    '2° CERKA ROCK.',
    'BOLETIM DA COVID.',
    'COMBATE A DENGUE.',
    'NOTA DE ESCLARECIMENTO DA POLÍCIA CIVIL:',
    'CERQUEIRENSES SÃO DESTAQUES NA 1ª ETAPA DA MEIA MARATONA SELVAGEM NA CIDADE DE PARANAPANEMA.',
    'FELIZ PÁSCOA.',
    'Desenvolvimento Econômico e Cidadania.',
    'COMUNICADO: OBRAS E SERVIÇOS.',
  ];
  var descrList = [
    '  O Governo Municipal de Cerqueira César por meio das Secretarias da Pessoa com Deficiência,  Assistência Social e Esportes informa o cronograma de Atividades do CCI - Centro de Convivência do Idoso Profª "Maria Ely Caputo Bodelão".',
    "  O Governo Municipal de Cerqueira César por meio da Secretaria e Diretoria de Cultura convida você e sua família para  prestigiar a Feira da Lua no pátio da Estação Ferroviária, show com Natielle Rocha (14/04). Praça de Alimentação, Hortifruti, Orgânicos, Artesanatos e muito mais. (Comunicação da Prefeitura)",
    "  Nos dias 28 e 29 de Abril, no pátio da Estação Ferroviária, com apresentação de bandas regionais. No dia (28/04), a atração principal será João Gordo e Asteróides e no dia (29/04) a banda Black Pantera. \n 28 e 29 DE ABRIL DE 2023 \n A PARTIR DAS 18h30 \nPÁTIO DA ESTAÇÃO FERROVIÁRIA \nREALIZAÇÃO: Secretaria Municipal de Cultura e Turismo e Locomotiva do Rock. \nAPOIO: Governo de Cerqueira César e Câmara Municipal.",
    '  Diante do aumento de casos da Covid-19 a Secretaria Municipal de Saúde recomenda o uso de máscara, uso do álcool gel e que os munícipes sigam todos os protocolos, para combater o Coronavírus.',
    '  GOVERNO DE CERQUEIRA CÉSAR INTENSIFICA AÇÕES DE COMBATE A DENGUE.\n\nCom o intuito de discutir medidas para evitar o aumento de casos de Dengue no município de Cerqueira César foi realizada uma reunião na manhã de terça-feira (11/04), na sede do Fundo Social de Solidariedade, com a presença de autoridades e profissionais da Saúde.\nO encontro contou com a participação do Prefeito Municipal, Diego Cinto, o Secretário Municipal de Saúde, Mauro Bertolani Junior, da Subsecretária da pasta, Regina Ferreira, equipe da Vigilância Epidemiológica e Vigilância Sanitária, Agentes Comunitários de Saúde (ACS) e Agentes de Controle de Vetores.\nDentre os assuntos abordados durante a reunião, destacam - se as intensificações das visitas dos agentes nas residências e ações junto as escolas, com o intuito de orientar a população no combate a proliferação do mosquito Aedes Aegypti, transmissor da Dengue, Chikungunya e Zika Vírus.\nDe acordo com o Prefeito Diego Cinto, as ações visam frear o aumento significativo da doença no município. “Infelizmente foram registrados casos de Dengue na cidade, por isso estamos reforçando as ações de enfretamento a doença”, explicou o Chefe do Executivo.\nParalelo as ações educativas que estão sendo realizadas com palestras nas escolas do município, os agentes de controle de vetores estão realizando o trabalho de bloqueio nas áreas com focos, com o objetivo de frear a transmissão num raio de 300 metros da localidade em questão.\nA secretaria de Saúde também instalou faixas em pontos estratégicos da cidade com orientações de combate a Dengue. O Governo de Cerqueira César também intensificou a divulgação sonora no município, com o objetivo de mobilizar a população.\nO secretário municipal de Saúde, Mauro Bertolani Junior reforça que é essencial o apoio da população no combate ao mosquito Aedes Aegypti.  O gestor orienta ainda aos munícipes que quando sentir sintomas como febre, dores musculares, articulações e manchas vermelhas na pele, dor atrás dos olhos, que procure a unidade de saúde mais próxima para o atendimento e notifique a Vigilância Epidemiológica.\n“É importante que a população recebe os agentes de controle de vetores e facilitem o acesso dos mesmos nas residências. O trabalho da equipe é para a preservação da saúde de todos”, alerta o secretário de Saúde.\nDiante do aumento de casos de Dengue no município, ações de bloqueio já foram efetuadas em diversos bairros, esta é uma estratégia de escolha imediata pelas autoridades sanitárias, visando o combate ao mosquito. No entanto, a população deve fazer a sua parte, eliminando todo e qualquer recipiente que possa servir de criadouro do Aedes Aegypti. (Comunicação da Prefeitura)',
    '  A POLÍCIA CIVIL esclarece que não houve e não há ameaças de atentados em escolas do município de Cerqueira César.\nHouve, no entanto, um compartilhamento de uma postagem feita por um perfil de outra localidade.\nCom o apoio da POLÍCIA MILITAR os indivíduos que compartilharam foram identificados, prestaram esclarecimentos e foram autuados por apologia a fato criminoso.\nTodas as medidas para a proteção de nossas crianças e adolescentes estão sendo adotadas por ambas as POLÍCIAS.\nToda e qualquer ameaça será prontamente investigada e seus autores levados à JUSTIÇA.',
    'Na manhã deste domingo (09/04), foi realizada a 1ª Etapa da Meia Maratona Selvagem 21 e 7km no município de Paranapanema.\nNa categoria 35 a 39 anos (7km) a atleta Cristiane Aureliano( Elite Cerqueira),conquistou o primeiro lugar e na categoria 40 a 44 anos (21km) o atleta Guilherme Arruda (Elite Cerqueira), conquistou o terceiro lugar.\nO Governo de Cerqueira César e a Secretaria Municipal de Esportes parabenizam os atletas cerqueirenses pela participação, dedicação, esforço e pelas vitórias conquistadas.  (Comunicação da Prefeitura)',
    'O Governo de Cerqueira César deseja a todas famílias uma feliz e abençoada Páscoa. Que Cristo possa verdadeiramente renascer no coração de cada munícipe.',

    'O Governo de Cerqueira César por meio da Secretaria Municipal de Desenvolvimento Econômico e Cidadania, PROCON realiza a Palestra Instrutiva: "Procon e Comércio de Cerqueira César," (18/04) às 09h00 na Câmara Municipal.\n\nAPOIO: ACICC (Associação Comercial e Industrial) e Câmara Municipal de Cerqueira César.',
    'A Diretoria de Obras e Serviços informa a população que em virtude do Feriado da Sexta - Feira Santa , não haverá coleta do lixo doméstico no município no dia  07/04.\n\nA coleta será realizada na Quinta - Feira dia (06/04) e Sábado dia (8/04). (Comunicação da Prefeitura)',
  ];
  var imgList = [
    'https://i.postimg.cc/KYW4My5J/01-pessoaidosa.jpg',

    'https://i.postimg.cc/9fW6VR57/02-feiradalua.jpg',

    'https://i.postimg.cc/Y2fy22RN/03-cerkarock.jpg',

    'https://i.postimg.cc/X7j1rM1R/04-boletim-Covud.jpg',

    'https://i.postimg.cc/LXZ5k0CR/05-combatecovid.jpg',

    'https://i.postimg.cc/15vC6WLf/06-notapoliciacivil.jpg',

    'https://i.postimg.cc/brNMc47f/07-maratona.jpg',

    'https://i.postimg.cc/nzH9T4WM/08-pascoa.jpg',

    'https://i.postimg.cc/SKydwM2Y/09-palestra.jpg',

    'https://i.postimg.cc/4nknjp3D/10-obras.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const LateralMenuPage(),
        appBar: AppBarCustom(
          title: const Text('Notícias'),
        ),
        body: Container(
            decoration: BoxDecoration(color: Colors.green.shade200),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: imgList.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          showDialogFuncion(context, imgList[index],
                              titleList[index], descrList[index]);
                        },
                        child: Card(
                            elevation: 10,
                            color: Colors.blue.shade50,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Image.network(imgList[index]),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: Center(
                                        child: Text(
                                          titleList[index],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: Text(
                                        descrList[index],
                                        textAlign: TextAlign.justify,
                                        maxLines: 4,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: const Text(
                                        '... Ver Mais',
                                        textAlign: TextAlign.end,
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      )),
            )),
        bottomSheet: Container(
          height: 15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey.shade400),
          padding: const EdgeInsets.all(5),
        ));
  }
}

showDialogFuncion(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade100,
            ),
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            height: MediaQuery.of(context).size.height * 0.90,
            width: MediaQuery.of(context).size.width * 0.70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    img,
                    width: 300,
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            desc,
                            maxLines: 100,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black87),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      );
    },
  );
}
