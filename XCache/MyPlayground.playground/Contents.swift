//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var cellHeadImage = ["head","head","head","head","head"]
var cellUserName = ["龚文明","张玲","吴哥","饭哥","大鹏"]
var cellText = ["嘿嘿，😋","大家新年好","元宵节快乐","情人节快乐","看花灯"]
var cellImages = ["bg","bg","bg","bg","bg"]
var cellTime = ["1小时前","2小时前","3小时前","4小时前","5小时前"]

for i in 0..<cellHeadImage.count {
    print("Friend(cellHeadImage: \"\(cellHeadImage[i])\", cellUserName: \"\(cellUserName[i])\", cellText: \"\(cellText[i])\", cellImages: \"\(cellImages[i])\", cellTime: \"\(cellTime[i])\")")
}