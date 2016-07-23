// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "BattleAttributes.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { public struct Item { }}}}

public func == (lhs: Pogoprotos.Settings.Master.Item.BattleAttributes, rhs: Pogoprotos.Settings.Master.Item.BattleAttributes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasStaPercent == rhs.hasStaPercent) && (!lhs.hasStaPercent || lhs.staPercent == rhs.staPercent)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master.Item {
  public struct BattleAttributesRoot {
    public static var sharedInstance : BattleAttributesRoot {
     struct Static {
         static let instance : BattleAttributesRoot = BattleAttributesRoot()
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

  final public class BattleAttributes : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasStaPercent:Bool = false
    public private(set) var staPercent:Float = Float(0)

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
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.Item.BattleAttributes> {
      var mergedArray = Array<Pogoprotos.Settings.Master.Item.BattleAttributes>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes? {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.Item.BattleAttributesRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
      return Pogoprotos.Settings.Master.Item.BattleAttributes.classBuilder() as! Pogoprotos.Settings.Master.Item.BattleAttributes.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.Item.BattleAttributes.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.BattleAttributes.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.BattleAttributes.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.Item.BattleAttributes) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasStaPercent {
        jsonMap["staPercent"] = NSNumber(float:staPercent)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
      return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasStaPercent {
        output += "\(indent) staPercent: \(staPercent) \n"
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
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.Item.BattleAttributes"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.Item.BattleAttributes"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.Item.BattleAttributes.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.Item.BattleAttributes = Pogoprotos.Settings.Master.Item.BattleAttributes()
      public func getMessage() -> Pogoprotos.Settings.Master.Item.BattleAttributes {
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
      public func setStaPercent(value:Float) -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
        self.staPercent = value
        return self
      }
      public func clearStaPercent() -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder{
           builderResult.hasStaPercent = false
           builderResult.staPercent = Float(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
        builderResult = Pogoprotos.Settings.Master.Item.BattleAttributes()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
        return try Pogoprotos.Settings.Master.Item.BattleAttributes.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.Item.BattleAttributes {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.Item.BattleAttributes {
        let returnMe:Pogoprotos.Settings.Master.Item.BattleAttributes = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.Item.BattleAttributes) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
        if other == Pogoprotos.Settings.Master.Item.BattleAttributes() {
         return self
        }
        if other.hasStaPercent {
             staPercent = other.staPercent
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 13:
            staPercent = try input.readFloat()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.Item.BattleAttributes.Builder()
        if let jsonValueStaPercent = jsonMap["staPercent"] as? NSNumber {
          resultDecodedBuilder.staPercent = jsonValueStaPercent.floatValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.Item.BattleAttributes.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.Item.BattleAttributes.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)