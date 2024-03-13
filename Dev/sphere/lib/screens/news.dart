import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class MediumArticle extends StatefulWidget {
  static const routeName = '/MediumArticle';

  @override
  _MediumArticleState createState() => _MediumArticleState();
}

class _MediumArticleState extends State<MediumArticle> {
  late List<ArticleRelated> listItems;

  Color _color = Colors.black;

  @override
  void initState() {
    super.initState();

    listItems = [
      ArticleRelated(
        imageUrl: 'https://ww5.msu.ac.zw/wp-content/uploads/2021/08/mines-story-560x416.jpg',
        title:
            'MSU and BIUST Collaborate on Minerals Technology Research',
      ),
      ArticleRelated(
        imageUrl: 'https://ww5.msu.ac.zw/wp-content/uploads/2021/08/K1600_IMG_9361-560x416.jpg',
        title: 'MSU in a Drive to Enhance Production at its Gwenoro Farm',
      ),
      ArticleRelated(
        imageUrl: 'https://ww5.msu.ac.zw/wp-content/uploads/2021/08/232444538_4090304097733861_4486187113853889107_n-560x416.jpg',
        title: 'MSU Student Representative Council Gets Vaccinated',
      ),
      ArticleRelated(
        imageUrl: 'https://ww5.msu.ac.zw/wp-content/uploads/2021/07/2021-GRADUATION-CEREMONY-POSTPONED-560x416.jpg',
        title:
            'Postponment of the 22nd Graduation Ceremony',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width * 100;

    double heightC = MediaQuery.of(context).size.height * 100;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: heightC,
        width: widthC,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 35),

                    //=================

                    // personal info

                    //=================

                    Row(
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://www.cedol.org/wp-content/uploads/2015/07/MSU-LOGO-much-betterut-293x300.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.fill,
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Midlands State University',
                                  style:
                                      TextStyle(fontSize: 14, color: _color)),
                              Text('Admin',
                                  style:
                                      TextStyle(fontSize: 14, color: _color)),
                              Text('25/02/2024',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                            ],
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 35),

                    //=============

                    //   title

                    //=============

                    Wrap(
                      children: <Widget>[
                        Text('Verify Engineering Visits MSU’s Coal Tar Plant Site',
                            style: TextStyle(
                                fontSize: 26,
                                color: _color,
                                fontWeight: FontWeight.bold))
                      ],
                    ),

                    SizedBox(height: 20),

                    //=================

                    //    image

                    //=================

                    Container(
                      width: widthC,
                      height: 200,
                      child: Image.network(
                          'https://ww5.msu.ac.zw/wp-content/uploads/2021/08/1I2A9512-560x416.jpg',
                          width: widthC,
                          height: 200,
                          fit: BoxFit.fill),
                    ),

                    SizedBox(height: 20),

                    //=============

                    //   Subtitle

                    //=============

                    _buildDescription(
                        'A team of engineers, safety and design experts from Verify Engineering, a technology development company under the Ministry of Higher and Tertiary Education, Innovation, Science and Technology Development on the 27th of February 2024 visited the Midlands State University’s (MSU) Modified Coal Tar Project to assess and recommend the best possible options for siting utilities and infrastructure at the plant. The University’s silicon oxide nano-particles manufacturing plant is located in Zvishavane where the project’s main raw materials are found. Preliminary studies conducted by MSU show that the new modified coal tar product will lead to a 40 per cent saving on the country’s road surfacing costs.'),

                    SizedBox(height: 20),

                    //=============

                    //   title 1

                    //=============

                    _buildTitle(''),

                    SizedBox(height: 20),

                    //====================

                    //   Description 1

                    //====================

                    _buildDescription(
                        'Currently, the nation is producing tar from bitumen which is imported from South Africa at a heavy cost to the country’s already burdened fiscus. The Verify Engineering team toured the proposed plant site where civil engineering and preparatory works are nearing completion. They also visited the Shabanie-Mashaba mine offices to assess the quality and availability of the raw materials. Engineers Amos Kapenzi, Passmore Dube and Locadia Rwafa as well as Safety Health Environment and Quality Officer Abiota Gawe constituted the Verify Engineering team. “We have come to conduct a site assessment where we are looking at possible scenarios to site the plant, utilities and all the infrastructure that is required at the plant.” “After this, we will sit with the design team and come up with the most appropriate arrangement of the plant equipment and produce a design report,” said Verify Engineering Technical Services Manager, Engineer Passmore Dube.'),

                    SizedBox(height: 20),

                    //=============

                    //   title 2

                    //=============

                    _buildTitle(''),

                    SizedBox(height: 20),

                    //====================

                    //   Description 2

                    //====================

                    _buildDescription(
                        'MSU’s technical lead in the Modified Coal Tar project, Dr Munyaradzi Shumba said that the role of Verify Engineering also included coming up with plant designs for the project. “We have brought in a team of engineers from Verify Engineering, whose role is to assess where we are setting up the plant and also come up with plant designs, after which we will start procurement of the plant equipment,” he said. “The major impact of this project will be the rehabilitation of roads using locally available raw materials and we are going to be utilising mine waste dumps that are scattered all over Zvishavane,” he added. Dr Gift Mehlana, one of the project inventors and MSU Chemical Sciences lecturer said that the invention is both environmentally friendly and promotes import substitution since it will use locally available raw materials. “This invention will make use of a locally available resource namely coal tar, which is a by-product in the destructive distillation of coal. We will then blend this coal tar with silicone oxide nano-particles that we will produce at our plant using waste asbestos fibre.” MSU’s modified coal tar manufacturing business is expected to supply both the local and regional road construction industries.'),

                    SizedBox(height: 10),

                    Divider(
                      height: 5,
                      color: _color,
                    ),

                    SizedBox(height: 10),

                    //==============================

                    //  Suggested Reading  Title

                    //==============================

                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      child: Text('Suggested Reading',
                          style: TextStyle(fontSize: 20, color: _color)),
                    ),

