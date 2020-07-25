class WebSpider {
List visitedPages;
RegExp regEx = new RegExp(r'(\w+)');
int pagesNum;
Map links;
WebSpider(this.links);
checkOnListPass(String namePass){
  if(links[namePass].length != 0) {
    for (int i = 0; i < links[namePass].length; i++) {
      String justString = links[namePass][i];
      justString = justString.replaceAll(RegExp(r'[0-9]'), '');
      justString = justString.replaceAll(RegExp(r'[.]'), '');
      justString = regEx.stringMatch(justString);
      for (int x = 0; x < visitedPages.length; x++) {
        RegExp re = new RegExp(visitedPages[x]);
        if (re.hasMatch(justString) == false && x == visitedPages.length - 1) {
          visitedPages.add(justString);
        }
        if (re.hasMatch(justString) == true) {
          break;
        }
      }
    }
  }
}
countPages(){
   visitedPages =[];
  if(links['secondPass'].length == 0 && links['thirdPass'].length == 0 ){
    pagesNum=links['firstPass'].length;
    print('the count pages is$pagesNum');
    return pagesNum;
  }else{
    for(int x=0; x < links['firstPass'].length;x++){
      String element= links['firstPass'][x].replaceAll(RegExp(r'[.]'), '');
      visitedPages.add(regEx.stringMatch(element));
      //print(visitedPages);
    }
    checkOnListPass('secondPass');
    checkOnListPass('thirdPass');
    print('the count pages is${visitedPages.length}');
    return 'the count pages is${visitedPages.length}';
  }

}

}