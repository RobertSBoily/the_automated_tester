This is a project for executing tests for the pages at http://book.theautomatedtester.co.uk/

Thoughts as I'm going through this exercise:
-It is generally a good idea to use relative URLs in your tests, and point to a centralized config file - e.g. the URL may change depending on which server the tests are being run against, and you want to test the application, rather than a particular server running an instance of the application. The URL at which the application is hosted my change (e.g. if your domain does). With that said, for the purposes of this project, don't implement it - YAGNI, and not the purpose of the exercise.
-When you have a dropdown with multiple options, don't implement a different method for every option. One method, which receives a parameter for the option.

-I have much the same code and structure in each page object, particularly #initialize. Consider page factory, or a superclass.