import 'package:get/get.dart';
import 'plants.dart';

class LocalString extends Translations {
  @override
  //TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {

          //TULSI

          'plantName1': 'Tulsi',
          'decription1':'Scientific name: Ocimum tenuiflorum \n'
          'Common name: Tulsi or Holy Basil \n'
          'Family: Lamiaceae (mint family) \n'
          'Native to: Indian subcontinent \n'
          'Habitat: Tropical climates\n'
          'Description: Perennial plant, grows up to 60 cm, fragrant aroma \n' ,

          'decription11':
              'Traditional Ayurvedic medicine uses tulsi for its antibacterial, antiviral, and anti-inflammatory properties\n'
        'Commonly used to treat respiratory infections, fever, and digestive problems\n'
        'May help reduce stress and anxiety, and promote overall well-being\n'
        'Potential side effects and contraindications may exist, such as interactions with certain medications\n'  ,


          'decription111':
              'Tulsi can be consumed fresh, dried, in tea, or as supplements\n'
        'To make tulsi tea, steep fresh or dried leaves in hot water for 5-10 minutes\n'
        'Tulsi supplements are available in capsule or tincture form\n'
        'Consultation with a healthcare professional is recommended before use, especially for pregnant or breastfeeding individuals or those taking medications.',


          //MEXICAN MINT

          'plantName2': 'Mexican Mint',
          'decription2':
          'Scientific name: Plectranthus amboinicus \n'
          'Common name: Mexican Mint, Cuban Oregano, Spanish Thyme\n'
          'Family: Lamiaceae (mint family)\n'
          'Native to: Southern and Eastern Africa\n'
          'Habitat: Tropical and subtropical regions\n'
          'Description: Perennial plant, grows up to 1 meter, fleshy leaves with a strong scent\n',

          'decription22': 'Mexican Mint has been used for medicinal purposes in traditional medicine for centuries\n'
          'It is believed to have antibacterial, antifungal, and anti-inflammatory properties \n'
          'Commonly used to treat respiratory infections, digestive problems, and skin conditions\n'
          'May also help reduce fever and alleviate pain\n'
          'Potential side effects and contraindications may exist, such as allergic reactions in some individuals',

          'decription222' : 'Mexican Mint can be consumed fresh, dried, or in tea\n'
        'To make tea, steep fresh or dried leaves in hot water for 5-10 minutes\n'
        'It can also be used as a seasoning in cooking\n'
        'Consultation with a healthcare professional is recommended before use, especially for pregnant or breastfeeding individuals or those taking medications.',


          //NEEM

          'plantName3': 'NEEM',
          'decription3': 'Scientific name: Azadirachta indica\n'
          'Common name: Neem\n'
          'Family: Meliaceae\n'
          'Native to: Indian subcontinent\n'
          'Habitat: Tropical and subtropical regions\n'
          'Description: Evergreen tree, grows up to 20-30 meters, small white flowers, and green fruit that turns yellow when ripe',


          'decription33': 'Neem has been used in Ayurvedic medicine for thousands of years due to its medicinal properties\n'
        'It is believed to have antibacterial, antiviral, antifungal, and anti-inflammatory properties\n'
        'Commonly used to treat skin conditions, such as acne, eczema, and psoriasis\n'
        'Also used to treat digestive problems, fever, and respiratory infections\n'
        'May also have potential benefits for dental health, immune system, and liver function',


          'decription333': 'Neem can be consumed in various forms, such as fresh leaves, dried leaves, oil, and supplements\n'
        'To make neem tea, steep fresh or dried leaves in hot water for 5-10 minutes\n'
        'Neem oil is commonly used topically for skin and hair care\n'
        'Supplements are available in capsule or powder form\n'
        'Consultation with a healthcare professional is recommended before use, especially for pregnant or breastfeeding individuals or those taking medications.',



          //MINT

          'plantName4': 'MINT',

          'decription4': 'Scientific name: Mentha \n'
          'Common name: Mint\n'
          'Family: Lamiaceae\n'
          'Native to: Europe, Asia, and North America\n'
          'Habitat: Temperate climates\n'
          'Description: Perennial herb, grows up to 1 meter, fragrant aroma, and various leaf colors and shapes',

          'decription44': 'Mint has been used in traditional medicine for its medicinal properties for centuries\n'
        'It is believed to have antispasmodic, analgesic, and anti-inflammatory properties\n'
        'Commonly used to treat digestive problems, such as bloating, gas, and nausea\n'
        'Also used to relieve headaches, menstrual cramps, and respiratory problems\n'
        'May have potential benefits for skin, dental health, and memory',

          'decription444': 'Fresh mint leaves can be added to salads, soups, sauces, smoothies, and cocktails for flavor and freshness\n'
        'Dried mint leaves can be used to make tea, or as a seasoning in cooking\n'
        'Mint extract and essential oil can be added to various products such as toothpaste, mouthwash, and skincare products\n'
        'Mint oil can be used topically for muscle pain and tension relief\n'
        'Mint supplements are also available in capsule or liquid form\n',


          //HIBISCUS

          'plantName5': 'HIBISCUS',

          'decription5': 'Scientific name: Hibiscus sabdariffa\n'
          'Common name: Hibiscus, Roselle\n'
          'Family: Malvaceae\n'
          'Native to: West Africa\n'
          'Habitat: Tropical and subtropical regions\n'
          'Description: Annual or perennial shrub, grows up to 2-3 meters, large showy flowers in various colors',

          'decription55': 'Hibiscus has been used in traditional medicine for its medicinal properties for centuries\n'
        'It is believed to have antioxidant, anti-inflammatory, and antibacterial properties\n'
        'Commonly used to lower blood pressure and cholesterol levels\n'
        'Also used to promote liver health, relieve menstrual cramps, and support digestive health\n'
        'May have potential benefits for skin and hair health',

          'decription555': 'Hibiscus tea is a popular way to consume the plant, which can be made from fresh or dried flowers\n'
        'To make hibiscus tea, steep fresh or dried flowers in hot water for 5-10 minutes\n'
        'Hibiscus can also be used as a natural food coloring and flavoring agent in various dishes and beverages\n'
        'Hibiscus extract and supplements are also available in various forms, such as capsules and powders\n'
        'Hibiscus may interact with certain meds such as blood pressure and diabetes medications.',


          //CURRY LEAF
          'plantName6': 'Curry Leaf',

          'decription6': 'Scientific name: Murraya koenigii\n'
          'Common name: Curry Leaf\n'
          'Family: Rutaceae\n'
          'Native to: India, Sri Lanka\n'
          'Habitat: Tropical and subtropical regions\n'
          'Description: Small tree or shrub, grows up to 6 meters, pinnate leaves, aromatic smell',

          'decription66': 'Curry leaf has been used in traditional medicine for its medicinal properties for centuries\n'
        'It is believed to have antioxidant, anti-inflammatory, and antimicrobial properties\n'
        'Commonly used to treat digestive problems, such as diarrhea, constipation, and indigestion\n'
        'Also used to promote hair growth, lower blood sugar levels, and reduce cholesterol levels\n'
        'May have potential benefits for skin health and immune function',

          'decription666': 'Fresh or dried curry leaves are used as a seasoning in cooking, especially in Indian and Southeast Asian cuisines\n'
        'Curry leaf extract and supplements are also available in various forms, such as capsules and powders\n'
        'Curry leaf essential oil can be used topically or aromatically for hair and skin health\n'
        'Before use, consult a healthcare professional if pregnant, breastfeeding, or taking medications. Curry leaf may interact with some meds, including blood sugar and pressure meds.',



          //BETEL

          'plantName7': 'BETEL',
          'decription7': 'Scientific name: Piper betle\n'
          'Common name: Betel Leaf\n'
          'Family: Piperaceae\n'
          'Native to: South and Southeast Asia\n'
          'Habitat: Tropical regions\n'
          'Description: Evergreen vine, grows up to 15 meters, heart-shaped leaves, aromatic smell',

          'decription77': 'Betel has been used in traditional medicine for its medicinal properties for centuries\n'
        'It is believed to have antioxidant, anti-inflammatory, and antibacterial properties\n'
        'Commonly used to improve digestion and freshen breath\n'
        'Also used for wound healing, cough, and asthma\n'
        'May have potential benefits for oral health, diabetes, and heart health',

          'decription777': 'Betel leaves can be chewed on their own or used in various preparations such as paan, which is a popular mixture of betel leaf, areca nut, and other ingredients\n'
        'Betel extract and supplements are also available in various forms, such as capsules and powders\n'
        'Topical application of betel leaves is also used for wound healing and skin infections\n'
        'Consult a doctor before use, especially if pregnant, breastfeeding, taking medications. Betel may have side effects and interact with certain meds.',

          //BRAHMI

          'plantName8': 'Brahmi',

          'decription8': 'Scientific name: Bacopa monnieri\n'
          'Common name: Brahmi\n'
          'Family: Plantaginaceae\n'
          'Native to: India, North America, Australia, Europe, Asia, Africa\n'
          'Habitat: Wetlands, marshes, and muddy shores\n'
          'Description: Perennial herb, grows up to 4-6 inches, small white flowers, oblong leaves',

