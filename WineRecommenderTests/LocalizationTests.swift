//
//  LocalizationTests.swift
//  WineRecommender
//
//  Created by Stephen Koch on 3/22/22.
//

import XCTest
@testable import WineRecommender

// Adjust Test Plan (Product -> Test Plan) to the language desired
class LocalizationTests: XCTestCase {

    var amarone: Varietal!
    var barbera: Varietal!
    var cabernetFranc: Varietal!
    var cabernetSauvignon: Varietal!
    var carmenere: Varietal!
    var champangeBlend: Varietal!
    var chardonnay: Varietal!
    var cheninBlanc: Varietal!
    var gamay: Varietal!
    var gewurztraminer: Varietal!
    var grenache: Varietal!
    var grunerVeltliner: Varietal!
    var malbec: Varietal!
    var merlot: Varietal!
    var nebbiolo: Varietal!
    var petiteSirah: Varietal!
    var pinotGris: Varietal!
    var pinotNoir: Varietal!
    var port: Varietal!
    var redBlend: Varietal!
    var riesling: Varietal!
    var rose: Varietal!
    var sangiovese: Varietal!
    var sauvignonBlanc: Varietal!
    var sparklingBlend: Varietal!
    var syrah: Varietal!
    var tempranillo: Varietal!
    var viognier: Varietal!
    var whiteBlend: Varietal!
    var zinfandel: Varietal!

