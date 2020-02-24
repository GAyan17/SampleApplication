class Palindrome {
  int num;
  bool checkPalindrome() {
    int digit;
    int copyNum = num;
    int checkNum = 0;
    while (copyNum != 0) {
      digit = copyNum % 10;
      checkNum = checkNum * 10 + digit;
      copyNum = copyNum ~/ 10;
    }
    if (checkNum == num) {
      return true;
    }
    return false;
  }
}

void main() {
  
}