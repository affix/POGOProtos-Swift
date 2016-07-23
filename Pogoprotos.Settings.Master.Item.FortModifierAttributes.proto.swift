// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "FortModifierAttributes.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { public struct Item { }}}}

public func == (lhs: Pogoprotos.Settings.Master.Item.FortModifierAttributes, rhs: Pogoprotos.Settings.Master.Item.FortModifierAttributes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasModifierLifetimeSeconds == rhs.hasModifierLifetimeSeconds) && (!lhs.hasModifierLifetimeSeconds || lhs.modifierLifetimeSeconds == rhs.modifierLifetimeSeconds)
  fieldCheck = fieldCheck && (lhs.hasTroyDiskNumPokemonSpawned == rhs.hasTroyDiskNumPokemonSpawned) && (!lhs.hasTroyDiskNumPokemonSpawned || lhs.troyDiskNumPokemonSpawned == rhs.troyDiskNumPokemonSpawned)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master.Item {
  public struct FortModifierAttributesRoot {
    public static var sharedInstance : FortModifierAttributesRoot {
     struct Static {
         static let instance : FortModifierAttributesRoot = FortModifierAttributesRoot()
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

  final public class FortModifierAttributes : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasModifierLifetimeSeconds:Bool = false
    public private(set) var modifierLifetimeSeconds:Int32 = Int32(0)

    public private(set) var hasTroyDiskNumPokemonSpawned:Bool = false
    public private(set) var troyDiskNumPokemonSpawned:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasModifierLifetimeSeconds {
        try output.writeInt32(1, value:modifierLifetimeSeconds)
      }
      if hasTroyDiskNumPokemonSpawned {
        try output.writeInt32(2, value:troyDiskNumPokemonSpawned)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasModifierLifetimeSeconds {
        serialize_size += modifierLifetimeSeconds.computeInt32Size(1)
      }
      if hasTroyDiskNumPokemonSpawned {
        serialize_size += troyDiskNumPokemonSpawned.computeInt32Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.Item.FortModifierAttributes> {
      var mergedArray = Array<Pogoprotos.Settings.Master.Item.FortModifierAttributes>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes? {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.Item.FortModifierAttributesRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
      return Pogoprotos.Settings.Master.Item.FortModifierAttributes.classBuilder() as! Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.Item.FortModifierAttributes) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasModifierLifetimeSeconds {
        jsonMap["modifierLifetimeSeconds"] = NSNumber(int:modifierLifetimeSeconds)
      }
      if hasTroyDiskNumPokemonSpawned {
        jsonMap["troyDiskNumPokemonSpawned"] = NSNumber(int:troyDiskNumPokemonSpawned)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
      return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasModifierLifetimeSeconds {
        output += "\(indent) modifierLifetimeSeconds: \(modifierLifetimeSeconds) \n"
      }
      if hasTroyDiskNumPokemonSpawned {
        output += "\(indent) troyDiskNumPokemonSpawned: \(troyDiskNumPokemonSpawned) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasModifierLifetimeSeconds {
               hashCode = (hashCode &* 31) &+ modifierLifetimeSeconds.hashValue
            }
            if hasTroyDiskNumPokemonSpawned {
               hashCode = (hashCode &* 31) &+ troyDiskNumPokemonSpawned.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.Item.FortModifierAttributes"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.Item.FortModifierAttributes"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.Item.FortModifierAttributes.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.Item.FortModifierAttributes = Pogoprotos.Settings.Master.Item.FortModifierAttributes()
      public func getMessage() -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasModifierLifetimeSeconds:Bool {
           get {
                return builderResult.hasModifierLifetimeSeconds
           }
      }
      public var modifierLifetimeSeconds:Int32 {
           get {
                return builderResult.modifierLifetimeSeconds
           }
           set (value) {
               builderResult.hasModifierLifetimeSeconds = true
               builderResult.modifierLifetimeSeconds = value
           }
      }
      public func setModifierLifetimeSeconds(value:Int32) -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        self.modifierLifetimeSeconds = value
        return self
      }
      public func clearModifierLifetimeSeconds() -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder{
           builderResult.hasModifierLifetimeSeconds = false
           builderResult.modifierLifetimeSeconds = Int32(0)
           return self
      }
      public var hasTroyDiskNumPokemonSpawned:Bool {
           get {
                return builderResult.hasTroyDiskNumPokemonSpawned
           }
      }
      public var troyDiskNumPokemonSpawned:Int32 {
           get {
                return builderResult.troyDiskNumPokemonSpawned
           }
           set (value) {
               builderResult.hasTroyDiskNumPokemonSpawned = true
               builderResult.troyDiskNumPokemonSpawned = value
           }
      }
      public func setTroyDiskNumPokemonSpawned(value:Int32) -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        self.troyDiskNumPokemonSpawned = value
        return self
      }
      public func clearTroyDiskNumPokemonSpawned() -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder{
           builderResult.hasTroyDiskNumPokemonSpawned = false
           builderResult.troyDiskNumPokemonSpawned = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        builderResult = Pogoprotos.Settings.Master.Item.FortModifierAttributes()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.Item.FortModifierAttributes {
        let returnMe:Pogoprotos.Settings.Master.Item.FortModifierAttributes = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.Item.FortModifierAttributes) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        if other == Pogoprotos.Settings.Master.Item.FortModifierAttributes() {
         return self
        }
        if other.hasModifierLifetimeSeconds {
             modifierLifetimeSeconds = other.modifierLifetimeSeconds
        }
        if other.hasTroyDiskNumPokemonSpawned {
             troyDiskNumPokemonSpawned = other.troyDiskNumPokemonSpawned
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            modifierLifetimeSeconds = try input.readInt32()

          case 16:
            troyDiskNumPokemonSpawned = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder()
        if let jsonValueModifierLifetimeSeconds = jsonMap["modifierLifetimeSeconds"] as? NSNumber {
          resultDecodedBuilder.modifierLifetimeSeconds = jsonValueModifierLifetimeSeconds.intValue
        }
        if let jsonValueTroyDiskNumPokemonSpawned = jsonMap["troyDiskNumPokemonSpawned"] as? NSNumber {
          resultDecodedBuilder.troyDiskNumPokemonSpawned = jsonValueTroyDiskNumPokemonSpawned.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.Item.FortModifierAttributes.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