    override func setUpWithError() throws {
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        amarone = Amarone()
        barbera = Barbera()
        cabernetFranc = CabernetFranc()
        cabernetSauvignon = CabernetSauvignon()
        carmenere = Carmenere()
        champangeBlend = ChampagneBlend()
        chardonnay = Chardonnay()
        cheninBlanc = CheninBlanc()
        gamay = Gamay()
        gewurztraminer = Gewurztraminer()
        grenache = Grenache()
        grunerVeltliner = GrunerVeltliner()
        malbec = Malbec()
        merlot = Merlot()
        nebbiolo = Nebbiolo()
        petiteSirah = PetiteSirah()
        pinotGris = PinotGris()
        pinotNoir = PinotNoir()
        port = Port()
        redBlend = RedBlend()
        riesling = Riesling()
        rose = Rose()
        sangiovese = Sangiovese()
        sauvignonBlanc = SauvignonBlanc()
        sparklingBlend = SparklingBlend()
        syrah = Syrah()
        tempranillo = Tempranillo()
        viognier = Viognier()
        whiteBlend = WhiteBlend()
        zinfandel = Zinfandel()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        amarone = nil
        barbera = nil
        cabernetFranc = nil
        carmenere = nil
        champangeBlend = nil
        chardonnay = nil
        cheninBlanc = nil
        gamay = nil
        gewurztraminer = nil
        grenache = nil
        grunerVeltliner = nil
        malbec = nil
        merlot = nil
        nebbiolo = nil
        petiteSirah = nil
        pinotGris = nil
        pinotNoir = nil
        port = nil
        redBlend = nil
        riesling = nil
        rose = nil
        sangiovese = nil
        sauvignonBlanc = nil
        sparklingBlend = nil
        syrah = nil
        tempranillo = nil
        viognier = nil
        whiteBlend = nil
        zinfandel = nil
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMM - DESCRIPTIONS - MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    
    func testWineDescriptionLocalizationEN() {

        let expectedDescription0 = "Expect bold aromas of cherry liqueur, black fig, carob, cinnamon, and plum sauce along with subtle notes of green peppercorn, chocolate, and crushed gravel dust. On the palate, Amarone wines often have medium-plus to high acidity balanced with high alcohol and flavors of black cherry, brown sugar, and chocolate."
        let expectedDescription1 = "Barbera is the third most-planted red grape variety in Italy (after Sangiovese and Montepulciano). Barbera is known for deep color, full body, low tannins and high levels of acidity."
        let expectedDescription2 = "Cabernet Franc is the parent grape of both Merlot and Cabernet Sauvignon. Complex reds result, with aromas of raspberry, bramble, and bell pepper."
        let expectedDescription3 = "The world’s most popular red wine grape is a natural cross between Cabernet Franc and Sauvignon Blanc from Bordeaux, France. Cabernet Sauvignon is loved for its high concentration and age worthiness."
        let expectedDescription4 = "The herbaceous, peppercorn-like flavors in Carmenere are a great embellishment to roast meats (from chicken to beef) and savory cumin-spiced dishes."
        let expectedDescription5 = "The most iconic sparkling wine in the world is a blend of grapes including Chardonnay, Pinot Noir, and Pinot Meunier. Champagne wines often exhibit almond-like flavors, with subtle notes of orange-zest and white cherry. The most treasured Champagne wines age for a minimum of 3 years."
        let expectedDescription6 = "One of the world’s most popular grapes, Chardonnay is made in a wide range of styles from lean, sparkling Blanc de Blancs to rich, creamy white wines aged in oak."
        let expectedDescription7 = "Chenin Blanc is a grown throughout the world, most notably in the Loire Valley of France and South Africa. What’s amazing about this variety is the diversity of styles, from sparkling wines and lean, dry whites to sweet, golden nectars and brandy."
        let expectedDescription8 = "A fruity, floral and sometimes earthy light-bodied red that is the main variety planted in Beaujolais. Outside of France, Gamay has a tiny but devoted following."
        let expectedDescription9 = "Treasured for its intense floral aromas, Gewürztraminer has thrived for centuries around Germany. Quality examples are age worthy, but most are best enjoyed in their youth to preserve acidity."
        let expectedDescription10 = "Grenache (aka Garnacha) produces rich, flavorful red wines and deep, ruby-tinted rosé. The French have championed this grape in the Southern Rhône Valley but it’s original home is Spain."
        let expectedDescription11 = "Austria’s most important wine is produced in a myriad of styles, the most popular of which are lean, herbaceous, and peppery wines with mouth-watering acidity."
        let expectedDescription12 = "Argentina’s most important variety came by way of France, where it’s commonly called Côt (sounds like “coat”). Wines are loved for their rich, dark fruit flavors and smooth chocolatey finish."
        let expectedDescription13 = "Merlot is loved for it’s boisterous black cherry flavors, supple tannins, and chocolatey finish. On the high end, it’s often mistaken with Cabernet Sauvignon and commonly blended with it."
        let expectedDescription14 = "One of Italy’s most important red wine varieties made famous by the Barolo region of Piedmont where wines offer delicate aromas accompanied by strong tannins."
        let expectedDescription15 = "Petit Sirah is loved for its deeply colored wines with rich black fruit flavors and bold tannins. The grape related to Syrah and the rare French grape, Peloursin. Despite its popularity, Petite Sirah is an exceptionally rare grape with less than 10,000 planted acres worldwide, growing mainly in California."
        let expectedDescription16 = "Pinot Gris (aka Pinot Grigio) is a pinkish grape mutation of Pinot Noir. It’s famously known for zesty white wines, but can also be used for rosé. Look to Northern Italy, Oregon, and Alsace for benchmark examples."
        let expectedDescription17 = "Pinot Noir is the world’s most popular light-bodied red wine. It’s loved for its red fruit, flower, and spice aromas that are accentuated by a long, smooth finish."
        let expectedDescription18 = "Portugal’s flagship; an aged, sweet fortified wine that comes in a wide range of styles, largely based on ageing techniques. Commonly seen styles include Ruby and Tawny. The most recognizable name in dessert wines."
        let expectedDescription19 = "A blend is defined as a wine that is not made from one specific grape variety. Blending wine allows wine makers to tailor the wine's flavor. Red wine blends are the second most purchased wine by volume in the USA."
        let expectedDescription20 = "An aromatic white variety that can produce white wines ranging in style from bone-dry to very sweet. Germany is the world’s most important producer of Riesling."
        let expectedDescription21 = "Rosé is a pink style of wine made from a blend of red and white wine grapes. Considered sweeter, fruity, dry, and mineral driven."
        let expectedDescription22 = "Italy’s most planted wine variety and the pride of the Tuscan regional wine, Chianti. Sangiovese is a sensitive grape that takes on different stylistic expressions based on where it grows."
        let expectedDescription23 = "A popular and unmistakable white wine that’s loved for its “green” herbal flavors and racy acidity. Sauvignon Blanc grows nearly everywhere and thus, offers a variety of styles ranging from lean to bountiful."
        let expectedDescription24 = "Sparkling wines are generally created from a blend of white wine grapes and go through fermentation to create carbonation. There are many flavor profiles that can be created depending on the blend: Dry & Zesty, Fruity & Floral, Creamy & Nutty, Sweet & Perfumed."
        let expectedDescription25 = "A rich, powerful, and sometimes meaty red wine that originated in the Rhône Valley of France. Syrah is the most planted grape of Australia, where they call it Shiraz."
        let expectedDescription26 = "Spain’s top red wine, made famous by Rioja, where wines are classified (in part) by how long they age in oak. What’s amazing, is a well-made Tempranillo ages for over 20 years."
        let expectedDescription27 = "A rich, oily white wine that originated in the Northern Rhône and is rapidly growing in popularity in California, Australia, and beyond. Wines are often age in oak to deliver Chardonnay-like richness."
        let expectedDescription28 = "A blend is defined as a wine that is not made from one specific grape variety. Blending wine allows wine makers to tailor the wine's flavor. Most white blends will have notes of citrus and white fruit."
        let expectedDescription29 = "Zinfandel wine is a bold, fruit forward red that’s loved for its jammy fruit and smoky, exotic spice notes. It can also be made into a sweet rosé called White Zinfandel."


        XCTAssertEqual(amarone.getShortDescription(), expectedDescription0)
        XCTAssertEqual(barbera.getShortDescription(), expectedDescription1)
        XCTAssertEqual(cabernetFranc.getShortDescription(), expectedDescription2)
        XCTAssertEqual(cabernetSauvignon.getShortDescription(), expectedDescription3)
        XCTAssertEqual(carmenere.getShortDescription(), expectedDescription4)
        XCTAssertEqual(champangeBlend.getShortDescription(), expectedDescription5)
        XCTAssertEqual(chardonnay.getShortDescription(), expectedDescription6)
        XCTAssertEqual(cheninBlanc.getShortDescription(), expectedDescription7)
        XCTAssertEqual(gamay.getShortDescription(), expectedDescription8)
        XCTAssertEqual(gewurztraminer.getShortDescription(), expectedDescription9)
        XCTAssertEqual(grenache.getShortDescription(), expectedDescription10)
        XCTAssertEqual(grunerVeltliner.getShortDescription(), expectedDescription11)
        XCTAssertEqual(malbec.getShortDescription(), expectedDescription12)
        XCTAssertEqual(merlot.getShortDescription(), expectedDescription13)
        XCTAssertEqual(nebbiolo.getShortDescription(), expectedDescription14)
        XCTAssertEqual(petiteSirah.getShortDescription(), expectedDescription15)
        XCTAssertEqual(pinotGris.getShortDescription(), expectedDescription16)
        XCTAssertEqual(pinotNoir.getShortDescription(), expectedDescription17)
        XCTAssertEqual(port.getShortDescription(), expectedDescription18)
        XCTAssertEqual(redBlend.getShortDescription(), expectedDescription19)
        XCTAssertEqual(riesling.getShortDescription(), expectedDescription20)
        XCTAssertEqual(rose.getShortDescription(), expectedDescription21)
        XCTAssertEqual(sangiovese.getShortDescription(), expectedDescription22)
        XCTAssertEqual(sauvignonBlanc.getShortDescription(), expectedDescription23)
        XCTAssertEqual(sparklingBlend.getShortDescription(), expectedDescription24)
        XCTAssertEqual(syrah.getShortDescription(), expectedDescription25)
        XCTAssertEqual(tempranillo.getShortDescription(), expectedDescription26)
        XCTAssertEqual(viognier.getShortDescription(), expectedDescription27)
        XCTAssertEqual(whiteBlend.getShortDescription(), expectedDescription28)
        XCTAssertEqual(zinfandel.getShortDescription(), expectedDescription29)
    }
    
    func testWineDescriptionLocalizationES() {
    
        let expectedDescription0 = "Espere aromas audaces de licor de cereza, higo negro, algarroba, canela y salsa de ciruela junto con sutiles notas de pimienta verde, chocolate y polvo de grava triturada. En el paladar, los vinos Amarone a menudo tienen una acidez entre media y alta equilibrada con un alto contenido de alcohol y sabores de cereza negra, azúcar moreno y chocolate."
        let expectedDescription1 = "Barbera es la tercera variedad de uva tinta más plantada en Italia (después de Sangiovese y Montepulciano). Barbera es conocido por su color profundo, cuerpo completo, taninos bajos y altos niveles de acidez."
        let expectedDescription2 = "Cabernet Franc es la uva madre tanto de Merlot como de Cabernet Sauvignon. Resultan tintos complejos, con aromas de frambuesa, zarzamora y pimiento morrón."
        let expectedDescription3 = "La uva de vino tinto más popular del mundo es un cruce natural entre Cabernet Franc y Sauvignon Blanc de Burdeos, Francia. Cabernet Sauvignon es amado por su alta concentración y valor de edad."
        let expectedDescription4 = "Los sabores herbáceos similares a los granos de pimienta del Carmenere son un gran adorno para las carnes asadas (desde el pollo hasta la carne de res) y los sabrosos platos especiados con comino"
        let expectedDescription5 = "El vino espumoso más icónico del mundo es una mezcla de uvas que incluyen Chardonnay, Pinot Noir y Pinot Meunier. Los vinos de champán a menudo exhiben sabores a almendras, con notas sutiles de ralladura de naranja y cereza blanca. Los vinos de champán más preciados envejecen durante un mínimo de tres años."
        let expectedDescription6 = "Una de las uvas más populares del mundo, Chardonnay se elabora en una amplia gama de estilos, desde Blanc de Blancs magro y espumoso hasta vinos blancos ricos y cremosos envejecidos en roble."
        let expectedDescription7 = "Chenin Blanc se cultiva en todo el mundo, sobre todo en el Valle del Loira de Francia y Sudáfrica. Lo sorprendente de esta variedad es la diversidad de estilos, desde vinos espumosos y blancos magros y secos hasta néctares dulces y dorados y brandy."
        let expectedDescription8 = "Un tinto de cuerpo ligero afrutado, floral ya veces terroso que es la principal variedad plantada en Beaujolais. Fuera de Francia, Gamay tiene un seguimiento pequeño pero devoto."
        let expectedDescription9 = "Atesorado por sus intensos aromas florales, el Gewürztraminer ha prosperado durante siglos en toda Alemania. Los ejemplares de calidad son dignos de su edad, pero la mayoría se disfrutan mejor en su juventud para preservar la acidez."
        let expectedDescription10 = "La garnacha (también conocida como garnacha) produce vinos tintos ricos y sabrosos y un rosado intenso de color rubí. Los franceses han defendido esta uva en el sur del valle del Ródano, pero su hogar original es España."
        let expectedDescription11 = "El vino más importante de Austria se produce en una miríada de estilos, los más populares son los vinos magros, herbáceos y especiados con una acidez deliciosa."
        let expectedDescription12 = "La variedad más importante de Argentina llegó a través de Francia, donde comúnmente se le llama Côt. Los vinos son amados por sus ricos sabores a frutas oscuras y su suave final achocolatado."
        let expectedDescription13 = "Merlot es amado por sus bulliciosos sabores a cereza negra, taninos suaves y final achocolatado. En el extremo superior, a menudo se confunde con Cabernet Sauvignon y comúnmente se mezcla con él."
        let expectedDescription14 = "Una de las variedades de vino tinto más importantes de Italia, famosa por la región de Barolo en el Piamonte, donde los vinos ofrecen aromas delicados acompañados de taninos fuertes."
        let expectedDescription15 = "Petit Sirah es amado por sus vinos de colores profundos con ricos sabores de frutas negras y taninos audaces. La uva relacionada con Syrah y la rara uva francesa, Peloursin. A pesar de su popularidad, Petite Sirah es una uva excepcionalmente rara con menos de diez mil acres plantados en todo el mundo, que crece principalmente en California."
        let expectedDescription16 = "Pinot Gris (también conocido como Pinot Grigio) es una mutación de uva rosada de Pinot Noir. Es famoso por sus vinos blancos sabrosos, pero también se puede usar para rosados. Busque ejemplos de referencia en el norte de Italia, Oregón y Alsacia."
        let expectedDescription17 = "Pinot Noir es el vino tinto de cuerpo ligero más popular del mundo. Es amado por sus aromas a frutas rojas, flores y especias que se acentúan con un final largo y suave."
        let expectedDescription18 = "Buque insignia de Portugal; un vino fortificado dulce, envejecido que viene en una amplia gama de estilos, en gran medida basados en técnicas de envejecimiento. Los estilos comúnmente vistos incluyen rubí y leonado. El nombre más reconocible entre los vinos de postre."
        let expectedDescription19 = "Una mezcla se define como un vino que no se elabora a partir de una variedad de uva específica. Mezclar vino permite a los enólogos adaptar el sabor del vino. Las mezclas de vino tinto son el segundo vino más comprado por volumen en los Estados Unidos."
        let expectedDescription20 = "Una variedad blanca aromática que puede producir vinos blancos que varían en estilo desde secos hasta muy dulces. Alemania es el mayor productor mundial de Riesling."
        let expectedDescription21 = "El rosado es un estilo de vino rosado elaborado a partir de una mezcla de uvas de vino tinto y blanco. Considerada más dulce, afrutada, seca y mineralizada."
        let expectedDescription22 = "La variedad de vino más plantada de Italia y el orgullo del vino regional toscano, Chianti. Sangiovese es una uva sensible que adquiere diferentes expresiones estilísticas según el lugar donde crece."
        let expectedDescription23 = "Un vino blanco popular e inconfundible que es amado por sus sabores herbales 'verdes' y su acidez picante. Sauvignon Blanc crece en casi todas partes y, por lo tanto, ofrece una variedad de estilos que van desde magra hasta generosa."
        let expectedDescription24 = "Los vinos espumosos generalmente se crean a partir de una mezcla de uvas de vino blanco y se fermentan para crear carbonatación. Hay muchos perfiles de sabor que se pueden crear dependiendo de la mezcla: seco y picante, afrutado y floral, cremoso y de nuez, dulce y perfumado."
        let expectedDescription25 = "Un vino tinto rico, potente y, a veces, carnoso que se originó en el valle del Ródano en Francia. Syrah es la uva más plantada de Australia, donde la llaman Shiraz."
        let expectedDescription26 = "El mejor vino tinto de España, hecho famoso por Rioja, donde los vinos se clasifican (en parte) por el tiempo que envejecen en roble. Lo sorprendente es que un Tempranillo bien hecho envejece durante más de veinte años."
        let expectedDescription27 = "Un vino blanco rico y aceitoso que se originó en el norte del Ródano y está creciendo rápidamente en popularidad en California, Australia y más allá. Los vinos suelen envejecer en roble para ofrecer una riqueza similar a la del Chardonnay."
        let expectedDescription28 = "Una mezcla se define como un vino que no se elabora a partir de una variedad de uva específica. La mezcla de vino permite a los productores de vino adaptar el sabor del vino. La mayoría de las mezclas blancas tendrán notas cítricas y de frutas blancas."
        let expectedDescription29 = "El vino Zinfandel es un tinto audaz y afrutado que es amado por su mermelada de frutas y notas ahumadas de especias exóticas. También se puede convertir en un rosado dulce llamado White Zinfandel."


        XCTAssertEqual(amarone.getShortDescription(), expectedDescription0)
        XCTAssertEqual(barbera.getShortDescription(), expectedDescription1)
        XCTAssertEqual(cabernetFranc.getShortDescription(), expectedDescription2)
        XCTAssertEqual(cabernetSauvignon.getShortDescription(), expectedDescription3)
        XCTAssertEqual(carmenere.getShortDescription(), expectedDescription4)
        XCTAssertEqual(champangeBlend.getShortDescription(), expectedDescription5)
        XCTAssertEqual(chardonnay.getShortDescription(), expectedDescription6)
        XCTAssertEqual(cheninBlanc.getShortDescription(), expectedDescription7)
        XCTAssertEqual(gamay.getShortDescription(), expectedDescription8)
        XCTAssertEqual(gewurztraminer.getShortDescription(), expectedDescription9)
        XCTAssertEqual(grenache.getShortDescription(), expectedDescription10)
        XCTAssertEqual(grunerVeltliner.getShortDescription(), expectedDescription11)
        XCTAssertEqual(malbec.getShortDescription(), expectedDescription12)
        XCTAssertEqual(merlot.getShortDescription(), expectedDescription13)
        XCTAssertEqual(nebbiolo.getShortDescription(), expectedDescription14)
        XCTAssertEqual(petiteSirah.getShortDescription(), expectedDescription15)
        XCTAssertEqual(pinotGris.getShortDescription(), expectedDescription16)
        XCTAssertEqual(pinotNoir.getShortDescription(), expectedDescription17)
        XCTAssertEqual(port.getShortDescription(), expectedDescription18)
        XCTAssertEqual(redBlend.getShortDescription(), expectedDescription19)
        XCTAssertEqual(riesling.getShortDescription(), expectedDescription20)
        XCTAssertEqual(rose.getShortDescription(), expectedDescription21)
        XCTAssertEqual(sangiovese.getShortDescription(), expectedDescription22)
        XCTAssertEqual(sauvignonBlanc.getShortDescription(), expectedDescription23)
        XCTAssertEqual(sparklingBlend.getShortDescription(), expectedDescription24)
        XCTAssertEqual(syrah.getShortDescription(), expectedDescription25)
        XCTAssertEqual(tempranillo.getShortDescription(), expectedDescription26)
        XCTAssertEqual(viognier.getShortDescription(), expectedDescription27)
        XCTAssertEqual(whiteBlend.getShortDescription(), expectedDescription28)
        XCTAssertEqual(zinfandel.getShortDescription(), expectedDescription29)
    }
    
    func testWineDescriptionLocalizationRU() {
    
        let expectedDescription0 = "Вас ждут смелые ароматы вишневого ликера, черного инжира, рожкового дерева, корицы и сливового соуса, а также тонкие нотки зеленого перца, шоколада и измельченной гравийной пыли. Во вкусе вина Амароне часто имеют кислотность от средней плюс до высокой, сбалансированную высоким содержанием алкоголя и ароматами черной вишни, коричневого сахара и шоколада."
        let expectedDescription1 = "Барбера — третий по популярности сорт красного винограда в Италии (после Санджовезе и Монтепульчано). Барбера известен своим глубоким цветом, полным телом, низким содержанием танинов и высоким уровнем кислотности."
        let expectedDescription2 = "Каберне Фран является родоначальником Мерло и Каберне Совиньон. В результате получаются сложные красные вина с ароматами малины, ежевики и болгарского перца."
        let expectedDescription3 = "Самый популярный в мире сорт винограда для красных вин – это естественный гибрид Каберне Фран и Совиньон Блан из Бордо, Франция. Каберне Совиньон любят за высокую концентрацию и выдержку."
        let expectedDescription4 = "«Травянистые, похожие на перчинку ароматизаторы в Карменере являются прекрасным украшением жареного мяса (от курицы до говядины) и пикантных блюд с тмином»."
        let expectedDescription5 = "Самое культовое игристое вино в мире — это смесь сортов винограда, включая Шардоне, Пино Нуар и Пино Менье. Шампанские вина часто имеют миндальный вкус с тонкими нотками цедры апельсина и белой вишни. Самые ценные шампанские вина выдерживаются не менее трех лет."
        let expectedDescription6 = "Один из самых популярных сортов винограда в мире, Шардоне изготавливается в самых разных стилях: от нежирных игристых Блан-де-Блан до насыщенных кремовых белых вин, выдержанных в дубовых бочках."
        let expectedDescription7 = "Шенен Блан выращивают во всем мире, особенно в долине Луары во Франции и Южной Африке. Что удивительно в этом сорте, так это разнообразие стилей, от игристых вин и нежирных сухих белых вин до сладких, золотых нектаров и бренди."
        let expectedDescription8 = "Фруктовый, цветочный, а иногда и землистый красный цвет с легким телом, который является основным сортом, выращиваемым в Божоле. За пределами Франции у Гаме есть небольшая, но преданная аудитория."
        let expectedDescription9 = "Гевюрцтраминер ценится за свои интенсивные цветочные ароматы и веками процветает по всей Германии. Качественные образцы достойны старения, но большинство из них лучше всего употреблять в молодости, чтобы сохранить кислотность."
        let expectedDescription10 = "Гренаш (также известный как Гарнача) производит богатые ароматные красные вина и розовые вина с глубоким рубиновым оттенком. Французы защищали этот сорт винограда в долине Южной Роны, но родина его — Испания."
        let expectedDescription11 = "Самое важное вино Австрии производится во множестве стилей, самыми популярными из которых являются нежирные, травянистые и острые вина с аппетитной кислотностью."
        let expectedDescription12 = "Самый популярный аргентинский сорт пришел из Франции, где его обычно называют Côt. Вина любят за их насыщенный вкус темных фруктов и гладкую шоколадную отделку."
        let expectedDescription13 = "Мерло любят за насыщенный вкус черной вишни, мягкие танины и шоколадное послевкусие. На верхнем уровне его часто ошибочно принимают за Каберне Совиньон и обычно смешивают с ним."
        let expectedDescription14 = "Один из самых важных сортов красных вин Италии, прославившийся регионом Бароло в Пьемонте, где вина обладают тонким ароматом, сопровождаемым сильными танинами."
        let expectedDescription15 = "Маленькая Сира любят за вина насыщенного цвета с насыщенным вкусом черных фруктов и ярко выраженными танинами. Виноград связан с Сира и редким французским сортом Пелурсен. Несмотря на свою популярность, Петит Сира является исключительно редким сортом винограда, засаженным менее чем десятью тысячами акров по всему миру и произрастающим в основном в Калифорнии."
        let expectedDescription16 = "Пино Гри (также известный как Пино Гриджио) — розоватая мутация винограда Пино Нуар. Он широко известен пикантными белыми винами, но его также можно использовать для розовых вин. Посмотрите на Северную Италию, Орегон и Эльзас, чтобы найти эталонные примеры."
        let expectedDescription17 = "Пино Нуар — самое популярное легкотелое красное вино в мире. Его любят за ароматы красных фруктов, цветов и пряностей, которые подчеркнуты долгим, гладким послевкусием."
        let expectedDescription18 = "Флагман Португалии - выдержанное сладкое крепленое вино, представленное в широком диапазоне стилей, в основном основанных на методах выдержки. Обычно встречающиеся стили включают Руби и Тони. Самое узнаваемое имя среди десертных вин."
        let expectedDescription19 = "Купаж определяется как вино, которое не производится из одного конкретного сорта винограда. Смешивание вина позволяет виноделам адаптировать вкус вина. Купажи красных вин занимают второе место по объемам продаж в США."
        let expectedDescription20 = "Ароматный белый сорт, из которого можно производить белые вина по стилю от сухого до очень сладкого. Германия — крупнейший в мире производитель рислинга."
        let expectedDescription21 = "Розе — розовое вино, изготовленное из смеси красных и белых сортов винограда. Считается более сладким, фруктовым, сухим и наполненным минералами."
        let expectedDescription22 = "Самый выращиваемый сорт вина в Италии и гордость регионального вина Тосканы, Кьянти. Санджовезе — чувствительный сорт винограда, который приобретает различные стилистические выражения в зависимости от того, где он произрастает."
        let expectedDescription23 = "Популярное и безошибочно узнаваемое белое вино, которое любят за его «зеленый» травяной вкус и яркую кислотность. Совиньон Блан растет почти везде и, таким образом, предлагает множество стилей, от скудного до обильного."
        let expectedDescription24 = "Игристые вина обычно создаются из смеси белых сортов винограда и проходят ферментацию для создания карбонизации. Существует множество вкусовых профилей, которые можно создать в зависимости от смеси: сухой и пикантный, фруктовый и цветочный, сливочный и ореховый, сладкий и ароматный."
        let expectedDescription25 = "Насыщенное, мощное, а иногда и мясистое красное вино родом из долины Роны во Франции. Сира — самый выращиваемый сорт винограда в Австралии, где его называют Шираз."
        let expectedDescription26 = "Лучшее красное вино Испании, прославившееся Риохой, где вина классифицируются (частично) по тому, как долго они выдерживаются в дубе. Что удивительно, хорошо сделанный Темпранильо выдерживается более двадцати лет."
        let expectedDescription27 = "Насыщенное, маслянистое белое вино родом из Северной Роны, популярность которого быстро растет в Калифорнии, Австралии и других странах. Вина часто выдерживают в дубовых бочках, чтобы придать им богатство, подобное Шардоне."
        let expectedDescription28 = "Купаж определяется как вино, которое не сделано из одного определенного сорта винограда. Смешивание вина позволяет виноделам адаптировать вкус вина. Большинство белых смесей будут иметь ноты цитрусовых и белых фруктов."
        let expectedDescription29 = "Вино Zinfandel — яркое фруктовое красное вино, любимое за фруктовый джем и дымные, экзотические ноты специй. Его также можно превратить в сладкое розовое вино под названием Белый Зинфандель."


        XCTAssertEqual(amarone.getShortDescription(), expectedDescription0)
        XCTAssertEqual(barbera.getShortDescription(), expectedDescription1)
        XCTAssertEqual(cabernetFranc.getShortDescription(), expectedDescription2)
        XCTAssertEqual(cabernetSauvignon.getShortDescription(), expectedDescription3)
        XCTAssertEqual(carmenere.getShortDescription(), expectedDescription4)
        XCTAssertEqual(champangeBlend.getShortDescription(), expectedDescription5)
        XCTAssertEqual(chardonnay.getShortDescription(), expectedDescription6)
        XCTAssertEqual(cheninBlanc.getShortDescription(), expectedDescription7)
        XCTAssertEqual(gamay.getShortDescription(), expectedDescription8)
        XCTAssertEqual(gewurztraminer.getShortDescription(), expectedDescription9)
        XCTAssertEqual(grenache.getShortDescription(), expectedDescription10)
        XCTAssertEqual(grunerVeltliner.getShortDescription(), expectedDescription11)
        XCTAssertEqual(malbec.getShortDescription(), expectedDescription12)
        XCTAssertEqual(merlot.getShortDescription(), expectedDescription13)
        XCTAssertEqual(nebbiolo.getShortDescription(), expectedDescription14)
        XCTAssertEqual(petiteSirah.getShortDescription(), expectedDescription15)
        XCTAssertEqual(pinotGris.getShortDescription(), expectedDescription16)
        XCTAssertEqual(pinotNoir.getShortDescription(), expectedDescription17)
        XCTAssertEqual(port.getShortDescription(), expectedDescription18)
        XCTAssertEqual(redBlend.getShortDescription(), expectedDescription19)
        XCTAssertEqual(riesling.getShortDescription(), expectedDescription20)
        XCTAssertEqual(rose.getShortDescription(), expectedDescription21)
        XCTAssertEqual(sangiovese.getShortDescription(), expectedDescription22)
        XCTAssertEqual(sauvignonBlanc.getShortDescription(), expectedDescription23)
        XCTAssertEqual(sparklingBlend.getShortDescription(), expectedDescription24)
        XCTAssertEqual(syrah.getShortDescription(), expectedDescription25)
        XCTAssertEqual(tempranillo.getShortDescription(), expectedDescription26)
        XCTAssertEqual(viognier.getShortDescription(), expectedDescription27)
        XCTAssertEqual(whiteBlend.getShortDescription(), expectedDescription28)
        XCTAssertEqual(zinfandel.getShortDescription(), expectedDescription29)
    }
    
    func testWineDescriptionLocalizationDE() {
    
        let expectedDescription0 = "Erwarten Sie kräftige Aromen von Kirschlikör, schwarzer Feige, Johannisbrot, Zimt und Pflaumensauce zusammen mit subtilen Noten von grünem Pfeffer, Schokolade und zerstoßenem Kiesstaub. Am Gaumen haben Amarone-Weine oft eine mittlere bis hohe Säure, die mit hohem Alkohol und Aromen von Schwarzkirsche, braunem Zucker und Schokolade ausgewogen ist."
        let expectedDescription1 = "Barbera ist die am dritthäufigsten angebaute rote Rebsorte Italiens (nach Sangiovese und Montepulciano). Barbera ist bekannt für tiefe Farbe, vollen Körper, niedrige Tannine und hohe Säurewerte."
        let expectedDescription2 = "Cabernet Franc ist die Muttertraube von Merlot und Cabernet Sauvignon. Es entstehen komplexe Rotweine mit Aromen von Himbeere, Brombeere und Paprika."
        let expectedDescription3 = "Die beliebteste Rotweintraube der Welt ist eine natürliche Kreuzung aus Cabernet Franc und Sauvignon Blanc aus Bordeaux, Frankreich. Cabernet Sauvignon wird wegen seiner hohen Konzentration und Alterungswürdigkeit geschätzt."
        let expectedDescription4 = "Die krautigen, pfefferkornähnlichen Aromen in Carmenere sind eine großartige Verzierung für gebratenes Fleisch (von Huhn bis Rind) und herzhafte Gerichte mit Kreuzkümmel."
        let expectedDescription5 = "Der berühmteste Schaumwein der Welt ist eine Mischung aus Trauben wie Chardonnay, Pinot Noir und Pinot Meunier. Champagnerweine zeigen oft mandelartige Aromen mit subtilen Noten von Orangenschale und weißer Kirsche. Die wertvollsten Champagnerweine reifen mindestens 3 Jahre."
        let expectedDescription6 = "Chardonnay, eine der beliebtesten Trauben der Welt, wird in einer Vielzahl von Stilen hergestellt, von mageren, prickelnden Blanc de Blancs bis hin zu reichhaltigen, cremigen Weißweinen, die in Eichenfässern gereift sind."
        let expectedDescription7 = "Chenin Blanc wird weltweit angebaut, vor allem im Loire-Tal in Frankreich und Südafrika. Das Erstaunliche an dieser Sorte ist die Vielfalt der Stile, von Schaumweinen und mageren, trockenen Weißweinen bis hin zu süßen, goldenen Nektaren und Brandy."
        let expectedDescription8 = "Ein fruchtiger, floraler und manchmal erdiger Roter mit leichtem Körper, der die Hauptsorte ist, die im Beaujolais angebaut wird. Außerhalb Frankreichs hat Gamay eine kleine, aber hingebungsvolle Anhängerschaft."
        let expectedDescription9 = "Gewürztraminer wird wegen seiner intensiven blumigen Aromen geschätzt und gedeiht seit Jahrhunderten in Deutschland. Qualitätsbeispiele sind alterswürdig, aber die meisten werden am besten in ihrer Jugend genossen, um die Säure zu bewahren."
        let expectedDescription10 = "Grenache (alias Garnacha) produziert reichhaltige, würzige Rotweine und tief rubinroten Rosé. Die Franzosen haben sich im südlichen Rhône-Tal für diese Traube eingesetzt, aber ihre ursprüngliche Heimat ist Spanien."
        let expectedDescription11 = "Österreichs wichtigster Wein wird in unzähligen Stilrichtungen produziert, von denen die beliebtesten schlanke, krautige und pfeffrige Weine mit köstlicher Säure sind."
        let expectedDescription12 = "Argentiniens wichtigste Sorte kam über Frankreich, wo sie allgemein Côt genannt wird. Weine werden für ihre reichen, dunklen Fruchtaromen und ihren weichen, schokoladigen Abgang geliebt."
        let expectedDescription13 = "Merlot wird für seine ausgelassenen Schwarzkirscharomen, geschmeidigen Tannine und seinen schokoladigen Abgang geliebt. Im oberen Preissegment wird er oft mit Cabernet Sauvignon verwechselt und häufig damit verschnitten."
        let expectedDescription14 = "Eine der wichtigsten Rotweinsorten Italiens, berühmt geworden durch die Barolo-Region im Piemont, wo Weine zarte Aromen bieten, die von kräftigen Tanninen begleitet werden."
        let expectedDescription15 = "Petit Sirah wird für seine tief gefärbten Weine mit reichen schwarzen Fruchtaromen und kräftigen Tanninen geliebt. Die Traube ist verwandt mit Syrah und der seltenen französischen Traube Peloursin. Trotz ihrer Popularität ist Petite Sirah eine außergewöhnlich seltene Rebsorte mit weltweit weniger als 10.000 Hektar Anbaufläche, die hauptsächlich in Kalifornien wächst."
        let expectedDescription16 = "Pinot Gris (alias Pinot Grigio) ist eine rosafarbene Traubenmutation von Pinot Noir. Sie ist bekannt für spritzige Weißweine, kann aber auch für Rosé verwendet werden. Benchmark-Beispiele finden Sie in Norditalien, Oregon und im Elsass."
        let expectedDescription17 = "Pinot Noir ist der weltweit beliebteste leichte Rotwein. Er wird für seine Aromen von roten Früchten, Blumen und Gewürzen geliebt, die durch einen langen, weichen Abgang akzentuiert werden."
        let expectedDescription18 = "Das Flaggschiff Portugals; ein gealterter, süßer Likörwein, der in einer Vielzahl von Stilen erhältlich ist, die größtenteils auf Alterungstechniken basieren. Häufig gesehene Stile sind Ruby und Tawny. Der bekannteste Name bei Dessertweinen."
        let expectedDescription19 = "Als Cuvée wird ein Wein bezeichnet, der nicht aus einer bestimmten Rebsorte hergestellt wird. Durch das Mischen von Wein können Winzer den Geschmack des Weins anpassen. Rotweinmischungen sind in den USA der am zweithäufigsten gekaufte Wein nach Volumen."
        let expectedDescription20 = "Eine aromatische weiße Sorte, die Weißweine mit einem Stil von knochentrocken bis sehr süß hervorbringen kann. Deutschland ist der weltweit bedeutendste Produzent von Riesling."
        let expectedDescription21 = "Rosé ist ein rosafarbener Wein, der aus einer Mischung von Rot- und Weißweintrauben hergestellt wird. Wird als süßer, fruchtiger, trockener und mineralischer getrieben betrachtet."
        let expectedDescription22 = "Italiens meistgepflanzte Weinsorte und der Stolz des toskanischen Regionalweins Chianti. Sangiovese ist eine sensible Rebsorte, die je nach Anbaugebiet unterschiedliche stilistische Ausdrucksformen annimmt."
        let expectedDescription23 = "Ein beliebter und unverwechselbarer Weißwein, der für seine „grünen“ Kräuteraromen und seine rassige Säure geschätzt wird. Sauvignon Blanc wächst fast überall und bietet daher eine Vielzahl von Stilen, die von mager bis üppig reichen."
        let expectedDescription24 = "Schaumweine werden im Allgemeinen aus einer Mischung von Weißweintrauben hergestellt und durchlaufen eine Gärung, um Kohlensäure zu erzeugen. Je nach Mischung können viele Geschmacksprofile erstellt werden: trocken und pikant, fruchtig und blumig, cremig und nussig, süß und parfümiert."
        let expectedDescription25 = "Ein reichhaltiger, kraftvoller und manchmal fleischiger Rotwein, der aus dem Rhône-Tal in Frankreich stammt. Syrah ist die am häufigsten angebaute Traube Australiens, wo sie Shiraz genannt wird."
        let expectedDescription26 = "Spaniens bester Rotwein, berühmt geworden durch Rioja, wo Weine (teilweise) danach klassifiziert werden, wie lange sie in Eichenfässern reifen. Das Erstaunliche ist, dass ein gut gemachter Tempranillo über zwanzig Jahre reift."
        let expectedDescription27 = "Ein reichhaltiger, öliger Weißwein, der seinen Ursprung in der nördlichen Rhône hat und in Kalifornien, Australien und darüber hinaus schnell an Popularität gewinnt. Weine reifen oft in Eichenfässern, um Chardonnay-ähnliche Fülle zu liefern."
        let expectedDescription28 = "Als Cuvée wird ein Wein bezeichnet, der nicht aus einer bestimmten Rebsorte hergestellt wird. Durch das Mischen von Wein können Winzer den Geschmack des Weins anpassen. Die meisten weißen Mischungen haben Noten von Zitrusfrüchten und weißen Früchten."
        let expectedDescription29 = "Zinfandel-Wein ist ein kräftiger, fruchtbetonter Rotwein, der für seine marmeladigen Früchte und rauchigen, exotischen Gewürznoten geliebt wird. Es kann auch zu einem süßen Rosé namens White Zinfandel verarbeitet werden."


        XCTAssertEqual(amarone.getShortDescription(), expectedDescription0)
        XCTAssertEqual(barbera.getShortDescription(), expectedDescription1)
        XCTAssertEqual(cabernetFranc.getShortDescription(), expectedDescription2)
        XCTAssertEqual(cabernetSauvignon.getShortDescription(), expectedDescription3)
        XCTAssertEqual(carmenere.getShortDescription(), expectedDescription4)
        XCTAssertEqual(champangeBlend.getShortDescription(), expectedDescription5)
        XCTAssertEqual(chardonnay.getShortDescription(), expectedDescription6)
        XCTAssertEqual(cheninBlanc.getShortDescription(), expectedDescription7)
        XCTAssertEqual(gamay.getShortDescription(), expectedDescription8)
        XCTAssertEqual(gewurztraminer.getShortDescription(), expectedDescription9)
        XCTAssertEqual(grenache.getShortDescription(), expectedDescription10)
        XCTAssertEqual(grunerVeltliner.getShortDescription(), expectedDescription11)
        XCTAssertEqual(malbec.getShortDescription(), expectedDescription12)
        XCTAssertEqual(merlot.getShortDescription(), expectedDescription13)
        XCTAssertEqual(nebbiolo.getShortDescription(), expectedDescription14)
        XCTAssertEqual(petiteSirah.getShortDescription(), expectedDescription15)
        XCTAssertEqual(pinotGris.getShortDescription(), expectedDescription16)
        XCTAssertEqual(pinotNoir.getShortDescription(), expectedDescription17)
        XCTAssertEqual(port.getShortDescription(), expectedDescription18)
        XCTAssertEqual(redBlend.getShortDescription(), expectedDescription19)
        XCTAssertEqual(riesling.getShortDescription(), expectedDescription20)
        XCTAssertEqual(rose.getShortDescription(), expectedDescription21)
        XCTAssertEqual(sangiovese.getShortDescription(), expectedDescription22)
        XCTAssertEqual(sauvignonBlanc.getShortDescription(), expectedDescription23)
        XCTAssertEqual(sparklingBlend.getShortDescription(), expectedDescription24)
        XCTAssertEqual(syrah.getShortDescription(), expectedDescription25)
        XCTAssertEqual(tempranillo.getShortDescription(), expectedDescription26)
        XCTAssertEqual(viognier.getShortDescription(), expectedDescription27)
        XCTAssertEqual(whiteBlend.getShortDescription(), expectedDescription28)
        XCTAssertEqual(zinfandel.getShortDescription(), expectedDescription29)
    }
    
    func testWineDescriptionLocalizationFR() {

        let expectedDescription0 = "Attendez-vous à des arômes audacieux de liqueur de cerise, de figue noire, de caroube, de cannelle et de sauce aux prunes accompagnés de notes subtiles de poivre vert, de chocolat et de poussière de gravier concassé. En bouche, les vins d'Amarone ont souvent une acidité moyenne à élevée équilibrée avec un degré élevé d'alcool et des saveurs de cerise noire, de cassonade et de chocolat."
        let expectedDescription1 = "Le Barbera est le troisième cépage rouge le plus planté en Italie (après le Sangiovese et le Montepulciano). Le Barbera est connu pour sa couleur profonde, son corps plein, ses tanins faibles et son acidité élevée."
        let expectedDescription2 = "Le Cabernet Franc est le cépage parent du Merlot et du Cabernet Sauvignon. Il en résulte des rouges complexes aux arômes de framboise, de ronce et de poivron."
        let expectedDescription3 = "Le cépage rouge le plus populaire au monde est un croisement naturel entre le cabernet franc et le sauvignon blanc de Bordeaux, en France. Le Cabernet Sauvignon est apprécié pour sa haute concentration et sa capacité à vieillir."
        let expectedDescription4 = "Les saveurs herbacées et poivrées de Carmenere embellissent à merveille les viandes rôties (du poulet au bœuf) et les plats salés épicés au cumin."
        let expectedDescription5 = "Le vin mousseux le plus emblématique au monde est un assemblage de cépages dont le Chardonnay, le Pinot Noir et le Pinot Meunier. Les vins de Champagne présentent souvent des saveurs d'amande, avec des notes subtiles de zeste d'orange et de cerise blanche. Les vins de Champagne les plus précieux vieillissent au moins trois ans."
        let expectedDescription6 = "L'un des cépages les plus populaires au monde, le Chardonnay est élaboré dans une large gamme de styles allant des Blancs de Blancs maigres et pétillants aux vins blancs riches et crémeux élevés en fût de chêne."
        let expectedDescription7 = "Le Chenin Blanc est cultivé dans le monde entier, notamment dans la vallée de la Loire en France et en Afrique du Sud. Ce qui est étonnant avec cette variété, c'est la diversité des styles, des vins mousseux et des blancs maigres et secs aux nectars doux et dorés et au brandy."
        let expectedDescription8 = "Un rouge léger fruité, floral et parfois terreux qui est le cépage principal planté en Beaujolais. En dehors de la France, le Gamay a un petit nombre de fidèles."
        let expectedDescription9 = "Chéri pour ses arômes floraux intenses, le Gewürztraminer a prospéré pendant des siècles en Allemagne. Des exemples de qualité sont dignes d'âge, mais la plupart sont mieux dégustés dans leur jeunesse pour préserver l'acidité."
        let expectedDescription10 = "Grenache (alias Garnacha) produit des vins rouges riches et savoureux et des rosés profonds aux teintes rubis. Les Français ont défendu ce cépage dans le sud de la vallée du Rhône, mais c'est en Espagne qu'il est originaire."
        let expectedDescription11 = "Le vin le plus important d'Autriche est produit dans une myriade de styles, dont les plus populaires sont les vins maigres, herbacés et poivrés avec une acidité alléchante."
        let expectedDescription12 = "La variété la plus importante d'Argentine est passée par la France, où elle est communément appelée Côt. Les vins sont appréciés pour leurs riches saveurs de fruits noirs et leur douce finale chocolatée."
        let expectedDescription13 = "Le merlot est apprécié pour ses saveurs turbulentes de cerise noire, ses tanins souples et sa finale chocolatée. Dans le haut de gamme, il est souvent confondu avec le Cabernet Sauvignon et souvent mélangé avec lui."
        let expectedDescription14 = "L'un des cépages rouges les plus importants d'Italie, rendu célèbre par la région de Barolo dans le Piémont, où les vins offrent des arômes délicats accompagnés de tanins puissants."
        let expectedDescription15 = "Petit Sirah est apprécié pour ses vins profondément colorés avec de riches saveurs de fruits noirs et des tanins audacieux. Le cépage lié à la Syrah et le cépage français rare, le Peloursin. Malgré sa popularité, la Petite Sirah est un cépage exceptionnellement rare avec moins de dix mille acres plantés dans le monde, poussant principalement en Californie."
        let expectedDescription16 = "Le Pinot Gris (alias Pinot Grigio) est une mutation de cépage rosé du Pinot Noir. Il est réputé pour ses vins blancs piquants, mais peut également être utilisé pour le rosé. Regardez vers l'Italie du Nord, l'Oregon et l'Alsace pour des exemples de référence."
        let expectedDescription17 = "Le Pinot Noir est le vin rouge au corps léger le plus populaire au monde. Il est apprécié pour ses arômes de fruits rouges, de fleurs et d'épices qui sont accentués par une longue finale onctueuse."
        let expectedDescription18 = "Le fleuron du Portugal ; un vin fortifié vieilli et doux qui se décline dans une large gamme de styles, largement basés sur des techniques de vieillissement. Les styles couramment observés incluent le rubis et le fauve. Le nom le plus reconnaissable des vins de dessert."
        let expectedDescription19 = "Un assemblage est défini comme un vin qui n'est pas issu d'un cépage spécifique. L'assemblage du vin permet aux vignerons d'adapter la saveur du vin. Les mélanges de vins rouges sont le deuxième vin le plus acheté en volume aux États-Unis."
        let expectedDescription20 = "Un cépage blanc aromatique qui peut produire des vins blancs dont le style varie du très sec au très doux. L'Allemagne est le premier producteur mondial de Riesling."
        let expectedDescription21 = "Le rosé est un style de vin rosé issu d'un mélange de raisins rouges et blancs. Considéré comme plus doux, fruité, sec et minéral."
        let expectedDescription22 = "Le cépage le plus planté d'Italie et la fierté du vin régional toscan, le Chianti. Le sangiovese est un cépage sensible qui prend différentes expressions stylistiques en fonction de l'endroit où il pousse."
        let expectedDescription23 = "Un vin blanc populaire et incomparable qui est apprécié pour ses saveurs herbacées « vertes » et son acidité racée. Le sauvignon blanc pousse presque partout et offre ainsi une variété de styles allant du maigre au généreux."
        let expectedDescription24 = "Les vins mousseux sont généralement créés à partir d'un mélange de raisins de cuve blancs et subissent une fermentation pour créer une carbonatation. De nombreux profils de saveurs peuvent être créés en fonction du mélange : sec et piquant, fruité et floral, crémeux et noisette, sucré et parfumé."
        let expectedDescription25 = "A rich, powerful, and sometimes meaty red wine that originated in the Rhône Valley of France. Syrah is the most planted grape of Australia, where they call it Shiraz."
        let expectedDescription26 = "Le meilleur vin rouge d'Espagne, rendu célèbre par la Rioja, où les vins sont classés (en partie) en fonction de leur durée de vieillissement en fût de chêne. Ce qui est étonnant, c'est un Tempranillo bien fait qui vieillit pendant plus de vingt ans."
        let expectedDescription27 = "Un vin blanc riche et huileux originaire du Rhône septentrional et dont la popularité ne cesse de croître en Californie, en Australie et au-delà. Les vins sont souvent élevés en fûts de chêne pour offrir une richesse semblable à celle du Chardonnay."
        let expectedDescription28 = "Un assemblage est défini comme un vin qui n'est pas issu d'un cépage spécifique. L'assemblage du vin permet aux vignerons d'adapter la saveur du vin. La plupart des mélanges blancs auront des notes d'agrumes et de fruits blancs."
        let expectedDescription29 = "Le vin Zinfandel est un rouge fruité audacieux qui est apprécié pour ses notes de fruits confiturés et d'épices exotiques et fumées. Il peut également être transformé en un rosé doux appelé White Zinfandel."


        XCTAssertEqual(amarone.getShortDescription(), expectedDescription0)
        XCTAssertEqual(barbera.getShortDescription(), expectedDescription1)
        XCTAssertEqual(cabernetFranc.getShortDescription(), expectedDescription2)
        XCTAssertEqual(cabernetSauvignon.getShortDescription(), expectedDescription3)
        XCTAssertEqual(carmenere.getShortDescription(), expectedDescription4)
        XCTAssertEqual(champangeBlend.getShortDescription(), expectedDescription5)
        XCTAssertEqual(chardonnay.getShortDescription(), expectedDescription6)
        XCTAssertEqual(cheninBlanc.getShortDescription(), expectedDescription7)
        XCTAssertEqual(gamay.getShortDescription(), expectedDescription8)
        XCTAssertEqual(gewurztraminer.getShortDescription(), expectedDescription9)
        XCTAssertEqual(grenache.getShortDescription(), expectedDescription10)
        XCTAssertEqual(grunerVeltliner.getShortDescription(), expectedDescription11)
        XCTAssertEqual(malbec.getShortDescription(), expectedDescription12)
        XCTAssertEqual(merlot.getShortDescription(), expectedDescription13)
        XCTAssertEqual(nebbiolo.getShortDescription(), expectedDescription14)
        XCTAssertEqual(petiteSirah.getShortDescription(), expectedDescription15)
        XCTAssertEqual(pinotGris.getShortDescription(), expectedDescription16)
        XCTAssertEqual(pinotNoir.getShortDescription(), expectedDescription17)
        XCTAssertEqual(port.getShortDescription(), expectedDescription18)
        XCTAssertEqual(redBlend.getShortDescription(), expectedDescription19)
        XCTAssertEqual(riesling.getShortDescription(), expectedDescription20)
        XCTAssertEqual(rose.getShortDescription(), expectedDescription21)
        XCTAssertEqual(sangiovese.getShortDescription(), expectedDescription22)
        XCTAssertEqual(sauvignonBlanc.getShortDescription(), expectedDescription23)
        XCTAssertEqual(sparklingBlend.getShortDescription(), expectedDescription24)
        XCTAssertEqual(syrah.getShortDescription(), expectedDescription25)
        XCTAssertEqual(tempranillo.getShortDescription(), expectedDescription26)
        XCTAssertEqual(viognier.getShortDescription(), expectedDescription27)
        XCTAssertEqual(whiteBlend.getShortDescription(), expectedDescription28)
        XCTAssertEqual(zinfandel.getShortDescription(), expectedDescription29)
    }
    
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMM - TANNINS - MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

    func testWineTanninsLocalizationEN() {

        let expectedTannins0 = "Medium"
        let expectedTannins1 = "Low"
        let expectedTannins2 = "Medium-High"
        let expectedTannins3 = "Dense, dark, tannic"
        let expectedTannins4 = "Medium"
        let expectedTannins5 = "None"
        let expectedTannins6 = "Low"
        let expectedTannins7 = "None"
        let expectedTannins8 = "Low to None"
        let expectedTannins9 = "None"
        let expectedTannins10 = "Medium"
        let expectedTannins11 = "None"
        let expectedTannins12 = "Medium"
        let expectedTannins13 = "Medium"
        let expectedTannins14 = "High"
        let expectedTannins15 = "High"
        let expectedTannins16 = "None"
        let expectedTannins17 = "Light tannins"
        let expectedTannins18 = "High"
        let expectedTannins19 = "Wide range, medium to high"
        let expectedTannins20 = "None"
        let expectedTannins21 = "Light"
        let expectedTannins22 = "High"
        let expectedTannins23 = "Acidic, dry"
        let expectedTannins24 = "None"
        let expectedTannins25 = "High"
        let expectedTannins26 = "Medium-high, acidic, complex"
        let expectedTannins27 = "None"
        let expectedTannins28 = "Low to unnoticeable "
        let expectedTannins29 = "Medium to Medium-High"


        XCTAssertEqual(amarone.getTannins(), expectedTannins0)
        XCTAssertEqual(barbera.getTannins(), expectedTannins1)
        XCTAssertEqual(cabernetFranc.getTannins(), expectedTannins2)
        XCTAssertEqual(cabernetSauvignon.getTannins(), expectedTannins3)
        XCTAssertEqual(carmenere.getTannins(), expectedTannins4)
        XCTAssertEqual(champangeBlend.getTannins(), expectedTannins5)
        XCTAssertEqual(chardonnay.getTannins(), expectedTannins6)
        XCTAssertEqual(cheninBlanc.getTannins(), expectedTannins7)
        XCTAssertEqual(gamay.getTannins(), expectedTannins8)
        XCTAssertEqual(gewurztraminer.getTannins(), expectedTannins9)
        XCTAssertEqual(grenache.getTannins(), expectedTannins10)
        XCTAssertEqual(grunerVeltliner.getTannins(), expectedTannins11)
        XCTAssertEqual(malbec.getTannins(), expectedTannins12)
        XCTAssertEqual(merlot.getTannins(), expectedTannins13)
        XCTAssertEqual(nebbiolo.getTannins(), expectedTannins14)
        XCTAssertEqual(petiteSirah.getTannins(), expectedTannins15)
        XCTAssertEqual(pinotGris.getTannins(), expectedTannins16)
        XCTAssertEqual(pinotNoir.getTannins(), expectedTannins17)
        XCTAssertEqual(port.getTannins(), expectedTannins18)
        XCTAssertEqual(redBlend.getTannins(), expectedTannins19)
        XCTAssertEqual(riesling.getTannins(), expectedTannins20)
        XCTAssertEqual(rose.getTannins(), expectedTannins21)
        XCTAssertEqual(sangiovese.getTannins(), expectedTannins22)
        XCTAssertEqual(sauvignonBlanc.getTannins(), expectedTannins23)
        XCTAssertEqual(sparklingBlend.getTannins(), expectedTannins24)
        XCTAssertEqual(syrah.getTannins(), expectedTannins25)
        XCTAssertEqual(tempranillo.getTannins(), expectedTannins26)
        XCTAssertEqual(viognier.getTannins(), expectedTannins27)
        XCTAssertEqual(whiteBlend.getTannins(), expectedTannins28)
        XCTAssertEqual(zinfandel.getTannins(), expectedTannins29)
    }


    func testWineTanninsLocalizationES() {

        let expectedTannins0 = "Medio"
        let expectedTannins1 = "Bajo"
        let expectedTannins2 = "Altura media"
        let expectedTannins3 = "Denso, oscuro, tánico"
        let expectedTannins4 = "Medio"
        let expectedTannins5 = "Ninguna"
        let expectedTannins6 = "Bajo"
        let expectedTannins7 = "Ninguna"
        let expectedTannins8 = "Bajo a ninguno"
        let expectedTannins9 = "Ninguna"
        let expectedTannins10 = "Medio"
        let expectedTannins11 = "Ninguna"
        let expectedTannins12 = "Medio"
        let expectedTannins13 = "Medio"
        let expectedTannins14 = "Elevado"
        let expectedTannins15 = "Elevado"
        let expectedTannins16 = "Ninguna"
        let expectedTannins17 = "taninos ligeros"
        let expectedTannins18 = "Elevado"
        let expectedTannins19 = "Amplio rango, medio a alto"
        let expectedTannins20 = "Ninguna"
        let expectedTannins21 = "Luz"
        let expectedTannins22 = "Elevado"
        let expectedTannins23 = "ácido, seco"
        let expectedTannins24 = "Ninguna"
        let expectedTannins25 = "Elevado"
        let expectedTannins26 = "Medio-alto, ácido, complejo"
        let expectedTannins27 = "Ninguna"
        let expectedTannins28 = "Bajo a imperceptible"
        let expectedTannins29 = "Medio a Medio-Alto"


        XCTAssertEqual(amarone.getTannins(), expectedTannins0)
        XCTAssertEqual(barbera.getTannins(), expectedTannins1)
        XCTAssertEqual(cabernetFranc.getTannins(), expectedTannins2)
        XCTAssertEqual(cabernetSauvignon.getTannins(), expectedTannins3)
        XCTAssertEqual(carmenere.getTannins(), expectedTannins4)
        XCTAssertEqual(champangeBlend.getTannins(), expectedTannins5)
        XCTAssertEqual(chardonnay.getTannins(), expectedTannins6)
        XCTAssertEqual(cheninBlanc.getTannins(), expectedTannins7)
        XCTAssertEqual(gamay.getTannins(), expectedTannins8)
        XCTAssertEqual(gewurztraminer.getTannins(), expectedTannins9)
        XCTAssertEqual(grenache.getTannins(), expectedTannins10)
        XCTAssertEqual(grunerVeltliner.getTannins(), expectedTannins11)
        XCTAssertEqual(malbec.getTannins(), expectedTannins12)
        XCTAssertEqual(merlot.getTannins(), expectedTannins13)
        XCTAssertEqual(nebbiolo.getTannins(), expectedTannins14)
        XCTAssertEqual(petiteSirah.getTannins(), expectedTannins15)
        XCTAssertEqual(pinotGris.getTannins(), expectedTannins16)
        XCTAssertEqual(pinotNoir.getTannins(), expectedTannins17)
        XCTAssertEqual(port.getTannins(), expectedTannins18)
        XCTAssertEqual(redBlend.getTannins(), expectedTannins19)
        XCTAssertEqual(riesling.getTannins(), expectedTannins20)
        XCTAssertEqual(rose.getTannins(), expectedTannins21)
        XCTAssertEqual(sangiovese.getTannins(), expectedTannins22)
        XCTAssertEqual(sauvignonBlanc.getTannins(), expectedTannins23)
        XCTAssertEqual(sparklingBlend.getTannins(), expectedTannins24)
        XCTAssertEqual(syrah.getTannins(), expectedTannins25)
        XCTAssertEqual(tempranillo.getTannins(), expectedTannins26)
        XCTAssertEqual(viognier.getTannins(), expectedTannins27)
        XCTAssertEqual(whiteBlend.getTannins(), expectedTannins28)
        XCTAssertEqual(zinfandel.getTannins(), expectedTannins29)
    }


    func testWineTanninsLocalizationRU() {

        let expectedTannins0 = "Средняя"
        let expectedTannins1 = "Низкая"
        let expectedTannins2 = "Средне-высокий"
        let expectedTannins3 = "Плотный, темный, дубильный"
        let expectedTannins4 = "Средняя"
        let expectedTannins5 = "Никто"
        let expectedTannins6 = "Низкая"
        let expectedTannins7 = "Никто"
        let expectedTannins8 = "От низкого до нулевого"
        let expectedTannins9 = "Никто"
        let expectedTannins10 = "Средняя"
        let expectedTannins11 = "Никто"
        let expectedTannins12 = "Середина"
        let expectedTannins13 = "Середина"
        let expectedTannins14 = "Высоко"
        let expectedTannins15 = "Высоко"
        let expectedTannins16 = "Никто"
        let expectedTannins17 = "Легкие танины"
        let expectedTannins18 = "Высоко"
        let expectedTannins19 = "Широкий диапазон, от среднего до высокого"
        let expectedTannins20 = "Никто"
        let expectedTannins21 = "Свет"
        let expectedTannins22 = "Высоко"
        let expectedTannins23 = "Кислый, сухой"
        let expectedTannins24 = "Никто"
        let expectedTannins25 = "Высоко"
        let expectedTannins26 = "Средне-сильный, кислый, сложный"
        let expectedTannins27 = "Никто"
        let expectedTannins28 = "Слабый до незаметного"
        let expectedTannins29 = "От среднего до средне-высокого"


        XCTAssertEqual(amarone.getTannins(), expectedTannins0)
        XCTAssertEqual(barbera.getTannins(), expectedTannins1)
        XCTAssertEqual(cabernetFranc.getTannins(), expectedTannins2)
        XCTAssertEqual(cabernetSauvignon.getTannins(), expectedTannins3)
        XCTAssertEqual(carmenere.getTannins(), expectedTannins4)
        XCTAssertEqual(champangeBlend.getTannins(), expectedTannins5)
        XCTAssertEqual(chardonnay.getTannins(), expectedTannins6)
        XCTAssertEqual(cheninBlanc.getTannins(), expectedTannins7)
        XCTAssertEqual(gamay.getTannins(), expectedTannins8)
        XCTAssertEqual(gewurztraminer.getTannins(), expectedTannins9)
        XCTAssertEqual(grenache.getTannins(), expectedTannins10)
        XCTAssertEqual(grunerVeltliner.getTannins(), expectedTannins11)
        XCTAssertEqual(malbec.getTannins(), expectedTannins12)
        XCTAssertEqual(merlot.getTannins(), expectedTannins13)
        XCTAssertEqual(nebbiolo.getTannins(), expectedTannins14)
        XCTAssertEqual(petiteSirah.getTannins(), expectedTannins15)
        XCTAssertEqual(pinotGris.getTannins(), expectedTannins16)
        XCTAssertEqual(pinotNoir.getTannins(), expectedTannins17)
        XCTAssertEqual(port.getTannins(), expectedTannins18)
        XCTAssertEqual(redBlend.getTannins(), expectedTannins19)
        XCTAssertEqual(riesling.getTannins(), expectedTannins20)
        XCTAssertEqual(rose.getTannins(), expectedTannins21)
        XCTAssertEqual(sangiovese.getTannins(), expectedTannins22)
        XCTAssertEqual(sauvignonBlanc.getTannins(), expectedTannins23)
        XCTAssertEqual(sparklingBlend.getTannins(), expectedTannins24)
        XCTAssertEqual(syrah.getTannins(), expectedTannins25)
        XCTAssertEqual(tempranillo.getTannins(), expectedTannins26)
        XCTAssertEqual(viognier.getTannins(), expectedTannins27)
        XCTAssertEqual(whiteBlend.getTannins(), expectedTannins28)
        XCTAssertEqual(zinfandel.getTannins(), expectedTannins29)
    }


    func testWineTanninsLocalizationDE() {

        let expectedTannins0 = "Mittel"
        let expectedTannins1 = "Niedrig"
        let expectedTannins2 = "Mittelhoch"
        let expectedTannins3 = "Dicht, dunkel, Tannin"
        let expectedTannins4 = "Mittel"
        let expectedTannins5 = "Keiner"
        let expectedTannins6 = "Niedrig"
        let expectedTannins7 = "Keiner"
        let expectedTannins8 = "Niedrig bis Keine"
        let expectedTannins9 = "Keiner"
        let expectedTannins10 = "Mittel"
        let expectedTannins11 = "Keiner"
        let expectedTannins12 = "Mittel"
        let expectedTannins13 = "Mittel"
        let expectedTannins14 = "Hoch"
        let expectedTannins15 = "Hoch"
        let expectedTannins16 = "Keiner"
        let expectedTannins17 = "Leichte Tannine"
        let expectedTannins18 = "Hoch"
        let expectedTannins19 = "Breites Spektrum, mittel bis hoch"
        let expectedTannins20 = "Keiner"
        let expectedTannins21 = "Hell"
        let expectedTannins22 = "Hoch"
        let expectedTannins23 = "Sauer, trocken"
        let expectedTannins24 = "Keiner"
        let expectedTannins25 = "Hoch"
        let expectedTannins26 = "Mittelhoch, sauer, komplex"
        let expectedTannins27 = "Keiner"
        let expectedTannins28 = "Gering bis nicht wahrnehmbar"
        let expectedTannins29 = "Mittel bis Mittelhoch"


        XCTAssertEqual(amarone.getTannins(), expectedTannins0)
        XCTAssertEqual(barbera.getTannins(), expectedTannins1)
        XCTAssertEqual(cabernetFranc.getTannins(), expectedTannins2)
        XCTAssertEqual(cabernetSauvignon.getTannins(), expectedTannins3)
        XCTAssertEqual(carmenere.getTannins(), expectedTannins4)
        XCTAssertEqual(champangeBlend.getTannins(), expectedTannins5)
        XCTAssertEqual(chardonnay.getTannins(), expectedTannins6)
        XCTAssertEqual(cheninBlanc.getTannins(), expectedTannins7)
        XCTAssertEqual(gamay.getTannins(), expectedTannins8)
        XCTAssertEqual(gewurztraminer.getTannins(), expectedTannins9)
        XCTAssertEqual(grenache.getTannins(), expectedTannins10)
        XCTAssertEqual(grunerVeltliner.getTannins(), expectedTannins11)
        XCTAssertEqual(malbec.getTannins(), expectedTannins12)
        XCTAssertEqual(merlot.getTannins(), expectedTannins13)
        XCTAssertEqual(nebbiolo.getTannins(), expectedTannins14)
        XCTAssertEqual(petiteSirah.getTannins(), expectedTannins15)
        XCTAssertEqual(pinotGris.getTannins(), expectedTannins16)
        XCTAssertEqual(pinotNoir.getTannins(), expectedTannins17)
        XCTAssertEqual(port.getTannins(), expectedTannins18)
        XCTAssertEqual(redBlend.getTannins(), expectedTannins19)
        XCTAssertEqual(riesling.getTannins(), expectedTannins20)
        XCTAssertEqual(rose.getTannins(), expectedTannins21)
        XCTAssertEqual(sangiovese.getTannins(), expectedTannins22)
        XCTAssertEqual(sauvignonBlanc.getTannins(), expectedTannins23)
        XCTAssertEqual(sparklingBlend.getTannins(), expectedTannins24)
        XCTAssertEqual(syrah.getTannins(), expectedTannins25)
        XCTAssertEqual(tempranillo.getTannins(), expectedTannins26)
        XCTAssertEqual(viognier.getTannins(), expectedTannins27)
        XCTAssertEqual(whiteBlend.getTannins(), expectedTannins28)
        XCTAssertEqual(zinfandel.getTannins(), expectedTannins29)
    }


    func testWineTanninsLocalizationFR() {

        let expectedTannins0 = "Moyen"
        let expectedTannins1 = "Faible"
        let expectedTannins2 = "Moyen-élevé"
        let expectedTannins3 = "Dense, sombre, tannique"
        let expectedTannins4 = "Moyen"
        let expectedTannins5 = "Rien"
        let expectedTannins6 = "Faible"
        let expectedTannins7 = "Rien"
        let expectedTannins8 = "Faible à aucun"
        let expectedTannins9 = "Rien"
        let expectedTannins10 = "Moyen"
        let expectedTannins11 = "Rien"
        let expectedTannins12 = "Moyen"
        let expectedTannins13 = "Moyen"
        let expectedTannins14 = "Haut"
        let expectedTannins15 = "Haut"
        let expectedTannins16 = "Rien"
        let expectedTannins17 = "Tanins légers"
        let expectedTannins18 = "Haut"
        let expectedTannins19 = "Large gamme, moyenne à élevée"
        let expectedTannins20 = "Rien"
        let expectedTannins21 = "Léger"
        let expectedTannins22 = "Haut"
        let expectedTannins23 = "Acide, sec"
        let expectedTannins24 = "Rien"
        let expectedTannins25 = "Haut"
        let expectedTannins26 = "Moyen-élevé, acide, complexe"
        let expectedTannins27 = "Rien"
        let expectedTannins28 = "Faible à imperceptible"
        let expectedTannins29 = "Moyen à moyen-élevé"


        XCTAssertEqual(amarone.getTannins(), expectedTannins0)
        XCTAssertEqual(barbera.getTannins(), expectedTannins1)
        XCTAssertEqual(cabernetFranc.getTannins(), expectedTannins2)
        XCTAssertEqual(cabernetSauvignon.getTannins(), expectedTannins3)
        XCTAssertEqual(carmenere.getTannins(), expectedTannins4)
        XCTAssertEqual(champangeBlend.getTannins(), expectedTannins5)
        XCTAssertEqual(chardonnay.getTannins(), expectedTannins6)
        XCTAssertEqual(cheninBlanc.getTannins(), expectedTannins7)
        XCTAssertEqual(gamay.getTannins(), expectedTannins8)
        XCTAssertEqual(gewurztraminer.getTannins(), expectedTannins9)
        XCTAssertEqual(grenache.getTannins(), expectedTannins10)
        XCTAssertEqual(grunerVeltliner.getTannins(), expectedTannins11)
        XCTAssertEqual(malbec.getTannins(), expectedTannins12)
        XCTAssertEqual(merlot.getTannins(), expectedTannins13)
        XCTAssertEqual(nebbiolo.getTannins(), expectedTannins14)
        XCTAssertEqual(petiteSirah.getTannins(), expectedTannins15)
        XCTAssertEqual(pinotGris.getTannins(), expectedTannins16)
        XCTAssertEqual(pinotNoir.getTannins(), expectedTannins17)
        XCTAssertEqual(port.getTannins(), expectedTannins18)
        XCTAssertEqual(redBlend.getTannins(), expectedTannins19)
        XCTAssertEqual(riesling.getTannins(), expectedTannins20)
        XCTAssertEqual(rose.getTannins(), expectedTannins21)
        XCTAssertEqual(sangiovese.getTannins(), expectedTannins22)
        XCTAssertEqual(sauvignonBlanc.getTannins(), expectedTannins23)
        XCTAssertEqual(sparklingBlend.getTannins(), expectedTannins24)
        XCTAssertEqual(syrah.getTannins(), expectedTannins25)
        XCTAssertEqual(tempranillo.getTannins(), expectedTannins26)
        XCTAssertEqual(viognier.getTannins(), expectedTannins27)
        XCTAssertEqual(whiteBlend.getTannins(), expectedTannins28)
        XCTAssertEqual(zinfandel.getTannins(), expectedTannins29)
    }

//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMM - GRAPE - MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

    func testWineGrapeLocalizationEN() {

        let expectedGrapes0 = "Blend of three italian grapes: Corvina, Rondinella, Molinara"
        let expectedGrapes1 = "Italian red grape"
        let expectedGrapes2 = "Blue-black grape, parent to Merlot and Cabernet Sayvignon"
        let expectedGrapes3 = "Small, spherical, black, thick skin"
        let expectedGrapes4 = "Cabernet red wine grape"
        let expectedGrapes5 = "Blend of white wine grapes. Chardonnay, Pinot Noir, Pinot Meunier"
        let expectedGrapes6 = "Green-skinned, sturdy"
        let expectedGrapes7 = "White-gold grape"
        let expectedGrapes8 = "Small, round, purple grape"
        let expectedGrapes9 = "Rose colored grape"
        let expectedGrapes10 = "Dark purple grape"
        let expectedGrapes11 = "Deep-green grape"
        let expectedGrapes12 = "Purple grape with thin skin"
        let expectedGrapes13 = "Dark blue-colored grape"
        let expectedGrapes14 = "Large, purple grape, thick skin"
        let expectedGrapes15 = "Dark-skinned grape"
        let expectedGrapes16 = "Grayish-blue color (Gris)"
        let expectedGrapes17 = "Red-skinned grape"
        let expectedGrapes18 = "Blend of Portugese red grapes."
        let expectedGrapes19 = "Blends of red wine grapes"
        let expectedGrapes20 = "Green-skinned"
        let expectedGrapes21 = "Many grape types, pink color"
        let expectedGrapes22 = "Small, spherical, dark purple skin"
        let expectedGrapes23 = "Green grape, thin skin"
        let expectedGrapes24 = "Blends of white wine grapes"
        let expectedGrapes25 = "Dark-skinned grape"
        let expectedGrapes26 = "Violet-blue grape"
        let expectedGrapes27 = "Green grape"
        let expectedGrapes28 = "Blends of white wine grapes"
        let expectedGrapes29 = "Black-skinned wine grape"


        XCTAssertEqual(amarone.getGrape(), expectedGrapes0)
        XCTAssertEqual(barbera.getGrape(), expectedGrapes1)
        XCTAssertEqual(cabernetFranc.getGrape(), expectedGrapes2)
        XCTAssertEqual(cabernetSauvignon.getGrape(), expectedGrapes3)
        XCTAssertEqual(carmenere.getGrape(), expectedGrapes4)
        XCTAssertEqual(champangeBlend.getGrape(), expectedGrapes5)
        XCTAssertEqual(chardonnay.getGrape(), expectedGrapes6)
        XCTAssertEqual(cheninBlanc.getGrape(), expectedGrapes7)
        XCTAssertEqual(gamay.getGrape(), expectedGrapes8)
        XCTAssertEqual(gewurztraminer.getGrape(), expectedGrapes9)
        XCTAssertEqual(grenache.getGrape(), expectedGrapes10)
        XCTAssertEqual(grunerVeltliner.getGrape(), expectedGrapes11)
        XCTAssertEqual(malbec.getGrape(), expectedGrapes12)
        XCTAssertEqual(merlot.getGrape(), expectedGrapes13)
        XCTAssertEqual(nebbiolo.getGrape(), expectedGrapes14)
        XCTAssertEqual(petiteSirah.getGrape(), expectedGrapes15)
        XCTAssertEqual(pinotGris.getGrape(), expectedGrapes16)
        XCTAssertEqual(pinotNoir.getGrape(), expectedGrapes17)
        XCTAssertEqual(port.getGrape(), expectedGrapes18)
        XCTAssertEqual(redBlend.getGrape(), expectedGrapes19)
        XCTAssertEqual(riesling.getGrape(), expectedGrapes20)
        XCTAssertEqual(rose.getGrape(), expectedGrapes21)
        XCTAssertEqual(sangiovese.getGrape(), expectedGrapes22)
        XCTAssertEqual(sauvignonBlanc.getGrape(), expectedGrapes23)
        XCTAssertEqual(sparklingBlend.getGrape(), expectedGrapes24)
        XCTAssertEqual(syrah.getGrape(), expectedGrapes25)
        XCTAssertEqual(tempranillo.getGrape(), expectedGrapes26)
        XCTAssertEqual(viognier.getGrape(), expectedGrapes27)
        XCTAssertEqual(whiteBlend.getGrape(), expectedGrapes28)
        XCTAssertEqual(zinfandel.getGrape(), expectedGrapes29)
    }


    func testWineGrapeLocalizationES() {

        let expectedGrapes0 = "Mezcla de tres uvas italianas: Corvina, Rondinella, Molinara"
        let expectedGrapes1 = "uva roja italiana"
        let expectedGrapes2 = "Uva azul-negra, padre de Merlot y Cabernet Sayvignon"
        let expectedGrapes3 = "Piel pequeña, esférica, negra, gruesa"
        let expectedGrapes4 = "uva de vino tinto cabernet"
        let expectedGrapes5 = "Coupage de uvas de vino blanco. Chardonnay, Pinot Noir, Pinot Meunier"
        let expectedGrapes6 = "De piel verde, robusto"
        let expectedGrapes7 = "Uva de oro blanco"
        let expectedGrapes8 = "Uva pequeña, redonda, morada"
        let expectedGrapes9 = "Uva de color rosa"
        let expectedGrapes10 = "Uva morada oscura"
        let expectedGrapes11 = "Uva de color verde oscuro"
        let expectedGrapes12 = "Uva morada con piel fina"
        let expectedGrapes13 = "Uva de color azul oscuro"
        let expectedGrapes14 = "Gran uva morada, piel gruesa"
        let expectedGrapes15 = "uva de piel oscura"
        let expectedGrapes16 = "Color azul grisáceo (Gris)"
        let expectedGrapes17 = "uva de piel roja"
        let expectedGrapes18 = "Mezcla de uvas rojas portuguesas."
        let expectedGrapes19 = "Mezclas de uvas de vino tinto"
        let expectedGrapes20 = "Piel verde"
        let expectedGrapes21 = "Muchos tipos de uva, color rosa"
        let expectedGrapes22 = "Piel pequeña, esférica, de color púrpura oscuro"
        let expectedGrapes23 = "Uva verde, piel fina"
        let expectedGrapes24 = "Coupages de uvas de vino blanco"
        let expectedGrapes25 = "uva de piel oscura"
        let expectedGrapes26 = "Uva violeta-azul"
        let expectedGrapes27 = "uva verde"
        let expectedGrapes28 = "Coupages de uvas de vino blanco"
        let expectedGrapes29 = "Uva de vino de piel negra"


        XCTAssertEqual(amarone.getGrape(), expectedGrapes0)
        XCTAssertEqual(barbera.getGrape(), expectedGrapes1)
        XCTAssertEqual(cabernetFranc.getGrape(), expectedGrapes2)
        XCTAssertEqual(cabernetSauvignon.getGrape(), expectedGrapes3)
        XCTAssertEqual(carmenere.getGrape(), expectedGrapes4)
        XCTAssertEqual(champangeBlend.getGrape(), expectedGrapes5)
        XCTAssertEqual(chardonnay.getGrape(), expectedGrapes6)
        XCTAssertEqual(cheninBlanc.getGrape(), expectedGrapes7)
        XCTAssertEqual(gamay.getGrape(), expectedGrapes8)
        XCTAssertEqual(gewurztraminer.getGrape(), expectedGrapes9)
        XCTAssertEqual(grenache.getGrape(), expectedGrapes10)
        XCTAssertEqual(grunerVeltliner.getGrape(), expectedGrapes11)
        XCTAssertEqual(malbec.getGrape(), expectedGrapes12)
        XCTAssertEqual(merlot.getGrape(), expectedGrapes13)
        XCTAssertEqual(nebbiolo.getGrape(), expectedGrapes14)
        XCTAssertEqual(petiteSirah.getGrape(), expectedGrapes15)
        XCTAssertEqual(pinotGris.getGrape(), expectedGrapes16)
        XCTAssertEqual(pinotNoir.getGrape(), expectedGrapes17)
        XCTAssertEqual(port.getGrape(), expectedGrapes18)
        XCTAssertEqual(redBlend.getGrape(), expectedGrapes19)
        XCTAssertEqual(riesling.getGrape(), expectedGrapes20)
        XCTAssertEqual(rose.getGrape(), expectedGrapes21)
        XCTAssertEqual(sangiovese.getGrape(), expectedGrapes22)
        XCTAssertEqual(sauvignonBlanc.getGrape(), expectedGrapes23)
        XCTAssertEqual(sparklingBlend.getGrape(), expectedGrapes24)
        XCTAssertEqual(syrah.getGrape(), expectedGrapes25)
        XCTAssertEqual(tempranillo.getGrape(), expectedGrapes26)
        XCTAssertEqual(viognier.getGrape(), expectedGrapes27)
        XCTAssertEqual(whiteBlend.getGrape(), expectedGrapes28)
        XCTAssertEqual(zinfandel.getGrape(), expectedGrapes29)
    }


    func testWineGrapeLocalizationRU() {

        let expectedGrapes0 = "Купаж трех итальянских сортов винограда: Корвина, Рондинелла, Молинара"
        let expectedGrapes1 = "Итальянский красный виноград"
        let expectedGrapes2 = "Иссиня-черный сорт винограда, родоначальник Мерло и Каберне Сейвиньон"
        let expectedGrapes3 = "Маленький, шаровидный, черный, кожа толстая"
        let expectedGrapes4 = "Каберне красное вино виноградное"
        let expectedGrapes5 = "Купаж белых винных сортов винограда. Шардоне, Пино Нуар, Пино Менье"
        let expectedGrapes6 = "Зеленокожий, крепкий"
        let expectedGrapes7 = "Бело-золотой виноград"
        let expectedGrapes8 = "Маленький, круглый, фиолетовый виноград"
        let expectedGrapes9 = "Розовый виноград"
        let expectedGrapes10 = "Темно-фиолетовый виноград"
        let expectedGrapes11 = "Темно-зеленый виноград"
        let expectedGrapes12 = "Фиолетовый виноград с тонкой кожицей"
        let expectedGrapes13 = "Виноград темно-синего цвета"
        let expectedGrapes14 = "Большой фиолетовый виноград, толстая кожица"
        let expectedGrapes15 = "Смуглый виноград"
        let expectedGrapes16 = "Серовато-голубой цвет (Гри)"
        let expectedGrapes17 = "Виноград с красной кожицей"
        let expectedGrapes18 = "Купаж португальских красных сортов винограда"
        let expectedGrapes19 = "Купажи красных винных сортов винограда"
        let expectedGrapes20 = "Зеленокожий"
        let expectedGrapes21 = "Много сортов винограда, розовый цвет"
        let expectedGrapes22 = "Маленькая, сферическая, темно-фиолетовая кожа"
        let expectedGrapes23 = "Зеленый виноград, тонкая кожица"
        let expectedGrapes24 = "Купажи белых винных сортов винограда"
        let expectedGrapes25 = "Смуглый виноград"
        let expectedGrapes26 = "Фиолетово-синий виноград"
        let expectedGrapes27 = "Зеленый виноград"
        let expectedGrapes28 = "Купажи белых винных сортов винограда"
        let expectedGrapes29 = "Чернокожий винный виноград"


        XCTAssertEqual(amarone.getGrape(), expectedGrapes0)
        XCTAssertEqual(barbera.getGrape(), expectedGrapes1)
        XCTAssertEqual(cabernetFranc.getGrape(), expectedGrapes2)
        XCTAssertEqual(cabernetSauvignon.getGrape(), expectedGrapes3)
        XCTAssertEqual(carmenere.getGrape(), expectedGrapes4)
        XCTAssertEqual(champangeBlend.getGrape(), expectedGrapes5)
        XCTAssertEqual(chardonnay.getGrape(), expectedGrapes6)
        XCTAssertEqual(cheninBlanc.getGrape(), expectedGrapes7)
        XCTAssertEqual(gamay.getGrape(), expectedGrapes8)
        XCTAssertEqual(gewurztraminer.getGrape(), expectedGrapes9)
        XCTAssertEqual(grenache.getGrape(), expectedGrapes10)
        XCTAssertEqual(grunerVeltliner.getGrape(), expectedGrapes11)
        XCTAssertEqual(malbec.getGrape(), expectedGrapes12)
        XCTAssertEqual(merlot.getGrape(), expectedGrapes13)
        XCTAssertEqual(nebbiolo.getGrape(), expectedGrapes14)
        XCTAssertEqual(petiteSirah.getGrape(), expectedGrapes15)
        XCTAssertEqual(pinotGris.getGrape(), expectedGrapes16)
        XCTAssertEqual(pinotNoir.getGrape(), expectedGrapes17)
        XCTAssertEqual(port.getGrape(), expectedGrapes18)
        XCTAssertEqual(redBlend.getGrape(), expectedGrapes19)
        XCTAssertEqual(riesling.getGrape(), expectedGrapes20)
        XCTAssertEqual(rose.getGrape(), expectedGrapes21)
        XCTAssertEqual(sangiovese.getGrape(), expectedGrapes22)
        XCTAssertEqual(sauvignonBlanc.getGrape(), expectedGrapes23)
        XCTAssertEqual(sparklingBlend.getGrape(), expectedGrapes24)
        XCTAssertEqual(syrah.getGrape(), expectedGrapes25)
        XCTAssertEqual(tempranillo.getGrape(), expectedGrapes26)
        XCTAssertEqual(viognier.getGrape(), expectedGrapes27)
        XCTAssertEqual(whiteBlend.getGrape(), expectedGrapes28)
        XCTAssertEqual(zinfandel.getGrape(), expectedGrapes29)
    }


    func testWineGrapeLocalizationDE() {

        let expectedGrapes0 = "Mischung aus drei italienischen Trauben: Corvina, Rondinella, Molinara"
        let expectedGrapes1 = "Italienische rote Traube"
        let expectedGrapes2 = "Blau-schwarze Traube, Elternteil von Merlot und Cabernet Sayvignon"
        let expectedGrapes3 = "Kleine, kugelige, schwarze, dicke Haut"
        let expectedGrapes4 = "Cabernet-Rotweintraube"
        let expectedGrapes5 = "Blend aus Weißweintrauben. Chardonnay, Pinot Noir, Pinot Meunier"
        let expectedGrapes6 = "Grünhäutig, robust"
        let expectedGrapes7 = "Weißgoldtraube"
        let expectedGrapes8 = "Kleine, runde, lila Traube"
        let expectedGrapes9 = "Rosafarbene Traube"
        let expectedGrapes10 = "Dunkelviolette Traube"
        let expectedGrapes11 = "Tiefgrüne Traube"
        let expectedGrapes12 = "Lila Traube mit dünner Haut"
        let expectedGrapes13 = "Dunkelblaue Traube"
        let expectedGrapes14 = "Große, lila Traube, dicke Haut"
        let expectedGrapes15 = "Dunkelhäutige Traube"
        let expectedGrapes16 = "Graublaue Farbe (Gris)"
        let expectedGrapes17 = "Rothäutige Traube"
        let expectedGrapes18 = "Mischung aus portugiesischen roten Trauben."
        let expectedGrapes19 = "Mischungen aus Rotweintrauben"
        let expectedGrapes20 = "Grünhäutig"
        let expectedGrapes21 = "Viele Rebsorten, rosa Farbe"
        let expectedGrapes22 = "Kleine, kugelige, dunkelviolette Haut"
        let expectedGrapes23 = "Grüne Traube, dünne Haut"
        let expectedGrapes24 = "Mischungen aus Weißweintrauben"
        let expectedGrapes25 = "Dunkelhäutige Traube"
        let expectedGrapes26 = "Violettblaue Traube"
        let expectedGrapes27 = "Grüne Traube"
        let expectedGrapes28 = "Mischungen aus Weißweintrauben"
        let expectedGrapes29 = "Schwarzhäutige Weintraube"


        XCTAssertEqual(amarone.getGrape(), expectedGrapes0)
        XCTAssertEqual(barbera.getGrape(), expectedGrapes1)
        XCTAssertEqual(cabernetFranc.getGrape(), expectedGrapes2)
        XCTAssertEqual(cabernetSauvignon.getGrape(), expectedGrapes3)
        XCTAssertEqual(carmenere.getGrape(), expectedGrapes4)
        XCTAssertEqual(champangeBlend.getGrape(), expectedGrapes5)
        XCTAssertEqual(chardonnay.getGrape(), expectedGrapes6)
        XCTAssertEqual(cheninBlanc.getGrape(), expectedGrapes7)
        XCTAssertEqual(gamay.getGrape(), expectedGrapes8)
        XCTAssertEqual(gewurztraminer.getGrape(), expectedGrapes9)
        XCTAssertEqual(grenache.getGrape(), expectedGrapes10)
        XCTAssertEqual(grunerVeltliner.getGrape(), expectedGrapes11)
        XCTAssertEqual(malbec.getGrape(), expectedGrapes12)
        XCTAssertEqual(merlot.getGrape(), expectedGrapes13)
        XCTAssertEqual(nebbiolo.getGrape(), expectedGrapes14)
        XCTAssertEqual(petiteSirah.getGrape(), expectedGrapes15)
        XCTAssertEqual(pinotGris.getGrape(), expectedGrapes16)
        XCTAssertEqual(pinotNoir.getGrape(), expectedGrapes17)
        XCTAssertEqual(port.getGrape(), expectedGrapes18)
        XCTAssertEqual(redBlend.getGrape(), expectedGrapes19)
        XCTAssertEqual(riesling.getGrape(), expectedGrapes20)
        XCTAssertEqual(rose.getGrape(), expectedGrapes21)
        XCTAssertEqual(sangiovese.getGrape(), expectedGrapes22)
        XCTAssertEqual(sauvignonBlanc.getGrape(), expectedGrapes23)
        XCTAssertEqual(sparklingBlend.getGrape(), expectedGrapes24)
        XCTAssertEqual(syrah.getGrape(), expectedGrapes25)
        XCTAssertEqual(tempranillo.getGrape(), expectedGrapes26)
        XCTAssertEqual(viognier.getGrape(), expectedGrapes27)
        XCTAssertEqual(whiteBlend.getGrape(), expectedGrapes28)
        XCTAssertEqual(zinfandel.getGrape(), expectedGrapes29)
    }


    func testWineGrapeLocalizationFR() {

        let expectedGrapes0 = "Mélange de trois cépages italiens: Corvina, Rondinella, Molinara"
        let expectedGrapes1 = "Raisin rouge italien"
        let expectedGrapes2 = "Cépage bleu-noir, parent du Merlot et du Cabernet Sayvignon"
        let expectedGrapes3 = "Peau petite, sphérique, noire, épaisse"
        let expectedGrapes4 = "Cépage Cabernet rouge"
        let expectedGrapes5 = "Assemblage de cépages blancs. Chardonnay, Pinot Noir, Pinot Meunier"
        let expectedGrapes6 = "A la peau verte, robuste"
        let expectedGrapes7 = "Raisin d'or blanc"
        let expectedGrapes8 = "Petit raisin rond et violet"
        let expectedGrapes9 = "Raisin rose"
        let expectedGrapes10 = "Raisin violet foncé"
        let expectedGrapes11 = "Raisin vert foncé"
        let expectedGrapes12 = "Raisin violet à peau fine"
        let expectedGrapes13 = "Raisin de couleur bleu foncé"
        let expectedGrapes14 = "Gros raisin violet, peau épaisse"
        let expectedGrapes15 = "Raisin à peau foncée"
        let expectedGrapes16 = "Couleur bleu grisâtre (Gris)"
        let expectedGrapes17 = "Raisin à peau rouge"
        let expectedGrapes18 = "Mélange de raisins rouges portugais."
        let expectedGrapes19 = "Assemblages de raisins rouges"
        let expectedGrapes20 = "A la peau verte"
        let expectedGrapes21 = "Beaucoup de cépages, couleur rose"
        let expectedGrapes22 = "Peau petite, sphérique, violet foncé"
        let expectedGrapes23 = "Raisin vert, peau fine"
        let expectedGrapes24 = "Assemblages de cépages blancs"
        let expectedGrapes25 = "Raisin à peau foncée"
        let expectedGrapes26 = "Raisin violet-bleu"
        let expectedGrapes27 = "Raisin vert"
        let expectedGrapes28 = "Assemblages de cépages blancs"
        let expectedGrapes29 = "Raisin de cuve à peau noire"


        XCTAssertEqual(amarone.getGrape(), expectedGrapes0)
        XCTAssertEqual(barbera.getGrape(), expectedGrapes1)
        XCTAssertEqual(cabernetFranc.getGrape(), expectedGrapes2)
        XCTAssertEqual(cabernetSauvignon.getGrape(), expectedGrapes3)
        XCTAssertEqual(carmenere.getGrape(), expectedGrapes4)
        XCTAssertEqual(champangeBlend.getGrape(), expectedGrapes5)
        XCTAssertEqual(chardonnay.getGrape(), expectedGrapes6)
        XCTAssertEqual(cheninBlanc.getGrape(), expectedGrapes7)
        XCTAssertEqual(gamay.getGrape(), expectedGrapes8)
        XCTAssertEqual(gewurztraminer.getGrape(), expectedGrapes9)
        XCTAssertEqual(grenache.getGrape(), expectedGrapes10)
        XCTAssertEqual(grunerVeltliner.getGrape(), expectedGrapes11)
        XCTAssertEqual(malbec.getGrape(), expectedGrapes12)
        XCTAssertEqual(merlot.getGrape(), expectedGrapes13)
        XCTAssertEqual(nebbiolo.getGrape(), expectedGrapes14)
        XCTAssertEqual(petiteSirah.getGrape(), expectedGrapes15)
        XCTAssertEqual(pinotGris.getGrape(), expectedGrapes16)
        XCTAssertEqual(pinotNoir.getGrape(), expectedGrapes17)
        XCTAssertEqual(port.getGrape(), expectedGrapes18)
        XCTAssertEqual(redBlend.getGrape(), expectedGrapes19)
        XCTAssertEqual(riesling.getGrape(), expectedGrapes20)
        XCTAssertEqual(rose.getGrape(), expectedGrapes21)
        XCTAssertEqual(sangiovese.getGrape(), expectedGrapes22)
        XCTAssertEqual(sauvignonBlanc.getGrape(), expectedGrapes23)
        XCTAssertEqual(sparklingBlend.getGrape(), expectedGrapes24)
        XCTAssertEqual(syrah.getGrape(), expectedGrapes25)
        XCTAssertEqual(tempranillo.getGrape(), expectedGrapes26)
        XCTAssertEqual(viognier.getGrape(), expectedGrapes27)
        XCTAssertEqual(whiteBlend.getGrape(), expectedGrapes28)
        XCTAssertEqual(zinfandel.getGrape(), expectedGrapes29)
    }

//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMM - REGION - MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    
    func testWineRegionLocalizationEN() {

        let expectedRegions0 = "Italy"
        let expectedRegions1 = "Montferrat (Italy), California, Australia, Argentina"
        let expectedRegions2 = "Bordeaux, Loire, Canada"
        let expectedRegions3 = "Bordeaux, Tuscany, Santa Cruz Mountains, Napa Valley, Sonoma County, Australia, Margaret River, South Africa, Friuli, British Columbia, Canada"
        let expectedRegions4 = "Chile, Italy, Washington, California, North Carolina"
        let expectedRegions5 = "Champagne Region, France"
        let expectedRegions6 = "Australia, Italy, California, New Zealand, worldwide"
        let expectedRegions7 = "Loire Valley, France, South Africa"
        let expectedRegions8 = "Beaujolais, Loire Valley, Niagara Peninsula, Willamette Valley"
        let expectedRegions9 = "Alsace, Germany, Northeast Italy, New Zealand, Switzerland, USA, Canada, Southern Australia"
        let expectedRegions10 = "Aragon, Alella, Priorat, Roussillon, Rhône, Sardinia, Rioja"
        let expectedRegions11 = "Lower Austria, Burgenland, Slovakia, Moravia"
        let expectedRegions12 = "Cahors, Argentina, Chile"
        let expectedRegions13 = "Bordeaux, Long Island, Sonoma County, Chilean Central Valley, Napa Valley, Romania, Australia, Hungary"
        let expectedRegions14 = "Piedmont, Italy"
        let expectedRegions15 = "Australia, California, France, Israel"
        let expectedRegions16 = "Italy, California, Oregon, and Germany"
        let expectedRegions17 = "Burgundy, Santa Cruz Mountains, Russian River Valley, Willamette Valley, Marlborough, Martinbourough, Australia, Romania"
        let expectedRegions18 = "Douro River Valley , Portugal"
        let expectedRegions19 = "California"
        let expectedRegions20 = "Germany, California, Alsace (France), Finger Lakes (NY), Washington State, Australia/New Zealand"
        let expectedRegions21 = "Rhone Valley, Tavel, Provence, Navarra, Australia, California"
        let expectedRegions22 = "Italy, Tuscany, Washington State"
        let expectedRegions23 = "South Africa, Chile, New Zealand, California, Iran, Loire Valley, Bordeaux, Ukraine"
        let expectedRegions24 = "Sonoma, Champagne, Germany, Austria"
        let expectedRegions25 = "France, Australia, South America, California"
        let expectedRegions26 = "Spain, Portugal, Rioja"
        let expectedRegions27 = "Croatia, France, Rhone Valley"
        let expectedRegions28 = "Worldwide"
        let expectedRegions29 = "California, US and Puglia, Italy"


        XCTAssertEqual(amarone.getNotableRegions(), expectedRegions0)
        XCTAssertEqual(barbera.getNotableRegions(), expectedRegions1)
        XCTAssertEqual(cabernetFranc.getNotableRegions(), expectedRegions2)
        XCTAssertEqual(cabernetSauvignon.getNotableRegions(), expectedRegions3)
        XCTAssertEqual(carmenere.getNotableRegions(), expectedRegions4)
        XCTAssertEqual(champangeBlend.getNotableRegions(), expectedRegions5)
        XCTAssertEqual(chardonnay.getNotableRegions(), expectedRegions6)
        XCTAssertEqual(cheninBlanc.getNotableRegions(), expectedRegions7)
        XCTAssertEqual(gamay.getNotableRegions(), expectedRegions8)
        XCTAssertEqual(gewurztraminer.getNotableRegions(), expectedRegions9)
        XCTAssertEqual(grenache.getNotableRegions(), expectedRegions10)
        XCTAssertEqual(grunerVeltliner.getNotableRegions(), expectedRegions11)
        XCTAssertEqual(malbec.getNotableRegions(), expectedRegions12)
        XCTAssertEqual(merlot.getNotableRegions(), expectedRegions13)
        XCTAssertEqual(nebbiolo.getNotableRegions(), expectedRegions14)
        XCTAssertEqual(petiteSirah.getNotableRegions(), expectedRegions15)
        XCTAssertEqual(pinotGris.getNotableRegions(), expectedRegions16)
        XCTAssertEqual(pinotNoir.getNotableRegions(), expectedRegions17)
        XCTAssertEqual(port.getNotableRegions(), expectedRegions18)
        XCTAssertEqual(redBlend.getNotableRegions(), expectedRegions19)
        XCTAssertEqual(riesling.getNotableRegions(), expectedRegions20)
        XCTAssertEqual(rose.getNotableRegions(), expectedRegions21)
        XCTAssertEqual(sangiovese.getNotableRegions(), expectedRegions22)
        XCTAssertEqual(sauvignonBlanc.getNotableRegions(), expectedRegions23)
        XCTAssertEqual(sparklingBlend.getNotableRegions(), expectedRegions24)
        XCTAssertEqual(syrah.getNotableRegions(), expectedRegions25)
        XCTAssertEqual(tempranillo.getNotableRegions(), expectedRegions26)
        XCTAssertEqual(viognier.getNotableRegions(), expectedRegions27)
        XCTAssertEqual(whiteBlend.getNotableRegions(), expectedRegions28)
        XCTAssertEqual(zinfandel.getNotableRegions(), expectedRegions29)
    }


    func testWineRegionLocalizationES() {

        let expectedRegions0 = "Italia"
        let expectedRegions1 = "Montferrat (Italia), California, Australia, Argentina"
        let expectedRegions2 = "Burdeos, Loira, Canadá"
        let expectedRegions3 = "Burdeos, Toscana, Montañas de Santa Cruz, Valle de Napa, Condado de Sonoma, Australia, Río Margaret, Sudáfrica, Friuli, Columbia Británica, Canadá"
        let expectedRegions4 = "Chile, Italia, Washington, California, Carolina del Norte"
        let expectedRegions5 = "Región de Champaña, Francia"
        let expectedRegions6 = "Australia, Italia, California, Nueva Zelanda, en todo el mundo"
        let expectedRegions7 = "Valle del Loira, Francia, Sudáfrica"
        let expectedRegions8 = "Beaujolais, Valle del Loira, Península de Niágara, Valle de Willamette"
        let expectedRegions9 = "Alsacia, Alemania, noreste de Italia, Nueva Zelanda, Suiza, EE. UU., Canadá, sur de Australia"
        let expectedRegions10 = "Aragón, Alella, Priorat, Rosellón, Ródano, Cerdeña, Rioja"
        let expectedRegions11 = "Baja Austria, Burgenland, Eslovaquia, Moravia"
        let expectedRegions12 = "Cahors, Argentina, Chile"
        let expectedRegions13 = "Burdeos, Long Island, Condado de Sonoma, Valle Central de Chile, Valle de Napa, Rumania, Australia, Hungría"
        let expectedRegions14 = "Piamonte, Italia"
        let expectedRegions15 = "Australia, California, Francia, Israel"
        let expectedRegions16 = "Italia, California, Oregón y Alemania"
        let expectedRegions17 = "Borgoña, Montañas de Santa Cruz, Russian River Valley, Willamette Valley, Marlborough, Martinbourough, Australia, Rumania"
        let expectedRegions18 = "Valle del río Duero, Portugal"
        let expectedRegions19 = "California"
        let expectedRegions20 = "Alemania, California, Alsacia (Francia), Finger Lakes (NY), Estado de Washington, Australia/Nueva Zelanda"
        let expectedRegions21 = "Valle del Ródano, Tavel, Provenza, Navarra, Australia, California"
        let expectedRegions22 = "Italia, Toscana, Estado de Washington"
        let expectedRegions23 = "Sudáfrica, Chile, Nueva Zelanda, California, Irán, Valle del Loira, Burdeos, Ucrania"
        let expectedRegions24 = "Sonoma, Champaña, Alemania, Austria"
        let expectedRegions25 = "Francia, Australia, América del Sur, California"
        let expectedRegions26 = "España, Portugal, La Rioja"
        let expectedRegions27 = "Croacia, Francia, Valle del Ródano"
        let expectedRegions28 = "En todo el mundo"
        let expectedRegions29 = "California, Estados Unidos y Puglia, Italia"


        XCTAssertEqual(amarone.getNotableRegions(), expectedRegions0)
        XCTAssertEqual(barbera.getNotableRegions(), expectedRegions1)
        XCTAssertEqual(cabernetFranc.getNotableRegions(), expectedRegions2)
        XCTAssertEqual(cabernetSauvignon.getNotableRegions(), expectedRegions3)
        XCTAssertEqual(carmenere.getNotableRegions(), expectedRegions4)
        XCTAssertEqual(champangeBlend.getNotableRegions(), expectedRegions5)
        XCTAssertEqual(chardonnay.getNotableRegions(), expectedRegions6)
        XCTAssertEqual(cheninBlanc.getNotableRegions(), expectedRegions7)
        XCTAssertEqual(gamay.getNotableRegions(), expectedRegions8)
        XCTAssertEqual(gewurztraminer.getNotableRegions(), expectedRegions9)
        XCTAssertEqual(grenache.getNotableRegions(), expectedRegions10)
        XCTAssertEqual(grunerVeltliner.getNotableRegions(), expectedRegions11)
        XCTAssertEqual(malbec.getNotableRegions(), expectedRegions12)
        XCTAssertEqual(merlot.getNotableRegions(), expectedRegions13)
        XCTAssertEqual(nebbiolo.getNotableRegions(), expectedRegions14)
        XCTAssertEqual(petiteSirah.getNotableRegions(), expectedRegions15)
        XCTAssertEqual(pinotGris.getNotableRegions(), expectedRegions16)
        XCTAssertEqual(pinotNoir.getNotableRegions(), expectedRegions17)
        XCTAssertEqual(port.getNotableRegions(), expectedRegions18)
        XCTAssertEqual(redBlend.getNotableRegions(), expectedRegions19)
        XCTAssertEqual(riesling.getNotableRegions(), expectedRegions20)
        XCTAssertEqual(rose.getNotableRegions(), expectedRegions21)
        XCTAssertEqual(sangiovese.getNotableRegions(), expectedRegions22)
        XCTAssertEqual(sauvignonBlanc.getNotableRegions(), expectedRegions23)
        XCTAssertEqual(sparklingBlend.getNotableRegions(), expectedRegions24)
        XCTAssertEqual(syrah.getNotableRegions(), expectedRegions25)
        XCTAssertEqual(tempranillo.getNotableRegions(), expectedRegions26)
        XCTAssertEqual(viognier.getNotableRegions(), expectedRegions27)
        XCTAssertEqual(whiteBlend.getNotableRegions(), expectedRegions28)
        XCTAssertEqual(zinfandel.getNotableRegions(), expectedRegions29)
    }


    func testWineRegionLocalizationRU() {

        let expectedRegions0 = "Италия"
        let expectedRegions1 = "Монферрат (Италия), Калифорния, Австралия, Аргентина"
        let expectedRegions2 = "Бордо, Луара, Канада"
        let expectedRegions3 = "Бордо, Тоскана, горы Санта-Крус, долина Напа, графство Сонома, Австралия, река Маргарет, Южная Африка, Фриули, Британская Колумбия, Канада"
        let expectedRegions4 = "Чили, Италия, Вашингтон, Калифорния, Северная Каролина"
        let expectedRegions5 = "Регион Шампань, Франция"
        let expectedRegions6 = "Австралия, Италия, Калифорния, Новая Зеландия, по всему миру"
        let expectedRegions7 = "Долина Луары, Франция, ЮАР"
        let expectedRegions8 = "Божоле, долина Луары, полуостров Ниагара, долина Уилламетт"
        let expectedRegions9 = "Эльзас, Германия, Северо-Восточная Италия, Новая Зеландия, Швейцария, США, Канада, Южная Австралия"
        let expectedRegions10 = "Арагон, Алелья, Приорат, Руссильон, Рона, Сардиния, Риоха"
        let expectedRegions11 = "Нижняя Австрия, Бургенланд, Словакия, Моравия"
        let expectedRegions12 = "Каор, Аргентина, Чили"
        let expectedRegions13 = "Бордо, Лонг-Айленд, графство Сонома, Центральная долина Чили, долина Напа, Румыния, Австралия, Венгрия"
        let expectedRegions14 = "Пьемонт, Италия"
        let expectedRegions15 = "Австралия, Калифорния, Франция, Израиль"
        let expectedRegions16 = "Италия, Калифорния, Орегон и Германия"
        let expectedRegions17 = "Бургундия, горы Санта-Крус, долина Русской реки, долина Уилламетт, Мальборо, Мартинборо, Австралия, Румыния"
        let expectedRegions18 = "Долина реки Дору, Португалия"
        let expectedRegions19 = "Калифорния"
        let expectedRegions20 = "Германия, Калифорния, Эльзас (Франция), Фингер-Лейкс (Нью-Йорк), штат Вашингтон, Австралия/Новая Зеландия"
        let expectedRegions21 = "Долина Роны, Тавель, Прованс, Наварра, Австралия, Калифорния"
        let expectedRegions22 = "Италия, Тоскана, штат Вашингтон"
        let expectedRegions23 = "ЮАР, Чили, Новая Зеландия, Калифорния, Иран, Долина Луары, Бордо, Украина"
        let expectedRegions24 = "Сонома, Шампань, Германия, Австрия"
        let expectedRegions25 = "Франция, Австралия, Южная Америка, Калифорния"
        let expectedRegions26 = "Испания, Португалия, Риоха"
        let expectedRegions27 = "Хорватия, Франция, Долина Роны"
        let expectedRegions28 = "Мировой"
        let expectedRegions29 = "Калифорния, США и Апулия, Италия"


        XCTAssertEqual(amarone.getNotableRegions(), expectedRegions0)
        XCTAssertEqual(barbera.getNotableRegions(), expectedRegions1)
        XCTAssertEqual(cabernetFranc.getNotableRegions(), expectedRegions2)
        XCTAssertEqual(cabernetSauvignon.getNotableRegions(), expectedRegions3)
        XCTAssertEqual(carmenere.getNotableRegions(), expectedRegions4)
        XCTAssertEqual(champangeBlend.getNotableRegions(), expectedRegions5)
        XCTAssertEqual(chardonnay.getNotableRegions(), expectedRegions6)
        XCTAssertEqual(cheninBlanc.getNotableRegions(), expectedRegions7)
        XCTAssertEqual(gamay.getNotableRegions(), expectedRegions8)
        XCTAssertEqual(gewurztraminer.getNotableRegions(), expectedRegions9)
        XCTAssertEqual(grenache.getNotableRegions(), expectedRegions10)
        XCTAssertEqual(grunerVeltliner.getNotableRegions(), expectedRegions11)
        XCTAssertEqual(malbec.getNotableRegions(), expectedRegions12)
        XCTAssertEqual(merlot.getNotableRegions(), expectedRegions13)
        XCTAssertEqual(nebbiolo.getNotableRegions(), expectedRegions14)
        XCTAssertEqual(petiteSirah.getNotableRegions(), expectedRegions15)
        XCTAssertEqual(pinotGris.getNotableRegions(), expectedRegions16)
        XCTAssertEqual(pinotNoir.getNotableRegions(), expectedRegions17)
        XCTAssertEqual(port.getNotableRegions(), expectedRegions18)
        XCTAssertEqual(redBlend.getNotableRegions(), expectedRegions19)
        XCTAssertEqual(riesling.getNotableRegions(), expectedRegions20)
        XCTAssertEqual(rose.getNotableRegions(), expectedRegions21)
        XCTAssertEqual(sangiovese.getNotableRegions(), expectedRegions22)
        XCTAssertEqual(sauvignonBlanc.getNotableRegions(), expectedRegions23)
        XCTAssertEqual(sparklingBlend.getNotableRegions(), expectedRegions24)
        XCTAssertEqual(syrah.getNotableRegions(), expectedRegions25)
        XCTAssertEqual(tempranillo.getNotableRegions(), expectedRegions26)
        XCTAssertEqual(viognier.getNotableRegions(), expectedRegions27)
        XCTAssertEqual(whiteBlend.getNotableRegions(), expectedRegions28)
        XCTAssertEqual(zinfandel.getNotableRegions(), expectedRegions29)
    }


    func testWineRegionLocalizationDE() {

        let expectedRegions0 = "Italien"
        let expectedRegions1 = "Montferrat (Italien), Kalifornien, Australien, Argentinien"
        let expectedRegions2 = "Bordeaux, Loire, Kanada"
        let expectedRegions3 = "Bordeaux, Toskana, Santa Cruz Mountains, Napa Valley, Sonoma County, Australien, Margaret River, Südafrika, Friaul, British Columbia, Kanada"
        let expectedRegions4 = "Chile, Italien, Washington, Kalifornien, North Carolina"
        let expectedRegions5 = "Champagne-Region, Frankreich"
        let expectedRegions6 = "Australien, Italien, Kalifornien, Neuseeland, weltweit"
        let expectedRegions7 = "Loiretal, Frankreich, Südafrika"
        let expectedRegions8 = "Beaujolais, Loire-Tal, Niagara-Halbinsel, Willamette-Tal"
        let expectedRegions9 = "Elsass, Deutschland, Nordostitalien, Neuseeland, Schweiz, USA, Kanada, Südaustralien"
        let expectedRegions10 = "Aragon, Alella, Priorat, Roussillon, Rhône, Sardinien, Rioja"
        let expectedRegions11 = "Niederösterreich, Burgenland, Slowakei, Mähren"
        let expectedRegions12 = "Cahors, Argentinien, Chile"
        let expectedRegions13 = "Bordeaux, Long Island, Sonoma County, chilenisches Central Valley, Napa Valley, Rumänien, Australien, Ungarn"
        let expectedRegions14 = "Piemont, Italien"
        let expectedRegions15 = "Australien, Kalifornien, Frankreich, Israel"
        let expectedRegions16 = "Italien, Kalifornien, Oregon und Deutschland"
        let expectedRegions17 = "Burgund, Santa Cruz Mountains, Russian River Valley, Willamette Valley, Marlborough, Martinbourough, Australien, Rumänien"
        let expectedRegions18 = "Flusstal des Douro, Portugal"
        let expectedRegions19 = "Kalifornien"
        let expectedRegions20 = "Deutschland, Kalifornien, Elsass (Frankreich), Finger Lakes (NY), Washington State, Australien/Neuseeland"
        let expectedRegions21 = "Rhonetal, Tavel, Provence, Navarra, Australien, Kalifornien"
        let expectedRegions22 = "Italien, Toskana, Staat Washington"
        let expectedRegions23 = "Südafrika, Chile, Neuseeland, Kalifornien, Iran, Loiretal, Bordeaux, Ukraine"
        let expectedRegions24 = "Sonoma, Champagne, Deutschland, Österreich"
        let expectedRegions25 = "Frankreich, Australien, Südamerika, Kalifornien"
        let expectedRegions26 = "Spanien, Portugal, Rioja"
        let expectedRegions27 = "Kroatien, Frankreich, Rhonetal"
        let expectedRegions28 = "Weltweit"
        let expectedRegions29 = "Kalifornien, USA und Apulien, Italien"


        XCTAssertEqual(amarone.getNotableRegions(), expectedRegions0)
        XCTAssertEqual(barbera.getNotableRegions(), expectedRegions1)
        XCTAssertEqual(cabernetFranc.getNotableRegions(), expectedRegions2)
        XCTAssertEqual(cabernetSauvignon.getNotableRegions(), expectedRegions3)
        XCTAssertEqual(carmenere.getNotableRegions(), expectedRegions4)
        XCTAssertEqual(champangeBlend.getNotableRegions(), expectedRegions5)
        XCTAssertEqual(chardonnay.getNotableRegions(), expectedRegions6)
        XCTAssertEqual(cheninBlanc.getNotableRegions(), expectedRegions7)
        XCTAssertEqual(gamay.getNotableRegions(), expectedRegions8)
        XCTAssertEqual(gewurztraminer.getNotableRegions(), expectedRegions9)
        XCTAssertEqual(grenache.getNotableRegions(), expectedRegions10)
        XCTAssertEqual(grunerVeltliner.getNotableRegions(), expectedRegions11)
        XCTAssertEqual(malbec.getNotableRegions(), expectedRegions12)
        XCTAssertEqual(merlot.getNotableRegions(), expectedRegions13)
        XCTAssertEqual(nebbiolo.getNotableRegions(), expectedRegions14)
        XCTAssertEqual(petiteSirah.getNotableRegions(), expectedRegions15)
        XCTAssertEqual(pinotGris.getNotableRegions(), expectedRegions16)
        XCTAssertEqual(pinotNoir.getNotableRegions(), expectedRegions17)
        XCTAssertEqual(port.getNotableRegions(), expectedRegions18)
        XCTAssertEqual(redBlend.getNotableRegions(), expectedRegions19)
        XCTAssertEqual(riesling.getNotableRegions(), expectedRegions20)
        XCTAssertEqual(rose.getNotableRegions(), expectedRegions21)
        XCTAssertEqual(sangiovese.getNotableRegions(), expectedRegions22)
        XCTAssertEqual(sauvignonBlanc.getNotableRegions(), expectedRegions23)
        XCTAssertEqual(sparklingBlend.getNotableRegions(), expectedRegions24)
        XCTAssertEqual(syrah.getNotableRegions(), expectedRegions25)
        XCTAssertEqual(tempranillo.getNotableRegions(), expectedRegions26)
        XCTAssertEqual(viognier.getNotableRegions(), expectedRegions27)
        XCTAssertEqual(whiteBlend.getNotableRegions(), expectedRegions28)
        XCTAssertEqual(zinfandel.getNotableRegions(), expectedRegions29)
    }


    func testWineRegionLocalizationFR() {

        let expectedRegions0 = "Italie"
        let expectedRegions1 = "Montferrat (Italie), Californie, Australie, Argentine"
        let expectedRegions2 = "Bordeaux, Loire, Canada"
        let expectedRegions3 = "Bordeaux, Toscane, Montagnes de Santa Cruz, Napa Valley, Comté de Sonoma, Australie, Margaret River, Afrique du Sud, Frioul, Colombie-Britannique, Canada"
        let expectedRegions4 = "Chili, Italie, Washington, Californie, Caroline du Nord"
        let expectedRegions5 = "Région Champagne, France"
        let expectedRegions6 = "Australie, Italie, Californie, Nouvelle-Zélande, monde entier"
        let expectedRegions7 = "Vallée de la Loire, France, Afrique du Sud"
        let expectedRegions8 = "Beaujolais, Vallée de la Loire, Péninsule du Niagara, Vallée de la Willamette"
        let expectedRegions9 = "Alsace, Allemagne, Italie du Nord-Est, Nouvelle-Zélande, Suisse, USA, Canada, Australie-Méridionale"
        let expectedRegions10 = "Aragon, Alella, Priorat, Roussillon, Rhône, Sardaigne, Rioja"
        let expectedRegions11 = "Basse-Autriche, Burgenland, Slovaquie, Moravie"
        let expectedRegions12 = "Cahors, Argentine, Chili"
        let expectedRegions13 = "Bordeaux, Long Island, Comté de Sonoma, Vallée centrale chilienne, Napa Valley, Roumanie, Australie, Hongrie"
        let expectedRegions14 = "Piémont, Italie"
        let expectedRegions15 = "Australie, Californie, France, Israël"
        let expectedRegions16 = "Italie, Californie, Oregon et Allemagne"
        let expectedRegions17 = "Bourgogne, montagnes de Santa Cruz, vallée de la rivière russe, vallée de la Willamette, Marlborough, Martinbourough, Australie, Roumanie"
        let expectedRegions18 = "Vallée du fleuve Douro, Portugal"
        let expectedRegions19 = "Californie"
        let expectedRegions20 = "Allemagne, Californie, Alsace (France), Finger Lakes (NY), État de Washington, Australie/Nouvelle-Zélande"
        let expectedRegions21 = "Vallée du Rhône, Tavel, Provence, Navarre, Australie, Californie"
        let expectedRegions22 = "Italie, Toscane, État de Washington"
        let expectedRegions23 = "Afrique du Sud, Chili, Nouvelle-Zélande, Californie, Iran, Val de Loire, Bordeaux, Ukraine"
        let expectedRegions24 = "Sonoma, Champagne, Allemagne, Autriche"
        let expectedRegions25 = "France, Australie, Amérique du Sud, Californie"
        let expectedRegions26 = "Espagne, Portugal, Rioja"
        let expectedRegions27 = "Croatie, France, Vallée du Rhône"
        let expectedRegions28 = "À l'échelle mondiale"
        let expectedRegions29 = "Californie, États-Unis et Pouilles, Italie"


        XCTAssertEqual(amarone.getNotableRegions(), expectedRegions0)
        XCTAssertEqual(barbera.getNotableRegions(), expectedRegions1)
        XCTAssertEqual(cabernetFranc.getNotableRegions(), expectedRegions2)
        XCTAssertEqual(cabernetSauvignon.getNotableRegions(), expectedRegions3)
        XCTAssertEqual(carmenere.getNotableRegions(), expectedRegions4)
        XCTAssertEqual(champangeBlend.getNotableRegions(), expectedRegions5)
        XCTAssertEqual(chardonnay.getNotableRegions(), expectedRegions6)
        XCTAssertEqual(cheninBlanc.getNotableRegions(), expectedRegions7)
        XCTAssertEqual(gamay.getNotableRegions(), expectedRegions8)
        XCTAssertEqual(gewurztraminer.getNotableRegions(), expectedRegions9)
        XCTAssertEqual(grenache.getNotableRegions(), expectedRegions10)
        XCTAssertEqual(grunerVeltliner.getNotableRegions(), expectedRegions11)
        XCTAssertEqual(malbec.getNotableRegions(), expectedRegions12)
        XCTAssertEqual(merlot.getNotableRegions(), expectedRegions13)
        XCTAssertEqual(nebbiolo.getNotableRegions(), expectedRegions14)
        XCTAssertEqual(petiteSirah.getNotableRegions(), expectedRegions15)
        XCTAssertEqual(pinotGris.getNotableRegions(), expectedRegions16)
        XCTAssertEqual(pinotNoir.getNotableRegions(), expectedRegions17)
        XCTAssertEqual(port.getNotableRegions(), expectedRegions18)
        XCTAssertEqual(redBlend.getNotableRegions(), expectedRegions19)
        XCTAssertEqual(riesling.getNotableRegions(), expectedRegions20)
        XCTAssertEqual(rose.getNotableRegions(), expectedRegions21)
        XCTAssertEqual(sangiovese.getNotableRegions(), expectedRegions22)
        XCTAssertEqual(sauvignonBlanc.getNotableRegions(), expectedRegions23)
        XCTAssertEqual(sparklingBlend.getNotableRegions(), expectedRegions24)
        XCTAssertEqual(syrah.getNotableRegions(), expectedRegions25)
        XCTAssertEqual(tempranillo.getNotableRegions(), expectedRegions26)
        XCTAssertEqual(viognier.getNotableRegions(), expectedRegions27)
        XCTAssertEqual(whiteBlend.getNotableRegions(), expectedRegions28)
        XCTAssertEqual(zinfandel.getNotableRegions(), expectedRegions29)
    }

//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMM - CLIMATE (COOL) - MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    func testWineCoolClimateCharacteristicsLocalizationEN() {

        let expectedCools0 = "Blend - Varies."
        let expectedCools1 = "Fresh red berries, cherry, strawberry"
        let expectedCools2 = "Acidic, light body, strawberry"
        let expectedCools3 = "Vegetal, bell pepper, asparagus"
        let expectedCools4 = "Raspberry, bell pepper, mild acidity"
        let expectedCools5 = "Varies."
        let expectedCools6 = "Lean, crisp, high acidity"
        let expectedCools7 = "High acidity, sparkling wine, quince, yellow apple"
        let expectedCools8 = "Bright, acid, strawberry, pomegranate"
        let expectedCools9 = "Strong aromatics, rose, passion fruit, lychee"
        let expectedCools10 = "Raspberry, blood orange, dried herbs"
        let expectedCools11 = "Pure, minerality, grushed gravel"
        let expectedCools12 = "Sweeter, black cherry, raspberry"
        let expectedCools13 = "Strawberry, red berry, plum, cedar, tobacco"
        let expectedCools14 = "Acidic, clay, mineral"
        let expectedCools15 = "Blueberry, black tea"
        let expectedCools16 = "Acidity, slight sweetness, apple"
        let expectedCools17 = "Cabbage, wet leaves"
        let expectedCools18 = "Varies."
        let expectedCools19 = "Acidity, tart, lighter body"
        let expectedCools20 = "Acidic, apple, tree fruit"
        let expectedCools21 = "Mint, grapefruit, strawberry"
        let expectedCools22 = "High acidity, under ripened"
        let expectedCools23 = "Passion fruit, grapefruit, lime"
        let expectedCools24 = "Dry, lean, zesty"
        let expectedCools25 = "Red berries, high acidity, blackberry"
        let expectedCools26 = "plum, tobacco, vanilla"
        let expectedCools27 = "Under ripe, acidity, lime"
        let expectedCools28 = "Acidity, tart, lighter body"
        let expectedCools29 = "Red berry fruit, raspberry, strawberry"


        XCTAssertEqual(amarone.getCoolClimateCharacteristics(), expectedCools0)
        XCTAssertEqual(barbera.getCoolClimateCharacteristics(), expectedCools1)
        XCTAssertEqual(cabernetFranc.getCoolClimateCharacteristics(), expectedCools2)
        XCTAssertEqual(cabernetSauvignon.getCoolClimateCharacteristics(), expectedCools3)
        XCTAssertEqual(carmenere.getCoolClimateCharacteristics(), expectedCools4)
        XCTAssertEqual(champangeBlend.getCoolClimateCharacteristics(), expectedCools5)
        XCTAssertEqual(chardonnay.getCoolClimateCharacteristics(), expectedCools6)
        XCTAssertEqual(cheninBlanc.getCoolClimateCharacteristics(), expectedCools7)
        XCTAssertEqual(gamay.getCoolClimateCharacteristics(), expectedCools8)
        XCTAssertEqual(gewurztraminer.getCoolClimateCharacteristics(), expectedCools9)
        XCTAssertEqual(grenache.getCoolClimateCharacteristics(), expectedCools10)
        XCTAssertEqual(grunerVeltliner.getCoolClimateCharacteristics(), expectedCools11)
        XCTAssertEqual(malbec.getCoolClimateCharacteristics(), expectedCools12)
        XCTAssertEqual(merlot.getCoolClimateCharacteristics(), expectedCools13)
        XCTAssertEqual(nebbiolo.getCoolClimateCharacteristics(), expectedCools14)
        XCTAssertEqual(petiteSirah.getCoolClimateCharacteristics(), expectedCools15)
        XCTAssertEqual(pinotGris.getCoolClimateCharacteristics(), expectedCools16)
        XCTAssertEqual(pinotNoir.getCoolClimateCharacteristics(), expectedCools17)
        XCTAssertEqual(port.getCoolClimateCharacteristics(), expectedCools18)
        XCTAssertEqual(redBlend.getCoolClimateCharacteristics(), expectedCools19)
        XCTAssertEqual(riesling.getCoolClimateCharacteristics(), expectedCools20)
        XCTAssertEqual(rose.getCoolClimateCharacteristics(), expectedCools21)
        XCTAssertEqual(sangiovese.getCoolClimateCharacteristics(), expectedCools22)
        XCTAssertEqual(sauvignonBlanc.getCoolClimateCharacteristics(), expectedCools23)
        XCTAssertEqual(sparklingBlend.getCoolClimateCharacteristics(), expectedCools24)
        XCTAssertEqual(syrah.getCoolClimateCharacteristics(), expectedCools25)
        XCTAssertEqual(tempranillo.getCoolClimateCharacteristics(), expectedCools26)
        XCTAssertEqual(viognier.getCoolClimateCharacteristics(), expectedCools27)
        XCTAssertEqual(whiteBlend.getCoolClimateCharacteristics(), expectedCools28)
        XCTAssertEqual(zinfandel.getCoolClimateCharacteristics(), expectedCools29)
    }


