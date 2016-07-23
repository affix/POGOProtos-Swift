// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "NearbyPokemon.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Map { public struct Pokemon { }}}

public func == (lhs: Pogoprotos.Map.Pokemon.NearbyPokemon, rhs: Pogoprotos.Map.Pokemon.NearbyPokemon) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasPokemonId == rhs.hasPokemonId) && (!lhs.hasPokemonId || lhs.pokemonId == rhs.pokemonId)
  fieldCheck = fieldCheck && (lhs.hasDistanceInMeters == rhs.hasDistanceInMeters) && (!lhs.hasDistanceInMeters || lhs.distanceInMeters == rhs.distanceInMeters)
  fieldCheck = fieldCheck && (lhs.hasEncounterId == rhs.hasEncounterId) && (!lhs.hasEncounterId || lhs.encounterId == rhs.encounterId)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Map.Pokemon {
  public struct NearbyPokemonRoot {
    public static var sharedInstance : NearbyPokemonRoot {
     struct Static {
         static let instance : NearbyPokemonRoot = NearbyPokemonRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.PokemonIdRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class NearbyPokemon : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var pokemonId:Pogoprotos.Enums.PokemonId = Pogoprotos.Enums.PokemonId.Missingno
    public private(set) var hasPokemonId:Bool = false
    public private(set) var hasDistanceInMeters:Bool = false
    public private(set) var distanceInMeters:Float = Float(0)

    public private(set) var hasEncounterId:Bool = false
    public private(set) var encounterId:UInt64 = UInt64(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasPokemonId {
        try output.writeEnum(1, value:pokemonId.rawValue)
      }
      if hasDistanceInMeters {
        try output.writeFloat(2, value:distanceInMeters)
      }
      if hasEncounterId {
        try output.writeFixed64(3, value:encounterId)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasPokemonId) {
        serialize_size += pokemonId.rawValue.computeEnumSize(1)
      }
      if hasDistanceInMeters {
        serialize_size += distanceInMeters.computeFloatSize(2)
      }
      if hasEncounterId {
        serialize_size += encounterId.computeFixed64Size(3)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Map.Pokemon.NearbyPokemon> {
      var mergedArray = Array<Pogoprotos.Map.Pokemon.NearbyPokemon>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon? {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Map.Pokemon.NearbyPokemonRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
      return Pogoprotos.Map.Pokemon.NearbyPokemon.classBuilder() as! Pogoprotos.Map.Pokemon.NearbyPokemon.Builder
    }
    public func getBuilder() -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
      return classBuilder() as! Pogoprotos.Map.Pokemon.NearbyPokemon.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Map.Pokemon.NearbyPokemon.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Map.Pokemon.NearbyPokemon.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Map.Pokemon.NearbyPokemon) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasPokemonId {
        jsonMap["pokemonId"] = pokemonId.toString()
      }
      if hasDistanceInMeters {
        jsonMap["distanceInMeters"] = NSNumber(float:distanceInMeters)
      }
      if hasEncounterId {
        jsonMap["encounterId"] = "\(encounterId)"
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
      return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasPokemonId) {
        output += "\(indent) pokemonId: \(pokemonId.description)\n"
      }
      if hasDistanceInMeters {
        output += "\(indent) distanceInMeters: \(distanceInMeters) \n"
      }
      if hasEncounterId {
        output += "\(indent) encounterId: \(encounterId) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasPokemonId {
               hashCode = (hashCode &* 31) &+ Int(pokemonId.rawValue)
            }
            if hasDistanceInMeters {
               hashCode = (hashCode &* 31) &+ distanceInMeters.hashValue
            }
            if hasEncounterId {
               hashCode = (hashCode &* 31) &+ encounterId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Map.Pokemon.NearbyPokemon"
    }
    override public func className() -> String {
        return "Pogoprotos.Map.Pokemon.NearbyPokemon"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Map.Pokemon.NearbyPokemon.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Map.Pokemon.NearbyPokemon = Pogoprotos.Map.Pokemon.NearbyPokemon()
      public func getMessage() -> Pogoprotos.Map.Pokemon.NearbyPokemon {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasPokemonId:Bool{
            get {
                return builderResult.hasPokemonId
            }
        }
        public var pokemonId:Pogoprotos.Enums.PokemonId {
            get {
                return builderResult.pokemonId
            }
            set (value) {
                builderResult.hasPokemonId = true
                builderResult.pokemonId = value
            }
        }
        public func setPokemonId(value:Pogoprotos.Enums.PokemonId) -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
          self.pokemonId = value
          return self
        }
        public func clearPokemonId() -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
           builderResult.hasPokemonId = false
           builderResult.pokemonId = .Missingno
           return self
        }
      public var hasDistanceInMeters:Bool {
           get {
                return builderResult.hasDistanceInMeters
           }
      }
      public var distanceInMeters:Float {
           get {
                return builderResult.distanceInMeters
           }
           set (value) {
               builderResult.hasDistanceInMeters = true
               builderResult.distanceInMeters = value
           }
      }
      public func setDistanceInMeters(value:Float) -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        self.distanceInMeters = value
        return self
      }
      public func clearDistanceInMeters() -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder{
           builderResult.hasDistanceInMeters = false
           builderResult.distanceInMeters = Float(0)
           return self
      }
      public var hasEncounterId:Bool {
           get {
                return builderResult.hasEncounterId
           }
      }
      public var encounterId:UInt64 {
           get {
                return builderResult.encounterId
           }
           set (value) {
               builderResult.hasEncounterId = true
               builderResult.encounterId = value
           }
      }
      public func setEncounterId(value:UInt64) -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        self.encounterId = value
        return self
      }
      public func clearEncounterId() -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder{
           builderResult.hasEncounterId = false
           builderResult.encounterId = UInt64(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        builderResult = Pogoprotos.Map.Pokemon.NearbyPokemon()
        return self
      }
      override public func clone() throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        return try Pogoprotos.Map.Pokemon.NearbyPokemon.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Map.Pokemon.NearbyPokemon {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Map.Pokemon.NearbyPokemon {
        let returnMe:Pogoprotos.Map.Pokemon.NearbyPokemon = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Map.Pokemon.NearbyPokemon) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        if other == Pogoprotos.Map.Pokemon.NearbyPokemon() {
         return self
        }
        if other.hasPokemonId {
             pokemonId = other.pokemonId
        }
        if other.hasDistanceInMeters {
             distanceInMeters = other.distanceInMeters
        }
        if other.hasEncounterId {
             encounterId = other.encounterId
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntpokemonId = try input.readEnum()
            if let enumspokemonId = Pogoprotos.Enums.PokemonId(rawValue:valueIntpokemonId){
                 pokemonId = enumspokemonId
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntpokemonId))
            }

          case 21:
            distanceInMeters = try input.readFloat()

          case 25:
            encounterId = try input.readFixed64()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        let resultDecodedBuilder = Pogoprotos.Map.Pokemon.NearbyPokemon.Builder()
        if let jsonValuePokemonId = jsonMap["pokemonId"] as? String {
          resultDecodedBuilder.pokemonId = try Pogoprotos.Enums.PokemonId.fromString(jsonValuePokemonId)
        }
        if let jsonValueDistanceInMeters = jsonMap["distanceInMeters"] as? NSNumber {
          resultDecodedBuilder.distanceInMeters = jsonValueDistanceInMeters.floatValue
        }
        if let jsonValueEncounterId = jsonMap["encounterId"] as? String {
          resultDecodedBuilder.encounterId = UInt64(jsonValueEncounterId)!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Map.Pokemon.NearbyPokemon.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
