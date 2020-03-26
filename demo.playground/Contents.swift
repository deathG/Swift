
// swift 信号量

//import Foundation
//
//let semaphore: DispatchSemaphore = DispatchSemaphore(value: 0)
//
//func semaphoreTest() {
//  semaphore.signal()
//  semaphore.signal()
//  semaphore.signal()
//
//  semaphore.wait()
//  print("hello 1 \(Thread.current)")
//  semaphore.wait()
//  print("hello 2 \(Thread.current)")
//  semaphore.wait()
//  print("hello 3 \(Thread.current)")
//
//  DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
//    print("hello 5 \(Thread.current)")
//    let result = semaphore.signal()
//    print("hello 6 result: \(result)")
//  }
//
//  semaphore.wait()
//  print("hello 4 \(Thread.current)")
//  //print("---")
//}
//
//semaphoreTest()


/*
 swift 结构体
 */


struct Point {
  var x: Int
  var y: Int
}

let origin = Point(x: 0, y: 0)

extension Point {
  static let origin = Point(x: 0, y: 0)
}

struct Size {
  var width: Int
  var height: Int
}

struct Rectangle {
  var origin: Point
  var size: Size
}
//print(Point.origin)

//var rectangle = Rectangle(origin: Point.origin, size: Size(width: 100, height: 100))
//print(rectangle.size)

extension Rectangle {
  init(x: Int = 0, y: Int = 0, width: Int, height: Int) {
    origin = Point(x: x, y: y)
    size = Size(width: width, height: height)
  }
//  mutating func translate(by offset: Point) {
//    origin = origin + offset
//  }
}

var screen = Rectangle(width: 320, height: 480) {
  willSet {
    print("hello")
  }
  didSet {
    print("Screen changed:\(screen)")
  }
}

screen.origin.x = 10
