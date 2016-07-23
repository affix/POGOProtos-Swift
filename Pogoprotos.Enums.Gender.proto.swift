// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "Gender.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Enums { }}

public extension Pogoprotos.Enums {
  public struct GenderRoot {
    public static var sharedInstance : GenderRoot {
     struct Static {
         static let instance : GenderRoot = GenderRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  public enum Gender:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case Male = 0
    case Female = 1
    public func toString() -> String {
      switch self {
      case .Male: return "MALE"
      case .Female: return "FEMALE"
      }
    }
    public static func fromString(str:String) throws -> Pogoprotos.Enums.Gender {
      switch str {
      case "MALE":  return .Male
      case "FEMALE":  return .Female
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .Male: return ".Male"
            case .Female: return ".Female"
        }
    }
  }

  //Enum type declaration end 

}

// @@protoc_insertion_point(global_scope)
