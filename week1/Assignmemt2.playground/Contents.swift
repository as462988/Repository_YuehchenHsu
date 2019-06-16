import UIKit

//Assignment 2: Swift Basic
//1.
let pi = 3.1247
var radius = 20.0
var circle:Double = 2 * radius * pi
print(circle)

//2.
let x:Int = 10
let y:Int = 20
let average:Int = ( x + y ) / 2
print(average)

/*3.
let x1:Double = 10.6
let y1:Double = 20.8
let average1:Double = ( x1 + y1) / 2.0
print(average)
 將type Int 改為使用 Double 存取
 -------------------------------
 10/3 除數跟被除數都是整數的話，算出來的結果就會是整數
 10.0/3.0 浮點數的運算範圍更大，可以儲存比整數更精準的數值
 */

//4.
var flag:Bool = true
var inputString:String = "​Hello world."
let bitsInBite:Int = 8
let ​averageScore:Double = 86.8

//5.
var  salary:Int = 22000
salary += 28000
print(salary)

/*6.Now please write down the ​Equality​ operator in swift
 Answer : ==
*/

//7.
var a:Int = 8
var b:Int = 5
let retain:Int = a % b
print(retain)

/*8.
  Answer :
  var 為宣告變數,在執行過程中可以被改變的值
  let 為宣告常數,可以使用它、閱讀她,但不可以改變的他的值*/

/*9.
  Answer :
    > 不可使用空白鍵、特殊符號字元、運算符號命名
    > 駝峰式命名: 第二個單字後首字母使用大寫
    > 開頭不可以使用數字命名 */

/*10.
  透過變數中所提供值的來自動推論型態
  >輸入小數點會判斷為double Ex: var pi = 3.2147
  >輸入數值會判斷為int Ex: var weight = 20
  >輸入"文字"會判斷為String Ex: let name = "Yueh" or let number = " 0912344776"
*/

/*11.var phoneNumber = 0987654321
     phoneNumber = "Hello, world."
  Answer :phoneNumber 被推論型態為int,不可使用String改變他的值
 */