          'decription88': 'Brahmi has been used in Ayurvedic medicine for its medicinal properties for centuries\n'
        'It is believed to have antioxidant, anti-inflammatory, and adaptogenic properties\n'
        'Commonly used to improve cognitive function, memory, and concentration\n'
        'Also used for anxiety, stress, and depression\n'
        'May have potential benefits for skin health and hair growth',

          'decription888': 'Brahmi leaves can be consumed fresh or dried, or in the form of tea, capsules, or powder\n'
        'Topical application of Brahmi oil or paste is also used for hair growth and skin health\n'
        'Consultation with a healthcare professional is recommended before use, especially for pregnant or breastfeeding individuals or those taking medications. It is also important to note that Brahmi may interact with certain medications, such as thyroid medications.',

          //BHUMI AMLA
          'plantName9': 'Bhumi Amla',
          'decription9': 'Scientific name: Phyllanthus niruri\n'
          'Common name: Bhumyamalaki, Bhumiamla\n'
          'Family: Phyllanthaceae\n'
          'Native to: India, South America, China, and the Caribbean\n'
          'Habitat: Moist places such as fields, gardens, and waste places\n'
          'Description: Annual herb, grows up to 40 cm, small yellow-green flowers, small elliptic leaves',

          'decription99': 'Bhumyamalaki has been used in Ayurvedic medicine for its medicinal properties for centuries\n'
        'It is believed to have hepatoprotective, antioxidant, and anti-inflammatory properties\n'
        'Commonly used to support liver function and treat liver diseases\n'
        'Also used for kidney stones, urinary tract infections, and respiratory diseases\n'
        'May have potential benefits for skin health and immunity',

          'decription999': 'Bhumyamalaki can be consumed fresh or dried, or in the form of tea, capsules, or powder\n'
        'Topical application of Bhumyamalaki paste or oil is also used for skin health\n'
        'Consultation with a healthcare professional is recommended before use, especially for pregnant or breastfeeding individuals or those taking medications. It is also important to note that Bhumyamalaki may interact with certain medications, such as blood sugar and blood pressure medications.',

