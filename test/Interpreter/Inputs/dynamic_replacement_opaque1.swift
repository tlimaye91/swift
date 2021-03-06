protocol P {
  func myValue() -> Int
}

extension Int: P {
  public func myValue() -> Int {
    return self
  }

}

@available(macOS 9999, iOS 9999, tvOS 9999, watchOS 9999, *)
func bar(_ x: Int) -> some P {
  return x
}

struct Container {
  @available(macOS 9999, iOS 9999, tvOS 9999, watchOS 9999, *)
  func bar(_ x: Int) -> some P {
    return x
  }

  @available(macOS 9999, iOS 9999, tvOS 9999, watchOS 9999, *)
  var computedProperty : some P {
    get {
      return 2
    }
    set {
      print("original \(newValue)")
    }
  }

  @available(macOS 9999, iOS 9999, tvOS 9999, watchOS 9999, *)
  subscript(_ x: Int) -> some P {
    get {
      return 2
    }
    set {
      print("original \(newValue)")
    }
  }
}