    func testWineCoolClimateCharacteristicsLocalizationES() {

        let expectedCools0 = "Mezcla - Varía."
        let expectedCools1 = "Frutos rojos frescos, cereza, fresa"
        let expectedCools2 = "Ácido, cuerpo ligero, fresa"
        let expectedCools3 = "Vegetal, pimiento, espárragos"
        let expectedCools4 = "Frambuesa, pimiento morrón, acidez suave"
        let expectedCools5 = "Varía."
        let expectedCools6 = "Magro, crujiente, alta acidez"
        let expectedCools7 = "Acidez alta, vino espumoso, membrillo, manzana amarilla"
        let expectedCools8 = "Brillante, ácida, fresa, granada."
        let expectedCools9 = "Aromas fuertes, rosa, maracuyá, lichi."
        let expectedCools10 = "Frambuesa, naranja sanguina, hierbas secas"
        let expectedCools11 = "Pura, mineralidad, grava triturada"
        let expectedCools12 = "Más dulce, cereza negra, frambuesa"
        let expectedCools13 = "Fresa, frutos rojos, ciruela, cedro, tabaco"
        let expectedCools14 = "Ácido, arcilloso, mineral"
        let expectedCools15 = "Arándano, té negro"
        let expectedCools16 = "Acidez, ligero dulzor, manzana"
        let expectedCools17 = "Repollo, hojas mojadas"
        let expectedCools18 = "Varía."
        let expectedCools19 = "Acidez, tarta, cuerpo más ligero."
        let expectedCools20 = "Ácido, manzana, fruta de árbol"
        let expectedCools21 = "menta, pomelo, fresa"
        let expectedCools22 = "Alta acidez, bajo maduración"
        let expectedCools23 = "Maracuyá, pomelo, lima"
        let expectedCools24 = "Seco, magro, sabroso"
        let expectedCools25 = "frutos rojos, acidez alta, mora"
        let expectedCools26 = "ciruela, tabaco, vainilla"
        let expectedCools27 = "Bajo maduro, acidez, lima"
        let expectedCools28 = "Acidez, tarta, cuerpo más ligero."
        let expectedCools29 = "Frutos de baya roja, frambuesa, fresa"


        XCTAssertEqual(amarone.getCoolClimateCharacteristics(), expectedCools0)
        XCTAssertEqual(barbera.getCoolClimateCharacteristics(), expectedCools1)
        XCTAssertEqual(cabernetFranc.getCoolClimateCharacteristics(), expectedCools2)
        XCTAssertEqual(cabernetSauvignon.getCoolClimateCharacteristics(), expectedCools3)
        XCTAssertEqual(carmenere.getCoolClimateCharacteristics(), expectedCools4)
        XCTAssertEqual(champangeBlend.getCoolClimateCharacteristics(), expectedCools5)
        XCTAssertEqual(chardonnay.getCoolClimateCharacteristics(), expectedCools6)
        XCTAssertEqual(cheninBlanc.getCoolClimateCharacteristics(), expectedCools7)
        XCTAssertEqual(gamay.getCoolClimateCharacteristics(), expectedCools8)
        XCTAssertEqual(gewurztraminer.getCoolClimateCharacteristics(), expectedCools9)
        XCTAssertEqual(grenache.getCoolClimateCharacteristics(), expectedCools10)
        XCTAssertEqual(grunerVeltliner.getCoolClimateCharacteristics(), expectedCools11)
        XCTAssertEqual(malbec.getCoolClimateCharacteristics(), expectedCools12)
        XCTAssertEqual(merlot.getCoolClimateCharacteristics(), expectedCools13)
        XCTAssertEqual(nebbiolo.getCoolClimateCharacteristics(), expectedCools14)
        XCTAssertEqual(petiteSirah.getCoolClimateCharacteristics(), expectedCools15)
        XCTAssertEqual(pinotGris.getCoolClimateCharacteristics(), expectedCools16)
        XCTAssertEqual(pinotNoir.getCoolClimateCharacteristics(), expectedCools17)
        XCTAssertEqual(port.getCoolClimateCharacteristics(), expectedCools18)
        XCTAssertEqual(redBlend.getCoolClimateCharacteristics(), expectedCools19)
        XCTAssertEqual(riesling.getCoolClimateCharacteristics(), expectedCools20)
        XCTAssertEqual(rose.getCoolClimateCharacteristics(), expectedCools21)
        XCTAssertEqual(sangiovese.getCoolClimateCharacteristics(), expectedCools22)
        XCTAssertEqual(sauvignonBlanc.getCoolClimateCharacteristics(), expectedCools23)
        XCTAssertEqual(sparklingBlend.getCoolClimateCharacteristics(), expectedCools24)
        XCTAssertEqual(syrah.getCoolClimateCharacteristics(), expectedCools25)
        XCTAssertEqual(tempranillo.getCoolClimateCharacteristics(), expectedCools26)
        XCTAssertEqual(viognier.getCoolClimateCharacteristics(), expectedCools27)
        XCTAssertEqual(whiteBlend.getCoolClimateCharacteristics(), expectedCools28)
        XCTAssertEqual(zinfandel.getCoolClimateCharacteristics(), expectedCools29)
    }


