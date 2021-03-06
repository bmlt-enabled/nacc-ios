/**
 © Copyright 2019, Little Green Viper Software Development LLC
 
 LICENSE:
 
 MIT License
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
 modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
 CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 Little Green Viper Software Development LLC: https://littlegreenviper.com
 */

import XCTest
import UIKit

class NACC_iOSTests: XCTestCase {
    var testObject: NACC_DateCalc = NACC_DateCalc(inCleanYear: 1980, inCleanMonth: 9, inCleanDay: 1)
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDisplayStrings00() {
        let result: String = NACC_TagModel.getDisplayCleandate(0, inYears: 0, inMonths: 0, inDays: 0)
        let compare: String = "You have been clean for 0 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings01() {
        let result: String = NACC_TagModel.getDisplayCleandate(1, inYears: 0, inMonths: 0, inDays: 1)
        let compare: String = "You have been clean for 1 day."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings02() {
        let result: String = NACC_TagModel.getDisplayCleandate(25, inYears: 0, inMonths: 0, inDays: 25)
        let compare: String = "You have been clean for 25 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings03() {
        let result: String = NACC_TagModel.getDisplayCleandate(30, inYears: 0, inMonths: 1, inDays: 0)
        let compare: String = "You have been clean for 30 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings04() {
        let result: String = NACC_TagModel.getDisplayCleandate(60, inYears: 0, inMonths: 1, inDays: 30)
        let compare: String = "You have been clean for 60 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings05() {
        let result: String = NACC_TagModel.getDisplayCleandate(90, inYears: 0, inMonths: 2, inDays: 28)
        let compare: String = "You have been clean for 90 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings06() {
        let result: String = NACC_TagModel.getDisplayCleandate(91, inYears: 0, inMonths: 2, inDays: 29)
        let compare: String = "You have been clean for 91 days.\nThis is 2 months and 29 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings07() {
        let result: String = NACC_TagModel.getDisplayCleandate(92, inYears: 0, inMonths: 3, inDays: 0)
        let compare: String = "You have been clean for 92 days.\nThis is 3 months."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings08() {
        let result: String = NACC_TagModel.getDisplayCleandate(93, inYears: 0, inMonths: 3, inDays: 1)
        let compare: String = "You have been clean for 93 days.\nThis is 3 months and 1 day."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings09() {
        let result: String = NACC_TagModel.getDisplayCleandate(180, inYears: 0, inMonths: 5, inDays: 27)
        let compare: String = "You have been clean for 180 days.\nThis is 5 months and 27 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings10() {
        let result: String = NACC_TagModel.getDisplayCleandate(180, inYears: 0, inMonths: 6, inDays: 0)
        let compare: String = "You have been clean for 180 days.\nThis is 6 months."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings11() {
        let result: String = NACC_TagModel.getDisplayCleandate(276, inYears: 0, inMonths: 9, inDays: 1)
        let compare: String = "You have been clean for 276 days.\nThis is 9 months and 1 day."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings12() {
        let result: String = NACC_TagModel.getDisplayCleandate(364, inYears: 0, inMonths: 11, inDays: 30)
        let compare: String = "You have been clean for 364 days.\nThis is 11 months and 30 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings13() {
        let result: String = NACC_TagModel.getDisplayCleandate(365, inYears: 1, inMonths: 0, inDays: 0)
        let compare: String = "You have been clean for 365 days.\nThis is 1 year."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings14() {
        let result: String = NACC_TagModel.getDisplayCleandate(366, inYears: 1, inMonths: 0, inDays: 1)
        let compare: String = "You have been clean for 366 days.\nThis is 1 year and 1 day."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings15() {
        let result: String = NACC_TagModel.getDisplayCleandate(367, inYears: 1, inMonths: 0, inDays: 2)
        let compare: String = "You have been clean for 367 days.\nThis is 1 year and 2 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings16() {
        let result: String = NACC_TagModel.getDisplayCleandate(730, inYears: 1, inMonths: 11, inDays: 31)
        let compare: String = "You have been clean for 730 days.\nThis is 1 year, 11 months and 31 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings17() {
        let result: String = NACC_TagModel.getDisplayCleandate(731, inYears: 2, inMonths: 0, inDays: 0)
        let compare: String = "You have been clean for 731 days.\nThis is 2 years."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings18() {
        let result: String = NACC_TagModel.getDisplayCleandate(732, inYears: 2, inMonths: 0, inDays: 1)
        let compare: String = "You have been clean for 732 days.\nThis is 2 years and 1 day."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings19() {
        let result: String = NACC_TagModel.getDisplayCleandate(761, inYears: 2, inMonths: 1, inDays: 0)
        let compare: String = "You have been clean for 761 days.\nThis is 2 years and 1 month."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings20() {
        let result: String = NACC_TagModel.getDisplayCleandate(762, inYears: 2, inMonths: 1, inDays: 1)
        let compare: String = "You have been clean for 762 days.\nThis is 2 years, 1 month and 1 day."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings21() {
        let result: String = NACC_TagModel.getDisplayCleandate(763, inYears: 2, inMonths: 1, inDays: 2)
        let compare: String = "You have been clean for 763 days.\nThis is 2 years, 1 month and 2 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings22() {
        let result: String = NACC_TagModel.getDisplayCleandate(792, inYears: 2, inMonths: 2, inDays: 0)
        let compare: String = "You have been clean for 792 days.\nThis is 2 years and 2 months."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings23() {
        let result: String = NACC_TagModel.getDisplayCleandate(793, inYears: 2, inMonths: 2, inDays: 1)
        let compare: String = "You have been clean for 793 days.\nThis is 2 years, 2 months and 1 day."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings24() {
        let result: String = NACC_TagModel.getDisplayCleandate(793, inYears: 2, inMonths: 2, inDays: 2)
        let compare: String = "You have been clean for 793 days.\nThis is 2 years, 2 months and 2 days."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
    
    func testDisplayStrings25() {
        let result: String = NACC_TagModel.getDisplayCleandate(-12, inYears: 0, inMonths: 0, inDays: -12)
        let compare: String = "We support you in getting clean in the future."
        print("Result: '" + result + "'")
        print("Expected: '" + compare + "'")
        XCTAssert(result == compare)
    }
}
