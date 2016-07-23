// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "PotionAttributes.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { public struct Item { }}}}

public func == (lhs: Pogoprotos.Settings.Master.Item.PotionAttributes, rhs: Pogoprotos.Settings.Master.Item.PotionAttributes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasStaPercent == rhs.hasStaPercent) && (!lhs.hasStaPercent || lhs.staPercent == rhs.staPercent)
  fieldCheck = fieldCheck && (lhs.hasStaAmount == rhs.hasStaAmount) && (!lhs.hasStaAmount || lhs.staAmount == rhs.staAmount)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master.Item {
  public struct PotionAttributesRoot {
    public static var sharedInstance : PotionAttributesRoot {
     struct Static {
         static let instance : PotionAttributesRoot = PotionAttributesRoot()
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

  final public class PotionAttributes : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasStaPercent:Bool = false
    public private(set) var staPercent:Float = Float(0)

    public private(set) var hasStaAmount:Bool = false
    public private(set) var staAmount:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasStaPercent {
        try output.writeFloat(1, value:staPercent)
      }
      if hasStaAmount {
        try output.writeInt32(2, value:staAmount)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasStaPercent {
        serialize_size += staPercent.computeFloatSize(1)
      }
      if hasStaAmount {
        serialize_size += staAmount.computeInt32Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.Item.PotionAttributes> {
      var mergedArray = Array<Pogoprotos.Settings.Master.Item.PotionAttributes>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes? {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.Item.PotionAttributesRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
      return Pogoprotos.Settings.Master.Item.PotionAttributes.classBuilder() as! Pogoprotos.Settings.Master.Item.PotionAttributes.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.Item.PotionAttributes.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.PotionAttributes.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.PotionAttributes.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.Item.PotionAttributes) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasStaPercent {
        jsonMap["staPercent"] = NSNumber(float:staPercent)
      }
      if hasStaAmount {
        jsonMap["staAmount"] = NSNumber(int:staAmount)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
      return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasStaPercent {
        output += "\(indent) staPercent: \(staPercent) \n"
      }
      if hasStaAmount {
        output += "\(indent) staAmount: \(staAmount) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasStaPercent {
               hashCode = (hashCode &* 31) &+ staPercent.hashValue
            }
            if hasStaAmount {
               hashCode = (hashCode &* 31) &+ staAmount.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.Item.PotionAttributes"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.Item.PotionAttributes"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.Item.PotionAttributes.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.Item.PotionAttributes = Pogoprotos.Settings.Master.Item.PotionAttributes()
      public func getMessage() -> Pogoprotos.Settings.Master.Item.PotionAttributes {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasStaPercent:Bool {
           get {
                return builderResult.hasStaPercent
           }
      }
      public var staPercent:Float {
           get {
                return builderResult.staPercent
           }
           set (value) {
               builderResult.hasStaPercent = true
               builderResult.staPercent = value
           }
      }
      public func setStaPercent(value:Float) -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        self.staPercent = value
        return self
      }
      public func clearStaPercent() -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder{
           builderResult.hasStaPercent = false
           builderResult.staPercent = Float(0)
           return self
      }
      public var hasStaAmount:Bool {
           get {
                return builderResult.hasStaAmount
           }
      }
      public var staAmount:Int32 {
           get {
                return builderResult.staAmount
           }
           set (value) {
               builderResult.hasStaAmount = true
               builderResult.staAmount = value
           }
      }
      public func setStaAmount(value:Int32) -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        self.staAmount = value
        return self
      }
      public func clearStaAmount() -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder{
           builderResult.hasStaAmount = false
           builderResult.staAmount = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        builderResult = Pogoprotos.Settings.Master.Item.PotionAttributes()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        return try Pogoprotos.Settings.Master.Item.PotionAttributes.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.Item.PotionAttributes {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.Item.PotionAttributes {
        let returnMe:Pogoprotos.Settings.Master.Item.PotionAttributes = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.Item.PotionAttributes) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        if other == Pogoprotos.Settings.Master.Item.PotionAttributes() {
         return self
        }
        if other.hasStaPercent {
             staPercent = other.staPercent
        }
        if other.hasStaAmount {
             staAmount = other.staAmount
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 13:
            staPercent = try input.readFloat()

          case 16:
            staAmount = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.Item.PotionAttributes.Builder()
        if let jsonValueStaPercent = jsonMap["staPercent"] as? NSNumber {
          resultDecodedBuilder.staPercent = jsonValueStaPercent.floatValue
        }
        if let jsonValueStaAmount = jsonMap["staAmount"] as? NSNumber {
          resultDecodedBuilder.staAmount = jsonValueStaAmount.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.Item.PotionAttributes.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.Item.PotionAttributes.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)