    func testWineCoolClimateCharacteristicsLocalizationRU() {

        let expectedCools0 = "Смесь - Варьируется."
        let expectedCools1 = "Свежие красные ягоды, вишня, клубника"
        let expectedCools2 = "Кислотный, легкое тело, клубника"
        let expectedCools3 = "Овощной, болгарский перец, спаржа"
        let expectedCools4 = "Малина, болгарский перец, легкая кислинка"
        let expectedCools5 = "Варьируется."
        let expectedCools6 = "Легкий, свежий, с высокой кислотностью"
        let expectedCools7 = "Высокая кислотность, игристое вино, айва, желтое яблоко"
        let expectedCools8 = "Яркий, кислотный, клубничный, гранатовый"
        let expectedCools9 = "Сильные ароматы, роза, маракуйя, личи"
        let expectedCools10 = "Малина, красный апельсин, сушеные травы"
        let expectedCools11 = "Чистый, минеральный, дробленый гравий"
        let expectedCools12 = "Сладкий, черная вишня, малина"
        let expectedCools13 = "Клубника, красная ягода, слива, кедр, табак"
        let expectedCools14 = "Кислотный, глинистый, минеральный"
        let expectedCools15 = "Черника, черный чай"
        let expectedCools16 = "Кислотность, легкая сладость, яблоко"
        let expectedCools17 = "Капуста, мокрые листья"
        let expectedCools18 = "Варьируется."
        let expectedCools19 = "Кислотность, терпкость, легкое тело"
        let expectedCools20 = "Кислотный, яблоко, древесные фрукты"
        let expectedCools21 = "Мята, грейпфрут, клубника"
        let expectedCools22 = "Высокая кислотность, недозрелый"
        let expectedCools23 = "Маракуйя, грейпфрут, лайм"
        let expectedCools24 = "Сухой, нежирный, пряный"
        let expectedCools25 = "Красные ягоды, высокая кислотность, ежевика"
        let expectedCools26 = "слива, табак, ваниль"
        let expectedCools27 = "недозрелый, кислотность, лайм"
        let expectedCools28 = "Кислотность, терпкость, легкое тело"
        let expectedCools29 = "Красные ягоды, малина, клубника"


        XCTAssertEqual(amarone.getCoolClimateCharacteristics(), expectedCools0)
        XCTAssertEqual(barbera.getCoolClimateCharacteristics(), expectedCools1)
        XCTAssertEqual(cabernetFranc.getCoolClimateCharacteristics(), expectedCools2)
        XCTAssertEqual(cabernetSauvignon.getCoolClimateCharacteristics(), expectedCools3)
        XCTAssertEqual(carmenere.getCoolClimateCharacteristics(), expectedCools4)
        XCTAssertEqual(champangeBlend.getCoolClimateCharacteristics(), expectedCools5)
        XCTAssertEqual(chardonnay.getCoolClimateCharacteristics(), expectedCools6)
        XCTAssertEqual(cheninBlanc.getCoolClimateCharacteristics(), expectedCools7)
        XCTAssertEqual(gamay.getCoolClimateCharacteristics(), expectedCools8)
        XCTAssertEqual(gewurztraminer.getCoolClimateCharacteristics(), expectedCools9)
        XCTAssertEqual(grenache.getCoolClimateCharacteristics(), expectedCools10)
        XCTAssertEqual(grunerVeltliner.getCoolClimateCharacteristics(), expectedCools11)
        XCTAssertEqual(malbec.getCoolClimateCharacteristics(), expectedCools12)
        XCTAssertEqual(merlot.getCoolClimateCharacteristics(), expectedCools13)
        XCTAssertEqual(nebbiolo.getCoolClimateCharacteristics(), expectedCools14)
        XCTAssertEqual(petiteSirah.getCoolClimateCharacteristics(), expectedCools15)
        XCTAssertEqual(pinotGris.getCoolClimateCharacteristics(), expectedCools16)
        XCTAssertEqual(pinotNoir.getCoolClimateCharacteristics(), expectedCools17)
        XCTAssertEqual(port.getCoolClimateCharacteristics(), expectedCools18)
        XCTAssertEqual(redBlend.getCoolClimateCharacteristics(), expectedCools19)
        XCTAssertEqual(riesling.getCoolClimateCharacteristics(), expectedCools20)
        XCTAssertEqual(rose.getCoolClimateCharacteristics(), expectedCools21)
        XCTAssertEqual(sangiovese.getCoolClimateCharacteristics(), expectedCools22)
        XCTAssertEqual(sauvignonBlanc.getCoolClimateCharacteristics(), expectedCools23)
        XCTAssertEqual(sparklingBlend.getCoolClimateCharacteristics(), expectedCools24)
        XCTAssertEqual(syrah.getCoolClimateCharacteristics(), expectedCools25)
        XCTAssertEqual(tempranillo.getCoolClimateCharacteristics(), expectedCools26)
        XCTAssertEqual(viognier.getCoolClimateCharacteristics(), expectedCools27)
        XCTAssertEqual(whiteBlend.getCoolClimateCharacteristics(), expectedCools28)
        XCTAssertEqual(zinfandel.getCoolClimateCharacteristics(), expectedCools29)
    }


