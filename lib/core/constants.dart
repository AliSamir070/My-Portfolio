import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/asset_manager.dart';
import 'package:my_portfolio/core/utils/strings_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../features/home/data/models/project_model.dart';
import '../features/home/data/models/service_model.dart';

class Constants{
  static const String cvLink = "https://drive.google.com/file/d/1j4V9EsqZbE77YY0ysNqwB_2XHPU_0Npi/view?usp=drive_link";
  static  List<ServiceModel> services = [
    ServiceModel(
        description: StringsManager.flutterServiceDesc,
        imagePath: AssetManager.flutter,
        name: StringsManager.flutterServiceTitle
    ),
    ServiceModel(
        description: StringsManager.androidServiceDesc,
        imagePath: AssetManager.android,
        name: StringsManager.androidServiceTitle
    )
  ];
  static List<ProjectModel> projects = [
    ProjectModel(
        title: "Meetoor",
        appStore: "https://apps.apple.com/us/app/meetoor-app/id6450423034",
        playStore: "https://play.google.com/store/apps/details?id=com.meetoor&pli=1",
        imagePath: AssetManager.meetoor,
        description: "Meetoor is a dynamic social media platform that empowers users to connect and engage with others based on shared interests." //With personalized profiles, intuitive search tools, and private messaging features, users can discover like-minded individuals and build meaningful connections. Meetoor also fosters community engagement through group discussions, events, and media sharing, creating a vibrant and interactive online space. Prioritizing user privacy and security, the app ensures a safe and enjoyable experience for all its users. Whether users are looking for new friends, networking opportunities, or simply seeking to explore new interests, Meetoor provides a welcoming platform for social interaction and discovery
    ),
    ProjectModel(
        title: "Rafal",
        imagePath:AssetManager.rafal ,
        playStore: "https://play.google.com/store/apps/details?id=com.cyparta.rafal",
        appStore: "https://apps.apple.com/us/app/rafal/id6473119898",
        description: "Rafal is a user-friendly e-commerce mobile app designed for buying and selling electric devices. Offering a seamless shopping experience, Rafal allows users to browse a wide range of electronic products." //from smartphones to home appliances, with ease. With intuitive search and filter options, customers can quickly find the products they need. Rafal provides detailed product descriptions, images, and reviews to help users make informed purchasing decisions. Secure payment options and reliable delivery services ensure a convenient and trustworthy shopping experience.
    ),
    ProjectModel(
        title: "Go Leador",
        imagePath: AssetManager.goleadoor,
        description: "Go Leader is a revolutionary mobile app tailored for football players seeking opportunities to showcase their skills and connect with clubs and managers. With Go Leader, players can easily upload videos demonstrating their abilities.",//whether it's dazzling footwork, powerful shots, or precise passing. The app provides a platform for clubs and managers to discover talented players and potentially recruit them for their teams. Players can build their profiles, highlight their strengths, and gain visibility in the football community. Go Leader simplifies the recruitment process, offering a direct channel for players to be noticed and for clubs to find the perfect fit for their team.
        playStore: "https://play.google.com/store/apps/details?id=com.cyparta.go_leador",
        appStore: "https://apps.apple.com/us/app/go-leador/id6474331530"
    ),
    ProjectModel(
        title: "Gray's and Danny's",
        imagePath: AssetManager.grays,
        description: "Gray's and Danny's is a comprehensive e-commerce app catering to the halal meat market, specializing in the sale of cows, chicken, goats, both slaughtered and live. ", // With a user-friendly interface, customers can easily browse through a wide selection of quality meats, ensuring they meet their dietary and religious requirements. Whether users prefer to purchase freshly slaughtered meat or live animals for custom slaughtering, Gray's and Danny's provides a convenient and reliable platform. The app offers detailed product descriptions, pricing options, and secure payment methods, ensuring a seamless shopping experience. With its focus on halal practices, Gray's and Danny's serves as a trusted source for high-quality halal meat, connecting suppliers directly with consumers.
        appStore:"https://apps.apple.com/eg/app/grays-dannys/id6447873266",
        playStore: "https://play.google.com/store/apps/details?id=com.cyparta.graysanddannys.grays_and_dannys"

    ),
    ProjectModel(
        title: "TawQeet",
        imagePath: AssetManager.tawqeet,
        description: "TawQeet is a unique clock app that embraces Arabian culture by displaying time using the names of Arabian hours. ", //Users can view the time in their local timezone or add specific locations to track time across different regions. In addition to its clock function, TawQeet features a moon calendar, allowing users to stay connected to lunar phases and important Islamic dates. The app also includes a sebha feature for users to keep track of their prayers or meditation sessions. With its blend of traditional timekeeping and modern convenience, TawQeet offers a comprehensive tool for users to stay connected to their cultural heritage while managing their daily routines.
        playStore: "https://play.google.com/store/apps/details?id=com.cyparta.tawqeet&hl=en&gl=US",
        appStore:"https://apps.apple.com/us/app/tawqeet/id6446093422"
    ),
    ProjectModel(
        title: "Astdafa",
        imagePath: AssetManager.astdafa,
        description: "Astdafa is a compassionate mobile app designed to assist families of patients from the 57357 Hospital, who reside outside Cairo, in finding accommodation near the hospital during their loved ones' treatment.", // This app streamlines the process of securing temporary housing by providing a user-friendly platform where users can browse nearby lodging options, view details such as location, amenities, and pricing, and make reservations directly within the app. Astdafa aims to alleviate the stress of finding suitable accommodation for families during difficult times, ensuring they can focus on supporting their loved ones through their medical journey.
        github: "https://github.com/AliSamir070/astdafa"
    ),
    ProjectModel(
        title: "Capitano",
        imagePath: AssetManager.capitano,
        isAndroid: true,
        description: "Capitano is the ultimate mobile app for football enthusiasts to test their knowledge and expertise in the sport.", // With a variety of question types ranging from trivia to tactics, users can challenge themselves and others on all aspects of football. Whether it's history, players, teams, or strategies, Capitano offers a comprehensive quiz experience for fans of the beautiful game. With each question, users can learn more about football while competing with friends or other fans around the world. Whether you're a seasoned football aficionado or just starting to explore the sport, Capitano provides an engaging platform to showcase your football IQ.
        playStore:"https://play.google.com/store/apps/details?id=com.alisamir.footballquiz" ,
        appStore: "https://play.google.com/store/apps/details?id=com.alisamir.footballquiz"
    ),
    ProjectModel(
        title: "Smart Home Security",
        imagePath: AssetManager.smarthomesecurity,
        description: "Smart Home Security is a cutting-edge mobile app that harnesses the power of IoT technology to safeguard homes from potential hazards. With its advanced monitoring capabilities, the app detects and prevents various dangers such as gas leaks, break-ins, water leaks, and fires.", // Users can remotely monitor their home's security status in real-time and receive instant alerts on their mobile devices in case of any detected threats. Whether it's ensuring gas appliances are turned off, detecting intruders, or alerting to water leaks, Smart Home Security provides peace of mind by offering comprehensive protection for homes and their inhabitants.
        github: "https://github.com/AliSamir070/Smart-Home-Security",
        isAndroid: true
    ),
    ProjectModel(
        title: "News Pulse",
        imagePath: AssetManager.androidNews,
        description: "News Pulse is a cutting-edge news app built with the Android Native Framework, delivering real-time updates and breaking news from around the world.",
        github: "https://github.com/AliSamir070/News-App",
        isAndroid: true
    ),
    ProjectModel(
        title: "HaQTak App",
        imagePath: AssetManager.haqtak,
        description: "HaQTak is a premier e-commerce app specializing in electronics. Whether you're looking for smartphones, laptops, home appliances, or tech accessories, HaQTak offers unbeatable prices and exclusive deals to meet all your electronic needs. Shop smart and stay ahead with HaQTak.",
        github: "https://github.com/AliSamir070/HaQTak-App",
    ),
    ProjectModel(
      title: "ToDo App",
      imagePath: AssetManager.todo,
      description: "It is a powerful to-do list app designed to help you stay organized and productive. Easily create, manage, and prioritize tasks with a user-friendly interface. Set reminders, and deadlines, and categorize your tasks for efficient tracking.",
      github: "https://github.com/AliSamir070/Todo-App",
    ),
    ProjectModel(
      title: "World News App",
      imagePath: AssetManager.flutterNews,
      description: "World News App is your gateway to the latest news from across the globe, featuring articles from diverse sources. Stay informed with real-time updates on politics, business, technology, entertainment, sports, and more.",
      github: "https://github.com/AliSamir070/World-News-App",
    ),
    ProjectModel(
      title: "Islamy App",
      imagePath: AssetManager.islamy,
      description: "Islamy is a comprehensive mobile app designed for Muslims, offering a rich array of features to enhance their spiritual journey. The app includes the Quran, Ahadith, a live radio, and a digital Sebha for counting prayers. With support for dark mode, Islamy ensures a comfortable user experience in low-light environments.",
      github: "https://github.com/AliSamir070/Islamy-App",
    )
  ];
  static const String linkedInUrl = "https://www.linkedin.com/in/ali-samir-2b87131b0/";
  static const String githubUrl = "https://github.com/AliSamir070";
  static const String email = "alizidan571@gmail.com";
  static const String phone = "+201022020442";
  static const String upworkUrl = "https://www.upwork.com/freelancers/~01a5e05a21238313d2";
  static const String freelancerUrl = "https://www.freelancer.com/u/alizidan571";
}
void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey[300],
    textColor: Colors.black,
    fontSize: 16.spMin,
  );
}
Future<void> openUrl(String url) async {
  if (!await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication)) {
    print("Could not launch $url");
  }
}