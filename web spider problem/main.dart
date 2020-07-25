import 'package:flutter/material.dart';
import 'webSpider.dart';

void main(){
  Map links={
    "firstPass":["home.htm", "sitemap.htm", "contact.htm", "support/login.jsp"],
    "secondPass":["2 locations.htm", "../home.htm","home"],
    "thirdPass":["contact.htm","../home","../../oo"]
  };
  WebSpider webSpider = WebSpider(links);
  webSpider.countPages();

}





