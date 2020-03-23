
// swift 信号量

import Foundation

let semaphore: DispatchSemaphore = DispatchSemaphore(value: 0)

func semaphoreTest() {
  semaphore.signal()
  semaphore.signal()
  semaphore.signal()
  
  semaphore.wait()
  print("hello 1 \(Thread.current)")
  semaphore.wait()
  print("hello 2 \(Thread.current)")
  semaphore.wait()
  print("hello 3 \(Thread.current)")
  
  DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
    print("hello 5 \(Thread.current)")
    let result = semaphore.signal()
    print("hello 6 result: \(result)")
  }
  
  semaphore.wait()
  print("hello 4 \(Thread.current)")
  //print("---")
}

semaphoreTest()
