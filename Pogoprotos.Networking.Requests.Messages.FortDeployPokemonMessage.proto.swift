// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "FortDeployPokemonMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage, rhs: Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasFortId == rhs.hasFortId) && (!lhs.hasFortId || lhs.fortId == rhs.fortId)
  fieldCheck = fieldCheck && (lhs.hasPokemonId == rhs.hasPokemonId) && (!lhs.hasPokemonId || lhs.pokemonId == rhs.pokemonId)
  fieldCheck = fieldCheck && (lhs.hasPlayerLatitude == rhs.hasPlayerLatitude) && (!lhs.hasPlayerLatitude || lhs.playerLatitude == rhs.playerLatitude)
  fieldCheck = fieldCheck && (lhs.hasPlayerLongitude == rhs.hasPlayerLongitude) && (!lhs.hasPlayerLongitude || lhs.playerLongitude == rhs.playerLongitude)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct FortDeployPokemonMessageRoot {
    public static var sharedInstance : FortDeployPokemonMessageRoot {
     struct Static {
         static let instance : FortDeployPokemonMessageRoot = FortDeployPokemonMessageRoot()
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

  final public class FortDeployPokemonMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasFortId:Bool = false
    public private(set) var fortId:String = ""

    public private(set) var hasPokemonId:Bool = false
    public private(set) var pokemonId:UInt64 = UInt64(0)

    public private(set) var hasPlayerLatitude:Bool = false
    public private(set) var playerLatitude:Double = Double(0)

    public private(set) var hasPlayerLongitude:Bool = false
    public private(set) var playerLongitude:Double = Double(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasFortId {
        try output.writeString(1, value:fortId)
      }
      if hasPokemonId {
        try output.writeUInt64(2, value:pokemonId)
      }
      if hasPlayerLatitude {
        try output.writeDouble(3, value:playerLatitude)
      }
      if hasPlayerLongitude {
        try output.writeDouble(4, value:playerLongitude)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasFortId {
        serialize_size += fortId.computeStringSize(1)
      }
      if hasPokemonId {
        serialize_size += pokemonId.computeUInt64Size(2)
      }
      if hasPlayerLatitude {
        serialize_size += playerLatitude.computeDoubleSize(3)
      }
      if hasPlayerLongitude {
        serialize_size += playerLongitude.computeDoubleSize(4)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage? {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasFortId {
        jsonMap["fortId"] = fortId
      }
      if hasPokemonId {
        jsonMap["pokemonId"] = "\(pokemonId)"
      }
      if hasPlayerLatitude {
        jsonMap["playerLatitude"] = NSNumber(double:playerLatitude)
      }
      if hasPlayerLongitude {
        jsonMap["playerLongitude"] = NSNumber(double:playerLongitude)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasFortId {
        output += "\(indent) fortId: \(fortId) \n"
      }
      if hasPokemonId {
        output += "\(indent) pokemonId: \(pokemonId) \n"
      }
      if hasPlayerLatitude {
        output += "\(indent) playerLatitude: \(playerLatitude) \n"
      }
      if hasPlayerLongitude {
        output += "\(indent) playerLongitude: \(playerLongitude) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasFortId {
               hashCode = (hashCode &* 31) &+ fortId.hashValue
            }
            if hasPokemonId {
               hashCode = (hashCode &* 31) &+ pokemonId.hashValue
            }
            if hasPlayerLatitude {
               hashCode = (hashCode &* 31) &+ playerLatitude.hashValue
            }
            if hasPlayerLongitude {
               hashCode = (hashCode &* 31) &+ playerLongitude.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage = Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasFortId:Bool {
           get {
                return builderResult.hasFortId
           }
      }
      public var fortId:String {
           get {
                return builderResult.fortId
           }
           set (value) {
               builderResult.hasFortId = true
               builderResult.fortId = value
           }
      }
      public func setFortId(value:String) -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        self.fortId = value
        return self
      }
      public func clearFortId() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder{
           builderResult.hasFortId = false
           builderResult.fortId = ""
           return self
      }
      public var hasPokemonId:Bool {
           get {
                return builderResult.hasPokemonId
           }
      }
      public var pokemonId:UInt64 {
           get {
                return builderResult.pokemonId
           }
           set (value) {
               builderResult.hasPokemonId = true
               builderResult.pokemonId = value
           }
      }
      public func setPokemonId(value:UInt64) -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        self.pokemonId = value
        return self
      }
      public func clearPokemonId() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder{
           builderResult.hasPokemonId = false
           builderResult.pokemonId = UInt64(0)
           return self
      }
      public var hasPlayerLatitude:Bool {
           get {
                return builderResult.hasPlayerLatitude
           }
      }
      public var playerLatitude:Double {
           get {
                return builderResult.playerLatitude
           }
           set (value) {
               builderResult.hasPlayerLatitude = true
               builderResult.playerLatitude = value
           }
      }
      public func setPlayerLatitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        self.playerLatitude = value
        return self
      }
      public func clearPlayerLatitude() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder{
           builderResult.hasPlayerLatitude = false
           builderResult.playerLatitude = Double(0)
           return self
      }
      public var hasPlayerLongitude:Bool {
           get {
                return builderResult.hasPlayerLongitude
           }
      }
      public var playerLongitude:Double {
           get {
                return builderResult.playerLongitude
           }
           set (value) {
               builderResult.hasPlayerLongitude = true
               builderResult.playerLongitude = value
           }
      }
      public func setPlayerLongitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        self.playerLongitude = value
        return self
      }
      public func clearPlayerLongitude() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder{
           builderResult.hasPlayerLongitude = false
           builderResult.playerLongitude = Double(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage() {
         return self
        }
        if other.hasFortId {
             fortId = other.fortId
        }
        if other.hasPokemonId {
             pokemonId = other.pokemonId
        }
        if other.hasPlayerLatitude {
             playerLatitude = other.playerLatitude
        }
        if other.hasPlayerLongitude {
             playerLongitude = other.playerLongitude
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            fortId = try input.readString()

          case 16:
            pokemonId = try input.readUInt64()

          case 25:
            playerLatitude = try input.readDouble()

          case 33:
            playerLongitude = try input.readDouble()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder()
        if let jsonValueFortId = jsonMap["fortId"] as? String {
          resultDecodedBuilder.fortId = jsonValueFortId
        }
        if let jsonValuePokemonId = jsonMap["pokemonId"] as? String {
          resultDecodedBuilder.pokemonId = UInt64(jsonValuePokemonId)!
        }
        if let jsonValuePlayerLatitude = jsonMap["playerLatitude"] as? NSNumber {
          resultDecodedBuilder.playerLatitude = jsonValuePlayerLatitude.doubleValue
        }
        if let jsonValuePlayerLongitude = jsonMap["playerLongitude"] as? NSNumber {
          resultDecodedBuilder.playerLongitude = jsonValuePlayerLongitude.doubleValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.FortDeployPokemonMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
