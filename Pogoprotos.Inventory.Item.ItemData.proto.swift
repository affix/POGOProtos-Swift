// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "ItemData.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Inventory { public struct Item { }}}

public func == (lhs: Pogoprotos.Inventory.Item.ItemData, rhs: Pogoprotos.Inventory.Item.ItemData) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasItemId == rhs.hasItemId) && (!lhs.hasItemId || lhs.itemId == rhs.itemId)
  fieldCheck = fieldCheck && (lhs.hasCount == rhs.hasCount) && (!lhs.hasCount || lhs.count == rhs.count)
  fieldCheck = fieldCheck && (lhs.hasUnseen == rhs.hasUnseen) && (!lhs.hasUnseen || lhs.unseen == rhs.unseen)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Inventory.Item {
  public struct ItemDataRoot {
    public static var sharedInstance : ItemDataRoot {
     struct Static {
         static let instance : ItemDataRoot = ItemDataRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.Item.ItemIdRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class ItemData : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var itemId:Pogoprotos.Inventory.Item.ItemId = Pogoprotos.Inventory.Item.ItemId.ItemUnknown
    public private(set) var hasItemId:Bool = false
    public private(set) var hasCount:Bool = false
    public private(set) var count:Int32 = Int32(0)

    public private(set) var hasUnseen:Bool = false
    public private(set) var unseen:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasItemId {
        try output.writeEnum(1, value:itemId.rawValue)
      }
      if hasCount {
        try output.writeInt32(2, value:count)
      }
      if hasUnseen {
        try output.writeBool(3, value:unseen)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasItemId) {
        serialize_size += itemId.rawValue.computeEnumSize(1)
      }
      if hasCount {
        serialize_size += count.computeInt32Size(2)
      }
      if hasUnseen {
        serialize_size += unseen.computeBoolSize(3)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Inventory.Item.ItemData> {
      var mergedArray = Array<Pogoprotos.Inventory.Item.ItemData>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.Item.ItemData? {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Inventory.Item.ItemDataRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Inventory.Item.ItemData.Builder {
      return Pogoprotos.Inventory.Item.ItemData.classBuilder() as! Pogoprotos.Inventory.Item.ItemData.Builder
    }
    public func getBuilder() -> Pogoprotos.Inventory.Item.ItemData.Builder {
      return classBuilder() as! Pogoprotos.Inventory.Item.ItemData.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.Item.ItemData.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.Item.ItemData.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
      return try Pogoprotos.Inventory.Item.ItemData.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Inventory.Item.ItemData) throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
      return try Pogoprotos.Inventory.Item.ItemData.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasItemId {
        jsonMap["itemId"] = itemId.toString()
      }
      if hasCount {
        jsonMap["count"] = NSNumber(int:count)
      }
      if hasUnseen {
        jsonMap["unseen"] = unseen
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Inventory.Item.ItemData {
      return try Pogoprotos.Inventory.Item.ItemData.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasItemId) {
        output += "\(indent) itemId: \(itemId.description)\n"
      }
      if hasCount {
        output += "\(indent) count: \(count) \n"
      }
      if hasUnseen {
        output += "\(indent) unseen: \(unseen) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasItemId {
               hashCode = (hashCode &* 31) &+ Int(itemId.rawValue)
            }
            if hasCount {
               hashCode = (hashCode &* 31) &+ count.hashValue
            }
            if hasUnseen {
               hashCode = (hashCode &* 31) &+ unseen.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Inventory.Item.ItemData"
    }
    override public func className() -> String {
        return "Pogoprotos.Inventory.Item.ItemData"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Inventory.Item.ItemData.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Inventory.Item.ItemData = Pogoprotos.Inventory.Item.ItemData()
      public func getMessage() -> Pogoprotos.Inventory.Item.ItemData {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasItemId:Bool{
            get {
                return builderResult.hasItemId
            }
        }
        public var itemId:Pogoprotos.Inventory.Item.ItemId {
            get {
                return builderResult.itemId
            }
            set (value) {
                builderResult.hasItemId = true
                builderResult.itemId = value
            }
        }
        public func setItemId(value:Pogoprotos.Inventory.Item.ItemId) -> Pogoprotos.Inventory.Item.ItemData.Builder {
          self.itemId = value
          return self
        }
        public func clearItemId() -> Pogoprotos.Inventory.Item.ItemData.Builder {
           builderResult.hasItemId = false
           builderResult.itemId = .ItemUnknown
           return self
        }
      public var hasCount:Bool {
           get {
                return builderResult.hasCount
           }
      }
      public var count:Int32 {
           get {
                return builderResult.count
           }
           set (value) {
               builderResult.hasCount = true
               builderResult.count = value
           }
      }
      public func setCount(value:Int32) -> Pogoprotos.Inventory.Item.ItemData.Builder {
        self.count = value
        return self
      }
      public func clearCount() -> Pogoprotos.Inventory.Item.ItemData.Builder{
           builderResult.hasCount = false
           builderResult.count = Int32(0)
           return self
      }
      public var hasUnseen:Bool {
           get {
                return builderResult.hasUnseen
           }
      }
      public var unseen:Bool {
           get {
                return builderResult.unseen
           }
           set (value) {
               builderResult.hasUnseen = true
               builderResult.unseen = value
           }
      }
      public func setUnseen(value:Bool) -> Pogoprotos.Inventory.Item.ItemData.Builder {
        self.unseen = value
        return self
      }
      public func clearUnseen() -> Pogoprotos.Inventory.Item.ItemData.Builder{
           builderResult.hasUnseen = false
           builderResult.unseen = false
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Inventory.Item.ItemData.Builder {
        builderResult = Pogoprotos.Inventory.Item.ItemData()
        return self
      }
      override public func clone() throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
        return try Pogoprotos.Inventory.Item.ItemData.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Inventory.Item.ItemData {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Inventory.Item.ItemData {
        let returnMe:Pogoprotos.Inventory.Item.ItemData = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Inventory.Item.ItemData) throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
        if other == Pogoprotos.Inventory.Item.ItemData() {
         return self
        }
        if other.hasItemId {
             itemId = other.itemId
        }
        if other.hasCount {
             count = other.count
        }
        if other.hasUnseen {
             unseen = other.unseen
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntitemId = try input.readEnum()
            if let enumsitemId = Pogoprotos.Inventory.Item.ItemId(rawValue:valueIntitemId){
                 itemId = enumsitemId
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntitemId))
            }

          case 16:
            count = try input.readInt32()

          case 24:
            unseen = try input.readBool()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
        let resultDecodedBuilder = Pogoprotos.Inventory.Item.ItemData.Builder()
        if let jsonValueItemId = jsonMap["itemId"] as? String {
          resultDecodedBuilder.itemId = try Pogoprotos.Inventory.Item.ItemId.fromString(jsonValueItemId)
        }
        if let jsonValueCount = jsonMap["count"] as? NSNumber {
          resultDecodedBuilder.count = jsonValueCount.intValue
        }
        if let jsonValueUnseen = jsonMap["unseen"] as? Bool {
          resultDecodedBuilder.unseen = jsonValueUnseen
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Inventory.Item.ItemData.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Inventory.Item.ItemData.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
