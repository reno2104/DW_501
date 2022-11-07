main();
function main() {
  var myElementIdName = 'myBingo';
  var yourElementIdName = 'yourBingo';
  arrangeBingoNumber(myElementIdName);
}
//빙고 숫자(1~100) 나열하기
function arrangeBingoNumber(elementIdName) {
  var bingoArray = [];
  var totalIndex = 101;
  var child = document.getElementById(elementIdName).children;
  var i = 0;
  while (bingoArray.length < totalIndex) {
    var randomNum = Math.floor(Math.random() * totalIndex) + 1;
    if (bingoArray.indexOf(randomNum) === -1) {
      bingoArray.push(randomNum);
      child[i].innerHTML = '<p>' + randomNum + '</p>';
      ++i;
    }
  }
}
