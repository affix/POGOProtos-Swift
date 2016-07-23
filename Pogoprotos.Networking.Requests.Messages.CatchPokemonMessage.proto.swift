// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "CatchPokemonMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage, rhs: Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasEncounterId == rhs.hasEncounterId) && (!lhs.hasEncounterId || lhs.encounterId == rhs.encounterId)
  fieldCheck = fieldCheck && (lhs.hasPokeball == rhs.hasPokeball) && (!lhs.hasPokeball || lhs.pokeball == rhs.pokeball)
  fieldCheck = fieldCheck && (lhs.hasNormalizedReticleSize == rhs.hasNormalizedReticleSize) && (!lhs.hasNormalizedReticleSize || lhs.normalizedReticleSize == rhs.normalizedReticleSize)
  fieldCheck = fieldCheck && (lhs.hasSpawnPointId == rhs.hasSpawnPointId) && (!lhs.hasSpawnPointId || lhs.spawnPointId == rhs.spawnPointId)
  fieldCheck = fieldCheck && (lhs.hasHitPokemon == rhs.hasHitPokemon) && (!lhs.hasHitPokemon || lhs.hitPokemon == rhs.hitPokemon)
  fieldCheck = fieldCheck && (lhs.hasSpinModifier == rhs.hasSpinModifier) && (!lhs.hasSpinModifier || lhs.spinModifier == rhs.spinModifier)
  fieldCheck = fieldCheck && (lhs.hasNormalizedHitPosition == rhs.hasNormalizedHitPosition) && (!lhs.hasNormalizedHitPosition || lhs.normalizedHitPosition == rhs.normalizedHitPosition)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct CatchPokemonMessageRoot {
    public static var sharedInstance : CatchPokemonMessageRoot {
     struct Static {
         static let instance : CatchPokemonMessageRoot = CatchPokemonMessageRoot()
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

  final public class CatchPokemonMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasEncounterId:Bool = false
    public private(set) var encounterId:UInt64 = UInt64(0)

    public private(set) var pokeball:Pogoprotos.Inventory.Item.ItemId = Pogoprotos.Inventory.Item.ItemId.ItemUnknown
    public private(set) var hasPokeball:Bool = false
    public private(set) var hasNormalizedReticleSize:Bool = false
    public private(set) var normalizedReticleSize:Double = Double(0)

    public private(set) var hasSpawnPointId:Bool = false
    public private(set) var spawnPointId:String = ""

    public private(set) var hasHitPokemon:Bool = false
    public private(set) var hitPokemon:Bool = false

    public private(set) var hasSpinModifier:Bool = false
    public private(set) var spinModifier:Double = Double(0)

    public private(set) var hasNormalizedHitPosition:Bool = false
    public private(set) var normalizedHitPosition:Double = Double(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasEncounterId {
        try output.writeFixed64(1, value:encounterId)
      }
      if hasPokeball {
        try output.writeEnum(2, value:pokeball.rawValue)
      }
      if hasNormalizedReticleSize {
        try output.writeDouble(3, value:normalizedReticleSize)
      }
      if hasSpawnPointId {
        try output.writeString(4, value:spawnPointId)
      }
      if hasHitPokemon {
        try output.writeBool(5, value:hitPokemon)
      }
      if hasSpinModifier {
        try output.writeDouble(6, value:spinModifier)
      }
      if hasNormalizedHitPosition {
        try output.writeDouble(7, value:normalizedHitPosition)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasEncounterId {
        serialize_size += encounterId.computeFixed64Size(1)
      }
      if (hasPokeball) {
        serialize_size += pokeball.rawValue.computeEnumSize(2)
      }
      if hasNormalizedReticleSize {
        serialize_size += normalizedReticleSize.computeDoubleSize(3)
      }
      if hasSpawnPointId {
        serialize_size += spawnPointId.computeStringSize(4)
      }
      if hasHitPokemon {
        serialize_size += hitPokemon.computeBoolSize(5)
      }
      if hasSpinModifier {
        serialize_size += spinModifier.computeDoubleSize(6)
      }
      if hasNormalizedHitPosition {
        serialize_size += normalizedHitPosition.computeDoubleSize(7)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage? {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.CatchPokemonMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasEncounterId {
        jsonMap["encounterId"] = "\(encounterId)"
      }
      if hasPokeball {
        jsonMap["pokeball"] = pokeball.toString()
      }
      if hasNormalizedReticleSize {
        jsonMap["normalizedReticleSize"] = NSNumber(double:normalizedReticleSize)
      }
      if hasSpawnPointId {
        jsonMap["spawnPointId"] = spawnPointId
      }
      if hasHitPokemon {
        jsonMap["hitPokemon"] = hitPokemon
      }
      if hasSpinModifier {
        jsonMap["spinModifier"] = NSNumber(double:spinModifier)
      }
      if hasNormalizedHitPosition {
        jsonMap["normalizedHitPosition"] = NSNumber(double:normalizedHitPosition)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasEncounterId {
        output += "\(indent) encounterId: \(encounterId) \n"
      }
      if (hasPokeball) {
        output += "\(indent) pokeball: \(pokeball.description)\n"
      }
      if hasNormalizedReticleSize {
        output += "\(indent) normalizedReticleSize: \(normalizedReticleSize) \n"
      }
      if hasSpawnPointId {
        output += "\(indent) spawnPointId: \(spawnPointId) \n"
      }
      if hasHitPokemon {
        output += "\(indent) hitPokemon: \(hitPokemon) \n"
      }
      if hasSpinModifier {
        output += "\(indent) spinModifier: \(spinModifier) \n"
      }
      if hasNormalizedHitPosition {
        output += "\(indent) normalizedHitPosition: \(normalizedHitPosition) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasEncounterId {
               hashCode = (hashCode &* 31) &+ encounterId.hashValue
            }
            if hasPokeball {
               hashCode = (hashCode &* 31) &+ Int(pokeball.rawValue)
            }
            if hasNormalizedReticleSize {
               hashCode = (hashCode &* 31) &+ normalizedReticleSize.hashValue
            }
            if hasSpawnPointId {
               hashCode = (hashCode &* 31) &+ spawnPointId.hashValue
            }
            if hasHitPokemon {
               hashCode = (hashCode &* 31) &+ hitPokemon.hashValue
            }
            if hasSpinModifier {
               hashCode = (hashCode &* 31) &+ spinModifier.hashValue
            }
            if hasNormalizedHitPosition {
               hashCode = (hashCode &* 31) &+ normalizedHitPosition.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage = Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
          return builderResult
      }

      required override public init () {
         super.init()
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
      public func setEncounterId(value:UInt64) -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        self.encounterId = value
        return self
      }
      public func clearEncounterId() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder{
           builderResult.hasEncounterId = false
           builderResult.encounterId = UInt64(0)
           return self
      }
        public var hasPokeball:Bool{
            get {
                return builderResult.hasPokeball
            }
        }
        public var pokeball:Pogoprotos.Inventory.Item.ItemId {
            get {
                return builderResult.pokeball
            }
            set (value) {
                builderResult.hasPokeball = true
                builderResult.pokeball = value
            }
        }
        public func setPokeball(value:Pogoprotos.Inventory.Item.ItemId) -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
          self.pokeball = value
          return self
        }
        public func clearPokeball() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
           builderResult.hasPokeball = false
           builderResult.pokeball = .ItemUnknown
           return self
        }
      public var hasNormalizedReticleSize:Bool {
           get {
                return builderResult.hasNormalizedReticleSize
           }
      }
      public var normalizedReticleSize:Double {
           get {
                return builderResult.normalizedReticleSize
           }
           set (value) {
               builderResult.hasNormalizedReticleSize = true
               builderResult.normalizedReticleSize = value
           }
      }
      public func setNormalizedReticleSize(value:Double) -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        self.normalizedReticleSize = value
        return self
      }
      public func clearNormalizedReticleSize() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder{
           builderResult.hasNormalizedReticleSize = false
           builderResult.normalizedReticleSize = Double(0)
           return self
      }
      public var hasSpawnPointId:Bool {
           get {
                return builderResult.hasSpawnPointId
           }
      }
      public var spawnPointId:String {
           get {
                return builderResult.spawnPointId
           }
           set (value) {
               builderResult.hasSpawnPointId = true
               builderResult.spawnPointId = value
           }
      }
      public func setSpawnPointId(value:String) -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        self.spawnPointId = value
        return self
      }
      public func clearSpawnPointId() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder{
           builderResult.hasSpawnPointId = false
           builderResult.spawnPointId = ""
           return self
      }
      public var hasHitPokemon:Bool {
           get {
                return builderResult.hasHitPokemon
           }
      }
      public var hitPokemon:Bool {
           get {
                return builderResult.hitPokemon
           }
           set (value) {
               builderResult.hasHitPokemon = true
               builderResult.hitPokemon = value
           }
      }
      public func setHitPokemon(value:Bool) -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        self.hitPokemon = value
        return self
      }
      public func clearHitPokemon() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder{
           builderResult.hasHitPokemon = false
           builderResult.hitPokemon = false
           return self
      }
      public var hasSpinModifier:Bool {
           get {
                return builderResult.hasSpinModifier
           }
      }
      public var spinModifier:Double {
           get {
                return builderResult.spinModifier
           }
           set (value) {
               builderResult.hasSpinModifier = true
               builderResult.spinModifier = value
           }
      }
      public func setSpinModifier(value:Double) -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        self.spinModifier = value
        return self
      }
      public func clearSpinModifier() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder{
           builderResult.hasSpinModifier = false
           builderResult.spinModifier = Double(0)
           return self
      }
      public var hasNormalizedHitPosition:Bool {
           get {
                return builderResult.hasNormalizedHitPosition
           }
      }
      public var normalizedHitPosition:Double {
           get {
                return builderResult.normalizedHitPosition
           }
           set (value) {
               builderResult.hasNormalizedHitPosition = true
               builderResult.normalizedHitPosition = value
           }
      }
      public func setNormalizedHitPosition(value:Double) -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        self.normalizedHitPosition = value
        return self
      }
      public func clearNormalizedHitPosition() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder{
           builderResult.hasNormalizedHitPosition = false
           builderResult.normalizedHitPosition = Double(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage() {
         return self
        }
        if other.hasEncounterId {
             encounterId = other.encounterId
        }
        if other.hasPokeball {
             pokeball = other.pokeball
        }
        if other.hasNormalizedReticleSize {
             normalizedReticleSize = other.normalizedReticleSize
        }
        if other.hasSpawnPointId {
             spawnPointId = other.spawnPointId
        }
        if other.hasHitPokemon {
             hitPokemon = other.hitPokemon
        }
        if other.hasSpinModifier {
             spinModifier = other.spinModifier
        }
        if other.hasNormalizedHitPosition {
             normalizedHitPosition = other.normalizedHitPosition
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 9:
            encounterId = try input.readFixed64()

          case 16:
            let valueIntpokeball = try input.readEnum()
            if let enumspokeball = Pogoprotos.Inventory.Item.ItemId(rawValue:valueIntpokeball){
                 pokeball = enumspokeball
            } else {
                 try unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntpokeball))
            }

          case 25:
            normalizedReticleSize = try input.readDouble()

          case 34:
            spawnPointId = try input.readString()

          case 40:
            hitPokemon = try input.readBool()

          case 49:
            spinModifier = try input.readDouble()

          case 57:
            normalizedHitPosition = try input.readDouble()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder()
        if let jsonValueEncounterId = jsonMap["encounterId"] as? String {
          resultDecodedBuilder.encounterId = UInt64(jsonValueEncounterId)!
        }
        if let jsonValuePokeball = jsonMap["pokeball"] as? String {
          resultDecodedBuilder.pokeball = try Pogoprotos.Inventory.Item.ItemId.fromString(jsonValuePokeball)
        }
        if let jsonValueNormalizedReticleSize = jsonMap["normalizedReticleSize"] as? NSNumber {
          resultDecodedBuilder.normalizedReticleSize = jsonValueNormalizedReticleSize.doubleValue
        }
        if let jsonValueSpawnPointId = jsonMap["spawnPointId"] as? String {
          resultDecodedBuilder.spawnPointId = jsonValueSpawnPointId
        }
        if let jsonValueHitPokemon = jsonMap["hitPokemon"] as? Bool {
          resultDecodedBuilder.hitPokemon = jsonValueHitPokemon
        }
        if let jsonValueSpinModifier = jsonMap["spinModifier"] as? NSNumber {
          resultDecodedBuilder.spinModifier = jsonValueSpinModifier.doubleValue
        }
        if let jsonValueNormalizedHitPosition = jsonMap["normalizedHitPosition"] as? NSNumber {
          resultDecodedBuilder.normalizedHitPosition = jsonValueNormalizedHitPosition.doubleValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.CatchPokemonMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