    func testWineCoolClimateCharacteristicsLocalizationDE() {

        let expectedCools0 = "Mischung - Variiert."
        let expectedCools1 = "Frische rote Beeren, Kirsche, Erdbeere"
        let expectedCools2 = "Säure, leichter Körper, Erdbeere"
        let expectedCools3 = "Gemüse, Paprika, Spargel"
        let expectedCools4 = "Himbeere, Paprika, milde Säure"
        let expectedCools5 = "Variiert."
        let expectedCools6 = "Leicht, knackig, hohe Säure"
        let expectedCools7 = "Hohe Säure, Sekt, Quitte, gelber Apfel"
        let expectedCools8 = "Hell, sauer, Erdbeere, Granatapfel"
        let expectedCools9 = "Starke Aromen, Rose, Maracuja, Litschi"
        let expectedCools10 = "Himbeere, Blutorange, getrocknete Kräuter"
        let expectedCools11 = "Rein, mineralisch, gemahlener Kies"
        let expectedCools12 = "Süßer, schwarze Kirsche, Himbeere"
        let expectedCools13 = "Erdbeere, rote Beere, Pflaume, Zeder, Tabak"
        let expectedCools14 = "Sauer, tonig, mineralisch"
        let expectedCools15 = "Blaubeere, schwarzer Tee"
        let expectedCools16 = "Säure, leichte Süße, Apfel"
        let expectedCools17 = "Kohl, nasse Blätter"
        let expectedCools18 = "Variiert."
        let expectedCools19 = "Säure, herb, leichter Körper"
        let expectedCools20 = "Säuerlich, Apfel, Baumfrucht"
        let expectedCools21 = "Minze, Grapefruit, Erdbeere"
        let expectedCools22 = "Hoher Säuregehalt, unterreif"
        let expectedCools23 = "Maracuja, Grapefruit, Limette"
        let expectedCools24 = "Trocken, mager, würzig"
        let expectedCools25 = "Rote Beeren, hohe Säure, Brombeere"
        let expectedCools26 = "Pflaume, Tabak, Vanille"
        let expectedCools27 = "Unterreif, Säure, Limette"
        let expectedCools28 = "Säure, herb, leichter Körper"
        let expectedCools29 = "Rote Beerenfrucht, Himbeere, Erdbeere"


        XCTAssertEqual(amarone.getCoolClimateCharacteristics(), expectedCools0)
        XCTAssertEqual(barbera.getCoolClimateCharacteristics(), expectedCools1)
        XCTAssertEqual(cabernetFranc.getCoolClimateCharacteristics(), expectedCools2)
        XCTAssertEqual(cabernetSauvignon.getCoolClimateCharacteristics(), expectedCools3)
        XCTAssertEqual(carmenere.getCoolClimateCharacteristics(), expectedCools4)
        XCTAssertEqual(champangeBlend.getCoolClimateCharacteristics(), expectedCools5)
        XCTAssertEqual(chardonnay.getCoolClimateCharacteristics(), expectedCools6)
        XCTAssertEqual(cheninBlanc.getCoolClimateCharacteristics(), expectedCools7)
        XCTAssertEqual(gamay.getCoolClimateCharacteristics(), expectedCools8)
        XCTAssertEqual(gewurztraminer.getCoolClimateCharacteristics(), expectedCools9)
        XCTAssertEqual(grenache.getCoolClimateCharacteristics(), expectedCools10)
        XCTAssertEqual(grunerVeltliner.getCoolClimateCharacteristics(), expectedCools11)
        XCTAssertEqual(malbec.getCoolClimateCharacteristics(), expectedCools12)
        XCTAssertEqual(merlot.getCoolClimateCharacteristics(), expectedCools13)
        XCTAssertEqual(nebbiolo.getCoolClimateCharacteristics(), expectedCools14)
        XCTAssertEqual(petiteSirah.getCoolClimateCharacteristics(), expectedCools15)
        XCTAssertEqual(pinotGris.getCoolClimateCharacteristics(), expectedCools16)
        XCTAssertEqual(pinotNoir.getCoolClimateCharacteristics(), expectedCools17)
        XCTAssertEqual(port.getCoolClimateCharacteristics(), expectedCools18)
        XCTAssertEqual(redBlend.getCoolClimateCharacteristics(), expectedCools19)
        XCTAssertEqual(riesling.getCoolClimateCharacteristics(), expectedCools20)
        XCTAssertEqual(rose.getCoolClimateCharacteristics(), expectedCools21)
        XCTAssertEqual(sangiovese.getCoolClimateCharacteristics(), expectedCools22)
        XCTAssertEqual(sauvignonBlanc.getCoolClimateCharacteristics(), expectedCools23)
        XCTAssertEqual(sparklingBlend.getCoolClimateCharacteristics(), expectedCools24)
        XCTAssertEqual(syrah.getCoolClimateCharacteristics(), expectedCools25)
        XCTAssertEqual(tempranillo.getCoolClimateCharacteristics(), expectedCools26)
        XCTAssertEqual(viognier.getCoolClimateCharacteristics(), expectedCools27)
        XCTAssertEqual(whiteBlend.getCoolClimateCharacteristics(), expectedCools28)
        XCTAssertEqual(zinfandel.getCoolClimateCharacteristics(), expectedCools29)
    }


