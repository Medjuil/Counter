# spyier

Spyier is a simple Flutter application.

## About

This project contains a `incrementCount` method used to increment a value from a variable `count`
It also contains test cases which can check out below. Using the (Given, When, Then) and (Arrange, Act, Assesrt) framework and the test result, we can say that the result of the test is correct and reliable.

## Test Overview
There are two things that needs to be tested in this project.
1. The value of `count` variable during making a new instance.
2. The `incrementCount` method when it's being called after the `Counter` class has been instantiated.

## Test Cases
Test 1
1. Given the `Counter` class,
2. When instantiated,
3. Then the `count` is 0

Test 2
1. Given the `Counter` class is instantiated, 
2. When the `incrementCount` is called, 
3. Then the value `count` is 1

PS. All test were marked as passed.
