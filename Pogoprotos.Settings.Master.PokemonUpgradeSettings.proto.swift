// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "PokemonUpgradeSettings.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { }}}

public func == (lhs: Pogoprotos.Settings.Master.PokemonUpgradeSettings, rhs: Pogoprotos.Settings.Master.PokemonUpgradeSettings) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasUpgradesPerLevel == rhs.hasUpgradesPerLevel) && (!lhs.hasUpgradesPerLevel || lhs.upgradesPerLevel == rhs.upgradesPerLevel)
  fieldCheck = fieldCheck && (lhs.hasAllowedLevelsAbovePlayer == rhs.hasAllowedLevelsAbovePlayer) && (!lhs.hasAllowedLevelsAbovePlayer || lhs.allowedLevelsAbovePlayer == rhs.allowedLevelsAbovePlayer)
  fieldCheck = fieldCheck && (lhs.candyCost == rhs.candyCost)
  fieldCheck = fieldCheck && (lhs.stardustCost == rhs.stardustCost)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master {
  public struct PokemonUpgradeSettingsRoot {
    public static var sharedInstance : PokemonUpgradeSettingsRoot {
     struct Static {
         static let instance : PokemonUpgradeSettingsRoot = PokemonUpgradeSettingsRoot()
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

  final public class PokemonUpgradeSettings : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasUpgradesPerLevel:Bool = false
    public private(set) var upgradesPerLevel:Int32 = Int32(0)

    public private(set) var hasAllowedLevelsAbovePlayer:Bool = false
    public private(set) var allowedLevelsAbovePlayer:Int32 = Int32(0)

    public private(set) var candyCost:Array<Int32> = Array<Int32>()
    private var candyCostMemoizedSerializedSize:Int32 = -1
    public private(set) var stardustCost:Array<Int32> = Array<Int32>()
    private var stardustCostMemoizedSerializedSize:Int32 = -1
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasUpgradesPerLevel {
        try output.writeInt32(1, value:upgradesPerLevel)
      }
      if hasAllowedLevelsAbovePlayer {
        try output.writeInt32(2, value:allowedLevelsAbovePlayer)
      }
      if !candyCost.isEmpty {
        try output.writeRawVarint32(26)
        try output.writeRawVarint32(candyCostMemoizedSerializedSize)
        for oneValuecandyCost in candyCost {
          try output.writeInt32NoTag(oneValuecandyCost)
        }
      }
      if !stardustCost.isEmpty {
        try output.writeRawVarint32(34)
        try output.writeRawVarint32(stardustCostMemoizedSerializedSize)
        for oneValuestardustCost in stardustCost {
          try output.writeInt32NoTag(oneValuestardustCost)
        }
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasUpgradesPerLevel {
        serialize_size += upgradesPerLevel.computeInt32Size(1)
      }
      if hasAllowedLevelsAbovePlayer {
        serialize_size += allowedLevelsAbovePlayer.computeInt32Size(2)
      }
      var dataSizeCandyCost:Int32 = 0
      for oneValuecandyCost in candyCost {
          dataSizeCandyCost += oneValuecandyCost.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeCandyCost
      if !candyCost.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeCandyCost.computeInt32SizeNoTag()
      }
      candyCostMemoizedSerializedSize = dataSizeCandyCost
      var dataSizeStardustCost:Int32 = 0
      for oneValuestardustCost in stardustCost {
          dataSizeStardustCost += oneValuestardustCost.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeStardustCost
      if !stardustCost.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeStardustCost.computeInt32SizeNoTag()
      }
      stardustCostMemoizedSerializedSize = dataSizeStardustCost
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.PokemonUpgradeSettings> {
      var mergedArray = Array<Pogoprotos.Settings.Master.PokemonUpgradeSettings>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings? {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.PokemonUpgradeSettingsRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
      return Pogoprotos.Settings.Master.PokemonUpgradeSettings.classBuilder() as! Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.PokemonUpgradeSettings) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasUpgradesPerLevel {
        jsonMap["upgradesPerLevel"] = NSNumber(int:upgradesPerLevel)
      }
      if hasAllowedLevelsAbovePlayer {
        jsonMap["allowedLevelsAbovePlayer"] = NSNumber(int:allowedLevelsAbovePlayer)
      }
      if !candyCost.isEmpty {
        var jsonArrayCandyCost:Array<NSNumber> = []
          for oneValueCandyCost in candyCost {
            jsonArrayCandyCost += [NSNumber(int:oneValueCandyCost)]
          }
        jsonMap["candyCost"] = jsonArrayCandyCost
      }
      if !stardustCost.isEmpty {
        var jsonArrayStardustCost:Array<NSNumber> = []
          for oneValueStardustCost in stardustCost {
            jsonArrayStardustCost += [NSNumber(int:oneValueStardustCost)]
          }
        jsonMap["stardustCost"] = jsonArrayStardustCost
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
      return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasUpgradesPerLevel {
        output += "\(indent) upgradesPerLevel: \(upgradesPerLevel) \n"
      }
      if hasAllowedLevelsAbovePlayer {
        output += "\(indent) allowedLevelsAbovePlayer: \(allowedLevelsAbovePlayer) \n"
      }
      var candyCostElementIndex:Int = 0
      for oneValueCandyCost in candyCost  {
          output += "\(indent) candyCost[\(candyCostElementIndex)]: \(oneValueCandyCost)\n"
          candyCostElementIndex += 1
      }
      var stardustCostElementIndex:Int = 0
      for oneValueStardustCost in stardustCost  {
          output += "\(indent) stardustCost[\(stardustCostElementIndex)]: \(oneValueStardustCost)\n"
          stardustCostElementIndex += 1
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasUpgradesPerLevel {
               hashCode = (hashCode &* 31) &+ upgradesPerLevel.hashValue
            }
            if hasAllowedLevelsAbovePlayer {
               hashCode = (hashCode &* 31) &+ allowedLevelsAbovePlayer.hashValue
            }
            for oneValueCandyCost in candyCost {
                hashCode = (hashCode &* 31) &+ oneValueCandyCost.hashValue
            }
            for oneValueStardustCost in stardustCost {
                hashCode = (hashCode &* 31) &+ oneValueStardustCost.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.PokemonUpgradeSettings"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.PokemonUpgradeSettings"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.PokemonUpgradeSettings.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.PokemonUpgradeSettings = Pogoprotos.Settings.Master.PokemonUpgradeSettings()
      public func getMessage() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasUpgradesPerLevel:Bool {
           get {
                return builderResult.hasUpgradesPerLevel
           }
      }
      public var upgradesPerLevel:Int32 {
           get {
                return builderResult.upgradesPerLevel
           }
           set (value) {
               builderResult.hasUpgradesPerLevel = true
               builderResult.upgradesPerLevel = value
           }
      }
      public func setUpgradesPerLevel(value:Int32) -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        self.upgradesPerLevel = value
        return self
      }
      public func clearUpgradesPerLevel() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder{
           builderResult.hasUpgradesPerLevel = false
           builderResult.upgradesPerLevel = Int32(0)
           return self
      }
      public var hasAllowedLevelsAbovePlayer:Bool {
           get {
                return builderResult.hasAllowedLevelsAbovePlayer
           }
      }
      public var allowedLevelsAbovePlayer:Int32 {
           get {
                return builderResult.allowedLevelsAbovePlayer
           }
           set (value) {
               builderResult.hasAllowedLevelsAbovePlayer = true
               builderResult.allowedLevelsAbovePlayer = value
           }
      }
      public func setAllowedLevelsAbovePlayer(value:Int32) -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        self.allowedLevelsAbovePlayer = value
        return self
      }
      public func clearAllowedLevelsAbovePlayer() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder{
           builderResult.hasAllowedLevelsAbovePlayer = false
           builderResult.allowedLevelsAbovePlayer = Int32(0)
           return self
      }
      public var candyCost:Array<Int32> {
           get {
               return builderResult.candyCost
           }
           set (array) {
               builderResult.candyCost = array
           }
      }
      public func setCandyCost(value:Array<Int32>) -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        self.candyCost = value
        return self
      }
      public func clearCandyCost() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
         builderResult.candyCost.removeAll(keepCapacity: false)
         return self
      }
      public var stardustCost:Array<Int32> {
           get {
               return builderResult.stardustCost
           }
           set (array) {
               builderResult.stardustCost = array
           }
      }
      public func setStardustCost(value:Array<Int32>) -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        self.stardustCost = value
        return self
      }
      public func clearStardustCost() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
         builderResult.stardustCost.removeAll(keepCapacity: false)
         return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        builderResult = Pogoprotos.Settings.Master.PokemonUpgradeSettings()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.PokemonUpgradeSettings {
        let returnMe:Pogoprotos.Settings.Master.PokemonUpgradeSettings = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.PokemonUpgradeSettings) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        if other == Pogoprotos.Settings.Master.PokemonUpgradeSettings() {
         return self
        }
        if other.hasUpgradesPerLevel {
             upgradesPerLevel = other.upgradesPerLevel
        }
        if other.hasAllowedLevelsAbovePlayer {
             allowedLevelsAbovePlayer = other.allowedLevelsAbovePlayer
        }
        if !other.candyCost.isEmpty {
            builderResult.candyCost += other.candyCost
        }
        if !other.stardustCost.isEmpty {
            builderResult.stardustCost += other.stardustCost
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            upgradesPerLevel = try input.readInt32()

          case 16:
            allowedLevelsAbovePlayer = try input.readInt32()

          case 26:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.candyCost += [try input.readInt32()]
            }
            input.popLimit(limit)

          case 34:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.stardustCost += [try input.readInt32()]
            }
            input.popLimit(limit)

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder()
        if let jsonValueUpgradesPerLevel = jsonMap["upgradesPerLevel"] as? NSNumber {
          resultDecodedBuilder.upgradesPerLevel = jsonValueUpgradesPerLevel.intValue
        }
        if let jsonValueAllowedLevelsAbovePlayer = jsonMap["allowedLevelsAbovePlayer"] as? NSNumber {
          resultDecodedBuilder.allowedLevelsAbovePlayer = jsonValueAllowedLevelsAbovePlayer.intValue
        }
        if let jsonValueCandyCost = jsonMap["candyCost"] as? Array<NSNumber> {
          var jsonArrayCandyCost:Array<Int32> = []
          for oneValueCandyCost in jsonValueCandyCost {
            jsonArrayCandyCost += [oneValueCandyCost.intValue]
          }
          resultDecodedBuilder.candyCost = jsonArrayCandyCost
        }
        if let jsonValueStardustCost = jsonMap["stardustCost"] as? Array<NSNumber> {
          var jsonArrayStardustCost:Array<Int32> = []
          for oneValueStardustCost in jsonValueStardustCost {
            jsonArrayStardustCost += [oneValueStardustCost.intValue]
          }
          resultDecodedBuilder.stardustCost = jsonArrayStardustCost
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.PokemonUpgradeSettings.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