    func testWineCoolClimateCharacteristicsLocalizationFR() {

        let expectedCools0 = "Mélange - Varie."
        let expectedCools1 = "Fruits rouges frais, cerise, fraise"
        let expectedCools2 = "Acide, corps léger, fraise"
        let expectedCools3 = "Végétal, poivron, asperge"
        let expectedCools4 = "Framboise, poivron, légère acidité"
        let expectedCools5 = "Varie."
        let expectedCools6 = "Léger, vif, acidité élevée"
        let expectedCools7 = "Acidité élevée, vin mousseux, coing, pomme jaune"
        let expectedCools8 = "Brillant, acide, fraise, grenade"
        let expectedCools9 = "Arômes puissants, rose, fruit de la passion, litchi"
        let expectedCools10 = "Framboise, orange sanguine, herbes séchées"
        let expectedCools11 = "Pure, minéralité, gravier broyé"
        let expectedCools12 = "Plus doux, cerise noire, framboise"
        let expectedCools13 = "Fraise, fruits rouges, prune, cèdre, tabac"
        let expectedCools14 = "Acide, argileux, minéral"
        let expectedCools15 = "Myrtille, thé noir"
        let expectedCools16 = "Acidité, légère douceur, pomme"
        let expectedCools17 = "Chou, feuilles mouillées"
        let expectedCools18 = "Varie."
        let expectedCools19 = "Acidité, acidité, corps plus léger"
        let expectedCools20 = "Acide, pomme, fruit du verger"
        let expectedCools21 = "Menthe, pamplemousse, fraise"
        let expectedCools22 = "Acidité élevée, sous mûri"
        let expectedCools23 = "Fruit de la passion, pamplemousse, citron vert"
        let expectedCools24 = "Sec, maigre, piquant"
        let expectedCools25 = "Fruits rouges, acidité élevée, mûre"
        let expectedCools26 = "prune, tabac, vanille"
        let expectedCools27 = "Sous mûre, acidité, citron vert"
        let expectedCools28 = "Acidité, acidité, corps plus léger"
        let expectedCools29 = "Fruits rouges, framboise, fraise"


        XCTAssertEqual(amarone.getCoolClimateCharacteristics(), expectedCools0)
        XCTAssertEqual(barbera.getCoolClimateCharacteristics(), expectedCools1)
        XCTAssertEqual(cabernetFranc.getCoolClimateCharacteristics(), expectedCools2)
        XCTAssertEqual(cabernetSauvignon.getCoolClimateCharacteristics(), expectedCools3)
        XCTAssertEqual(carmenere.getCoolClimateCharacteristics(), expectedCools4)
        XCTAssertEqual(champangeBlend.getCoolClimateCharacteristics(), expectedCools5)
        XCTAssertEqual(chardonnay.getCoolClimateCharacteristics(), expectedCools6)
        XCTAssertEqual(cheninBlanc.getCoolClimateCharacteristics(), expectedCools7)
        XCTAssertEqual(gamay.getCoolClimateCharacteristics(), expectedCools8)
        XCTAssertEqual(gewurztraminer.getCoolClimateCharacteristics(), expectedCools9)
        XCTAssertEqual(grenache.getCoolClimateCharacteristics(), expectedCools10)
        XCTAssertEqual(grunerVeltliner.getCoolClimateCharacteristics(), expectedCools11)
        XCTAssertEqual(malbec.getCoolClimateCharacteristics(), expectedCools12)
        XCTAssertEqual(merlot.getCoolClimateCharacteristics(), expectedCools13)
        XCTAssertEqual(nebbiolo.getCoolClimateCharacteristics(), expectedCools14)
        XCTAssertEqual(petiteSirah.getCoolClimateCharacteristics(), expectedCools15)
        XCTAssertEqual(pinotGris.getCoolClimateCharacteristics(), expectedCools16)
        XCTAssertEqual(pinotNoir.getCoolClimateCharacteristics(), expectedCools17)
        XCTAssertEqual(port.getCoolClimateCharacteristics(), expectedCools18)
        XCTAssertEqual(redBlend.getCoolClimateCharacteristics(), expectedCools19)
        XCTAssertEqual(riesling.getCoolClimateCharacteristics(), expectedCools20)
        XCTAssertEqual(rose.getCoolClimateCharacteristics(), expectedCools21)
        XCTAssertEqual(sangiovese.getCoolClimateCharacteristics(), expectedCools22)
        XCTAssertEqual(sauvignonBlanc.getCoolClimateCharacteristics(), expectedCools23)
        XCTAssertEqual(sparklingBlend.getCoolClimateCharacteristics(), expectedCools24)
        XCTAssertEqual(syrah.getCoolClimateCharacteristics(), expectedCools25)
        XCTAssertEqual(tempranillo.getCoolClimateCharacteristics(), expectedCools26)
        XCTAssertEqual(viognier.getCoolClimateCharacteristics(), expectedCools27)
        XCTAssertEqual(whiteBlend.getCoolClimateCharacteristics(), expectedCools28)
        XCTAssertEqual(zinfandel.getCoolClimateCharacteristics(), expectedCools29)
    }
    
    

//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMM - CLIMATE (MODERATE) - MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    func testWineModerateClimateCharacteristicsLocalizationEN() {

