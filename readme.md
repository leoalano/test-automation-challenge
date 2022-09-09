# Test Automation Challenge of baconipsum.com

## Description

This is a test automation work by Leonardo Alano in response to Ascender's challenge. The objective of this challenge is to showcase the skills as an automation engineer and test analyst. 
Areas of learning include: Robot Framework, Libraries such as Selenium, Collections, Requests, API, user stories, Gherkin, git and github, Python, agile methodologies, etc.  

## Table of Contents (Optional)

- [Installation](#installation)
- [Usage](#usage)
- [How to Contribute](#how-to-contribute)
- [Credits](#credits)
- [License](#license)

## Installation

### Configuration 
1. Make sure you have Python 3 and Visual Studio Code installed.
2. Install and configure the plugin *Robot Framework Intellisense* in VS Code. 
3. Install the Robot Library using *pip install robotframework*. Details here [Robot - Get Started](https://robotframework.org/getting-started)
4. Install Selenium Library using *pip install --upgrade robotframework-seleniumlibrary*. Details here [Selenium Library](https://robotframework.org/SeleniumLibrary)
5. Install Requests Library using *pip install robotframework-requests*. Details here [Requests Library](https://github.com/MarketSquare/robotframework-requests#readme)
6. Configure the webdriver
a. Choose desired browser / correct version and extract the executable webdriver file. 
[Mozilla Firefox](https://github.com/mozilla/geckodriver/releases)
[Google Chrome](https://chromedriver.chromium.org/downloads)
[Opera](https://github.com/operasoftware/operachromiumdriver/releases)
[Safari](https://developer.apple.com/documentation/testing_with_webdriver_in_safari)
b. Move this file to /usr/bin/ using *mv geckodriver/usr/bin/*
c. If in Windows OS, configure Environment Variables. 


## Usage

To run all tests type in the command line "robot -d reports/ tests/"
To run specific test file type in the command line "robot -d reports/ tests/example_test.robot"



## Credits

### Team 
[Leonardo Alano](https://github.com/leoalano)

### Mentors 
[Thomás Vieira] https://github.com/thvieira
[Matheo Gracia Pegoraro] https://github.com/tteurs
  

## License

MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.