          'plantName10': 'flower',
          'decription10': '',
        },


        'hi_IN': {
          'plantName1': 'तुलसी',
          'decription1':'वैज्ञानिक नाम: Ocimum tenuiflorum \n'
              'सामान्य नाम: तुलसी या पवित्र तुलसी \n'
              'परिवार: लामियासीए (टकसाल परिवार) \n'
              'निवासी: भारतीय उपमहाद्वीप \n'
              'निवास स्थान: उष्णकटिबंधीय जलवायु\n'
              'विवरण: बारहमासी पौधा, 60 सेमी तक बढ़ता है, सुगंधित सुगंध \n' ,

          'decription11':
          'पारंपरिक आयुर्वेदिक दवा में तुलसी का इस्तेमाल उसके जीवाणुरोधी, एंटीवायरल और जलनरोधी गुणों के लिए किया जाता है\n'
              'आमतौर पर श्वसन संक्रमण, बुखार और पाचन संबंधी समस्याओं के इलाज के लिए उपयोग किया जाता है\n'
              'तनाव और चिंता को कम करने में मदद कर सकता है, और समग्र कल्याण को बढ़ावा दे सकता है\n'
              'संभावित दुष्प्रभाव और मतभेद मौजूद हो सकते हैं, जैसे कि कुछ दवाओं के साथ पारस्परिक क्रिया\n' ,


          'decription111':
          'तुलसी को ताज़ा, सुखाकर, चाय में या पूरक के रूप में लिया जा सकता है\n'
              'तुलसी की चाय बनाने के लिए, ताज़े या सूखे पत्तों को गर्म पानी में 5-10 मिनट के लिए भिगोएँ\n'
              'तुलसी के पूरक कैप्सूल या मिलावट के रूप में उपलब्ध हैं\n'
              'विशेष रूप से गर्भवती या स्तनपान कराने वाले व्यक्तियों या दवा लेने वालों के लिए उपयोग करने से पहले एक स्वास्थ्य देखभाल पेशेवर के साथ परामर्श की सिफारिश की जाती है।',


          //MEXICAN MINT

          'plantName2': 'मैक्सिकन \n'
              'टकसाल',
          'decription2':
          'वैज्ञानिक नाम: पेलेट्रान्थस एंबोइनिकस \n'
              'सामान्य नाम: मेक्सिकन मिंट, क्यूबन ऑरेगैनो, स्पैनिश थाइम\n'
              'परिवार: लैमियासी (टकसाल परिवार)\n'
              'निवासी: दक्षिणी और पूर्वी अफ्रीका\n'
              'निवास स्थान: उष्णकटिबंधीय और उपोष्णकटिबंधीय क्षेत्र\n'
              'विवरण: बारहमासी पौधा, 1 मीटर तक बढ़ता है, तेज गंध वाली मांसल पत्तियां\n',

          'decription22': 'मैक्सिकन मिंट का इस्तेमाल सदियों से पारंपरिक चिकित्सा में औषधीय उद्देश्यों के लिए किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें जीवाणुरोधी, कवकरोधी और जलनरोधी गुण होते हैं \n'
              'आमतौर पर श्वसन संक्रमण, पाचन संबंधी समस्याओं और त्वचा की स्थिति के इलाज के लिए उपयोग किया जाता है\n'
              'बुखार कम करने और दर्द कम करने में भी मदद कर सकता है\n'
              'संभावित दुष्प्रभाव और मतभेद मौजूद हो सकते हैं, जैसे कुछ व्यक्तियों में एलर्जी की प्रतिक्रिया',

          'decription222' : 'मैक्सिकन मिंट को ताज़ा, सुखाकर या चाय में डालकर खाया जा सकता है\n'
              'चाय बनाने के लिए, ताज़ी या सूखी पत्तियों को गर्म पानी में 5-10 मिनट के लिए भिगोएँ\n'
              'इसे खाना पकाने में मसाले के तौर पर भी इस्तेमाल किया जा सकता है\n'
              'विशेष रूप से गर्भवती या स्तनपान कराने वाले व्यक्तियों या दवा लेने वालों के लिए उपयोग करने से पहले एक स्वास्थ्य देखभाल पेशेवर के साथ परामर्श की सिफारिश की जाती है।',


          //NEEM

          'plantName3': 'नीम',
          'decription3': 'वैज्ञानिक नाम: अज़ादिराचता इंडिका\n'
              'सामान्य नाम: नीम\n'
              'परिवार: मेलियासी\n'
              'निवासी: भारतीय उपमहाद्वीप\n'
              'निवास स्थान: उष्णकटिबंधीय और उपोष्णकटिबंधीय क्षेत्र\n'
              'विवरण: सदाबहार पेड़, 20-30 मीटर तक बढ़ता है, छोटे सफेद फूल, और हरे फल जो पकने पर पीले हो जाते हैं',


          'decription33': 'नीम के औषधीय गुणों की वजह से इसका इस्तेमाल आयुर्वेदिक दवाओं में हज़ारों सालों से किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें जीवाणुरोधी, एंटीवायरल, एंटीफंगल और एंटी-इंफ्लेमेटरी गुण होते हैं\n'
              'मुँहासे, एक्जिमा, और सोरायसिस जैसी त्वचा की स्थितियों के इलाज के लिए आमतौर पर इस्तेमाल किया जाता है\n'
              'पाचन समस्याओं, बुखार और श्वसन संक्रमण के इलाज के लिए भी इस्तेमाल किया जाता है\n'
              'दंत स्वास्थ्य, प्रतिरक्षा प्रणाली और यकृत समारोह के लिए संभावित लाभ भी हो सकते हैं',


          'decription333': 'नीम का विभिन्न रूपों में सेवन किया जा सकता है, जैसे ताजी पत्तियां, सूखे पत्ते, तेल और पूरक \n'
              'नीम की चाय बनाने के लिए, ताज़े या सूखे पत्तों को गर्म पानी में 5-10 मिनट के लिए भिगोएँ\n'
              'नीम का तेल आमतौर पर त्वचा और बालों की देखभाल के लिए इस्तेमाल किया जाता है\n'
              'पूरक कैप्सूल या पाउडर के रूप में उपलब्ध हैं\n'
              'विशेष रूप से गर्भवती या स्तनपान कराने वाले व्यक्तियों या दवा लेने वालों के लिए उपयोग करने से पहले एक स्वास्थ्य देखभाल पेशेवर के साथ परामर्श की सिफारिश की जाती है।',



          //MINT

          'plantName4': 'पुदीना',

          'decription4': 'वैज्ञानिक नाम: मेंथा \n'
              'सामान्य नाम: मिंट\n'
              'परिवार: लामियासीए\n'
              'निवासी: यूरोप, एशिया और उत्तरी अमेरिका\n'
              'निवास स्थान: समशीतोष्ण जलवायु\n'
              'विवरण: बारहमासी जड़ी बूटी, 1 मीटर तक बढ़ती है, सुगंधित सुगंध, और पत्तियों के विभिन्न रंग और आकार',

          'decription44': 'पुदीने का सदियों से औषधीय गुणों के लिए पारंपरिक चिकित्सा में उपयोग किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें एंटीस्पास्मोडिक, एनाल्जेसिक और एंटी-इंफ्लेमेटरी गुण होते हैं\n'
              'आम तौर पर पेट फूलने, गैस और मतली जैसी पाचन संबंधी समस्याओं के इलाज के लिए इस्तेमाल किया जाता है\n'
              'सिरदर्द, मासिक धर्म में ऐंठन, और सांस की समस्याओं से राहत दिलाने के लिए भी इस्तेमाल किया जाता है\n'
              'त्वचा, दंत स्वास्थ्य और स्मृति के लिए संभावित लाभ हो सकता है',

          'decription444': 'स्वाद और ताजगी के लिए सलाद, सूप, सॉस, स्मूदी और कॉकटेल में ताज़े पुदीने के पत्तों को मिलाया जा सकता है\n'
              'पुदीने की सूखी पत्तियों का इस्तेमाल चाय बनाने या खाना पकाने में मसाले के तौर पर किया जा सकता है\n'
              'पुदीने के सत्व और आवश्यक तेल को टूथपेस्ट, माउथवॉश और स्किनकेयर उत्पादों जैसे विभिन्न उत्पादों में जोड़ा जा सकता है\n'
              'पुदीने के तेल का इस्तेमाल मांसपेशियों में दर्द और तनाव से राहत के लिए किया जा सकता है\n'
              'पुदीने के पूरक कैप्सूल या तरल रूप में भी उपलब्ध हैं\n',


          //HIBISCUS

          'plantName5': 'हिबिस्कुस',

          'decription5': 'वैज्ञानिक नाम: हिबिस्कस सबदरिफ़ा\n'
              'सामान्य नाम: हिबिस्कस, रोज़ेल\n'
              'परिवार: मालवेसी\n'
              'के मूल निवासी: पश्चिम अफ्रीका\n'
              'निवास स्थान: उष्णकटिबंधीय और उपोष्णकटिबंधीय क्षेत्र\n'
              'विवरण: वार्षिक या बारहमासी झाड़ी, 2-3 मीटर तक बढ़ता है, विभिन्न रंगों में बड़े दिखावटी फूल',

          'decription55': 'हिबिस्कस का सदियों से औषधीय गुणों के लिए पारंपरिक चिकित्सा में उपयोग किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें एंटीऑक्सीडेंट, जलनरोधी और जीवाणुरोधी गुण होते हैं\n'
              'आमतौर पर रक्तचाप और कोलेस्ट्रॉल के स्तर को कम करने के लिए उपयोग किया जाता है\n'
              'जिगर के स्वास्थ्य को बढ़ावा देने, मासिक धर्म की ऐंठन से राहत देने और पाचन स्वास्थ्य में मदद करने के लिए भी इस्तेमाल किया जाता है\n'
              'त्वचा और बालों के स्वास्थ्य के लिए संभावित लाभ हो सकता है',

          'decription555': 'हिबिस्कस चाय पौधे का सेवन करने का एक लोकप्रिय तरीका है, जिसे ताज़े या सूखे फूलों से बनाया जा सकता है\n'
              'गुड़हल की चाय बनाने के लिए, ताजे या सूखे फूलों को गर्म पानी में 5-10 मिनट के लिए भिगो दें\n'
              'हिबिस्कस का उपयोग विभिन्न व्यंजनों और पेय पदार्थों में प्राकृतिक खाद्य रंग और स्वादिष्ट बनाने वाले एजेंट के रूप में भी किया जा सकता है\n'
              'हिबिस्कस का सत्त और पूरक कैप्सूल और पाउडर जैसे विभिन्न रूपों में भी उपलब्ध हैं\n'
              'हिबिस्कस रक्तचाप और मधुमेह दवाओं जैसे कुछ दवाओं के साथ बातचीत कर सकता है।',


          //CURRY LEAF
          'plantName6': 'करी पत्ता',

          'decription6': 'वैज्ञानिक नाम: मुरैना कोएनिजी\n'
              'आम नाम: करी पत्ता\n'
              'परिवार: रुटेसी\n'
              'निवासी: भारत, श्रीलंका\n'
              'निवास स्थान: उष्णकटिबंधीय और उपोष्णकटिबंधीय क्षेत्र\n'
              'विवरण: छोटा पेड़ या झाड़ी, 6 मीटर तक बढ़ता है, सुफ़ने पत्ते, सुगन्धित गंध',

          'decription66': 'सदियों से करी पत्ते का इस्तेमाल पारंपरिक चिकित्सा में औषधीय गुणों के लिए किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें एंटीऑक्सीडेंट, जलनरोधी और रोगाणुरोधी गुण होते हैं\n'
              'आमतौर पर दस्त, कब्ज और अपच जैसी पाचन समस्याओं के इलाज के लिए इस्तेमाल किया जाता है\n'
              'बालों के विकास को बढ़ावा देने, रक्त शर्करा के स्तर को कम करने और कोलेस्ट्रॉल के स्तर को कम करने के लिए भी इस्तेमाल किया जाता है\n'
              'त्वचा के स्वास्थ्य और प्रतिरक्षा कार्य के लिए संभावित लाभ हो सकता है',

          'decription666': 'ताजे या सूखे करी पत्तों का इस्तेमाल खाना पकाने में मसाला के रूप में किया जाता है, खासकर भारतीय और दक्षिण पूर्व एशियाई व्यंजनों में\n'
              'कढ़ी पत्ते का सत्त और सप्लीमेंट भी विभिन्न रूपों में उपलब्ध हैं, जैसे कि कैप्सूल और पाउडर\n'
              'करी पत्ते के आवश्यक तेल का उपयोग बालों और त्वचा के स्वास्थ्य के लिए शीर्ष या सुगंधित रूप से किया जा सकता है\n'
              'अगर गर्भवती हैं, स्तनपान करा रही हैं या दवाएँ ले रही हैं, तो उपयोग करने से पहले स्वास्थ्य देखभाल पेशेवर से सलाह लें। करी पत्ता कुछ दवाओं के साथ इंटरैक्ट कर सकता है।'
              'ब्लड शुगर और प्रेशर मेड सहित।',



          //BETEL

          'plantName7': 'पान',
          'decription7': 'वैज्ञानिक नाम: पाइपर बेटल\n'
              'आम नाम: पान का पत्ता\n'
              'परिवार: पिपरेसी\n'
              'निवासी: दक्षिण और दक्षिणपूर्व एशिया\n'
              'निवास स्थान: उष्णकटिबंधीय क्षेत्र\n'
              'विवरण: सदाबहार लता, 15 मीटर तक बढ़ती है, दिल के आकार की पत्तियाँ, सुगंधित महक',

          'decription77': 'सदियों से पान के औषधीय गुणों की वजह से इसे पारंपरिक दवाओं में इस्तेमाल किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें एंटीऑक्सीडेंट, जलनरोधी और जीवाणुरोधी गुण होते हैं\n'
              'आमतौर पर पाचन में सुधार और सांसों को तरोताजा करने के लिए उपयोग किया जाता है\n'
              'घाव भरने, खांसी और दमा के लिए भी इस्तेमाल किया जाता है\n'
              'मौखिक स्वास्थ्य, मधुमेह और हृदय स्वास्थ्य के लिए संभावित लाभ हो सकता है',

          'decription777': 'पान के पत्तों को अपने आप चबाया जा सकता है या पान जैसी विभिन्न तैयारियों में इस्तेमाल किया जा सकता है, जो कि सुपारी, सुपारी और अन्य सामग्रियों का एक लोकप्रिय मिश्रण है\n'
              'पान के अर्क और पूरक भी विभिन्न रूपों में उपलब्ध हैं, जैसे कैप्सूल और पाउडर\n'
              'पान के पत्तों का सामयिक उपयोग घाव भरने और त्वचा के संक्रमण के लिए भी किया जाता है\n'
              'उपयोग करने से पहले डॉक्टर से सलाह लें, खासकर यदि गर्भवती हैं, स्तनपान करा रही हैं, दवाएँ ले रही हैं। पान के दुष्प्रभाव हो सकते हैं और कुछ दवाओं के साथ परस्पर क्रिया कर सकते हैं।',

          //BRAHMI

          'plantName8': 'ब्राह्मी',

          'decription8': 'वैज्ञानिक नाम: बकोपा मोनियरी\n'
              'सामान्य नाम: ब्राह्मी\n'
              'परिवार: प्लांटैजिनेसी\n'
              'मूलनिवासी: भारत, उत्तरी अमेरिका, ऑस्ट्रेलिया, यूरोप, एशिया, अफ्रीका\n'
              'निवास स्थान: आर्द्रभूमि, दलदल, और मैला तट\n'
              'विवरण: बारहमासी जड़ी बूटी, 4-6 इंच तक बढ़ती है, छोटे सफेद फूल, आयताकार पत्ते',

          'decription88': 'ब्राह्मी का इस्तेमाल सदियों से औषधीय गुणों की वजह से आयुर्वेदिक दवाओं में किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें एंटीऑक्सीडेंट, जलनरोधी और एडाप्टोजेनिक गुण होते हैं\n'
              'आमतौर पर संज्ञानात्मक कार्य, स्मृति और एकाग्रता में सुधार के लिए उपयोग किया जाता है\n'
              'चिंता, तनाव और अवसाद के लिए भी इस्तेमाल किया जाता है\n'
              'त्वचा के स्वास्थ्य और बालों के विकास के लिए संभावित लाभ हो सकता है',

          'decription888': 'ब्राह्मी के पत्तों को ताज़ा या सुखाकर, या चाय, कैप्सूल या पाउडर के रूप में इस्तेमाल किया जा सकता है\n'
              'ब्राह्मी तेल या पेस्ट का सामयिक उपयोग बालों के विकास और त्वचा के स्वास्थ्य के लिए भी किया जाता है\n'
              'विशेष रूप से गर्भवती या स्तनपान कराने वाले व्यक्तियों या दवा लेने वालों के लिए उपयोग करने से पहले एक स्वास्थ्य देखभाल पेशेवर के साथ परामर्श की सिफारिश की जाती है।'
              ' यह भी ध्यान रखना महत्वपूर्ण है कि ब्राह्मी कुछ दवाओं, जैसे थायराइड दवाओं के साथ परस्पर क्रिया कर सकती है।',

          //BHUMI AMLA
          'plantName9': 'भूमि अमला',
          'decription9': 'वैज्ञानिक नाम: Phyllanthus niruri\n'
              'सामान्य नाम: भूमिमालकी, भूमिअमला\n'
              'परिवार: फ़ाइलेंथेसी\n'
              'मूलनिवासी: भारत, दक्षिण अमेरिका, चीन और कैरेबियन\n'
              'निवास स्थान: नम स्थान जैसे खेत, बगीचे और अपशिष्ट स्थान\n'
              'विवरण: वार्षिक जड़ी बूटी, 40 सेमी तक बढ़ती है, छोटे पीले-हरे फूल, छोटे अण्डाकार पत्ते',

          'decription99': 'भौम्यामालकी का इस्तेमाल सदियों से औषधीय गुणों की वजह से आयुर्वेदिक दवाओं में किया जाता रहा है\n'
              'ऐसा माना जाता है कि इसमें हेपेटोप्रोटेक्टिव, एंटीऑक्सीडेंट और एंटी-इंफ्लेमेटरी गुण होते हैं\n'
              'आम तौर पर लिवर के काम में मदद करने और लिवर की बीमारियों के इलाज के लिए इस्तेमाल किया जाता है\n'
              'गुर्दे की पथरी, मूत्र पथ के संक्रमण, और सांस की बीमारियों के लिए भी इस्तेमाल किया जाता है\n'
              'त्वचा के स्वास्थ्य और प्रतिरक्षा के लिए संभावित लाभ हो सकता है',

          'decription999': 'भुम्यामालकी का सेवन ताज़ा या सुखाकर या चाय, कैप्सूल या पाउडर के रूप में किया जा सकता है\n'
              'भौम्यामालकी पेस्ट या तेल का सामयिक अनुप्रयोग भी त्वचा के स्वास्थ्य के लिए उपयोग किया जाता है\n'
              'विशेष रूप से गर्भवती या स्तनपान कराने वाले व्यक्तियों या दवा लेने वालों के लिए उपयोग करने से पहले एक स्वास्थ्य देखभाल पेशेवर के साथ परामर्श की सिफारिश की जाती है। '
              'यह भी ध्यान रखना महत्वपूर्ण है कि भूमिमालकी कुछ दवाओं, जैसे रक्त शर्करा और रक्तचाप की दवाओं के साथ परस्पर क्रिया कर सकती है।',

          'plantName10': 'flower',
          'decription10': '',
        },
        'ka_IN': {

          'plantName1': 'ತುಳಸಿ',
          'decription1':'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: Ocimum tenuiflorum\n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ತುಳಸಿ ಅಥವಾ ಪವಿತ್ರ ತುಳಸಿ \n'
              'ಕುಟುಂಬ: Lamiaceae (ಮಿಂಟ್ ಕುಟುಂಬ) \n'
              'ಸ್ಥಳೀಯ: ಭಾರತೀಯ ಉಪಖಂಡ \n'
              'ಆವಾಸಸ್ಥಾನ: ಉಷ್ಣವಲಯದ ಹವಾಮಾನಗಳು\n'
              'ವಿವರಣೆ: ದೀರ್ಘಕಾಲಿಕ ಸಸ್ಯ, 60 ಸೆಂ.ಮೀ ವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಪರಿಮಳಯುಕ್ತ ಪರಿಮಳ \n' ,

          'decription11':
          'ಸಾಂಪ್ರದಾಯಿಕ ಆಯುರ್ವೇದ ಔಷಧವು ತುಳಸಿಯನ್ನು ಅದರ ಬ್ಯಾಕ್ಟೀರಿಯಾ ವಿರೋಧಿ, ಆಂಟಿವೈರಲ್ ಮತ್ತು ಉರಿಯೂತದ ಗುಣಲಕ್ಷಣಗಳಿಗಾಗಿ ಬಳಸುತ್ತದೆ\n'
              'ಸಾಮಾನ್ಯವಾಗಿ ಉಸಿರಾಟದ ಸೋಂಕುಗಳು, ಜ್ವರ ಮತ್ತು ಜೀರ್ಣಕಾರಿ ಸಮಸ್ಯೆಗಳಿಗೆ ಚಿಕಿತ್ಸೆ ನೀಡಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಒತ್ತಡ ಮತ್ತು ಆತಂಕವನ್ನು ಕಡಿಮೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡಬಹುದು, ಮತ್ತು ಒಟ್ಟಾರೆ ಯೋಗಕ್ಷೇಮವನ್ನು ಉತ್ತೇಜಿಸಬಹುದು\n'
              'ಕೆಲವು ಔಷಧಿಗಳೊಂದಿಗೆ ಪರಸ್ಪರ ಕ್ರಿಯೆಗಳಂತಹ ಸಂಭಾವ್ಯ ಅಡ್ಡ ಪರಿಣಾಮಗಳು ಮತ್ತು ವಿರೋಧಾಭಾಸಗಳು ಅಸ್ತಿತ್ವದಲ್ಲಿರಬಹುದು \n'  ,


          'decription111':
  'ತುಳಸಿಯನ್ನು ತಾಜಾ, ಒಣಗಿಸಿ, ಚಹಾದಲ್ಲಿ ಅಥವಾ ಪೂರಕಗಳಾಗಿ ಸೇವಿಸಬಹುದು\n'
  'ತುಳಸಿ ಚಹಾ ಮಾಡಲು, ತಾಜಾ ಅಥವಾ ಒಣಗಿದ ಎಲೆಗಳನ್ನು 5-10 ನಿಮಿಷಗಳ ಕಾಲ ಬಿಸಿ ನೀರಿನಲ್ಲಿ ಹಾಕಿ\n'
  'ತುಳಸಿ ಪೂರಕಗಳು ಕ್ಯಾಪ್ಸುಲ್ ಅಥವಾ ಟಿಂಚರ್ ರೂಪದಲ್ಲಿ ಲಭ್ಯವಿದೆ\n'
  'ವಿಶೇಷವಾಗಿ ಗರ್ಭಿಣಿ ಅಥವಾ ಹಾಲುಣಿಸುವ ವ್ಯಕ್ತಿಗಳಿಗೆ ಅಥವಾ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುವವರಿಗೆ ಬಳಸುವ ಮೊದಲು ಆರೋಗ್ಯ ವೃತ್ತಿಪರರೊಂದಿಗೆ ಸಮಾಲೋಚನೆಯನ್ನು ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ.',


          //MEXICAN MINT

          'plantName2': 'ಸಾಂಬಾರಬಳ್ಳಿ',

          'decription2':
          'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: Plectranthus amboinicus \n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ಮೆಕ್ಸಿಕನ್ ಮಿಂಟ್, ಕ್ಯೂಬನ್ ಓರೆಗಾನೊ, ಸ್ಪ್ಯಾನಿಷ್ ಥೈಮ್\n'
              'ಕುಟುಂಬ: Lamiaceae (ಮಿಂಟ್ ಕುಟುಂಬ)\n'
              'ಸ್ಥಳೀಯ: ದಕ್ಷಿಣ ಮತ್ತು ಪೂರ್ವ ಆಫ್ರಿಕಾ\n'
              'ಆವಾಸಸ್ಥಾನ: ಉಷ್ಣವಲಯದ ಮತ್ತು ಉಪೋಷ್ಣವಲಯದ ಪ್ರದೇಶಗಳು\n'
              'ವಿವರಣೆ: ದೀರ್ಘಕಾಲಿಕ ಸಸ್ಯ, 1 ಮೀಟರ್ ವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಬಲವಾದ ಪರಿಮಳದೊಂದಿಗೆ ತಿರುಳಿರುವ ಎಲೆಗಳು\n',

          'decription22': 'ಶತಮಾನಗಳಿಂದ ಸಾಂಪ್ರದಾಯಿಕ ಔಷಧದಲ್ಲಿ ಮೆಕ್ಸಿಕನ್ ಮಿಂಟ್ ಅನ್ನು ಔಷಧೀಯ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಬಳಸಲಾಗುತ್ತಿದೆ\n'
              'ಇದು ಬ್ಯಾಕ್ಟೀರಿಯಾ ವಿರೋಧಿ, ಆಂಟಿಫಂಗಲ್ ಮತ್ತು ಉರಿಯೂತದ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ \n'
              'ಸಾಮಾನ್ಯವಾಗಿ ಉಸಿರಾಟದ ಸೋಂಕುಗಳು, ಜೀರ್ಣಕಾರಿ ಸಮಸ್ಯೆಗಳು ಮತ್ತು ಚರ್ಮದ ಪರಿಸ್ಥಿತಿಗಳಿಗೆ ಚಿಕಿತ್ಸೆ ನೀಡಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಜ್ವರವನ್ನು ಕಡಿಮೆ ಮಾಡಲು ಮತ್ತು ನೋವನ್ನು ನಿವಾರಿಸಲು ಸಹಾಯ ಮಾಡಬಹುದು\n'
              'ಕೆಲವು ವ್ಯಕ್ತಿಗಳಲ್ಲಿ ಅಲರ್ಜಿಯ ಪ್ರತಿಕ್ರಿಯೆಗಳಂತಹ ಸಂಭಾವ್ಯ ಅಡ್ಡ ಪರಿಣಾಮಗಳು ಮತ್ತು ವಿರೋಧಾಭಾಸಗಳು ಅಸ್ತಿತ್ವದಲ್ಲಿರಬಹುದು',

          'decription222' : 'ಮೆಕ್ಸಿಕನ್ ಮಿಂಟ್ ಅನ್ನು ತಾಜಾ, ಒಣಗಿಸಿ ಅಥವಾ ಚಹಾದಲ್ಲಿ ಸೇವಿಸಬಹುದು\n'
              'ಚಹಾ ಮಾಡಲು, ತಾಜಾ ಅಥವಾ ಒಣಗಿದ ಎಲೆಗಳನ್ನು ಬಿಸಿ ನೀರಿನಲ್ಲಿ 5-10 ನಿಮಿಷಗಳ ಕಾಲ ಕಡಿದಾದ ನಂತರ\n'
              'ಇದನ್ನು ಅಡುಗೆಯಲ್ಲಿ ಮಸಾಲೆಯಾಗಿಯೂ ಬಳಸಬಹುದು\n'
              'ಬಳಕೆಯ ಮೊದಲು ಆರೋಗ್ಯ ವೃತ್ತಿಪರರೊಂದಿಗೆ ಸಮಾಲೋಚನೆಯನ್ನು ಶಿಫಾರಸು ಮಾಡಲಾಗುತ್ತದೆ, ವಿಶೇಷವಾಗಿ ಗರ್ಭಿಣಿ ಅಥವಾ ಹಾಲುಣಿಸುವ ವ್ಯಕ್ತಿಗಳು ಅಥವಾ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುವವರು.',


          //NEEM

          'plantName3': 'ಬೇವು',
          'decription3': 'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: Azadirachta indica\n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ಬೇವು\n'
              'ಕುಟುಂಬ: ಮೆಲಿಯೇಸಿ\n'
              'ಸ್ಥಳೀಯ: ಭಾರತೀಯ ಉಪಖಂಡ\n'
              'ಆವಾಸಸ್ಥಾನ: ಉಷ್ಣವಲಯದ ಮತ್ತು ಉಪೋಷ್ಣವಲಯದ ಪ್ರದೇಶಗಳು\n'
              'ವಿವರಣೆ: ನಿತ್ಯಹರಿದ್ವರ್ಣ ಮರ, 20-30 ಮೀಟರ್‌ಗಳವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಸಣ್ಣ ಬಿಳಿ ಹೂವುಗಳು ಮತ್ತು ಹಣ್ಣಾದಾಗ ಹಳದಿ ಬಣ್ಣಕ್ಕೆ ತಿರುಗುವ ಹಸಿರು ಹಣ್ಣು',


          'decription33': 'ಬೇವಿನ ಔಷಧೀಯ ಗುಣಗಳಿಂದಾಗಿ ಸಾವಿರಾರು ವರ್ಷಗಳಿಂದ ಆಯುರ್ವೇದ ಔಷಧದಲ್ಲಿ ಬಳಸಲಾಗುತ್ತಿದೆ\n'
              'ಇದು ಬ್ಯಾಕ್ಟೀರಿಯಾ ವಿರೋಧಿ, ಆಂಟಿವೈರಲ್, ಆಂಟಿಫಂಗಲ್ ಮತ್ತು ಉರಿಯೂತದ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ\n'
              'ಸಾಮಾನ್ಯವಾಗಿ ಮೊಡವೆ, ಎಸ್ಜಿಮಾ, ಮತ್ತು ಸೋರಿಯಾಸಿಸ್‌ನಂತಹ ಚರ್ಮದ ಪರಿಸ್ಥಿತಿಗಳಿಗೆ ಚಿಕಿತ್ಸೆ ನೀಡಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಜೀರ್ಣಾಂಗ ಸಮಸ್ಯೆಗಳು, ಜ್ವರ ಮತ್ತು ಉಸಿರಾಟದ ಸೋಂಕುಗಳಿಗೆ ಚಿಕಿತ್ಸೆ ನೀಡಲು ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಹಲ್ಲಿನ ಆರೋಗ್ಯ, ಪ್ರತಿರಕ್ಷಣಾ ವ್ಯವಸ್ಥೆ ಮತ್ತು ಯಕೃತ್ತಿನ ಕಾರ್ಯಕ್ಕೆ ಸಂಭಾವ್ಯ ಪ್ರಯೋಜನಗಳನ್ನು ಸಹ ಹೊಂದಿರಬಹುದು',


          'decription333': 'ತಾಜಾ ಎಲೆಗಳು, ಒಣಗಿದ ಎಲೆಗಳು, ಎಣ್ಣೆ, ಮತ್ತು ಪೂರಕಗಳಂತಹ ವಿವಿಧ ರೂಪಗಳಲ್ಲಿ ಬೇವನ್ನು ಸೇವಿಸಬಹುದು\n'
              'ಬೇವಿನ ಚಹಾ ಮಾಡಲು, ತಾಜಾ ಅಥವಾ ಒಣಗಿದ ಎಲೆಗಳನ್ನು ಬಿಸಿ ನೀರಿನಲ್ಲಿ 5-10 ನಿಮಿಷಗಳ ಕಾಲ ಇಡಿ\n'
              'ಬೇವಿನ ಎಣ್ಣೆಯನ್ನು ಸಾಮಾನ್ಯವಾಗಿ ಚರ್ಮ ಮತ್ತು ಕೂದಲ ರಕ್ಷಣೆಗೆ ಸ್ಥಳೀಯವಾಗಿ ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಸಪ್ಲಿಮೆಂಟ್‌ಗಳು ಕ್ಯಾಪ್ಸುಲ್ ಅಥವಾ ಪೌಡರ್ ರೂಪದಲ್ಲಿ ಲಭ್ಯವಿದೆ\n'
              'ಬಳಕೆಯ ಮೊದಲು ಆರೋಗ್ಯ ವೃತ್ತಿಪರರೊಂದಿಗೆ ಸಮಾಲೋಚನೆಯನ್ನು ಶಿಫಾರಸು ಮಾಡಲಾಗುತ್ತದೆ, ವಿಶೇಷವಾಗಿ ಗರ್ಭಿಣಿ ಅಥವಾ ಹಾಲುಣಿಸುವ ವ್ಯಕ್ತಿಗಳು ಅಥವಾ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುವವರು.',



          //MINT

          'plantName4': 'ಪುದೀನ',

          'decription4': 'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: ಮೆಂತಾ \n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ಮಿಂಟ್\n'
              'ಕುಟುಂಬ: Lamiaceae\n'
              'ಸ್ಥಳೀಯ: ಯುರೋಪ್, ಏಷ್ಯಾ ಮತ್ತು ಉತ್ತರ ಅಮೇರಿಕಾ\n'
              'ಆವಾಸಸ್ಥಾನ: ಸಮಶೀತೋಷ್ಣ ಹವಾಮಾನಗಳು\n'
              'ವಿವರಣೆ: ದೀರ್ಘಕಾಲಿಕ ಮೂಲಿಕೆ, 1 ಮೀಟರ್ ವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಪರಿಮಳಯುಕ್ತ ಪರಿಮಳ, ಮತ್ತು ವಿವಿಧ ಎಲೆಗಳ ಬಣ್ಣಗಳು ಮತ್ತು ಆಕಾರಗಳು',

          'decription44': 'ಪುದೀನಾವನ್ನು ಸಾಂಪ್ರದಾಯಿಕ ಔಷಧದಲ್ಲಿ ಶತಮಾನಗಳಿಂದಲೂ ಔಷಧೀಯ ಗುಣಗಳಿಗಾಗಿ ಬಳಸಲಾಗುತ್ತಿದೆ\n'
          'ಇದು ಆಂಟಿಸ್ಪಾಸ್ಮೊಡಿಕ್, ನೋವು ನಿವಾರಕ ಮತ್ತು ಉರಿಯೂತದ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ\n'
              'ಸಾಮಾನ್ಯವಾಗಿ ಉಬ್ಬುವುದು, ಗ್ಯಾಸ್ ಮತ್ತು ವಾಕರಿಕೆ ಮುಂತಾದ ಜೀರ್ಣಕಾರಿ ಸಮಸ್ಯೆಗಳಿಗೆ ಚಿಕಿತ್ಸೆ ನೀಡಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ತಲೆನೋವು, ಮುಟ್ಟಿನ ಸೆಳೆತ ಮತ್ತು ಉಸಿರಾಟದ ತೊಂದರೆಗಳನ್ನು ನಿವಾರಿಸಲು ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಚರ್ಮ, ಹಲ್ಲಿನ ಆರೋಗ್ಯ, ಮತ್ತು ಸ್ಮರಣೆಗೆ ಸಂಭಾವ್ಯ ಪ್ರಯೋಜನಗಳನ್ನು ಹೊಂದಿರಬಹುದು',

          'decription444': 'ಸುವಾಸನೆ ಮತ್ತು ತಾಜಾತನಕ್ಕಾಗಿ ತಾಜಾ ಪುದೀನ ಎಲೆಗಳನ್ನು ಸಲಾಡ್‌ಗಳು, ಸೂಪ್‌ಗಳು, ಸಾಸ್‌ಗಳು, ಸ್ಮೂಥಿಗಳು ಮತ್ತು ಕಾಕ್‌ಟೇಲ್‌ಗಳಿಗೆ ಸೇರಿಸಬಹುದು\n'
              'ಒಣಗಿದ ಪುದೀನಾ ಎಲೆಗಳನ್ನು ಚಹಾ ಮಾಡಲು ಬಳಸಬಹುದು, ಅಥವಾ ಅಡುಗೆಯಲ್ಲಿ ಮಸಾಲೆ ಆಗಿ ಬಳಸಬಹುದು\n'
              'ಟೂತ್‌ಪೇಸ್ಟ್, ಮೌತ್‌ವಾಶ್ ಮತ್ತು ತ್ವಚೆ ಉತ್ಪನ್ನಗಳಂತಹ ವಿವಿಧ ಉತ್ಪನ್ನಗಳಿಗೆ ಪುದೀನ ಸಾರ ಮತ್ತು ಸಾರಭೂತ ತೈಲವನ್ನು ಸೇರಿಸಬಹುದು\n'
              'ಸ್ನಾಯು ನೋವು ಮತ್ತು ಒತ್ತಡ ನಿವಾರಣೆಗೆ ಪುದೀನಾ ಎಣ್ಣೆಯನ್ನು ಸ್ಥಳೀಯವಾಗಿ ಬಳಸಬಹುದು\n'
              'ಪುದೀನ ಪೂರಕಗಳು ಕ್ಯಾಪ್ಸುಲ್ ಅಥವಾ ದ್ರವ ರೂಪದಲ್ಲಿ ಲಭ್ಯವಿದೆ\n',


          //HIBISCUS

          'plantName5': 'ದಾಸವಾಳ ಎಲೆ',

          'decription5': 'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: Hibiscus sabdariffa\n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ಹೈಬಿಸ್ಕಸ್, ರೋಸೆಲ್\n'
              'ಕುಟುಂಬ: Malvaceae\n'
              'ಸ್ಥಳೀಯ: ಪಶ್ಚಿಮ ಆಫ್ರಿಕಾ\n'
              'ಆವಾಸಸ್ಥಾನ: ಉಷ್ಣವಲಯದ ಮತ್ತು ಉಪೋಷ್ಣವಲಯದ ಪ್ರದೇಶಗಳು\n'
              'ವಿವರಣೆ: ವಾರ್ಷಿಕ ಅಥವಾ ದೀರ್ಘಕಾಲಿಕ ಪೊದೆಸಸ್ಯ, 2-3 ಮೀಟರ್ ವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ವಿವಿಧ ಬಣ್ಣಗಳಲ್ಲಿ ದೊಡ್ಡ ಆಕರ್ಷಕ ಹೂವುಗಳು',

          'decription55': 'ದಾಸವಾಳವನ್ನು ಸಾಂಪ್ರದಾಯಿಕ ಔಷಧದಲ್ಲಿ ಶತಮಾನಗಳಿಂದಲೂ ಔಷಧೀಯ ಗುಣಗಳಿಗಾಗಿ ಬಳಸಲಾಗುತ್ತಿದೆ\n'
              'ಇದು ಉತ್ಕರ್ಷಣ ನಿರೋಧಕ, ಉರಿಯೂತದ ಮತ್ತು ಆಂಟಿಬ್ಯಾಕ್ಟೀರಿಯಲ್ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ\n'
              'ಸಾಮಾನ್ಯವಾಗಿ ರಕ್ತದೊತ್ತಡ ಮತ್ತು ಕೊಲೆಸ್ಟ್ರಾಲ್ ಮಟ್ಟವನ್ನು ಕಡಿಮೆ ಮಾಡಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಪಿತ್ತಜನಕಾಂಗದ ಆರೋಗ್ಯವನ್ನು ಉತ್ತೇಜಿಸಲು, ಮುಟ್ಟಿನ ಸೆಳೆತವನ್ನು ನಿವಾರಿಸಲು ಮತ್ತು ಜೀರ್ಣಕಾರಿ ಆರೋಗ್ಯವನ್ನು ಬೆಂಬಲಿಸಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಚರ್ಮ ಮತ್ತು ಕೂದಲಿನ ಆರೋಗ್ಯಕ್ಕೆ ಸಂಭಾವ್ಯ ಪ್ರಯೋಜನಗಳನ್ನು ಹೊಂದಿರಬಹುದು',

          'decription555': 'ದಾಸವಾಳ ಚಹಾವು ಸಸ್ಯವನ್ನು ಸೇವಿಸುವ ಜನಪ್ರಿಯ ವಿಧಾನವಾಗಿದೆ, ಇದನ್ನು ತಾಜಾ ಅಥವಾ ಒಣಗಿದ ಹೂವುಗಳಿಂದ ತಯಾರಿಸಬಹುದು\n'
              'ದಾಸವಾಳದ ಚಹಾವನ್ನು ತಯಾರಿಸಲು, ತಾಜಾ ಅಥವಾ ಒಣಗಿದ ಹೂವುಗಳನ್ನು 5-10 ನಿಮಿಷಗಳ ಕಾಲ ಬಿಸಿ ನೀರಿನಲ್ಲಿ ಹಾಕಿರಿ\n'
          'ದಾಸವಾಳವನ್ನು ವಿವಿಧ ಭಕ್ಷ್ಯಗಳು ಮತ್ತು ಪಾನೀಯಗಳಲ್ಲಿ ನೈಸರ್ಗಿಕ ಆಹಾರ ಬಣ್ಣ ಮತ್ತು ಸುವಾಸನೆಯ ಏಜೆಂಟ್ ಆಗಿ ಬಳಸಬಹುದು\n'
          'ದಾಸವಾಳದ ಸಾರ ಮತ್ತು ಪೂರಕಗಳು ವಿವಿಧ ರೂಪಗಳಲ್ಲಿ ಲಭ್ಯವಿವೆ, ಉದಾಹರಣೆಗೆ ಕ್ಯಾಪ್ಸುಲ್‌ಗಳು ಮತ್ತು ಪುಡಿಗಳು\n'
              'ದಾಸವಾಳವು ರಕ್ತದೊತ್ತಡ ಮತ್ತು ಮಧುಮೇಹದ ಔಷಧಿಗಳಂತಹ ಕೆಲವು ಔಷಧಿಗಳೊಂದಿಗೆ ಸಂವಹನ ನಡೆಸಬಹುದು.',


          //CURRY LEAF
          'plantName6': 'ಕರಿಬೇವಿನ ಎಲೆ',

          'decription6': 'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: ಮುರ್ರಾಯ ಕೊನಿಗಿ\n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ಕರಿಬೇವು\n'
              'ಕುಟುಂಬ: Rutaceae\n'
              'ಸ್ಥಳೀಯ: ಭಾರತ, ಶ್ರೀಲಂಕಾ\n'
              'ಆವಾಸಸ್ಥಾನ: ಉಷ್ಣವಲಯದ ಮತ್ತು ಉಪೋಷ್ಣವಲಯದ ಪ್ರದೇಶಗಳು\n'
              'ವಿವರಣೆ: ಸಣ್ಣ ಮರ ಅಥವಾ ಪೊದೆಸಸ್ಯ, 6 ಮೀಟರ್ ವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಪಿನ್ನೇಟ್ ಎಲೆಗಳು, ಆರೊಮ್ಯಾಟಿಕ್ ವಾಸನೆ',

          'decription66': 'ಕರಿಬೇವಿನ ಎಲೆಯನ್ನು ಶತಮಾನಗಳಿಂದಲೂ ಅದರ ಔಷಧೀಯ ಗುಣಗಳಿಗಾಗಿ ಸಾಂಪ್ರದಾಯಿಕ ಔಷಧದಲ್ಲಿ ಬಳಸಲಾಗುತ್ತಿದೆ\n'
        'ಇದು ಉತ್ಕರ್ಷಣ ನಿರೋಧಕ, ಉರಿಯೂತದ ಮತ್ತು ಆಂಟಿಮೈಕ್ರೊಬಿಯಲ್ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ\n'
        'ಸಾಮಾನ್ಯವಾಗಿ ಅತಿಸಾರ, ಮಲಬದ್ಧತೆ ಮತ್ತು ಅಜೀರ್ಣದಂತಹ ಜೀರ್ಣಕಾರಿ ಸಮಸ್ಯೆಗಳಿಗೆ ಚಿಕಿತ್ಸೆ ನೀಡಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
        'ಕೂದಲು ಬೆಳವಣಿಗೆಯನ್ನು ಉತ್ತೇಜಿಸಲು, ರಕ್ತದಲ್ಲಿನ ಸಕ್ಕರೆ ಮಟ್ಟವನ್ನು ಕಡಿಮೆ ಮಾಡಲು ಮತ್ತು ಕೊಲೆಸ್ಟ್ರಾಲ್ ಮಟ್ಟವನ್ನು ಕಡಿಮೆ ಮಾಡಲು ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
    'ಚರ್ಮದ ಆರೋಗ್ಯ ಮತ್ತು ಪ್ರತಿರಕ್ಷಣಾ ಕಾರ್ಯಕ್ಕೆ ಸಂಭಾವ್ಯ ಪ್ರಯೋಜನಗಳನ್ನು ಹೊಂದಿರಬಹುದು',

          'decription666': 'ತಾಜಾ ಅಥವಾ ಒಣಗಿದ ಕರಿಬೇವಿನ ಎಲೆಗಳನ್ನು ಅಡುಗೆಯಲ್ಲಿ ಮಸಾಲೆಯಾಗಿ ಬಳಸಲಾಗುತ್ತದೆ, ವಿಶೇಷವಾಗಿ ಭಾರತೀಯ ಮತ್ತು ಆಗ್ನೇಯ ಏಷ್ಯಾದ ಪಾಕಪದ್ಧತಿಗಳಲ್ಲಿ\n'
  'ಕ್ಯಾಪ್ಸೂಲ್‌ಗಳು ಮತ್ತು ಪುಡಿಗಳಂತಹ ವಿವಿಧ ರೂಪಗಳಲ್ಲಿ ಕರಿಬೇವಿನ ಸಾರ ಮತ್ತು ಪೂರಕಗಳು ಲಭ್ಯವಿವೆ\n'
  'ಕೂದಲು ಮತ್ತು ಚರ್ಮದ ಆರೋಗ್ಯಕ್ಕಾಗಿ ಕರಿಬೇವಿನ ಸಾರಭೂತ ತೈಲವನ್ನು ಸ್ಥಳೀಯವಾಗಿ ಅಥವಾ ಸುಗಂಧವಾಗಿ ಬಳಸಬಹುದು\n'
  'ಬಳಕೆಯ ಮೊದಲು, ಗರ್ಭಿಣಿ, ಹಾಲುಣಿಸುವ ಅಥವಾ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುತ್ತಿದ್ದರೆ ಆರೋಗ್ಯ ವೃತ್ತಿಪರರನ್ನು ಸಂಪರ್ಕಿಸಿ. ಕರಿಬೇವಿನ ಎಲೆಯು ರಕ್ತದ ಸಕ್ಕರೆ ಮತ್ತು ಒತ್ತಡದ ಔಷಧಿಗಳು ಸೇರಿದಂತೆ ಕೆಲವು ಔಷಧಿಗಳೊಂದಿಗೆ ಸಂವಹನ ನಡೆಸಬಹುದು.',



          //BETEL

          'plantName7': 'ವೀಳ್ಯದೆಲೆ',
          'decription7': 'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: ಪೈಪರ್ ಬೆಟಲ್\n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ವೀಳ್ಯದೆಲೆ\n'
              'ಕುಟುಂಬ: Piperaceae\n'
              'ಸ್ಥಳೀಯ: ದಕ್ಷಿಣ ಮತ್ತು ಆಗ್ನೇಯ ಏಷ್ಯಾ\n'
              'ಆವಾಸಸ್ಥಾನ: ಉಷ್ಣವಲಯದ ಪ್ರದೇಶಗಳು\n'
              'ವಿವರಣೆ: ನಿತ್ಯಹರಿದ್ವರ್ಣ ಬಳ್ಳಿ, 15 ಮೀಟರ್ ವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಹೃದಯದ ಆಕಾರದ ಎಲೆಗಳು, ಪರಿಮಳಯುಕ್ತ ವಾಸನೆ',

          'decription77': 'ವೀಳ್ಯದೆಲೆಯನ್ನು ಸಾಂಪ್ರದಾಯಿಕ ಔಷಧದಲ್ಲಿ ಶತಮಾನಗಳಿಂದಲೂ ಔಷಧೀಯ ಗುಣಗಳಿಗಾಗಿ ಬಳಸಲಾಗುತ್ತಿದೆ\n'
          'ಇದು ಉತ್ಕರ್ಷಣ ನಿರೋಧಕ, ಉರಿಯೂತದ ಮತ್ತು ಆಂಟಿಬ್ಯಾಕ್ಟೀರಿಯಲ್ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ\n'
              'ಜೀರ್ಣಕ್ರಿಯೆಯನ್ನು ಸುಧಾರಿಸಲು ಮತ್ತು ಉಸಿರಾಟವನ್ನು ತಾಜಾಗೊಳಿಸಲು ಸಾಮಾನ್ಯವಾಗಿ ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಗಾಯ ವಾಸಿಮಾಡುವಿಕೆ, ಕೆಮ್ಮು, ಮತ್ತು ಅಸ್ತಮಾಗೆ ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಮೌಖಿಕ ಆರೋಗ್ಯ, ಮಧುಮೇಹ ಮತ್ತು ಹೃದಯದ ಆರೋಗ್ಯಕ್ಕೆ ಸಂಭಾವ್ಯ ಪ್ರಯೋಜನಗಳನ್ನು ಹೊಂದಿರಬಹುದು',

          'decription777': 'ವೀಳ್ಯದೆಲೆಗಳನ್ನು ತಾವಾಗಿಯೇ ಅಗಿಯಬಹುದು ಅಥವಾ ಪಾನ್‌ನಂತಹ ವಿವಿಧ ತಯಾರಿಕೆಗಳಲ್ಲಿ ಬಳಸಬಹುದು, ಇದು ವೀಳ್ಯದೆಲೆ, ಅಡಿಕೆ ಮತ್ತು ಇತರ ಪದಾರ್ಥಗಳ ಜನಪ್ರಿಯ ಮಿಶ್ರಣವಾಗಿದೆ\n'
              'ವೀಳ್ಯದೆಲೆಯ ಸಾರ ಮತ್ತು ಪೂರಕಗಳು ಕ್ಯಾಪ್ಸುಲ್‌ಗಳು ಮತ್ತು ಪುಡಿಗಳಂತಹ ವಿವಿಧ ರೂಪಗಳಲ್ಲಿ ಲಭ್ಯವಿವೆ\n'
          'ವೀಳ್ಯದೆಲೆಯ ಸಾಮಯಿಕ ಅಪ್ಲಿಕೇಶನ್ ಗಾಯದ ಚಿಕಿತ್ಸೆ ಮತ್ತು ಚರ್ಮದ ಸೋಂಕುಗಳಿಗೆ ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
          'ಬಳಕೆಯ ಮೊದಲು ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ, ವಿಶೇಷವಾಗಿ ಗರ್ಭಿಣಿಯರು, ಹಾಲುಣಿಸುವವರು, ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುತ್ತಿದ್ದರೆ. ವೀಳ್ಯದೆಲೆಯು ಅಡ್ಡ ಪರಿಣಾಮಗಳನ್ನು ಹೊಂದಿರಬಹುದು ಮತ್ತು ಕೆಲವು ಔಷಧಿಗಳೊಂದಿಗೆ ಸಂವಹನ ನಡೆಸಬಹುದು.',

          //BRAHMI

          'plantName8': 'ಬ್ರಾಹ್ಮಿ',

          'decription8': 'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: Bacopa monnieri\n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ಬ್ರಾಹ್ಮಿ\n'
              'ಕುಟುಂಬ: Plantaginaceae\n'
              'ಸ್ಥಳೀಯ: ಭಾರತ, ಉತ್ತರ ಅಮೆರಿಕಾ, ಆಸ್ಟ್ರೇಲಿಯಾ, ಯುರೋಪ್, ಏಷ್ಯಾ, ಆಫ್ರಿಕಾ\n'
              'ಆವಾಸಸ್ಥಾನ: ಜೌಗು ಪ್ರದೇಶಗಳು, ಜವುಗು ಪ್ರದೇಶಗಳು ಮತ್ತು ಮಣ್ಣಿನ ತೀರಗಳು\n'
              'ವಿವರಣೆ: ದೀರ್ಘಕಾಲಿಕ ಮೂಲಿಕೆ, 4-6 ಇಂಚುಗಳವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಸಣ್ಣ ಬಿಳಿ ಹೂವುಗಳು, ಉದ್ದವಾದ ಎಲೆಗಳು',

          'decription88': 'ಬ್ರಾಹ್ಮಿಯನ್ನು ಶತಮಾನಗಳಿಂದಲೂ ಅದರ ಔಷಧೀಯ ಗುಣಗಳಿಗಾಗಿ ಆಯುರ್ವೇದ ಔಷಧದಲ್ಲಿ ಬಳಸಲಾಗುತ್ತಿದೆ\n'
              'ಇದು ಉತ್ಕರ್ಷಣ ನಿರೋಧಕ, ಉರಿಯೂತದ ಮತ್ತು ಅಡಾಪ್ಟೋಜೆನಿಕ್ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ\n'
              'ಸಾಮಾನ್ಯವಾಗಿ ಅರಿವಿನ ಕಾರ್ಯ, ಸ್ಮರಣೆ ಮತ್ತು ಏಕಾಗ್ರತೆಯನ್ನು ಸುಧಾರಿಸಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಆತಂಕ, ಒತ್ತಡ ಮತ್ತು ಖಿನ್ನತೆಗೆ ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಚರ್ಮದ ಆರೋಗ್ಯ ಮತ್ತು ಕೂದಲಿನ ಬೆಳವಣಿಗೆಗೆ ಸಂಭಾವ್ಯ ಪ್ರಯೋಜನಗಳನ್ನು ಹೊಂದಿರಬಹುದು',

          'decription888': 'ಬ್ರಾಹ್ಮಿ ಎಲೆಗಳನ್ನು ತಾಜಾ ಅಥವಾ ಒಣಗಿಸಿ ಅಥವಾ ಚಹಾ, ಕ್ಯಾಪ್ಸುಲ್‌ಗಳು ಅಥವಾ ಪುಡಿಯ ರೂಪದಲ್ಲಿ ಸೇವಿಸಬಹುದು\n'
  'ಬ್ರಾಹ್ಮಿ ಎಣ್ಣೆ ಅಥವಾ ಪೇಸ್ಟ್‌ನ ಸಾಮಯಿಕ ಅಪ್ಲಿಕೇಶನ್ ಕೂದಲಿನ ಬೆಳವಣಿಗೆ ಮತ್ತು ಚರ್ಮದ ಆರೋಗ್ಯಕ್ಕೆ ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
  'ವಿಶೇಷವಾಗಿ ಗರ್ಭಿಣಿ ಅಥವಾ ಹಾಲುಣಿಸುವ ವ್ಯಕ್ತಿಗಳು ಅಥವಾ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುವವರಿಗೆ ಬಳಸುವ ಮೊದಲು ಆರೋಗ್ಯ ವೃತ್ತಿಪರರೊಂದಿಗೆ ಸಮಾಲೋಚನೆಯನ್ನು ಶಿಫಾರಸು ಮಾಡಲಾಗುತ್ತದೆ. ಥೈರಾಯ್ಡ್ ಔಷಧಿಗಳಂತಹ ಕೆಲವು ಔಷಧಿಗಳೊಂದಿಗೆ ಬ್ರಾಹ್ಮಿ ಸಂವಹನ ನಡೆಸಬಹುದು ಎಂಬುದನ್ನು ಗಮನಿಸುವುದು ಮುಖ್ಯವಾಗಿದೆ.',

          //BHUMI AMLA
          'plantName9': 'ಭೂಮಿ ಆಮ್ಲ',
          'decription9': 'ವೈಜ್ಞಾನಿಕ ಹೆಸರು: Phyllanthus niruri\n'
              'ಸಾಮಾನ್ಯ ಹೆಸರು: ಭೂಮ್ಯಾಮಲಕಿ, ಭೂಮಿಯಾಮ್ಲಾ\n'
              'ಕುಟುಂಬ: ಫಿಲಾಂಥೇಸಿ\n'
              'ಸ್ಥಳೀಯ: ಭಾರತ, ದಕ್ಷಿಣ ಅಮೇರಿಕಾ, ಚೀನಾ, ಮತ್ತು ಕೆರಿಬಿಯನ್\n'
              'ಆವಾಸಸ್ಥಾನ: ಹೊಲಗಳು, ತೋಟಗಳು ಮತ್ತು ತ್ಯಾಜ್ಯ ಸ್ಥಳಗಳಂತಹ ತೇವಾಂಶವುಳ್ಳ ಸ್ಥಳಗಳು\n'
              'ವಿವರಣೆ: ವಾರ್ಷಿಕ ಮೂಲಿಕೆ, 40 ಸೆಂ.ಮೀ ವರೆಗೆ ಬೆಳೆಯುತ್ತದೆ, ಸಣ್ಣ ಹಳದಿ-ಹಸಿರು ಹೂವುಗಳು, ಸಣ್ಣ ಅಂಡಾಕಾರದ ಎಲೆಗಳು',

          'decription99': 'ಶತಮಾನಗಳಿಂದ ಆಯುರ್ವೇದ ಔಷಧದಲ್ಲಿ ಅದರ ಔಷಧೀಯ ಗುಣಗಳಿಗಾಗಿ ಭೂಮಿಮಲಕಿಯನ್ನು ಬಳಸಲಾಗುತ್ತಿದೆ\n'
              'ಇದು ಹೆಪಟೊಪ್ರೊಟೆಕ್ಟಿವ್, ಆಂಟಿಆಕ್ಸಿಡೆಂಟ್ ಮತ್ತು ಉರಿಯೂತದ ಗುಣಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿದೆ ಎಂದು ನಂಬಲಾಗಿದೆ\n'
              'ಸಾಮಾನ್ಯವಾಗಿ ಯಕೃತ್ತಿನ ಕಾರ್ಯವನ್ನು ಬೆಂಬಲಿಸಲು ಮತ್ತು ಯಕೃತ್ತಿನ ಕಾಯಿಲೆಗಳಿಗೆ ಚಿಕಿತ್ಸೆ ನೀಡಲು ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಮೂತ್ರಪಿಂಡದ ಕಲ್ಲುಗಳು, ಮೂತ್ರದ ಸೋಂಕುಗಳು ಮತ್ತು ಉಸಿರಾಟದ ಕಾಯಿಲೆಗಳಿಗೆ ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
              'ಚರ್ಮದ ಆರೋಗ್ಯ ಮತ್ತು ರೋಗನಿರೋಧಕ ಶಕ್ತಿಗೆ ಸಂಭಾವ್ಯ ಪ್ರಯೋಜನಗಳನ್ನು ಹೊಂದಿರಬಹುದು',

          'decription999': 'ಭೂಮ್ಯಮಾಲಕಿಯನ್ನು ತಾಜಾ ಅಥವಾ ಒಣಗಿಸಿ ಅಥವಾ ಚಹಾ, ಕ್ಯಾಪ್ಸುಲ್‌ಗಳು ಅಥವಾ ಪುಡಿಯ ರೂಪದಲ್ಲಿ ಸೇವಿಸಬಹುದು\n'
  'ಭೂಮ್ಯಾಮಲಕಿ ಪೇಸ್ಟ್ ಅಥವಾ ಎಣ್ಣೆಯ ಸಾಮಯಿಕ ಅಪ್ಲಿಕೇಶನ್ ಚರ್ಮದ ಆರೋಗ್ಯಕ್ಕೆ ಸಹ ಬಳಸಲಾಗುತ್ತದೆ\n'
  'ವಿಶೇಷವಾಗಿ ಗರ್ಭಿಣಿ ಅಥವಾ ಹಾಲುಣಿಸುವ ವ್ಯಕ್ತಿಗಳು ಅಥವಾ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುವವರಿಗೆ ಬಳಸುವ ಮೊದಲು ಆರೋಗ್ಯ ವೃತ್ತಿಪರರೊಂದಿಗೆ ಸಮಾಲೋಚನೆಯನ್ನು ಶಿಫಾರಸು ಮಾಡಲಾಗುತ್ತದೆ. ರಕ್ತದಲ್ಲಿನ ಸಕ್ಕರೆ ಮತ್ತು ರಕ್ತದೊತ್ತಡದ ಔಷಧಿಗಳಂತಹ ಕೆಲವು ಔಷಧಿಗಳೊಂದಿಗೆ ಭೂಮಿಮಲಕಿ ಸಂವಹನ ನಡೆಸಬಹುದು ಎಂಬುದನ್ನು ಸಹ ಗಮನಿಸುವುದು ಮುಖ್ಯವಾಗಿದೆ.',

          'plantName10': 'ದಾಸವಾಳ',
          'decription10': '',
        }
      };
}