        let expectedModerates0 = ""
        let expectedModerates1 = "Blueberry, dried herbs, black cherry"
        let expectedModerates2 = "raspberry, cassis, bell pepper"
        let expectedModerates3 = "Tobacco, black pepper, eucalyptus"
        let expectedModerates4 = "Bell pepper, paprika, vanilla"
        let expectedModerates5 = "Toast, almond, cream, yellow apple, citrus"
        let expectedModerates6 = "Honey, tropical fruit"
        let expectedModerates7 = "Ripe, aromatic, chamomile, honey, pear"
        let expectedModerates8 = "Blackberry, peony, violet"
        let expectedModerates9 = "Grapefruit, tangerine, ginger"
        let expectedModerates10 = "Stewed strawberry, dried herbs, white pepper"
        let expectedModerates11 = "Citrus, peach, white pepper"
        let expectedModerates12 = "Vanilla, sweet tobacco, cocoa"
        let expectedModerates13 = "Blackberry, black plum, black cherry"
        let expectedModerates14 = "Spicy, rose, leather"
        let expectedModerates15 = "Spicy, sugarplum"
        let expectedModerates16 = "Pear, melon, lemon"
        let expectedModerates17 = "Strawberry, raspberry, cherry, mushroom, meaty"
        let expectedModerates18 = "Plum, cherry, chocolate, raisin, cinnamon"
        let expectedModerates19 = "Spicy"
        let expectedModerates20 = "Beeswax, jasmine, pear"
        let expectedModerates21 = "Raspberry, hibiscus, white pepper"
        let expectedModerates22 = "Tart cherry, strawberry, red plum"
        let expectedModerates23 = "Dates, papaya, melon"
        let expectedModerates24 = "Light, dry, fruity, floral"
        let expectedModerates25 = "Mint, eucalyptus, smoked meat, black pepper"
        let expectedModerates26 = "berries, herb"
        let expectedModerates27 = "Aromatic, rose, peach, honeysuckle"
        let expectedModerates28 = "Spicy, lemongrass, chamomile"
        let expectedModerates29 = "Black cherry, sweet tobacco, cinnamon"


        XCTAssertEqual(amarone.getModerateClimateCharacteristics(), expectedModerates0)
        XCTAssertEqual(barbera.getModerateClimateCharacteristics(), expectedModerates1)
        XCTAssertEqual(cabernetFranc.getModerateClimateCharacteristics(), expectedModerates2)
        XCTAssertEqual(cabernetSauvignon.getModerateClimateCharacteristics(), expectedModerates3)
        XCTAssertEqual(carmenere.getModerateClimateCharacteristics(), expectedModerates4)
        XCTAssertEqual(champangeBlend.getModerateClimateCharacteristics(), expectedModerates5)
        XCTAssertEqual(chardonnay.getModerateClimateCharacteristics(), expectedModerates6)
        XCTAssertEqual(cheninBlanc.getModerateClimateCharacteristics(), expectedModerates7)
        XCTAssertEqual(gamay.getModerateClimateCharacteristics(), expectedModerates8)
        XCTAssertEqual(gewurztraminer.getModerateClimateCharacteristics(), expectedModerates9)
        XCTAssertEqual(grenache.getModerateClimateCharacteristics(), expectedModerates10)
        XCTAssertEqual(grunerVeltliner.getModerateClimateCharacteristics(), expectedModerates11)
        XCTAssertEqual(malbec.getModerateClimateCharacteristics(), expectedModerates12)
        XCTAssertEqual(merlot.getModerateClimateCharacteristics(), expectedModerates13)
        XCTAssertEqual(nebbiolo.getModerateClimateCharacteristics(), expectedModerates14)
        XCTAssertEqual(petiteSirah.getModerateClimateCharacteristics(), expectedModerates15)
        XCTAssertEqual(pinotGris.getModerateClimateCharacteristics(), expectedModerates16)
        XCTAssertEqual(pinotNoir.getModerateClimateCharacteristics(), expectedModerates17)
        XCTAssertEqual(port.getModerateClimateCharacteristics(), expectedModerates18)
        XCTAssertEqual(redBlend.getModerateClimateCharacteristics(), expectedModerates19)
        XCTAssertEqual(riesling.getModerateClimateCharacteristics(), expectedModerates20)
        XCTAssertEqual(rose.getModerateClimateCharacteristics(), expectedModerates21)
        XCTAssertEqual(sangiovese.getModerateClimateCharacteristics(), expectedModerates22)
        XCTAssertEqual(sauvignonBlanc.getModerateClimateCharacteristics(), expectedModerates23)
        XCTAssertEqual(sparklingBlend.getModerateClimateCharacteristics(), expectedModerates24)
        XCTAssertEqual(syrah.getModerateClimateCharacteristics(), expectedModerates25)
        XCTAssertEqual(tempranillo.getModerateClimateCharacteristics(), expectedModerates26)
        XCTAssertEqual(viognier.getModerateClimateCharacteristics(), expectedModerates27)
        XCTAssertEqual(whiteBlend.getModerateClimateCharacteristics(), expectedModerates28)
        XCTAssertEqual(zinfandel.getModerateClimateCharacteristics(), expectedModerates29)
    }


    func testWineModerateClimateCharacteristicsLocalizationES() {

        let expectedModerates0 = "-"
        let expectedModerates1 = "Arándano, hierbas secas, cereza negra"
        let expectedModerates2 = "frambuesa, cassis, pimiento"
        let expectedModerates3 = "Tabaco, pimienta negra, eucalipto"
        let expectedModerates4 = "Pimiento morrón, paprika, vainilla"
        let expectedModerates5 = "Tostada, almendra, nata, manzana amarilla, cítricos"
        let expectedModerates6 = "miel, frutas tropicales"
        let expectedModerates7 = "Maduro, aromático, manzanilla, miel, pera"
        let expectedModerates8 = "Mora, peonía, violeta"
        let expectedModerates9 = "Pomelo, mandarina, jengibre"
        let expectedModerates10 = "Fresa guisada, hierbas secas, pimienta blanca"
        let expectedModerates11 = "Cítricos, melocotón, pimienta blanca"
        let expectedModerates12 = "Vainilla, tabaco dulce, cacao"
        let expectedModerates13 = "Mora, ciruela negra, cereza negra"
        let expectedModerates14 = "Especiado, rosa, cuero"
        let expectedModerates15 = "Picante, ciruela"
        let expectedModerates16 = "pera, melón, limón"
        let expectedModerates17 = "Fresa, frambuesa, cereza, champiñón, carnoso"
        let expectedModerates18 = "Ciruela, cereza, chocolate, pasas, canela"
        let expectedModerates19 = "Picante"
        let expectedModerates20 = "Cera de abeja, jazmín, pera"
        let expectedModerates21 = "frambuesa, hibisco, pimienta blanca"
        let expectedModerates22 = "Tarta de cereza, fresa, ciruela roja"
        let expectedModerates23 = "Dátiles, papaya, melón"
        let expectedModerates24 = "Ligero, seco, afrutado, floral."
        let expectedModerates25 = "Menta, eucalipto, carne ahumada, pimienta negra"
        let expectedModerates26 = "bayas, hierba"
        let expectedModerates27 = "Aromático, rosa, melocotón, madreselva"
        let expectedModerates28 = "Picante, limoncillo, manzanilla"
        let expectedModerates29 = "Cereza negra, tabaco dulce, canela"


        XCTAssertEqual(amarone.getModerateClimateCharacteristics(), expectedModerates0)
        XCTAssertEqual(barbera.getModerateClimateCharacteristics(), expectedModerates1)
        XCTAssertEqual(cabernetFranc.getModerateClimateCharacteristics(), expectedModerates2)
        XCTAssertEqual(cabernetSauvignon.getModerateClimateCharacteristics(), expectedModerates3)
        XCTAssertEqual(carmenere.getModerateClimateCharacteristics(), expectedModerates4)
        XCTAssertEqual(champangeBlend.getModerateClimateCharacteristics(), expectedModerates5)
        XCTAssertEqual(chardonnay.getModerateClimateCharacteristics(), expectedModerates6)
        XCTAssertEqual(cheninBlanc.getModerateClimateCharacteristics(), expectedModerates7)
        XCTAssertEqual(gamay.getModerateClimateCharacteristics(), expectedModerates8)
        XCTAssertEqual(gewurztraminer.getModerateClimateCharacteristics(), expectedModerates9)
        XCTAssertEqual(grenache.getModerateClimateCharacteristics(), expectedModerates10)
        XCTAssertEqual(grunerVeltliner.getModerateClimateCharacteristics(), expectedModerates11)
        XCTAssertEqual(malbec.getModerateClimateCharacteristics(), expectedModerates12)
        XCTAssertEqual(merlot.getModerateClimateCharacteristics(), expectedModerates13)
        XCTAssertEqual(nebbiolo.getModerateClimateCharacteristics(), expectedModerates14)
        XCTAssertEqual(petiteSirah.getModerateClimateCharacteristics(), expectedModerates15)
        XCTAssertEqual(pinotGris.getModerateClimateCharacteristics(), expectedModerates16)
        XCTAssertEqual(pinotNoir.getModerateClimateCharacteristics(), expectedModerates17)
        XCTAssertEqual(port.getModerateClimateCharacteristics(), expectedModerates18)
        XCTAssertEqual(redBlend.getModerateClimateCharacteristics(), expectedModerates19)
        XCTAssertEqual(riesling.getModerateClimateCharacteristics(), expectedModerates20)
        XCTAssertEqual(rose.getModerateClimateCharacteristics(), expectedModerates21)
        XCTAssertEqual(sangiovese.getModerateClimateCharacteristics(), expectedModerates22)
        XCTAssertEqual(sauvignonBlanc.getModerateClimateCharacteristics(), expectedModerates23)
        XCTAssertEqual(sparklingBlend.getModerateClimateCharacteristics(), expectedModerates24)
        XCTAssertEqual(syrah.getModerateClimateCharacteristics(), expectedModerates25)
        XCTAssertEqual(tempranillo.getModerateClimateCharacteristics(), expectedModerates26)
        XCTAssertEqual(viognier.getModerateClimateCharacteristics(), expectedModerates27)
        XCTAssertEqual(whiteBlend.getModerateClimateCharacteristics(), expectedModerates28)
        XCTAssertEqual(zinfandel.getModerateClimateCharacteristics(), expectedModerates29)
    }


    func testWineModerateClimateCharacteristicsLocalizationRU() {

        let expectedModerates0 = "-"
        let expectedModerates1 = "Черника, сушеные травы, черешня"
        let expectedModerates2 = "малина, черная смородина, болгарский перец"
        let expectedModerates3 = "Табак, черный перец, эвкалипт"
        let expectedModerates4 = "Болгарский перец, паприка, ваниль"
        let expectedModerates5 = "Тост, миндаль, сливки, желтое яблоко, цитрус"
        let expectedModerates6 = "Мед, тропические фрукты"
        let expectedModerates7 = "Спелый, ароматный, ромашка, мед, груша"
        let expectedModerates8 = "Ежевика, пион, фиалка"
        let expectedModerates9 = "Грейпфрут, мандарин, имбирь"
        let expectedModerates10 = "Компот из клубники, сушеные травы, белый перец"
        let expectedModerates11 = "Цитрусовый, персик, белый перец"
        let expectedModerates12 = "Ваниль, сладкий табак, какао"
        let expectedModerates13 = "Ежевика, черная слива, черная вишня"
        let expectedModerates14 = "Пряный, роза, кожа"
        let expectedModerates15 = "Пряный, сахарная слива"
        let expectedModerates16 = "Груша, дыня, лимон"
        let expectedModerates17 = "Клубничный, малиновый, вишневый, грибной, мясной"
        let expectedModerates18 = "Слива, вишня, шоколад, изюм, корица"
        let expectedModerates19 = "Острый"
        let expectedModerates20 = "Пчелиный воск, жасмин, груша"
        let expectedModerates21 = "малина, гибискус, белый перец"
        let expectedModerates22 = "Терпкая вишня, клубника, красная слива"
        let expectedModerates23 = "Финики, папайя, дыня"
        let expectedModerates24 = "Легкий, сухой, фруктовый, цветочный"
        let expectedModerates25 = "Мята, эвкалипт, копченое мясо, черный перец"
        let expectedModerates26 = "ягоды, трава"
        let expectedModerates27 = "Ароматный, роза, персик, жимолость"
        let expectedModerates28 = "Пряный, лемонграсс, ромашка"
        let expectedModerates29 = "Черная вишня, сладкий табак, корица"


        XCTAssertEqual(amarone.getModerateClimateCharacteristics(), expectedModerates0)
        XCTAssertEqual(barbera.getModerateClimateCharacteristics(), expectedModerates1)
        XCTAssertEqual(cabernetFranc.getModerateClimateCharacteristics(), expectedModerates2)
        XCTAssertEqual(cabernetSauvignon.getModerateClimateCharacteristics(), expectedModerates3)
        XCTAssertEqual(carmenere.getModerateClimateCharacteristics(), expectedModerates4)
        XCTAssertEqual(champangeBlend.getModerateClimateCharacteristics(), expectedModerates5)
        XCTAssertEqual(chardonnay.getModerateClimateCharacteristics(), expectedModerates6)
        XCTAssertEqual(cheninBlanc.getModerateClimateCharacteristics(), expectedModerates7)
        XCTAssertEqual(gamay.getModerateClimateCharacteristics(), expectedModerates8)
        XCTAssertEqual(gewurztraminer.getModerateClimateCharacteristics(), expectedModerates9)
        XCTAssertEqual(grenache.getModerateClimateCharacteristics(), expectedModerates10)
        XCTAssertEqual(grunerVeltliner.getModerateClimateCharacteristics(), expectedModerates11)
        XCTAssertEqual(malbec.getModerateClimateCharacteristics(), expectedModerates12)
        XCTAssertEqual(merlot.getModerateClimateCharacteristics(), expectedModerates13)
        XCTAssertEqual(nebbiolo.getModerateClimateCharacteristics(), expectedModerates14)
        XCTAssertEqual(petiteSirah.getModerateClimateCharacteristics(), expectedModerates15)
        XCTAssertEqual(pinotGris.getModerateClimateCharacteristics(), expectedModerates16)
        XCTAssertEqual(pinotNoir.getModerateClimateCharacteristics(), expectedModerates17)
        XCTAssertEqual(port.getModerateClimateCharacteristics(), expectedModerates18)
        XCTAssertEqual(redBlend.getModerateClimateCharacteristics(), expectedModerates19)
        XCTAssertEqual(riesling.getModerateClimateCharacteristics(), expectedModerates20)
        XCTAssertEqual(rose.getModerateClimateCharacteristics(), expectedModerates21)
        XCTAssertEqual(sangiovese.getModerateClimateCharacteristics(), expectedModerates22)
        XCTAssertEqual(sauvignonBlanc.getModerateClimateCharacteristics(), expectedModerates23)
        XCTAssertEqual(sparklingBlend.getModerateClimateCharacteristics(), expectedModerates24)
        XCTAssertEqual(syrah.getModerateClimateCharacteristics(), expectedModerates25)
        XCTAssertEqual(tempranillo.getModerateClimateCharacteristics(), expectedModerates26)
        XCTAssertEqual(viognier.getModerateClimateCharacteristics(), expectedModerates27)
        XCTAssertEqual(whiteBlend.getModerateClimateCharacteristics(), expectedModerates28)
        XCTAssertEqual(zinfandel.getModerateClimateCharacteristics(), expectedModerates29)
    }


    func testWineModerateClimateCharacteristicsLocalizationDE() {

        let expectedModerates0 = "-"
        let expectedModerates1 = "Heidelbeere, getrocknete Kräuter, Schwarzkirsche"
        let expectedModerates2 = "Himbeere, Cassis, Paprika"
        let expectedModerates3 = "Tabak, schwarzer Pfeffer, Eukalyptus"
        let expectedModerates4 = "Paprika, Paprika, Vanille"
        let expectedModerates5 = "Toast, Mandel, Sahne, gelber Apfel, Zitrus"
        let expectedModerates6 = "Honig, tropische Früchte"
        let expectedModerates7 = "Reif, aromatisch, Kamille, Honig, Birne"
        let expectedModerates8 = "Brombeere, Pfingstrose, Veilchen"
        let expectedModerates9 = "Grapefruit, Mandarine, Ingwer"
        let expectedModerates10 = "Geschmorte Erdbeeren, getrocknete Kräuter, weißer Pfeffer"
        let expectedModerates11 = "Zitrus, Pfirsich, weißer Pfeffer"
        let expectedModerates12 = "Vanille, süßer Tabak, Kakao"
        let expectedModerates13 = "Brombeere, schwarze Pflaume, schwarze Kirsche"
        let expectedModerates14 = "Würzig, Rose, Leder"
        let expectedModerates15 = "Würzig, Zuckerpflaume"
        let expectedModerates16 = "Birne, Melone, Zitrone"
        let expectedModerates17 = "Erdbeere, Himbeere, Kirsche, Pilz, fleischig"
        let expectedModerates18 = "Pflaume, Kirsche, Schokolade, Rosine, Zimt"
        let expectedModerates19 = "Würzig"
        let expectedModerates20 = "Bienenwachs, Jasmin, Birne"
        let expectedModerates21 = "Himbeere, Hibiskus, weißer Pfeffer"
        let expectedModerates22 = "Saure Kirsche, Erdbeere, rote Pflaume"
        let expectedModerates23 = "Datteln, Papaya, Melone"
        let expectedModerates24 = "Leicht, trocken, fruchtig, blumig"
        let expectedModerates25 = "Minze, Eukalyptus, geräuchertes Fleisch, schwarzer Pfeffer"
        let expectedModerates26 = "Beeren, Kraut"
        let expectedModerates27 = "Aromatisch, Rose, Pfirsich, Geißblatt"
        let expectedModerates28 = "Würzig, Zitronengras, Kamille"
        let expectedModerates29 = "Schwarze Kirsche, süßer Tabak, Zimt"


        XCTAssertEqual(amarone.getModerateClimateCharacteristics(), expectedModerates0)
        XCTAssertEqual(barbera.getModerateClimateCharacteristics(), expectedModerates1)
        XCTAssertEqual(cabernetFranc.getModerateClimateCharacteristics(), expectedModerates2)
        XCTAssertEqual(cabernetSauvignon.getModerateClimateCharacteristics(), expectedModerates3)
        XCTAssertEqual(carmenere.getModerateClimateCharacteristics(), expectedModerates4)
        XCTAssertEqual(champangeBlend.getModerateClimateCharacteristics(), expectedModerates5)
        XCTAssertEqual(chardonnay.getModerateClimateCharacteristics(), expectedModerates6)
        XCTAssertEqual(cheninBlanc.getModerateClimateCharacteristics(), expectedModerates7)
        XCTAssertEqual(gamay.getModerateClimateCharacteristics(), expectedModerates8)
        XCTAssertEqual(gewurztraminer.getModerateClimateCharacteristics(), expectedModerates9)
        XCTAssertEqual(grenache.getModerateClimateCharacteristics(), expectedModerates10)
        XCTAssertEqual(grunerVeltliner.getModerateClimateCharacteristics(), expectedModerates11)
        XCTAssertEqual(malbec.getModerateClimateCharacteristics(), expectedModerates12)
        XCTAssertEqual(merlot.getModerateClimateCharacteristics(), expectedModerates13)
        XCTAssertEqual(nebbiolo.getModerateClimateCharacteristics(), expectedModerates14)
        XCTAssertEqual(petiteSirah.getModerateClimateCharacteristics(), expectedModerates15)
        XCTAssertEqual(pinotGris.getModerateClimateCharacteristics(), expectedModerates16)
        XCTAssertEqual(pinotNoir.getModerateClimateCharacteristics(), expectedModerates17)
        XCTAssertEqual(port.getModerateClimateCharacteristics(), expectedModerates18)
        XCTAssertEqual(redBlend.getModerateClimateCharacteristics(), expectedModerates19)
        XCTAssertEqual(riesling.getModerateClimateCharacteristics(), expectedModerates20)
        XCTAssertEqual(rose.getModerateClimateCharacteristics(), expectedModerates21)
        XCTAssertEqual(sangiovese.getModerateClimateCharacteristics(), expectedModerates22)
        XCTAssertEqual(sauvignonBlanc.getModerateClimateCharacteristics(), expectedModerates23)
        XCTAssertEqual(sparklingBlend.getModerateClimateCharacteristics(), expectedModerates24)
        XCTAssertEqual(syrah.getModerateClimateCharacteristics(), expectedModerates25)
        XCTAssertEqual(tempranillo.getModerateClimateCharacteristics(), expectedModerates26)
        XCTAssertEqual(viognier.getModerateClimateCharacteristics(), expectedModerates27)
        XCTAssertEqual(whiteBlend.getModerateClimateCharacteristics(), expectedModerates28)
        XCTAssertEqual(zinfandel.getModerateClimateCharacteristics(), expectedModerates29)
    }


    func testWineModerateClimateCharacteristicsLocalizationFR() {

        let expectedModerates0 = "-"
        let expectedModerates1 = "Myrtille, herbes séchées, cerise noire"
        let expectedModerates2 = "framboise, cassis, poivron"
        let expectedModerates3 = "Tabac, poivre noir, eucalyptus"
        let expectedModerates4 = "Poivron, paprika, vanille"
        let expectedModerates5 = "Toast, amande, crème, pomme jaune, agrumes"
        let expectedModerates6 = "Miel, fruits tropicaux"
        let expectedModerates7 = "Mûr, aromatique, camomille, miel, poire"
        let expectedModerates8 = "Mûre, pivoine, violette"
        let expectedModerates9 = "Pamplemousse, mandarine, gingembre"
        let expectedModerates10 = "Fraise compotée, herbes séchées, poivre blanc"
        let expectedModerates11 = "Agrumes, pêche, poivre blanc"
        let expectedModerates12 = "Vanille, tabac doux, cacao"
        let expectedModerates13 = "Mûre, prune noire, cerise noire"
        let expectedModerates14 = "Épicé, rose, cuir"
        let expectedModerates15 = "Épicé, dragée"
        let expectedModerates16 = "Poire, melon, citron"
        let expectedModerates17 = "Fraise, framboise, cerise, champignon, viande"
        let expectedModerates18 = "Prune, cerise, chocolat, raisin sec, cannelle"
        let expectedModerates19 = "Épicé"
        let expectedModerates20 = "Cire d'abeille, jasmin, poire"
        let expectedModerates21 = "Framboise, hibiscus, poivre blanc"
        let expectedModerates22 = "Tarte cerise, fraise, prune rouge"
        let expectedModerates23 = "Dattes, papaye, melon"
        let expectedModerates24 = "Léger, sec, fruité, floral"
        let expectedModerates25 = "Menthe, eucalyptus, viande fumée, poivre noir"
        let expectedModerates26 = "baies, herbe"
        let expectedModerates27 = "Aromatique, rose, pêche, chèvrefeuille"
        let expectedModerates28 = "Épicé, citronnelle, camomille"
        let expectedModerates29 = "Cerise noire, tabac doux, cannelle"


        XCTAssertEqual(amarone.getModerateClimateCharacteristics(), expectedModerates0)
        XCTAssertEqual(barbera.getModerateClimateCharacteristics(), expectedModerates1)
        XCTAssertEqual(cabernetFranc.getModerateClimateCharacteristics(), expectedModerates2)
        XCTAssertEqual(cabernetSauvignon.getModerateClimateCharacteristics(), expectedModerates3)
        XCTAssertEqual(carmenere.getModerateClimateCharacteristics(), expectedModerates4)
        XCTAssertEqual(champangeBlend.getModerateClimateCharacteristics(), expectedModerates5)
        XCTAssertEqual(chardonnay.getModerateClimateCharacteristics(), expectedModerates6)
        XCTAssertEqual(cheninBlanc.getModerateClimateCharacteristics(), expectedModerates7)
        XCTAssertEqual(gamay.getModerateClimateCharacteristics(), expectedModerates8)
        XCTAssertEqual(gewurztraminer.getModerateClimateCharacteristics(), expectedModerates9)
        XCTAssertEqual(grenache.getModerateClimateCharacteristics(), expectedModerates10)
        XCTAssertEqual(grunerVeltliner.getModerateClimateCharacteristics(), expectedModerates11)
        XCTAssertEqual(malbec.getModerateClimateCharacteristics(), expectedModerates12)
        XCTAssertEqual(merlot.getModerateClimateCharacteristics(), expectedModerates13)
        XCTAssertEqual(nebbiolo.getModerateClimateCharacteristics(), expectedModerates14)
        XCTAssertEqual(petiteSirah.getModerateClimateCharacteristics(), expectedModerates15)
        XCTAssertEqual(pinotGris.getModerateClimateCharacteristics(), expectedModerates16)
        XCTAssertEqual(pinotNoir.getModerateClimateCharacteristics(), expectedModerates17)
        XCTAssertEqual(port.getModerateClimateCharacteristics(), expectedModerates18)
        XCTAssertEqual(redBlend.getModerateClimateCharacteristics(), expectedModerates19)
        XCTAssertEqual(riesling.getModerateClimateCharacteristics(), expectedModerates20)
        XCTAssertEqual(rose.getModerateClimateCharacteristics(), expectedModerates21)
        XCTAssertEqual(sangiovese.getModerateClimateCharacteristics(), expectedModerates22)
        XCTAssertEqual(sauvignonBlanc.getModerateClimateCharacteristics(), expectedModerates23)
        XCTAssertEqual(sparklingBlend.getModerateClimateCharacteristics(), expectedModerates24)
        XCTAssertEqual(syrah.getModerateClimateCharacteristics(), expectedModerates25)
        XCTAssertEqual(tempranillo.getModerateClimateCharacteristics(), expectedModerates26)
        XCTAssertEqual(viognier.getModerateClimateCharacteristics(), expectedModerates27)
        XCTAssertEqual(whiteBlend.getModerateClimateCharacteristics(), expectedModerates28)
        XCTAssertEqual(zinfandel.getModerateClimateCharacteristics(), expectedModerates29)
    }

