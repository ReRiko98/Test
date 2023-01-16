import UIKit

var greeting = "Hello, playground"

//Здесь я создал шахматную доску и записал в качестве словаря. Нужно было выявить nil-значение одного ключа
typealias Chessman = [String:(alpha:Character,num:Int)?]
var chessmans: Chessman = ["Белый король": (alpha: "A", num: 4),"Белый ферзь": (alpha: "B", num: 7), "Черная пешка": (nil)]
if chessmans["Белый король"] != nil {
    print(chessmans["Белый король"]!! as Any)
       }
       if chessmans["Белый ферзь"] != nil {
           print(chessmans["Белый ферзь"]!! as Any)
   }
   if chessmans["Черная пешка"] != nil {
       _ = chessmans.keys
       print("Черной пешки нет на игровом поле")
   }

//То же самое, только другим методом
typealias Chessman = [String:(alpha:Character,num:Int)?]
var сhessmans: Chessman = ["Белый король":(alpha:"A",num: 4),
                            "Белый ферзь":(alpha:"B",num: 7),
                            "Чёрная пешка":(nil)]
if  ((сhessmans["Белый король"] ?? nil) != nil) {
    print("Location of the Белый король is \(сhessmans["Белый король"]!!)")
} else {
    print("Your figure was killed")
}
if  ((сhessmans["Белый ферзь"] ?? nil) != nil) {
    print("Location of the Белый ферзь is \(сhessmans["Белый ферзь"]!!)")
} else {
    print("Your figure was killed")
}
if  ((сhessmans["Чёрная пешка"] ?? nil) != nil) {
    print("Location of the Чёрная пешка is \(сhessmans["Чёрная пешка"]!!)")
} else {
    print("Your figure was killed")
}
 //Через конструкцию if-else, только теперь анализ не по одной переданной фигуре, а всех сразу.
for (nameOfFigure,allValues) in сhessmans {
    if allValues == nil {
        print("\(nameOfFigure) was killed")
    } else {
        print("Location for \(nameOfFigure) is \(сhessmans[nameOfFigure]!!)")
    }
}

//Данное задание заключалось в создании среднего значения успеваемости всех учеников, а потом и всей группы
let resultListofStudents:[String:[String:UInt]] = ["Ivanov": ["25.04.2022":2, "26.04.2022":3], "Ti":["25.04.2022":4, "26.04.2022":3], "Best": ["25.04.2022":5, "26.04.2022":3]]
var resultSum: UInt = 0
var resultCount: UInt = 0
var name: String
for (secondNames, results) in resultListofStudents {
    name = secondNames
     if name == secondNames {
         for (_, result) in results {
            resultCount = UInt(resultListofStudents[name]!.count)
            resultSum += result
        }
        print("Средняя оценка студента \(name) \((Double(resultSum)/Double(resultCount)))")
        resultSum = 0
    }
}
var resultAllSum: UInt = 0
var resultAllCount: UInt = 0
for (surname, results) in resultListofStudents {
    for (_, result) in results {
            resultAllSum += result
        }
        resultAllCount += UInt(resultListofStudents[surname]!.count)
    }
    print("Средняя оценка группы = \(Double(resultAllSum)/Double(resultAllCount))\n")

//Установление локации каждой фигуры
typealias Chessman = [String:(alpha:Character,num:Int)?]
var dictionaryForChess: Chessman = ["White horse":(alpha:"A",num: 2),
                                    "Black king":(alpha:"C",num: 6),
                                    "White king":(nil)]


for (nameOfFigure, coordinates) in dictionaryForChess {
    if coordinates == nil {
        print("\(nameOfFigure) was killed")
    } else {
        print("Location for \(nameOfFigure) is \(dictionaryForChess[nameOfFigure]!!)")
    }

//То же самое, только через func chessAnalizer
    typealias Chessman = [String:(alpha:Character,num:Int)?]
    var _: Chessman = ["White horse":(alpha:"A",num: 2),
                             "Black king":(alpha:"C",num: 6),
                             "White king":(nil)]

    func chessAnalizer(figures: Chessman) {
        for (nameOfFigure, coordinates) in figures {
            if coordinates == nil {
                print("Location for \(nameOfFigure)) was killed")
            } else {
                print("Location for \(nameOfFigure)) is \(figures[nameOfFigure]!!)")
            }
        }
    }
}

typealias Chessman = [String:(alpha:Character,num:Int)?]
var dictionary: Chessman = ["White horse":(alpha:"A",num: 2),
                                    "Black king":(alpha:"C",num: 6),
                                    "White king":(nil)]

func changeFigure( dictionary: inout Chessman, name: String, coordinates: (alpha:Character,num:Int)?) {
    if dictionary[name] != nil && dictionary[name]! != nil && coordinates != nil {
        let (alpha, num) = coordinates!
        dictionary[name]!!.alpha = alpha
        dictionary[name]!!.num = num
    } else {
        dictionary[name] = coordinates
    }
}
changeFigure(dictionary: &dictionary, name: "", coordinates: (alpha: "с", num: 5))
print(dictionary)

