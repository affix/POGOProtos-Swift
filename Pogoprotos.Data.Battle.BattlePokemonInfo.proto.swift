// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "BattlePokemonInfo.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Data { public struct Battle { }}}

public func == (lhs: Pogoprotos.Data.Battle.BattlePokemonInfo, rhs: Pogoprotos.Data.Battle.BattlePokemonInfo) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasPokemonData == rhs.hasPokemonData) && (!lhs.hasPokemonData || lhs.pokemonData == rhs.pokemonData)
  fieldCheck = fieldCheck && (lhs.hasCurrentHealth == rhs.hasCurrentHealth) && (!lhs.hasCurrentHealth || lhs.currentHealth == rhs.currentHealth)
  fieldCheck = fieldCheck && (lhs.hasCurrentEnergy == rhs.hasCurrentEnergy) && (!lhs.hasCurrentEnergy || lhs.currentEnergy == rhs.currentEnergy)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Data.Battle {
  public struct BattlePokemonInfoRoot {
    public static var sharedInstance : BattlePokemonInfoRoot {
     struct Static {
         static let instance : BattlePokemonInfoRoot = BattlePokemonInfoRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.PokemonDataRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class BattlePokemonInfo : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasPokemonData:Bool = false
    public private(set) var pokemonData:Pogoprotos.Data.PokemonData!
    public private(set) var hasCurrentHealth:Bool = false
    public private(set) var currentHealth:Int32 = Int32(0)

    public private(set) var hasCurrentEnergy:Bool = false
    public private(set) var currentEnergy:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasPokemonData {
        try output.writeMessage(1, value:pokemonData)
      }
      if hasCurrentHealth {
        try output.writeInt32(2, value:currentHealth)
      }
      if hasCurrentEnergy {
        try output.writeInt32(3, value:currentEnergy)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasPokemonData {
          if let varSizepokemonData = pokemonData?.computeMessageSize(1) {
              serialize_size += varSizepokemonData
          }
      }
      if hasCurrentHealth {
        serialize_size += currentHealth.computeInt32Size(2)
      }
      if hasCurrentEnergy {
        serialize_size += currentEnergy.computeInt32Size(3)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Data.Battle.BattlePokemonInfo> {
      var mergedArray = Array<Pogoprotos.Data.Battle.BattlePokemonInfo>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo? {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Data.Battle.BattlePokemonInfoRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
      return Pogoprotos.Data.Battle.BattlePokemonInfo.classBuilder() as! Pogoprotos.Data.Battle.BattlePokemonInfo.Builder
    }
    public func getBuilder() -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
      return classBuilder() as! Pogoprotos.Data.Battle.BattlePokemonInfo.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Battle.BattlePokemonInfo.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Battle.BattlePokemonInfo.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Data.Battle.BattlePokemonInfo) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasPokemonData {
        jsonMap["pokemonData"] = try pokemonData.encode()
      }
      if hasCurrentHealth {
        jsonMap["currentHealth"] = NSNumber(int:currentHealth)
      }
      if hasCurrentEnergy {
        jsonMap["currentEnergy"] = NSNumber(int:currentEnergy)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
      return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasPokemonData {
        output += "\(indent) pokemonData {\n"
        if let outDescPokemonData = pokemonData {
          output += try outDescPokemonData.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      if hasCurrentHealth {
        output += "\(indent) currentHealth: \(currentHealth) \n"
      }
      if hasCurrentEnergy {
        output += "\(indent) currentEnergy: \(currentEnergy) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasPokemonData {
                if let hashValuepokemonData = pokemonData?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuepokemonData
                }
            }
            if hasCurrentHealth {
               hashCode = (hashCode &* 31) &+ currentHealth.hashValue
            }
            if hasCurrentEnergy {
               hashCode = (hashCode &* 31) &+ currentEnergy.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Data.Battle.BattlePokemonInfo"
    }
    override public func className() -> String {
        return "Pogoprotos.Data.Battle.BattlePokemonInfo"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Data.Battle.BattlePokemonInfo.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Data.Battle.BattlePokemonInfo = Pogoprotos.Data.Battle.BattlePokemonInfo()
      public func getMessage() -> Pogoprotos.Data.Battle.BattlePokemonInfo {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasPokemonData:Bool {
           get {
               return builderResult.hasPokemonData
           }
      }
      public var pokemonData:Pogoprotos.Data.PokemonData! {
           get {
               if pokemonDataBuilder_ != nil {
                  builderResult.pokemonData = pokemonDataBuilder_.getMessage()
               }
               return builderResult.pokemonData
           }
           set (value) {
               builderResult.hasPokemonData = true
               builderResult.pokemonData = value
           }
      }
      private var pokemonDataBuilder_:Pogoprotos.Data.PokemonData.Builder! {
           didSet {
              builderResult.hasPokemonData = true
           }
      }
      public func getPokemonDataBuilder() -> Pogoprotos.Data.PokemonData.Builder {
        if pokemonDataBuilder_ == nil {
           pokemonDataBuilder_ = Pogoprotos.Data.PokemonData.Builder()
           builderResult.pokemonData = pokemonDataBuilder_.getMessage()
           if pokemonData != nil {
              try! pokemonDataBuilder_.mergeFrom(pokemonData)
           }
        }
        return pokemonDataBuilder_
      }
      public func setPokemonData(value:Pogoprotos.Data.PokemonData!) -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        self.pokemonData = value
        return self
      }
      public func mergePokemonData(value:Pogoprotos.Data.PokemonData) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        if builderResult.hasPokemonData {
          builderResult.pokemonData = try Pogoprotos.Data.PokemonData.builderWithPrototype(builderResult.pokemonData).mergeFrom(value).buildPartial()
        } else {
          builderResult.pokemonData = value
        }
        builderResult.hasPokemonData = true
        return self
      }
      public func clearPokemonData() -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        pokemonDataBuilder_ = nil
        builderResult.hasPokemonData = false
        builderResult.pokemonData = nil
        return self
      }
      public var hasCurrentHealth:Bool {
           get {
                return builderResult.hasCurrentHealth
           }
      }
      public var currentHealth:Int32 {
           get {
                return builderResult.currentHealth
           }
           set (value) {
               builderResult.hasCurrentHealth = true
               builderResult.currentHealth = value
           }
      }
      public func setCurrentHealth(value:Int32) -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        self.currentHealth = value
        return self
      }
      public func clearCurrentHealth() -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder{
           builderResult.hasCurrentHealth = false
           builderResult.currentHealth = Int32(0)
           return self
      }
      public var hasCurrentEnergy:Bool {
           get {
                return builderResult.hasCurrentEnergy
           }
      }
      public var currentEnergy:Int32 {
           get {
                return builderResult.currentEnergy
           }
           set (value) {
               builderResult.hasCurrentEnergy = true
               builderResult.currentEnergy = value
           }
      }
      public func setCurrentEnergy(value:Int32) -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        self.currentEnergy = value
        return self
      }
      public func clearCurrentEnergy() -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder{
           builderResult.hasCurrentEnergy = false
           builderResult.currentEnergy = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        builderResult = Pogoprotos.Data.Battle.BattlePokemonInfo()
        return self
      }
      override public func clone() throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        return try Pogoprotos.Data.Battle.BattlePokemonInfo.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Data.Battle.BattlePokemonInfo {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Data.Battle.BattlePokemonInfo {
        let returnMe:Pogoprotos.Data.Battle.BattlePokemonInfo = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Data.Battle.BattlePokemonInfo) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        if other == Pogoprotos.Data.Battle.BattlePokemonInfo() {
         return self
        }
        if (other.hasPokemonData) {
            try mergePokemonData(other.pokemonData)
        }
        if other.hasCurrentHealth {
             currentHealth = other.currentHealth
        }
        if other.hasCurrentEnergy {
             currentEnergy = other.currentEnergy
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder:Pogoprotos.Data.PokemonData.Builder = Pogoprotos.Data.PokemonData.Builder()
            if hasPokemonData {
              try subBuilder.mergeFrom(pokemonData)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            pokemonData = subBuilder.buildPartial()

          case 16:
            currentHealth = try input.readInt32()

          case 24:
            currentEnergy = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        let resultDecodedBuilder = Pogoprotos.Data.Battle.BattlePokemonInfo.Builder()
        if let jsonValuePokemonData = jsonMap["pokemonData"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.pokemonData = try Pogoprotos.Data.PokemonData.Builder.decodeToBuilder(jsonValuePokemonData).build()

        }
        if let jsonValueCurrentHealth = jsonMap["currentHealth"] as? NSNumber {
          resultDecodedBuilder.currentHealth = jsonValueCurrentHealth.intValue
        }
        if let jsonValueCurrentEnergy = jsonMap["currentEnergy"] as? NSNumber {
          resultDecodedBuilder.currentEnergy = jsonValueCurrentEnergy.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