//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMM - CLIMATE (HOT) - MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    func testWineHotClimateCharacteristicsLocalizationEN() {

        let expectedHots0 = "Blend - Varies."
        let expectedHots1 = "Licorice, blackberry, black pepper"
        let expectedHots2 = "Chili pepper, tobacco, crushed gravel"
        let expectedHots3 = "Jam, dark fruit, blackberry, black cherry"
        let expectedHots4 = "Black plum, vanilla, jammy"
        let expectedHots5 = "Varies."
        let expectedHots6 = "Apple, pear, ripe"
        let expectedHots7 = "Over ripe, orange marmalade, ginger, saffron"
        let expectedHots8 = "Black cherry, black pepper, stone, chalk"
        let expectedHots9 = "Does not perform well in warm climate"
        let expectedHots10 = "Plum, leather, full body"
        let expectedHots11 = "Tobacco, starfruit, asparagus"
        let expectedHots12 = "Dark fruit, blackberry, plum"
        let expectedHots13 = "Fruitcake, chocolate"
        let expectedHots14 = "Black cherry, anise, leather"
        let expectedHots15 = "Dark chocolate, black pepper, leather"
        let expectedHots16 = "Rich, floral, almond, peach"
        let expectedHots17 = "Over ripe"
        let expectedHots18 = "Varies."
        let expectedHots19 = "Ripe fruit, jammy"
        let expectedHots20 = "Citrus, peach, lime"
        let expectedHots21 = "Jam, bell pepper, black pepper"
        let expectedHots22 = "Ripe, fig, balsamic, espresso"
        let expectedHots23 = "Over ripe"
        let expectedHots24 = "Sweet, perfumed"
        let expectedHots25 = "Liquorice, cloves, espresso, mocha, dark chocolate"
        let expectedHots26 = "Leather"
        let expectedHots27 = "Ripe fruit, tangerine, mango"
        let expectedHots28 = "Ripe fruit, jammy, grapefruit"
        let expectedHots29 = "Blackberry, anise, black plum"


        XCTAssertEqual(amarone.getHotClimateCharacteristics(), expectedHots0)
        XCTAssertEqual(barbera.getHotClimateCharacteristics(), expectedHots1)
        XCTAssertEqual(cabernetFranc.getHotClimateCharacteristics(), expectedHots2)
        XCTAssertEqual(cabernetSauvignon.getHotClimateCharacteristics(), expectedHots3)
        XCTAssertEqual(carmenere.getHotClimateCharacteristics(), expectedHots4)
        XCTAssertEqual(champangeBlend.getHotClimateCharacteristics(), expectedHots5)
        XCTAssertEqual(chardonnay.getHotClimateCharacteristics(), expectedHots6)
        XCTAssertEqual(cheninBlanc.getHotClimateCharacteristics(), expectedHots7)
        XCTAssertEqual(gamay.getHotClimateCharacteristics(), expectedHots8)
        XCTAssertEqual(gewurztraminer.getHotClimateCharacteristics(), expectedHots9)
        XCTAssertEqual(grenache.getHotClimateCharacteristics(), expectedHots10)
        XCTAssertEqual(grunerVeltliner.getHotClimateCharacteristics(), expectedHots11)
        XCTAssertEqual(malbec.getHotClimateCharacteristics(), expectedHots12)
        XCTAssertEqual(merlot.getHotClimateCharacteristics(), expectedHots13)
        XCTAssertEqual(nebbiolo.getHotClimateCharacteristics(), expectedHots14)
        XCTAssertEqual(petiteSirah.getHotClimateCharacteristics(), expectedHots15)
        XCTAssertEqual(pinotGris.getHotClimateCharacteristics(), expectedHots16)
        XCTAssertEqual(pinotNoir.getHotClimateCharacteristics(), expectedHots17)
        XCTAssertEqual(port.getHotClimateCharacteristics(), expectedHots18)
        XCTAssertEqual(redBlend.getHotClimateCharacteristics(), expectedHots19)
        XCTAssertEqual(riesling.getHotClimateCharacteristics(), expectedHots20)
        XCTAssertEqual(rose.getHotClimateCharacteristics(), expectedHots21)
        XCTAssertEqual(sangiovese.getHotClimateCharacteristics(), expectedHots22)
        XCTAssertEqual(sauvignonBlanc.getHotClimateCharacteristics(), expectedHots23)
        XCTAssertEqual(sparklingBlend.getHotClimateCharacteristics(), expectedHots24)
        XCTAssertEqual(syrah.getHotClimateCharacteristics(), expectedHots25)
        XCTAssertEqual(tempranillo.getHotClimateCharacteristics(), expectedHots26)
        XCTAssertEqual(viognier.getHotClimateCharacteristics(), expectedHots27)
        XCTAssertEqual(whiteBlend.getHotClimateCharacteristics(), expectedHots28)
        XCTAssertEqual(zinfandel.getHotClimateCharacteristics(), expectedHots29)
    }


    func testWineHotClimateCharacteristicsLocalizationES() {

        let expectedHots0 = "Mezcla - Varía."
        let expectedHots1 = "regaliz, mora, pimienta negra"
        let expectedHots2 = "Pimienta picante, tabaco, grava triturada"
        let expectedHots3 = "Mermelada, frutos negros, mora, cereza negra"
        let expectedHots4 = "ciruela negra, vainilla, mermelada"
        let expectedHots5 = "Varía."
        let expectedHots6 = "Manzana, pera, madura"
        let expectedHots7 = "Sobre maduro, mermelada de naranja, jengibre, azafrán"
        let expectedHots8 = "Cereza negra, pimienta negra, hueso, tiza"
        let expectedHots9 = "No funciona bien en climas cálidos."
        let expectedHots10 = "Ciruela, cuero, cuerpo completo"
        let expectedHots11 = "Tabaco, carambola, espárragos"
        let expectedHots12 = "Fruta oscura, mora, ciruela"
        let expectedHots13 = "pastel de frutas, chocolate"
        let expectedHots14 = "Cereza negra, anís, cuero"
        let expectedHots15 = "Chocolate negro, pimienta negra, cuero"
        let expectedHots16 = "Rico, floral, almendra, melocotón."
        let expectedHots17 = "demasiado maduro"
        let expectedHots18 = "Varía."
        let expectedHots19 = "Fruta madura, mermelada"
        let expectedHots20 = "Cítricos, melocotón, lima"
        let expectedHots21 = "Mermelada, pimiento morrón, pimienta negra"
        let expectedHots22 = "Maduro, higo, balsámico, espresso"
        let expectedHots23 = "maduro"
        let expectedHots24 = "dulce, perfumado"
        let expectedHots25 = "Regaliz, clavo, espresso, moca, chocolate negro"
        let expectedHots26 = "Cuero"
        let expectedHots27 = "Fruta madura, mandarina, mango"
        let expectedHots28 = "Fruta madura, mermelada, pomelo"
        let expectedHots29 = "Mora, anís, ciruela negra"


        XCTAssertEqual(amarone.getHotClimateCharacteristics(), expectedHots0)
        XCTAssertEqual(barbera.getHotClimateCharacteristics(), expectedHots1)
        XCTAssertEqual(cabernetFranc.getHotClimateCharacteristics(), expectedHots2)
        XCTAssertEqual(cabernetSauvignon.getHotClimateCharacteristics(), expectedHots3)
        XCTAssertEqual(carmenere.getHotClimateCharacteristics(), expectedHots4)
        XCTAssertEqual(champangeBlend.getHotClimateCharacteristics(), expectedHots5)
        XCTAssertEqual(chardonnay.getHotClimateCharacteristics(), expectedHots6)
        XCTAssertEqual(cheninBlanc.getHotClimateCharacteristics(), expectedHots7)
        XCTAssertEqual(gamay.getHotClimateCharacteristics(), expectedHots8)
        XCTAssertEqual(gewurztraminer.getHotClimateCharacteristics(), expectedHots9)
        XCTAssertEqual(grenache.getHotClimateCharacteristics(), expectedHots10)
        XCTAssertEqual(grunerVeltliner.getHotClimateCharacteristics(), expectedHots11)
        XCTAssertEqual(malbec.getHotClimateCharacteristics(), expectedHots12)
        XCTAssertEqual(merlot.getHotClimateCharacteristics(), expectedHots13)
        XCTAssertEqual(nebbiolo.getHotClimateCharacteristics(), expectedHots14)
        XCTAssertEqual(petiteSirah.getHotClimateCharacteristics(), expectedHots15)
        XCTAssertEqual(pinotGris.getHotClimateCharacteristics(), expectedHots16)
        XCTAssertEqual(pinotNoir.getHotClimateCharacteristics(), expectedHots17)
        XCTAssertEqual(port.getHotClimateCharacteristics(), expectedHots18)
        XCTAssertEqual(redBlend.getHotClimateCharacteristics(), expectedHots19)
        XCTAssertEqual(riesling.getHotClimateCharacteristics(), expectedHots20)
        XCTAssertEqual(rose.getHotClimateCharacteristics(), expectedHots21)
        XCTAssertEqual(sangiovese.getHotClimateCharacteristics(), expectedHots22)
        XCTAssertEqual(sauvignonBlanc.getHotClimateCharacteristics(), expectedHots23)
        XCTAssertEqual(sparklingBlend.getHotClimateCharacteristics(), expectedHots24)
        XCTAssertEqual(syrah.getHotClimateCharacteristics(), expectedHots25)
        XCTAssertEqual(tempranillo.getHotClimateCharacteristics(), expectedHots26)
        XCTAssertEqual(viognier.getHotClimateCharacteristics(), expectedHots27)
        XCTAssertEqual(whiteBlend.getHotClimateCharacteristics(), expectedHots28)
        XCTAssertEqual(zinfandel.getHotClimateCharacteristics(), expectedHots29)
    }


    func testWineHotClimateCharacteristicsLocalizationRU() {

        let expectedHots0 = "Смешивание — варьируется."
        let expectedHots1 = "Солодка, ежевика, черный перец"
        let expectedHots2 = "Перец чили, табак, щебень"
        let expectedHots3 = "Джем, темные фрукты, ежевика, черная вишня"
        let expectedHots4 = "Черная слива, ваниль, джемми"
        let expectedHots5 = "Варьируется."
        let expectedHots6 = "Яблоко, груша, спелое"
        let expectedHots7 = "Перезревший, апельсиновый мармелад, имбирь, шафран"
        let expectedHots8 = "Черная вишня, черный перец, камень, мел"
        let expectedHots9 = "Плохо работает в теплом климате"
        let expectedHots10 = "Слива, кожа, полный корпус"
        let expectedHots11 = "Табак, карамбола, спаржа"
        let expectedHots12 = "Темные фрукты, ежевика, слива"
        let expectedHots13 = "Фруктовый кекс, шоколад"
        let expectedHots14 = "Черная вишня, анис, кожа"
        let expectedHots15 = "Темный шоколад, черный перец, кожа"
        let expectedHots16 = "Насыщенный, цветочный, миндаль, персик"
        let expectedHots17 = "Перезрелый"
        let expectedHots18 = "Варьируется."
        let expectedHots19 = "Спелые фрукты, джем"
        let expectedHots20 = "Цитрусовый, персик, лайм"
        let expectedHots21 = "Варенье, болгарский перец, черный перец"
        let expectedHots22 = "Спелый, инжир, бальзамический, эспрессо"
        let expectedHots23 = "спелый"
        let expectedHots24 = "Сладкий, ароматный"
        let expectedHots25 = "Лакрица, гвоздика, эспрессо, мокко, темный шоколад"
        let expectedHots26 = "Натуральная кожа"
        let expectedHots27 = "Спелые фрукты, мандарин, манго"
        let expectedHots28 = "Спелые фрукты, варенье, грейпфрут"
        let expectedHots29 = "Ежевика, анис, черная слива"


        XCTAssertEqual(amarone.getHotClimateCharacteristics(), expectedHots0)
        XCTAssertEqual(barbera.getHotClimateCharacteristics(), expectedHots1)
        XCTAssertEqual(cabernetFranc.getHotClimateCharacteristics(), expectedHots2)
        XCTAssertEqual(cabernetSauvignon.getHotClimateCharacteristics(), expectedHots3)
        XCTAssertEqual(carmenere.getHotClimateCharacteristics(), expectedHots4)
        XCTAssertEqual(champangeBlend.getHotClimateCharacteristics(), expectedHots5)
        XCTAssertEqual(chardonnay.getHotClimateCharacteristics(), expectedHots6)
        XCTAssertEqual(cheninBlanc.getHotClimateCharacteristics(), expectedHots7)
        XCTAssertEqual(gamay.getHotClimateCharacteristics(), expectedHots8)
        XCTAssertEqual(gewurztraminer.getHotClimateCharacteristics(), expectedHots9)
        XCTAssertEqual(grenache.getHotClimateCharacteristics(), expectedHots10)
        XCTAssertEqual(grunerVeltliner.getHotClimateCharacteristics(), expectedHots11)
        XCTAssertEqual(malbec.getHotClimateCharacteristics(), expectedHots12)
        XCTAssertEqual(merlot.getHotClimateCharacteristics(), expectedHots13)
        XCTAssertEqual(nebbiolo.getHotClimateCharacteristics(), expectedHots14)
        XCTAssertEqual(petiteSirah.getHotClimateCharacteristics(), expectedHots15)
        XCTAssertEqual(pinotGris.getHotClimateCharacteristics(), expectedHots16)
        XCTAssertEqual(pinotNoir.getHotClimateCharacteristics(), expectedHots17)
        XCTAssertEqual(port.getHotClimateCharacteristics(), expectedHots18)
        XCTAssertEqual(redBlend.getHotClimateCharacteristics(), expectedHots19)
        XCTAssertEqual(riesling.getHotClimateCharacteristics(), expectedHots20)
        XCTAssertEqual(rose.getHotClimateCharacteristics(), expectedHots21)
        XCTAssertEqual(sangiovese.getHotClimateCharacteristics(), expectedHots22)
        XCTAssertEqual(sauvignonBlanc.getHotClimateCharacteristics(), expectedHots23)
        XCTAssertEqual(sparklingBlend.getHotClimateCharacteristics(), expectedHots24)
        XCTAssertEqual(syrah.getHotClimateCharacteristics(), expectedHots25)
        XCTAssertEqual(tempranillo.getHotClimateCharacteristics(), expectedHots26)
        XCTAssertEqual(viognier.getHotClimateCharacteristics(), expectedHots27)
        XCTAssertEqual(whiteBlend.getHotClimateCharacteristics(), expectedHots28)
        XCTAssertEqual(zinfandel.getHotClimateCharacteristics(), expectedHots29)
    }


    func testWineHotClimateCharacteristicsLocalizationDE() {

        let expectedHots0 = "Mischung - Variiert."
        let expectedHots1 = "Süßholz, Brombeere, schwarzer Pfeffer"
        let expectedHots2 = "Chilipfeffer, Tabak, zerkleinerter Kies"
        let expectedHots3 = "Marmelade, dunkle Früchte, Brombeere, Schwarzkirsche"
        let expectedHots4 = "Schwarze Pflaume, Vanille, Marmelade"
        let expectedHots5 = "Variiert."
        let expectedHots6 = "Apfel, Birne, reif"
        let expectedHots7 = "Überreife Orangenmarmelade, Ingwer, Safran"
        let expectedHots8 = "Schwarze Kirsche, schwarzer Pfeffer, Stein, Kreide"
        let expectedHots9 = "Funktioniert nicht gut in warmem Klima"
        let expectedHots10 = "Pflaume, Leder, voller Körper"
        let expectedHots11 = "Tabak, Sternfrucht, Spargel"
        let expectedHots12 = "Dunkle Frucht, Brombeere, Pflaume"
        let expectedHots13 = "Obstkuchen, Schokolade"
        let expectedHots14 = "Schwarze Kirsche, Anis, Leder"
        let expectedHots15 = "Dunkle Schokolade, schwarzer Pfeffer, Leder"
        let expectedHots16 = "Reichhaltig, blumig, Mandel, Pfirsich"
        let expectedHots17 = "Überreif"
        let expectedHots18 = "Variiert."
        let expectedHots19 = "Reife Frucht, marmelade"
        let expectedHots20 = "Zitrus, Pfirsich, Limette"
        let expectedHots21 = "Marmelade, Paprika, schwarzer Pfeffer"
        let expectedHots22 = "Reife, Feige, Balsamico, Espresso"
        let expectedHots23 = "reif"
        let expectedHots24 = "Süß, parfümiert"
        let expectedHots25 = "Lakritz, Nelken, Espresso, Mokka, Zartbitterschokolade"
        let expectedHots26 = "Leder"
        let expectedHots27 = "Reife Früchte, Mandarine, Mango"
        let expectedHots28 = "Reife Früchte, Marmelade, Grapefruit"
        let expectedHots29 = "Brombeere, Anis, schwarze Pflaume"


        XCTAssertEqual(amarone.getHotClimateCharacteristics(), expectedHots0)
        XCTAssertEqual(barbera.getHotClimateCharacteristics(), expectedHots1)
        XCTAssertEqual(cabernetFranc.getHotClimateCharacteristics(), expectedHots2)
        XCTAssertEqual(cabernetSauvignon.getHotClimateCharacteristics(), expectedHots3)
        XCTAssertEqual(carmenere.getHotClimateCharacteristics(), expectedHots4)
        XCTAssertEqual(champangeBlend.getHotClimateCharacteristics(), expectedHots5)
        XCTAssertEqual(chardonnay.getHotClimateCharacteristics(), expectedHots6)
        XCTAssertEqual(cheninBlanc.getHotClimateCharacteristics(), expectedHots7)
        XCTAssertEqual(gamay.getHotClimateCharacteristics(), expectedHots8)
        XCTAssertEqual(gewurztraminer.getHotClimateCharacteristics(), expectedHots9)
        XCTAssertEqual(grenache.getHotClimateCharacteristics(), expectedHots10)
        XCTAssertEqual(grunerVeltliner.getHotClimateCharacteristics(), expectedHots11)
        XCTAssertEqual(malbec.getHotClimateCharacteristics(), expectedHots12)
        XCTAssertEqual(merlot.getHotClimateCharacteristics(), expectedHots13)
        XCTAssertEqual(nebbiolo.getHotClimateCharacteristics(), expectedHots14)
        XCTAssertEqual(petiteSirah.getHotClimateCharacteristics(), expectedHots15)
        XCTAssertEqual(pinotGris.getHotClimateCharacteristics(), expectedHots16)
        XCTAssertEqual(pinotNoir.getHotClimateCharacteristics(), expectedHots17)
        XCTAssertEqual(port.getHotClimateCharacteristics(), expectedHots18)
        XCTAssertEqual(redBlend.getHotClimateCharacteristics(), expectedHots19)
        XCTAssertEqual(riesling.getHotClimateCharacteristics(), expectedHots20)
        XCTAssertEqual(rose.getHotClimateCharacteristics(), expectedHots21)
        XCTAssertEqual(sangiovese.getHotClimateCharacteristics(), expectedHots22)
        XCTAssertEqual(sauvignonBlanc.getHotClimateCharacteristics(), expectedHots23)
        XCTAssertEqual(sparklingBlend.getHotClimateCharacteristics(), expectedHots24)
        XCTAssertEqual(syrah.getHotClimateCharacteristics(), expectedHots25)
        XCTAssertEqual(tempranillo.getHotClimateCharacteristics(), expectedHots26)
        XCTAssertEqual(viognier.getHotClimateCharacteristics(), expectedHots27)
        XCTAssertEqual(whiteBlend.getHotClimateCharacteristics(), expectedHots28)
        XCTAssertEqual(zinfandel.getHotClimateCharacteristics(), expectedHots29)
    }


    func testWineHotClimateCharacteristicsLocalizationFR() {

        let expectedHots0 = "Mélange - Varie."
        let expectedHots1 = "Réglisse, mûre, poivre noir"
        let expectedHots2 = "Piment, tabac, gravier concassé"
        let expectedHots3 = "Confiture, fruits noirs, mûre, cerise noire"
        let expectedHots4 = "Prune noire, vanille, confiture"
        let expectedHots5 = "Varie."
        let expectedHots6 = "Pomme, poire, mûre"
        let expectedHots7 = "Sur mûre, marmelade d'orange, gingembre, safran"
        let expectedHots8 = "Cerise noire, poivre noir, pierre, craie"
        let expectedHots9 = "Ne fonctionne pas bien dans un climat chaud"
        let expectedHots10 = "Prune, cuir, corps entier"
        let expectedHots11 = "Tabac, carambole, asperge"
        let expectedHots12 = "Fruits noirs, mûre, prune"
        let expectedHots13 = "Gâteau aux fruits, chocolat"
        let expectedHots14 = "Cerise noire, anis, cuir"
        let expectedHots15 = "Chocolat noir, poivre noir, cuir"
        let expectedHots16 = "Riche, floral, amande, pêche"
        let expectedHots17 = "Trop mûr"
        let expectedHots18 = "Varie."
        let expectedHots19 = "Fruits mûrs, confiturés"
        let expectedHots20 = "Agrumes, pêche, citron vert"
        let expectedHots21 = "Confiture, poivron, poivre noir"
        let expectedHots22 = "Mûr, figue, balsamique, expresso"
        let expectedHots23 = "mûr"
        let expectedHots24 = "Doux, parfumé"
        let expectedHots25 = "Réglisse, clous de girofle, expresso, moka, chocolat noir"
        let expectedHots26 = "Cuir"
        let expectedHots27 = "Fruits mûrs, mandarine, mangue"
        let expectedHots28 = "Fruits mûrs, confiturés, pamplemousse"
        let expectedHots29 = "Mûre, anis, prune noire"


        XCTAssertEqual(amarone.getHotClimateCharacteristics(), expectedHots0)
        XCTAssertEqual(barbera.getHotClimateCharacteristics(), expectedHots1)
        XCTAssertEqual(cabernetFranc.getHotClimateCharacteristics(), expectedHots2)
        XCTAssertEqual(cabernetSauvignon.getHotClimateCharacteristics(), expectedHots3)
        XCTAssertEqual(carmenere.getHotClimateCharacteristics(), expectedHots4)
        XCTAssertEqual(champangeBlend.getHotClimateCharacteristics(), expectedHots5)
        XCTAssertEqual(chardonnay.getHotClimateCharacteristics(), expectedHots6)
        XCTAssertEqual(cheninBlanc.getHotClimateCharacteristics(), expectedHots7)
        XCTAssertEqual(gamay.getHotClimateCharacteristics(), expectedHots8)
        XCTAssertEqual(gewurztraminer.getHotClimateCharacteristics(), expectedHots9)
        XCTAssertEqual(grenache.getHotClimateCharacteristics(), expectedHots10)
        XCTAssertEqual(grunerVeltliner.getHotClimateCharacteristics(), expectedHots11)
        XCTAssertEqual(malbec.getHotClimateCharacteristics(), expectedHots12)
        XCTAssertEqual(merlot.getHotClimateCharacteristics(), expectedHots13)
        XCTAssertEqual(nebbiolo.getHotClimateCharacteristics(), expectedHots14)
        XCTAssertEqual(petiteSirah.getHotClimateCharacteristics(), expectedHots15)
        XCTAssertEqual(pinotGris.getHotClimateCharacteristics(), expectedHots16)
        XCTAssertEqual(pinotNoir.getHotClimateCharacteristics(), expectedHots17)
        XCTAssertEqual(port.getHotClimateCharacteristics(), expectedHots18)
        XCTAssertEqual(redBlend.getHotClimateCharacteristics(), expectedHots19)
        XCTAssertEqual(riesling.getHotClimateCharacteristics(), expectedHots20)
        XCTAssertEqual(rose.getHotClimateCharacteristics(), expectedHots21)
        XCTAssertEqual(sangiovese.getHotClimateCharacteristics(), expectedHots22)
        XCTAssertEqual(sauvignonBlanc.getHotClimateCharacteristics(), expectedHots23)
        XCTAssertEqual(sparklingBlend.getHotClimateCharacteristics(), expectedHots24)
        XCTAssertEqual(syrah.getHotClimateCharacteristics(), expectedHots25)
        XCTAssertEqual(tempranillo.getHotClimateCharacteristics(), expectedHots26)
        XCTAssertEqual(viognier.getHotClimateCharacteristics(), expectedHots27)
        XCTAssertEqual(whiteBlend.getHotClimateCharacteristics(), expectedHots28)
        XCTAssertEqual(zinfandel.getHotClimateCharacteristics(), expectedHots29)
    }
    
}
