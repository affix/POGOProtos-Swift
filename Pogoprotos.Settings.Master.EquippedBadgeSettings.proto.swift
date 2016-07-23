// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "EquippedBadgeSettings.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { }}}

public func == (lhs: Pogoprotos.Settings.Master.EquippedBadgeSettings, rhs: Pogoprotos.Settings.Master.EquippedBadgeSettings) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasEquipBadgeCooldownMs == rhs.hasEquipBadgeCooldownMs) && (!lhs.hasEquipBadgeCooldownMs || lhs.equipBadgeCooldownMs == rhs.equipBadgeCooldownMs)
  fieldCheck = fieldCheck && (lhs.catchProbabilityBonus == rhs.catchProbabilityBonus)
  fieldCheck = fieldCheck && (lhs.fleeProbabilityBonus == rhs.fleeProbabilityBonus)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master {
  public struct EquippedBadgeSettingsRoot {
    public static var sharedInstance : EquippedBadgeSettingsRoot {
     struct Static {
         static let instance : EquippedBadgeSettingsRoot = EquippedBadgeSettingsRoot()
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

  final public class EquippedBadgeSettings : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasEquipBadgeCooldownMs:Bool = false
    public private(set) var equipBadgeCooldownMs:Int64 = Int64(0)

    public private(set) var catchProbabilityBonus:Array<Float> = Array<Float>()
    private var catchProbabilityBonusMemoizedSerializedSize:Int32 = -1
    public private(set) var fleeProbabilityBonus:Array<Float> = Array<Float>()
    private var fleeProbabilityBonusMemoizedSerializedSize:Int32 = -1
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasEquipBadgeCooldownMs {
        try output.writeInt64(1, value:equipBadgeCooldownMs)
      }
      if !catchProbabilityBonus.isEmpty {
        try output.writeRawVarint32(18)
        try output.writeRawVarint32(catchProbabilityBonusMemoizedSerializedSize)
        for oneValuecatchProbabilityBonus in catchProbabilityBonus {
          try output.writeFloatNoTag(oneValuecatchProbabilityBonus)
        }
      }
      if !fleeProbabilityBonus.isEmpty {
        try output.writeRawVarint32(26)
        try output.writeRawVarint32(fleeProbabilityBonusMemoizedSerializedSize)
        for oneValuefleeProbabilityBonus in fleeProbabilityBonus {
          try output.writeFloatNoTag(oneValuefleeProbabilityBonus)
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
      if hasEquipBadgeCooldownMs {
        serialize_size += equipBadgeCooldownMs.computeInt64Size(1)
      }
      var dataSizeCatchProbabilityBonus:Int32 = 0
      dataSizeCatchProbabilityBonus = 4 * Int32(catchProbabilityBonus.count)
      serialize_size += dataSizeCatchProbabilityBonus
      if !catchProbabilityBonus.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeCatchProbabilityBonus.computeInt32SizeNoTag()
      }
      catchProbabilityBonusMemoizedSerializedSize = dataSizeCatchProbabilityBonus
      var dataSizeFleeProbabilityBonus:Int32 = 0
      dataSizeFleeProbabilityBonus = 4 * Int32(fleeProbabilityBonus.count)
      serialize_size += dataSizeFleeProbabilityBonus
      if !fleeProbabilityBonus.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeFleeProbabilityBonus.computeInt32SizeNoTag()
      }
      fleeProbabilityBonusMemoizedSerializedSize = dataSizeFleeProbabilityBonus
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.EquippedBadgeSettings> {
      var mergedArray = Array<Pogoprotos.Settings.Master.EquippedBadgeSettings>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings? {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.EquippedBadgeSettingsRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
      return Pogoprotos.Settings.Master.EquippedBadgeSettings.classBuilder() as! Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.EquippedBadgeSettings) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasEquipBadgeCooldownMs {
        jsonMap["equipBadgeCooldownMs"] = "\(equipBadgeCooldownMs)"
      }
      if !catchProbabilityBonus.isEmpty {
        var jsonArrayCatchProbabilityBonus:Array<NSNumber> = []
          for oneValueCatchProbabilityBonus in catchProbabilityBonus {
            jsonArrayCatchProbabilityBonus += [NSNumber(float:oneValueCatchProbabilityBonus)]
          }
        jsonMap["catchProbabilityBonus"] = jsonArrayCatchProbabilityBonus
      }
      if !fleeProbabilityBonus.isEmpty {
        var jsonArrayFleeProbabilityBonus:Array<NSNumber> = []
          for oneValueFleeProbabilityBonus in fleeProbabilityBonus {
            jsonArrayFleeProbabilityBonus += [NSNumber(float:oneValueFleeProbabilityBonus)]
          }
        jsonMap["fleeProbabilityBonus"] = jsonArrayFleeProbabilityBonus
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
      return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasEquipBadgeCooldownMs {
        output += "\(indent) equipBadgeCooldownMs: \(equipBadgeCooldownMs) \n"
      }
      var catchProbabilityBonusElementIndex:Int = 0
      for oneValueCatchProbabilityBonus in catchProbabilityBonus  {
          output += "\(indent) catchProbabilityBonus[\(catchProbabilityBonusElementIndex)]: \(oneValueCatchProbabilityBonus)\n"
          catchProbabilityBonusElementIndex += 1
      }
      var fleeProbabilityBonusElementIndex:Int = 0
      for oneValueFleeProbabilityBonus in fleeProbabilityBonus  {
          output += "\(indent) fleeProbabilityBonus[\(fleeProbabilityBonusElementIndex)]: \(oneValueFleeProbabilityBonus)\n"
          fleeProbabilityBonusElementIndex += 1
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasEquipBadgeCooldownMs {
               hashCode = (hashCode &* 31) &+ equipBadgeCooldownMs.hashValue
            }
            for oneValueCatchProbabilityBonus in catchProbabilityBonus {
                hashCode = (hashCode &* 31) &+ oneValueCatchProbabilityBonus.hashValue
            }
            for oneValueFleeProbabilityBonus in fleeProbabilityBonus {
                hashCode = (hashCode &* 31) &+ oneValueFleeProbabilityBonus.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.EquippedBadgeSettings"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.EquippedBadgeSettings"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.EquippedBadgeSettings.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.EquippedBadgeSettings = Pogoprotos.Settings.Master.EquippedBadgeSettings()
      public func getMessage() -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasEquipBadgeCooldownMs:Bool {
           get {
                return builderResult.hasEquipBadgeCooldownMs
           }
      }
      public var equipBadgeCooldownMs:Int64 {
           get {
                return builderResult.equipBadgeCooldownMs
           }
           set (value) {
               builderResult.hasEquipBadgeCooldownMs = true
               builderResult.equipBadgeCooldownMs = value
           }
      }
      public func setEquipBadgeCooldownMs(value:Int64) -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        self.equipBadgeCooldownMs = value
        return self
      }
      public func clearEquipBadgeCooldownMs() -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder{
           builderResult.hasEquipBadgeCooldownMs = false
           builderResult.equipBadgeCooldownMs = Int64(0)
           return self
      }
      public var catchProbabilityBonus:Array<Float> {
           get {
               return builderResult.catchProbabilityBonus
           }
           set (array) {
               builderResult.catchProbabilityBonus = array
           }
      }
      public func setCatchProbabilityBonus(value:Array<Float>) -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        self.catchProbabilityBonus = value
        return self
      }
      public func clearCatchProbabilityBonus() -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
         builderResult.catchProbabilityBonus.removeAll(keepCapacity: false)
         return self
      }
      public var fleeProbabilityBonus:Array<Float> {
           get {
               return builderResult.fleeProbabilityBonus
           }
           set (array) {
               builderResult.fleeProbabilityBonus = array
           }
      }
      public func setFleeProbabilityBonus(value:Array<Float>) -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        self.fleeProbabilityBonus = value
        return self
      }
      public func clearFleeProbabilityBonus() -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
         builderResult.fleeProbabilityBonus.removeAll(keepCapacity: false)
         return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        builderResult = Pogoprotos.Settings.Master.EquippedBadgeSettings()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        return try Pogoprotos.Settings.Master.EquippedBadgeSettings.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.EquippedBadgeSettings {
        let returnMe:Pogoprotos.Settings.Master.EquippedBadgeSettings = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.EquippedBadgeSettings) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        if other == Pogoprotos.Settings.Master.EquippedBadgeSettings() {
         return self
        }
        if other.hasEquipBadgeCooldownMs {
             equipBadgeCooldownMs = other.equipBadgeCooldownMs
        }
        if !other.catchProbabilityBonus.isEmpty {
            builderResult.catchProbabilityBonus += other.catchProbabilityBonus
        }
        if !other.fleeProbabilityBonus.isEmpty {
            builderResult.fleeProbabilityBonus += other.fleeProbabilityBonus
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            equipBadgeCooldownMs = try input.readInt64()

          case 18:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.catchProbabilityBonus += [try input.readFloat()]
            }
            input.popLimit(limit)

          case 26:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.fleeProbabilityBonus += [try input.readFloat()]
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
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder()
        if let jsonValueEquipBadgeCooldownMs = jsonMap["equipBadgeCooldownMs"] as? String {
          resultDecodedBuilder.equipBadgeCooldownMs = Int64(jsonValueEquipBadgeCooldownMs)!
        }
        if let jsonValueCatchProbabilityBonus = jsonMap["catchProbabilityBonus"] as? Array<NSNumber> {
          var jsonArrayCatchProbabilityBonus:Array<Float> = []
          for oneValueCatchProbabilityBonus in jsonValueCatchProbabilityBonus {
            jsonArrayCatchProbabilityBonus += [oneValueCatchProbabilityBonus.floatValue]
          }
          resultDecodedBuilder.catchProbabilityBonus = jsonArrayCatchProbabilityBonus
        }
        if let jsonValueFleeProbabilityBonus = jsonMap["fleeProbabilityBonus"] as? Array<NSNumber> {
          var jsonArrayFleeProbabilityBonus:Array<Float> = []
          for oneValueFleeProbabilityBonus in jsonValueFleeProbabilityBonus {
            jsonArrayFleeProbabilityBonus += [oneValueFleeProbabilityBonus.floatValue]
          }
          resultDecodedBuilder.fleeProbabilityBonus = jsonArrayFleeProbabilityBonus
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.EquippedBadgeSettings.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)