                    //==============================

                    //  list of Suggested Reading

                    //==============================

                    Container(
                      height: 200,
                      width: widthC,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: listItems.length,
                        itemBuilder: (BuildContext ctxt, int index) =>
                            listItems[index],
                      ),
                    ),

                    SizedBox(height: 10),

                    Divider(
                      height: 5,
                      color: _color,
                    ),

                    SizedBox(height: 20),
OutlinedButton(
        child: Text('Vist News Page'),
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    side: BorderSide(color: Colors.blue),
  ),
        onPressed: () {
 _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'https://ww5.msu.ac.zw/blog/category/news/';
                              _launchURL(url);
                            },
          ),

                    SizedBox(height: 20),

                    //====================

                    //   Description 3

                    //====================

                    _buildDescription(
                        'The University has already patented this Modified Coal Tar product through the African Regional Intellectual Property Organization (ARIPO). MSU Zvishavane Campus Director Professor Advice Viriri indicated that at its optimum the plant will create 2 500 direct and indirect jobs. “This project will lead to employment creation in Zvishavane since it will employ about 2500 people in and around Zvishavane,” he said. During the tour of the Shabanie-Mashaba Mines offices, a senior staffer at the asbestos mining company confirmed that there were enough waste dumps in Zvishavane and Mashava to feed production at the MSU plant. The MSU Team included the University Engineer Charles Sithole, Director of Projects and Maintenance Mr Joseph Mapetere, Zvishavane Campus Director Professor Advice Viriri, Deputy Registrar Academic Affairs Zvishavane Campus Mr Normal Shava, Faculty of Chemical Sciences Deputy Dean Dr Munyaradzai Shumba, Project Inventor Dr Gift Mehlana, Chemical Sciences Chairperson Dr Fidelis Chigondo, Business Development Officer Mr Douglas Nyambayo and a team from the Geography, Environmental Sustainability and Resilience Building and Surveying and Geomatics departments.'),

                    SizedBox(height: 20),

                    Divider(
                      height: 5,
                      color: _color,
                    ),

                    //==============================

                    //  number of views

                    //==============================

                    Container(
                      width: widthC,
                      margin: EdgeInsets.all(10),
                      alignment: AlignmentDirectional.centerEnd,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.remove_red_eye),
                          Text('  173  ',
                              style: TextStyle(fontSize: 14, color: _color)),
                        ],
                      ),
                    ),

                    SizedBox(height: 70),
                  ],
                ),
              ),
            ),

            //================

            //  button like

            //================

            Positioned(
              bottom: 20,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                    heroTag: "tag3",
                    backgroundColor: _color,
                    child: Icon(Icons.favorite_border),
                    onPressed: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildTitle(String text) {
    return Wrap(
      children: <Widget>[
        Text('$text',
            style: TextStyle(
                color: _color, fontStyle: FontStyle.italic, fontSize: 20))
      ],
    );
  }

  _buildDescription(String text) {
    return Wrap(
      children: <Widget>[
        Text('$text', style: TextStyle(color: _color, fontSize: 16))
      ],
    );
  }
}

class ArticleRelated extends StatelessWidget {
  final String imageUrl;
  final String title;

  ArticleRelated({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 250,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(imageUrl, width: 250, height: 150, fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$title',
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
