// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "InventoryUpgradeType.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Inventory { }}

public extension Pogoprotos.Inventory {
  public struct InventoryUpgradeTypeRoot {
    public static var sharedInstance : InventoryUpgradeTypeRoot {
     struct Static {
         static let instance : InventoryUpgradeTypeRoot = InventoryUpgradeTypeRoot()
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

  public enum InventoryUpgradeType:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case UpgradeUnset = 0
    case IncreaseItemStorage = 1
    case IncreasePokemonStorage = 2
    public func toString() -> String {
      switch self {
      case .UpgradeUnset: return "UPGRADE_UNSET"
      case .IncreaseItemStorage: return "INCREASE_ITEM_STORAGE"
      case .IncreasePokemonStorage: return "INCREASE_POKEMON_STORAGE"
      }
    }
    public static func fromString(str:String) throws -> Pogoprotos.Inventory.InventoryUpgradeType {
      switch str {
      case "UPGRADE_UNSET":  return .UpgradeUnset
      case "INCREASE_ITEM_STORAGE":  return .IncreaseItemStorage
      case "INCREASE_POKEMON_STORAGE":  return .IncreasePokemonStorage
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .UpgradeUnset: return ".UpgradeUnset"
            case .IncreaseItemStorage: return ".IncreaseItemStorage"
            case .IncreasePokemonStorage: return ".IncreasePokemonStorage"
        }
    }
  }

  //Enum type declaration end 

}

// @@protoc_insertion_point(global_scope)
