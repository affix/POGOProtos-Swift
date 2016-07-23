// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "InventoryUpgradeAttributes.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { public struct Item { }}}}

public func == (lhs: Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes, rhs: Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasAdditionalStorage == rhs.hasAdditionalStorage) && (!lhs.hasAdditionalStorage || lhs.additionalStorage == rhs.additionalStorage)
  fieldCheck = fieldCheck && (lhs.hasUpgradeType == rhs.hasUpgradeType) && (!lhs.hasUpgradeType || lhs.upgradeType == rhs.upgradeType)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master.Item {
  public struct InventoryUpgradeAttributesRoot {
    public static var sharedInstance : InventoryUpgradeAttributesRoot {
     struct Static {
         static let instance : InventoryUpgradeAttributesRoot = InventoryUpgradeAttributesRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.InventoryUpgradeTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class InventoryUpgradeAttributes : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasAdditionalStorage:Bool = false
    public private(set) var additionalStorage:Int32 = Int32(0)

    public private(set) var upgradeType:Pogoprotos.Inventory.InventoryUpgradeType = Pogoprotos.Inventory.InventoryUpgradeType.UpgradeUnset
    public private(set) var hasUpgradeType:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasAdditionalStorage {
        try output.writeInt32(1, value:additionalStorage)
      }
      if hasUpgradeType {
        try output.writeEnum(2, value:upgradeType.rawValue)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasAdditionalStorage {
        serialize_size += additionalStorage.computeInt32Size(1)
      }
      if (hasUpgradeType) {
        serialize_size += upgradeType.rawValue.computeEnumSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes> {
      var mergedArray = Array<Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes? {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributesRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
      return Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.classBuilder() as! Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasAdditionalStorage {
        jsonMap["additionalStorage"] = NSNumber(int:additionalStorage)
      }
      if hasUpgradeType {
        jsonMap["upgradeType"] = upgradeType.toString()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
      return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasAdditionalStorage {
        output += "\(indent) additionalStorage: \(additionalStorage) \n"
      }
      if (hasUpgradeType) {
        output += "\(indent) upgradeType: \(upgradeType.description)\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasAdditionalStorage {
               hashCode = (hashCode &* 31) &+ additionalStorage.hashValue
            }
            if hasUpgradeType {
               hashCode = (hashCode &* 31) &+ Int(upgradeType.rawValue)
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes = Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes()
      public func getMessage() -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasAdditionalStorage:Bool {
           get {
                return builderResult.hasAdditionalStorage
           }
      }
      public var additionalStorage:Int32 {
           get {
                return builderResult.additionalStorage
           }
           set (value) {
               builderResult.hasAdditionalStorage = true
               builderResult.additionalStorage = value
           }
      }
      public func setAdditionalStorage(value:Int32) -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
        self.additionalStorage = value
        return self
      }
      public func clearAdditionalStorage() -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder{
           builderResult.hasAdditionalStorage = false
           builderResult.additionalStorage = Int32(0)
           return self
      }
        public var hasUpgradeType:Bool{
            get {
                return builderResult.hasUpgradeType
            }
        }
        public var upgradeType:Pogoprotos.Inventory.InventoryUpgradeType {
            get {
                return builderResult.upgradeType
            }
            set (value) {
                builderResult.hasUpgradeType = true
                builderResult.upgradeType = value
            }
        }
        public func setUpgradeType(value:Pogoprotos.Inventory.InventoryUpgradeType) -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
          self.upgradeType = value
          return self
        }
        public func clearUpgradeType() -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
           builderResult.hasUpgradeType = false
           builderResult.upgradeType = .UpgradeUnset
           return self
        }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
        builderResult = Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
        return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes {
        let returnMe:Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
        if other == Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes() {
         return self
        }
        if other.hasAdditionalStorage {
             additionalStorage = other.additionalStorage
        }
        if other.hasUpgradeType {
             upgradeType = other.upgradeType
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            additionalStorage = try input.readInt32()

          case 16:
            let valueIntupgradeType = try input.readEnum()
            if let enumsupgradeType = Pogoprotos.Inventory.InventoryUpgradeType(rawValue:valueIntupgradeType){
                 upgradeType = enumsupgradeType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntupgradeType))
            }

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder()
        if let jsonValueAdditionalStorage = jsonMap["additionalStorage"] as? NSNumber {
          resultDecodedBuilder.additionalStorage = jsonValueAdditionalStorage.intValue
        }
        if let jsonValueUpgradeType = jsonMap["upgradeType"] as? String {
          resultDecodedBuilder.upgradeType = try Pogoprotos.Inventory.InventoryUpgradeType.fromString(jsonValueUpgradeType)
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.Item.InventoryUpgradeAttributes.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
