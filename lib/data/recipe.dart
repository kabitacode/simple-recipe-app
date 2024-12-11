import 'package:myapp/model/filterModel.dart';
import 'package:myapp/model/Recipe_Model.dart';

var recipe = [
  RecipeModel(
      name: "Tteokbokki",
      description:
          "This iconic dish is beloved for its chewy glass noodles and irresistible savory-sweet flavors.",
      cal: "450cal",
      protein: "10protein",
      ingredients: [
        "6 sdm tepung beras",
        "5 sdm tepung tapioka",
        "1/2 - 1 sdt garam",
        "120 ml air mendidih"
      ],
      step: [
        "Hal pertama yang harus dilakukan ialah membuat tteok atau kue beras. Caranya dengan menyangrai tepung beras lalu mencampurkannya dengan tepung tapioka dan garam.",
        "Selanjutnya, tuangkan air panas sedikit demi sedikit lalu aduk dan uleni hingga menjadi adonan.",
        "Bagi adonan menjadi 5 bagian atau bisa disesuaikan dengan selera, lalu pulung adonan tersebut.",
        "Rebus tteok dengan air mendidih dan masak hingga adonan mengembang. Angkat lalu pindahkan ke dalam air dingin dan tiriskan. Kini tteok telah siap digunakan.",
        "Setelah selesai membuat tteok, langkah kedua ialah membuat saus gochujang. Caranya, rebus ikan teri kombu, 1/4 bawang bombay, bawang putih, dan 3,5 gelas air hingga mendidih atau selama 15-45 menit. Semakin lama direbus maka kaldu yang dihasilkan akan semakin kaya rasa.",
        "Kemudian, saring kaldu dan panaskan kembali dengan api sedang. Lalu masukkan odeng, dan masak selama 5 menit.",
        "Sambil menunggu odeng matang, campurkan gochujang, gochugaru, dan kecap asin ke dalam mangkuk yang terpisah.",
        "Tambahkan kaldu ikan teri dan odeng ke dalam tteok yang sedang dimasak dan diamkan sampai mendidih dengan api kecil.",
        "Sebelum ditiriskan, tambahkan potongan daun bawang lalu masak kembali selama satu menit. Lalu, matikan api.",
        "Tuangkan tteokbokki ke dalam piring saji. Lalu tambahkan telur rebus yang sudah dipotong jadi dua serta taburi wijen sangrai. Kini, tteokbokki telah siap disantap selagi hangat.",
      ],
      imageAsset: "assets/images/korean-food.png"),
  RecipeModel(
      name: "Donat Kentang",
      description:
          "Cookie Cake Recipe is the perfect way to celebrate birthdays or other special occasions",
      cal: "300cal",
      protein: "70protein",
      ingredients: [
        "400 gr tepung terigu protein tinggi",
        "100 gr tepung terigu protein sedang",
        "50 gr susu bubuk",
        "11 gr ragi instan",
        "200 gr kentang kukus, haluskan dan dinginkan",
        "100 gr gula kastor",
        "75 gr mentega, 1/4 sdt garam, 4 kuning telur",
        "100 ml air dingin / susu cair dingin"
      ],
      step: [
        "Campurkan tepung terigu, susu bubuk, gula dan ragi. Aduk hingga rata. Tambahkan kentang halus, masukkan kuning telur dan tambahkan air sedikit demi sedikit sambil diuleni hingga rata dan setengah kalis",
        "Masukan garam dan mentega, terus uleni hingga kalis dan elastis. Diamkan selama kurang lebih 20-30 menit, tutupi dengan serbet lembab agar adonan tidak kering",
        "Kempiskan adonan, bagi adonan masing -masing 50 gr, bulatkan. Diamkan 20-30 menit, hingga mengembang",
        "Lubangi tengahnya, menjadi bentuk donat, segera goreng sampai kuning kecoklatan",
        "Goreng donat dengan api sedang cenderung kecil hingga kecoklatan. - Angkat dan tiriskan. Setelah dingin bisa diberi topping sesuai selera.",
      ],
      imageAsset: "assets/images/cookie.png"),
  RecipeModel(
      name: "Cookies Wafer Keju",
      description:
          "Wafers are crispy, often sweet, very thin, flat, and light biscuits, often used to decorate ice cream.",
      cal: "300cal",
      protein: "70protein",
      ingredients: [
        "250 gr mentega",
        "100 gr gula halus",
        "350 gr tepung terigu",
        "30 gr maizena",
        "20 gr susu bubuk",
        "1 kuning telur",
        "1 telur utuh",
        "wafer rasa keju",
        "keju parut secukupnya",
      ],
      step: [
        "Kocok 250 gr mentega, 100 gr gula halus, hingga rata. Masukkan 1 telur utuh dan 1 kuning telur, kocok selama 3 menit hingga agak pucat",
        "Masukkan terigu 350 gr, 30 gr maizena, 20 gr susu bubuk sambil diayak dan diaduk dengan spatula",
        "Tipiskan adonan, letakkan wafer rasa keju di atasnya, gulung dan padatkan menyelimuti bentuk wafernya",
        "Potong-potong sesuai selera. Olesi kuning telur, taburi keju parut, panggang hingga matang api sedang sesuai oven masing-masing, panas atas bawah."
      ],
      imageAsset: "assets/images/cookies-wafer.png"),
  RecipeModel(
      name: "Wafer Coklat",
      description:
          "Wafers are crispy, often sweet, very thin, flat, and light biscuits, often used to decorate ice cream.",
      cal: "300cal",
      protein: "70protein",
      ingredients: [
        "150 gr DCC (cincang)",
        "50 gr butter/margarin",
        "40 ml minyak sayur",
        "2 btr telur ayam grade A",
        "50 gr gula pasir (blender halus)",
        "100 gr terigu protein sedang",
        "20 gr cokelat bubuk"
      ],
      step: [
        "Tim hingga meleleh DCC, masukkan butter, dan minyak. Aduk hingga semua rata dan meleleh. Sisihkan dan tunggu dingin di suhu ruang",
        "Kocok lepas telur dan gula dengan hand whisk hingga gula benar-benar larut",
        "Ayak tepung dan cokelat bubuk. Masukkan ke dalam adonan telur. Aduk hingga rata. Tambahkan cokelat yang sudah dilelehkan tadi. Aduk pelan dengan hand whisk hingga adonan licin",
        "Tuang dalam loyang yg dialasi baking paper/dioles. Taburi dengan topping sesuai selera. Panggang dengan api besar hingga matang."
      ],
      imageAsset: "assets/images/wafer.png"),
  RecipeModel(
      name: "Cookies Wafer Keju",
      description:
          "Wafers are crispy, often sweet, very thin, flat, and light biscuits, often used to decorate ice cream.",
      cal: "300cal",
      protein: "70protein",
      ingredients: [
        "250 gr mentega",
        "100 gr gula halus",
        "350 gr tepung terigu",
        "30 gr maizena",
        "20 gr susu bubuk",
        "1 kuning telur",
        "1 telur utuh",
        "wafer rasa keju",
        "keju parut secukupnya",
      ],
      step: [
        "Kocok 250 gr mentega, 100 gr gula halus, hingga rata. Masukkan 1 telur utuh dan 1 kuning telur, kocok selama 3 menit hingga agak pucat",
        "Masukkan terigu 350 gr, 30 gr maizena, 20 gr susu bubuk sambil diayak dan diaduk dengan spatula",
        "Tipiskan adonan, letakkan wafer rasa keju di atasnya, gulung dan padatkan menyelimuti bentuk wafernya",
        "Potong-potong sesuai selera. Olesi kuning telur, taburi keju parut, panggang hingga matang api sedang sesuai oven masing-masing, panas atas bawah."
      ],
      imageAsset: "assets/images/cookies-wafer.png"),
  RecipeModel(
      name: "Tteokbokki",
      description:
          "This iconic dish is beloved for its chewy glass noodles and irresistible savory-sweet flavors.",
      cal: "450cal",
      protein: "10protein",
      ingredients: [
        "6 sdm tepung beras",
        "5 sdm tepung tapioka",
        "1/2 - 1 sdt garam",
        "120 ml air mendidih"
      ],
      step: [
        "Hal pertama yang harus dilakukan ialah membuat tteok atau kue beras. Caranya dengan menyangrai tepung beras lalu mencampurkannya dengan tepung tapioka dan garam.",
        "Selanjutnya, tuangkan air panas sedikit demi sedikit lalu aduk dan uleni hingga menjadi adonan.",
        "Bagi adonan menjadi 5 bagian atau bisa disesuaikan dengan selera, lalu pulung adonan tersebut.",
        "Rebus tteok dengan air mendidih dan masak hingga adonan mengembang. Angkat lalu pindahkan ke dalam air dingin dan tiriskan. Kini tteok telah siap digunakan.",
        "Setelah selesai membuat tteok, langkah kedua ialah membuat saus gochujang. Caranya, rebus ikan teri kombu, 1/4 bawang bombay, bawang putih, dan 3,5 gelas air hingga mendidih atau selama 15-45 menit. Semakin lama direbus maka kaldu yang dihasilkan akan semakin kaya rasa.",
        "Kemudian, saring kaldu dan panaskan kembali dengan api sedang. Lalu masukkan odeng, dan masak selama 5 menit.",
        "Sambil menunggu odeng matang, campurkan gochujang, gochugaru, dan kecap asin ke dalam mangkuk yang terpisah.",
        "Tambahkan kaldu ikan teri dan odeng ke dalam tteok yang sedang dimasak dan diamkan sampai mendidih dengan api kecil.",
        "Sebelum ditiriskan, tambahkan potongan daun bawang lalu masak kembali selama satu menit. Lalu, matikan api.",
        "Tuangkan tteokbokki ke dalam piring saji. Lalu tambahkan telur rebus yang sudah dipotong jadi dua serta taburi wijen sangrai. Kini, tteokbokki telah siap disantap selagi hangat.",
      ],
      imageAsset: "assets/images/korean-food.png"),
];

var filterButton = [
  FilterModel(name: "Popular"),
  FilterModel(name: "Soup"),
  FilterModel(name: "Healthy"),
  FilterModel(name: "Sweets"),
  FilterModel(name: "Korean Food"),
  FilterModel(name: "Sundanese Food"),
  FilterModel(name: "Indonesian Food")
];
