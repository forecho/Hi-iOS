//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, tuzi, 爱斯基摩🐰"

var year = 1984; // 7

var offset = 1990 % 12 - 7;

var index = (year % 12) - offset



if (index <= 0){
    index += 12;
}