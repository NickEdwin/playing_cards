# Altvia Challenge

## Table of Contents

- [Introduction](#introduction)
- [Background Information](#background-information)
- [Running Instructions](#running-instructions)
- [Images](#images)

<!-- Brief Description -->

## Introduction  
A card shuffler as made for an initial Altvia coding challenge.  

This app will first generate a full deck of 52 playing cards (jokers excluded.)  
Users can then click the "Shuffle the cards!" button to randomly shuffle the cards displayed on screen.  
Users can then click the "Unshuffle the cards!" button to return the cards to their original order.  

## Background Information  
This is application is built with Ruby 2.5.3 and Rails 6.0.3.4.  
RSpec was used for testing. [Testing Files Here](https://github.com/NickEdwin/playing_cards/blob/main/spec)  

## Running Instructions  
To view live demo on Heroku [Click Here!](https://altvia-cards.herokuapp.com/)  


To setup locally:
* Clone this repo by running the following commands in your terminal:  
    * `git clone git@github.com:NickEdwin/playing_cards.git`  
    * `cd playing_cards`  
    * `bundle install`  

When you run `rspec` you should have all test currently passing.   


## Images  
Gif of page with functionality:  
![Sample Animation](https://s3.gifyu.com/images/card---shuffler.gif)  

Testing Coverage at 100%:  
![Test Coverage](https://i.imgur.com/O0zvLby.png)  
