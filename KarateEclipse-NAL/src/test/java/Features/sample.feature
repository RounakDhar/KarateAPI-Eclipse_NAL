Feature: print hello world feauture

  Scenario: Hello World Scenario
    * print 'hello world'
    * print 'test automation'

  Scenario: declare and print variables
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount ->' + (balance + fee + tax)
    
   
   Scenario: calculate scenario
    * def a = 20
    * def b = 30
    * print 'mul ->' + (a * b)
