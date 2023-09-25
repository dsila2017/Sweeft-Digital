import Cocoa

func minSplit(amount: Int) -> Int {
    
    var result = 0
    var left = amount
    
    if amount >= 50 {
        result = amount/50
        left -= amount/50 * 50
    }
    switch(left) {
        
    case 20...:
        result += left/20
        left -= left/20 * 20
        fallthrough
    case 10...:
        result += left/10
        left -= left/10 * 10
        fallthrough
    case 5...:
        result += left/5
        left -= left/5 * 5
        fallthrough
    case 1...:
        result += left/1
        left -= left/1 * 1
        
    default:
        0
    }
    return result
}

minSplit(amount: 9)

//დაწერეთ ფუნქცია რომელიც დააჯამებს ციფრებს ორ რიცსხვს შორის.
//   მაგალითად გადმოგვეცემა 19 და 22. მათ შორის ციფრების ჯამი იქნება :
//   // 19, 20, 21, 22
//   // (1 + 9) + (2 + 0) + (2 + 1) + (2 + 2) = 19
//
//   func sumOfDigits(start: Int, end: Int) -> Int {
//       // Your code goes here
//   }
//
//   sumOfDigits(7, 8) ➞ 15
//   sumOfDigits(17, 20) ➞ 29
//   sumOfDigits(10, 12) ➞ 6

func sumOfDigits(start: Int, end: Int) -> Int {
    
    var result = 0
    var startString = String(start)
    var endString = String(end)
    
    for k in start...end{
        var pString = String(k)
        for i in pString {
            
            result += Int(String(i))!
            //print(startResult)
        }
    }
    
    return result
}

sumOfDigits(start: 7, end: 8)

//მოცემულია String რომელიც შედგება „(" და „)" ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.
//
//    func isProperly(sequence: String) -> Bool {
//        // Your code goes here
//    }
//
//    Examples:
//    isProperly(sequence: "(()())") ➞ true
//    isProperly(sequence: ")(()") ➞ false
//    isProperly(sequence: "(()())(") ➞ false
//
//4. გვაქვს N ფიცრისგან შემდგარი ხიდი. სიძველის გამო ზოგიერთი ფიცარი ჩატეხილია. ზურიკოს შეუძლია გადავიდეს შემდეგ ფიცარზე ან გადაახტეს ერთ ფიცარს. (რათქმაუნდა ჩატეხილ   ფიცარზე ვერ გადავა)
//   ჩვენი ამოცანაა დავითვალოთ რამდენი განსხვავებული კომბინაციით შეუძლია ზურიკოს ხიდის გადალახვა. გადმოგვეცემა ხიდის სიგრძე და ინფორმაცია ჩატეხილ ფიცრებზე. 0 აღნიშნავს ჩატეხილ ფიცარს 1_ანი კი მთელს. დასაწყისისთვის ზურიკო დგას ხიდის ერთ მხარეს (არა პირველ ფიცარზე) და გადალახვად ჩათვლება ხიდის მეორე მხარე (ბოლო ფიცრის შემდეგი ნაბიჯი)

func isProperly(sequence: String) -> Bool {
    
    var firstCharacterCounter = 0
    var secondCharacterCounter = 0
    
    if sequence.first == "(" && sequence.last == ")" {
        for i in sequence {
            if i == "(" {
                firstCharacterCounter += 1
            }
            if i == ")" {
                secondCharacterCounter += 1
            }
        }
        if firstCharacterCounter == secondCharacterCounter {
            return true
        }
    }
    return false
}

isProperly(sequence: "(()())")

//5. გადმოგეცემათ მთელი რიცხვი N. დაწერეთ ფუნქცია რომელიც დაითვლის რამდენი 0ით ბოლოვდება N! (ფაქტორიალი)
//    შენიშვნა 1000! შედგება 2568 სიმბოლოსაგან.
//
//    func zeros(N: Int) -> Int {
//        // Your code goes here
//    }
//
//    example:
//    zeros(N: 7) ➞ 1
//    zeros(N: 12) ➞ 2
//    zeros(N: 490) ➞ 120

func zeros(N: Int) -> Int {
    
    var result = 1
    var resultCounter = 0
    
    for i in 1...N {
        
        result *= i
    }
    
    var resultString = String(result)
    
    for _ in resultString {
        if resultString.last == "0" {
            resultCounter += 1
            resultString.removeLast()
        }
    }
    
    return resultCounter
}

zeros(N: 10)

//4. გვაქვს N ფიცრისგან შემდგარი ხიდი. სიძველის გამო ზოგიერთი ფიცარი ჩატეხილია. ზურიკოს შეუძლია გადავიდეს შემდეგ ფიცარზე ან გადაახტეს ერთ ფიცარს. (რათქმაუნდა ჩატეხილ   ფიცარზე ვერ გადავა)
//   ჩვენი ამოცანაა დავითვალოთ რამდენი განსხვავებული კომბინაციით შეუძლია ზურიკოს ხიდის გადალახვა. გადმოგვეცემა ხიდის სიგრძე და ინფორმაცია ჩატეხილ ფიცრებზე. 0 აღნიშნავს ჩატეხილ ფიცარს 1_ანი კი მთელს. დასაწყისისთვის ზურიკო დგას ხიდის ერთ მხარეს (არა პირველ ფიცარზე) და გადალახვად ჩათვლება ხიდის მეორე მხარე (ბოლო ფიცრის შემდეგი ნაბიჯი)
//
//
//   func countWays(n: Int, steps: [Int]) -> Int {
//           // Your code goes here
//   }
//
//   Examples:
//   countWays(n: 3, steps: [0, 1, 0]) ➞ 1
//   countWays(n: 4, steps: [0, 1, 1, 0]) ➞ 1
//   countWays(n: 5, steps: [1, 1, 0, 1, 1]) ➞ 4 // (s, 1, 2, 4, 5, f), (s, 1, 2, 4, f), (s, 2, 4, 5, f), (s, 2, 4, f)  s - ხიდის ერთი მხარე, f - ხიდის მეორე მხარე

func countWays(n: Int, steps: [Int]) -> Int {
    
//    var arr[n] = []
//    
//    for i in 0...n-2{
//        if steps[i] == 0 {
//            arr[i] = 0
//        } else {
//            arr[i] = arr[i+1] + arr[i+2]
//        }
//    }
//    return arr[0] + arr [1]
    return 0
}
