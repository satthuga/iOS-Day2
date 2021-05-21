//
//  main.swift
//  Day2
//
//  Created by Apple on 19/05/2021.
//

import Foundation

print("Hello, World!")

let str = "Hom nay"
print(str.count)

//MARK: Câu điều kiện
if str.count < 10 {
    print("Chuỗi quá ngắn")
}
    
if str.count < 10 {
    print("Chuỗi quá ngắn")
} else {
    print("Chuỗi không ngắn")
}
    
    
if str.count < 10 {
    print("Chuỗi quá ngắn")
} else if str.count < 20 {
    print("Chuỗi có độ dài trung bình")
} else {
    print("Chuỗi dài")
}

//MARK: Cho số nguyên n. Kiểm tra n là số âm, 0, hay dương?
let n: Int = 20
if n < 0 {
    print("\(n) là số âm")
} else if n == 0 {
    print("\(n) là số không")
} else {
    print("\(n) là số dương")
}

//MARK: Cho số nguyên b. Kiểm tra b là số chẵn hay số lẻ.
//Để tìm phần dư thì dùng phép toán % cho số nguyên.  Ví dụ 5%3 = 2
let b: Int = 21
if b%2 == 0 {
    print("Chẵn")
} else {
    print("Lẻ")
}
// Toán tử. > < >= <= ; 1 dấu = là phép gán

var isMale: Bool = true
if isMale == true {
    print("Nam")
} else {
    print("Nữ")
}

//C2:
if isMale {
    print("Nam")
} else {
    print("Nữ")
}

//C3
if isMale == false {
    print("Nữ")
} else {
    print("Nam")
}

//C4:
if !isMale { // Sử dụng ! đứng trước isMale là giá trị nghịch đảo của đối tượng bool
    print("Nữ")
} else {
    print("Nam")
}

//C5:
isMale ? print("Nam") : print("Nữ") //toán tử điều kiện 3 ngôi

//MARK: Cho 2 số x và y. Viết hàm kiểm tra xem x có chia hết cho y ko.
func isDivisible(x: Int, y: Int) {
    if y == 0 {
        print("y không hợp lệ")
        return // return dừng chương trình nếu y = 0
    }
    if x%y == 0 {
        print("\(x) chia hết cho \(y)")
    } else {
        print("\(x) không chia hết cho \(y)")
    }
}
isDivisible(x: 5, y: 3)

//MARK: - Cho 2 số x, y. Viết hàm trả về số lớn hơn.
func isMax(x: Float, y: Float) -> Float {
    return x > y ? x : y // viết gọn
}

print(isMax(x: 5.6, y: 7))

//MARK: - Giải phương trình bậc nhất ax + b = c (a, b, c là các số nguyên)

func firstEquation(a: Int, b: Int, c: Int) {
    if a == 0 {
        if b == c {
            print(" vô số nghiệm")
            return
        } else {
            print("vô nghiệm")
            return
        }
    } else {
        print("nghiệm là \((Float(c) - Float(b))/Float(a))")
        return
    }
    
}
firstEquation(a: 2, b: 3, c: 6)

//MARK: - Giải phương trình bậc 2 ax^2 + bx + c = 0
func secondEquation(a: Float, b: Float, c: Float) -> String {
    let delta: Float = b*b - 4*a*c
    if delta < 0 {
        return "Pt vô nghiệm"
        
    }
    
    if delta == 0 {
        return "pt có một nghiệm \(-b/(2*a))"
    }
    
    return "2 nghiệm là \((-b + sqrtf(delta)) / (2*a)) và \((-b - sqrtf(delta)) / (2*a))"
}
print(secondEquation(a: 1, b: -2, c: 1))
print(secondEquation(a: 1, b: -3, c: 1))
print(secondEquation(a: 1, b: -3, c: 2))
print(secondEquation(a: 1, b: 2, c: 2))

//MARK: -Câu điều kiện switch ... case

var number = 2
switch number {
case 1:
    print("number là số 1")
case 2:
    print("number là số 2")
case 3:
    print("number là số 3")
case 4:
    print("number là số 4")
case 5:
    print("number là số 5")

default:
    print("không nằm trong khoảng 1 - 5")
}

switch number {
case 1..<5:
    print("1 - 4")
case 5...10:
    print("5 - 10")
case 11...15:
    print("11 - 15")
case 16...20:
    print("16 - 20")

default:
    print("không nằm trong khoảng 1 - 20")
}


//MARK: Cho điểm 3 môn Toán Lý Hoá. Tính điểm trung bình và xếp loại học lực. Biết
/*
 - 0 đến nhỏ hơn 3: học lực yếu
 - 3 dến nhỏ hơn 5: kém
 - 5 đến nhỏ hơn 6.5: trung bình
 - 6.5 đến nhỏ hơn 8: khá
 - 8 đến 10: giỏi
 */

func averageMark(math: Float, physics: Float, chemistry: Float) {
    switch (math, physics, chemistry) {
    case (0...10, 0...10, 0...10):
        let average = (math + physics + chemistry)/3
        switch average {
        case 0..<3:
            print("Học lực yếu, điểm trung bình là \(average)")
        case 3..<5:
            print("Học lực kém, điểm trung bình là \(average)")
            //fallthrough  câu lệnh fallthrough:thuật toán không dừng tại case này mà nhảy xuống 1 case mới dừng
        case 5..<6.5:
            print("Học lực trung bình, điểm trung bình là \(average)")
        case 6.5..<8:
            print("Học lực khá, điểm trung bình là \(average)")
            
        default:
            print("Học lực giỏi, điểm trung bình là \(average)")
        }
    default:
        print("Điểm không hợp lệ")
    }
}
averageMark(math: -2, physics: 8, chemistry: 9)

//MARK: - Vòng lặp
for i in 6...10 {
    print(i)
}
 let name = "Quynh"
for i in name {
    print(i)
}

// hàm lowercased() để viết thường, áp dụng cho Character, String
// hàm uppercased() để viết hoa, áp dụng cho Character, String
func reverseName(str: String) -> String {
    var newString: String = ""
    for i in str {
        if String(i) == i.lowercased() {
            newString += i.uppercased()
        } else {
            newString += i.lowercased()
        // newString += String(i) == i.lowercased() ? uppercased() : i.lowercased()
        }
    }
    return newString
}

print(reverseName(str: "Quynh234"))

//MARK: đếm số chẵn tư 1 - 50
func demSoChan(dau: Int, cuoi: Int) -> Int {
    if dau >= cuoi {
        return 0
    }
    var count = 0
    for i in dau...cuoi {
        if i%2 == 0 {
            count += 1
        }
    }
    return count
}
