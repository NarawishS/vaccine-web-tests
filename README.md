# vaccine-web-tests

## How to run test
1. install requirements ```pip install requirements.txt```
2. install prefer webdriver and put execute file to Python\Scripts
3. change ${browser} in .robot to prefer webdriver (i.e., edge, firefox, chrome, ie, Opera, safari)
4. run Register.robot ```robot Register.robot```
5. run Test.robot ```robot Test.robot```

## Robot Framework vs Cucumber with Selenium/HTTP library and JUnit
My opinion is I prefer to use Robot Framework better because it's less hassle to handle,
Cucumber require a lot more setup to use and selenium is more complex, but
selenium can do complex test but robot framework can do simple test.

## Tutorial and Online resources
* [Tutorial Video](https://www.youtube.com/watch?v=UbYxkUq0Hec&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG)
* [SeleniumLibrary doc](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top)