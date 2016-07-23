// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "MoveSettings.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { }}}

public func == (lhs: Pogoprotos.Settings.Master.MoveSettings, rhs: Pogoprotos.Settings.Master.MoveSettings) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasMovementId == rhs.hasMovementId) && (!lhs.hasMovementId || lhs.movementId == rhs.movementId)
  fieldCheck = fieldCheck && (lhs.hasAnimationId == rhs.hasAnimationId) && (!lhs.hasAnimationId || lhs.animationId == rhs.animationId)
  fieldCheck = fieldCheck && (lhs.hasPokemonType == rhs.hasPokemonType) && (!lhs.hasPokemonType || lhs.pokemonType == rhs.pokemonType)
  fieldCheck = fieldCheck && (lhs.hasPower == rhs.hasPower) && (!lhs.hasPower || lhs.power == rhs.power)
  fieldCheck = fieldCheck && (lhs.hasAccuracyChance == rhs.hasAccuracyChance) && (!lhs.hasAccuracyChance || lhs.accuracyChance == rhs.accuracyChance)
  fieldCheck = fieldCheck && (lhs.hasCriticalChance == rhs.hasCriticalChance) && (!lhs.hasCriticalChance || lhs.criticalChance == rhs.criticalChance)
  fieldCheck = fieldCheck && (lhs.hasHealScalar == rhs.hasHealScalar) && (!lhs.hasHealScalar || lhs.healScalar == rhs.healScalar)
  fieldCheck = fieldCheck && (lhs.hasStaminaLossScalar == rhs.hasStaminaLossScalar) && (!lhs.hasStaminaLossScalar || lhs.staminaLossScalar == rhs.staminaLossScalar)
  fieldCheck = fieldCheck && (lhs.hasTrainerLevelMin == rhs.hasTrainerLevelMin) && (!lhs.hasTrainerLevelMin || lhs.trainerLevelMin == rhs.trainerLevelMin)
  fieldCheck = fieldCheck && (lhs.hasTrainerLevelMax == rhs.hasTrainerLevelMax) && (!lhs.hasTrainerLevelMax || lhs.trainerLevelMax == rhs.trainerLevelMax)
  fieldCheck = fieldCheck && (lhs.hasVfxName == rhs.hasVfxName) && (!lhs.hasVfxName || lhs.vfxName == rhs.vfxName)
  fieldCheck = fieldCheck && (lhs.hasDurationMs == rhs.hasDurationMs) && (!lhs.hasDurationMs || lhs.durationMs == rhs.durationMs)
  fieldCheck = fieldCheck && (lhs.hasDamageWindowStartMs == rhs.hasDamageWindowStartMs) && (!lhs.hasDamageWindowStartMs || lhs.damageWindowStartMs == rhs.damageWindowStartMs)
  fieldCheck = fieldCheck && (lhs.hasDamageWindowEndMs == rhs.hasDamageWindowEndMs) && (!lhs.hasDamageWindowEndMs || lhs.damageWindowEndMs == rhs.damageWindowEndMs)
  fieldCheck = fieldCheck && (lhs.hasEnergyDelta == rhs.hasEnergyDelta) && (!lhs.hasEnergyDelta || lhs.energyDelta == rhs.energyDelta)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master {
  public struct MoveSettingsRoot {
    public static var sharedInstance : MoveSettingsRoot {
     struct Static {
         static let instance : MoveSettingsRoot = MoveSettingsRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.PokemonTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.PokemonMovementTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class MoveSettings : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var movementId:Pogoprotos.Enums.PokemonMovementType = Pogoprotos.Enums.PokemonMovementType.MovementStatic
    public private(set) var hasMovementId:Bool = false
    public private(set) var hasAnimationId:Bool = false
    public private(set) var animationId:Int32 = Int32(0)

    public private(set) var pokemonType:Pogoprotos.Enums.PokemonType = Pogoprotos.Enums.PokemonType.PokemonTypeNone
    public private(set) var hasPokemonType:Bool = false
    public private(set) var hasPower:Bool = false
    public private(set) var power:Float = Float(0)

    public private(set) var hasAccuracyChance:Bool = false
    public private(set) var accuracyChance:Float = Float(0)

    public private(set) var hasCriticalChance:Bool = false
    public private(set) var criticalChance:Float = Float(0)

    public private(set) var hasHealScalar:Bool = false
    public private(set) var healScalar:Float = Float(0)

    public private(set) var hasStaminaLossScalar:Bool = false
    public private(set) var staminaLossScalar:Float = Float(0)

    public private(set) var hasTrainerLevelMin:Bool = false
    public private(set) var trainerLevelMin:Int32 = Int32(0)

    public private(set) var hasTrainerLevelMax:Bool = false
    public private(set) var trainerLevelMax:Int32 = Int32(0)

    public private(set) var hasVfxName:Bool = false
    public private(set) var vfxName:String = ""

    public private(set) var hasDurationMs:Bool = false
    public private(set) var durationMs:Int32 = Int32(0)

    public private(set) var hasDamageWindowStartMs:Bool = false
    public private(set) var damageWindowStartMs:Int32 = Int32(0)

    public private(set) var hasDamageWindowEndMs:Bool = false
    public private(set) var damageWindowEndMs:Int32 = Int32(0)

    public private(set) var hasEnergyDelta:Bool = false
    public private(set) var energyDelta:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasMovementId {
        try output.writeEnum(1, value:movementId.rawValue)
      }
      if hasAnimationId {
        try output.writeInt32(2, value:animationId)
      }
      if hasPokemonType {
        try output.writeEnum(3, value:pokemonType.rawValue)
      }
      if hasPower {
        try output.writeFloat(4, value:power)
      }
      if hasAccuracyChance {
        try output.writeFloat(5, value:accuracyChance)
      }
      if hasCriticalChance {
        try output.writeFloat(6, value:criticalChance)
      }
      if hasHealScalar {
        try output.writeFloat(7, value:healScalar)
      }
      if hasStaminaLossScalar {
        try output.writeFloat(8, value:staminaLossScalar)
      }
      if hasTrainerLevelMin {
        try output.writeInt32(9, value:trainerLevelMin)
      }
      if hasTrainerLevelMax {
        try output.writeInt32(10, value:trainerLevelMax)
      }
      if hasVfxName {
        try output.writeString(11, value:vfxName)
      }
      if hasDurationMs {
        try output.writeInt32(12, value:durationMs)
      }
      if hasDamageWindowStartMs {
        try output.writeInt32(13, value:damageWindowStartMs)
      }
      if hasDamageWindowEndMs {
        try output.writeInt32(14, value:damageWindowEndMs)
      }
      if hasEnergyDelta {
        try output.writeInt32(15, value:energyDelta)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasMovementId) {
        serialize_size += movementId.rawValue.computeEnumSize(1)
      }
      if hasAnimationId {
        serialize_size += animationId.computeInt32Size(2)
      }
      if (hasPokemonType) {
        serialize_size += pokemonType.rawValue.computeEnumSize(3)
      }
      if hasPower {
        serialize_size += power.computeFloatSize(4)
      }
      if hasAccuracyChance {
        serialize_size += accuracyChance.computeFloatSize(5)
      }
      if hasCriticalChance {
        serialize_size += criticalChance.computeFloatSize(6)
      }
      if hasHealScalar {
        serialize_size += healScalar.computeFloatSize(7)
      }
      if hasStaminaLossScalar {
        serialize_size += staminaLossScalar.computeFloatSize(8)
      }
      if hasTrainerLevelMin {
        serialize_size += trainerLevelMin.computeInt32Size(9)
      }
      if hasTrainerLevelMax {
        serialize_size += trainerLevelMax.computeInt32Size(10)
      }
      if hasVfxName {
        serialize_size += vfxName.computeStringSize(11)
      }
      if hasDurationMs {
        serialize_size += durationMs.computeInt32Size(12)
      }
      if hasDamageWindowStartMs {
        serialize_size += damageWindowStartMs.computeInt32Size(13)
      }
      if hasDamageWindowEndMs {
        serialize_size += damageWindowEndMs.computeInt32Size(14)
      }
      if hasEnergyDelta {
        serialize_size += energyDelta.computeInt32Size(15)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.MoveSettings> {
      var mergedArray = Array<Pogoprotos.Settings.Master.MoveSettings>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.MoveSettings? {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.MoveSettingsRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.MoveSettings.Builder {
      return Pogoprotos.Settings.Master.MoveSettings.classBuilder() as! Pogoprotos.Settings.Master.MoveSettings.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.MoveSettings.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.MoveSettings.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.MoveSettings.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.MoveSettings.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
      return try Pogoprotos.Settings.Master.MoveSettings.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.MoveSettings) throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasMovementId {
        jsonMap["movementId"] = movementId.toString()
      }
      if hasAnimationId {
        jsonMap["animationId"] = NSNumber(int:animationId)
      }
      if hasPokemonType {
        jsonMap["pokemonType"] = pokemonType.toString()
      }
      if hasPower {
        jsonMap["power"] = NSNumber(float:power)
      }
      if hasAccuracyChance {
        jsonMap["accuracyChance"] = NSNumber(float:accuracyChance)
      }
      if hasCriticalChance {
        jsonMap["criticalChance"] = NSNumber(float:criticalChance)
      }
      if hasHealScalar {
        jsonMap["healScalar"] = NSNumber(float:healScalar)
      }
      if hasStaminaLossScalar {
        jsonMap["staminaLossScalar"] = NSNumber(float:staminaLossScalar)
      }
      if hasTrainerLevelMin {
        jsonMap["trainerLevelMin"] = NSNumber(int:trainerLevelMin)
      }
      if hasTrainerLevelMax {
        jsonMap["trainerLevelMax"] = NSNumber(int:trainerLevelMax)
      }
      if hasVfxName {
        jsonMap["vfxName"] = vfxName
      }
      if hasDurationMs {
        jsonMap["durationMs"] = NSNumber(int:durationMs)
      }
      if hasDamageWindowStartMs {
        jsonMap["damageWindowStartMs"] = NSNumber(int:damageWindowStartMs)
      }
      if hasDamageWindowEndMs {
        jsonMap["damageWindowEndMs"] = NSNumber(int:damageWindowEndMs)
      }
      if hasEnergyDelta {
        jsonMap["energyDelta"] = NSNumber(int:energyDelta)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.MoveSettings {
      return try Pogoprotos.Settings.Master.MoveSettings.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasMovementId) {
        output += "\(indent) movementId: \(movementId.description)\n"
      }
      if hasAnimationId {
        output += "\(indent) animationId: \(animationId) \n"
      }
      if (hasPokemonType) {
        output += "\(indent) pokemonType: \(pokemonType.description)\n"
      }
      if hasPower {
        output += "\(indent) power: \(power) \n"
      }
      if hasAccuracyChance {
        output += "\(indent) accuracyChance: \(accuracyChance) \n"
      }
      if hasCriticalChance {
        output += "\(indent) criticalChance: \(criticalChance) \n"
      }
      if hasHealScalar {
        output += "\(indent) healScalar: \(healScalar) \n"
      }
      if hasStaminaLossScalar {
        output += "\(indent) staminaLossScalar: \(staminaLossScalar) \n"
      }
      if hasTrainerLevelMin {
        output += "\(indent) trainerLevelMin: \(trainerLevelMin) \n"
      }
      if hasTrainerLevelMax {
        output += "\(indent) trainerLevelMax: \(trainerLevelMax) \n"
      }
      if hasVfxName {
        output += "\(indent) vfxName: \(vfxName) \n"
      }
      if hasDurationMs {
        output += "\(indent) durationMs: \(durationMs) \n"
      }
      if hasDamageWindowStartMs {
        output += "\(indent) damageWindowStartMs: \(damageWindowStartMs) \n"
      }
      if hasDamageWindowEndMs {
        output += "\(indent) damageWindowEndMs: \(damageWindowEndMs) \n"
      }
      if hasEnergyDelta {
        output += "\(indent) energyDelta: \(energyDelta) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasMovementId {
               hashCode = (hashCode &* 31) &+ Int(movementId.rawValue)
            }
            if hasAnimationId {
               hashCode = (hashCode &* 31) &+ animationId.hashValue
            }
            if hasPokemonType {
               hashCode = (hashCode &* 31) &+ Int(pokemonType.rawValue)
            }
            if hasPower {
               hashCode = (hashCode &* 31) &+ power.hashValue
            }
            if hasAccuracyChance {
               hashCode = (hashCode &* 31) &+ accuracyChance.hashValue
            }
            if hasCriticalChance {
               hashCode = (hashCode &* 31) &+ criticalChance.hashValue
            }
            if hasHealScalar {
               hashCode = (hashCode &* 31) &+ healScalar.hashValue
            }
            if hasStaminaLossScalar {
               hashCode = (hashCode &* 31) &+ staminaLossScalar.hashValue
            }
            if hasTrainerLevelMin {
               hashCode = (hashCode &* 31) &+ trainerLevelMin.hashValue
            }
            if hasTrainerLevelMax {
               hashCode = (hashCode &* 31) &+ trainerLevelMax.hashValue
            }
            if hasVfxName {
               hashCode = (hashCode &* 31) &+ vfxName.hashValue
            }
            if hasDurationMs {
               hashCode = (hashCode &* 31) &+ durationMs.hashValue
            }
            if hasDamageWindowStartMs {
               hashCode = (hashCode &* 31) &+ damageWindowStartMs.hashValue
            }
            if hasDamageWindowEndMs {
               hashCode = (hashCode &* 31) &+ damageWindowEndMs.hashValue
            }
            if hasEnergyDelta {
               hashCode = (hashCode &* 31) &+ energyDelta.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.MoveSettings"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.MoveSettings"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.MoveSettings.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.MoveSettings = Pogoprotos.Settings.Master.MoveSettings()
      public func getMessage() -> Pogoprotos.Settings.Master.MoveSettings {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasMovementId:Bool{
            get {
                return builderResult.hasMovementId
            }
        }
        public var movementId:Pogoprotos.Enums.PokemonMovementType {
            get {
                return builderResult.movementId
            }
            set (value) {
                builderResult.hasMovementId = true
                builderResult.movementId = value
            }
        }
        public func setMovementId(value:Pogoprotos.Enums.PokemonMovementType) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
          self.movementId = value
          return self
        }
        public func clearMovementId() -> Pogoprotos.Settings.Master.MoveSettings.Builder {
           builderResult.hasMovementId = false
           builderResult.movementId = .MovementStatic
           return self
        }
      public var hasAnimationId:Bool {
           get {
                return builderResult.hasAnimationId
           }
      }
      public var animationId:Int32 {
           get {
                return builderResult.animationId
           }
           set (value) {
               builderResult.hasAnimationId = true
               builderResult.animationId = value
           }
      }
      public func setAnimationId(value:Int32) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.animationId = value
        return self
      }
      public func clearAnimationId() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasAnimationId = false
           builderResult.animationId = Int32(0)
           return self
      }
        public var hasPokemonType:Bool{
            get {
                return builderResult.hasPokemonType
            }
        }
        public var pokemonType:Pogoprotos.Enums.PokemonType {
            get {
                return builderResult.pokemonType
            }
            set (value) {
                builderResult.hasPokemonType = true
                builderResult.pokemonType = value
            }
        }
        public func setPokemonType(value:Pogoprotos.Enums.PokemonType) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
          self.pokemonType = value
          return self
        }
        public func clearPokemonType() -> Pogoprotos.Settings.Master.MoveSettings.Builder {
           builderResult.hasPokemonType = false
           builderResult.pokemonType = .PokemonTypeNone
           return self
        }
      public var hasPower:Bool {
           get {
                return builderResult.hasPower
           }
      }
      public var power:Float {
           get {
                return builderResult.power
           }
           set (value) {
               builderResult.hasPower = true
               builderResult.power = value
           }
      }
      public func setPower(value:Float) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.power = value
        return self
      }
      public func clearPower() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasPower = false
           builderResult.power = Float(0)
           return self
      }
      public var hasAccuracyChance:Bool {
           get {
                return builderResult.hasAccuracyChance
           }
      }
      public var accuracyChance:Float {
           get {
                return builderResult.accuracyChance
           }
           set (value) {
               builderResult.hasAccuracyChance = true
               builderResult.accuracyChance = value
           }
      }
      public func setAccuracyChance(value:Float) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.accuracyChance = value
        return self
      }
      public func clearAccuracyChance() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasAccuracyChance = false
           builderResult.accuracyChance = Float(0)
           return self
      }
      public var hasCriticalChance:Bool {
           get {
                return builderResult.hasCriticalChance
           }
      }
      public var criticalChance:Float {
           get {
                return builderResult.criticalChance
           }
           set (value) {
               builderResult.hasCriticalChance = true
               builderResult.criticalChance = value
           }
      }
      public func setCriticalChance(value:Float) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.criticalChance = value
        return self
      }
      public func clearCriticalChance() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasCriticalChance = false
           builderResult.criticalChance = Float(0)
           return self
      }
      public var hasHealScalar:Bool {
           get {
                return builderResult.hasHealScalar
           }
      }
      public var healScalar:Float {
           get {
                return builderResult.healScalar
           }
           set (value) {
               builderResult.hasHealScalar = true
               builderResult.healScalar = value
           }
      }
      public func setHealScalar(value:Float) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.healScalar = value
        return self
      }
      public func clearHealScalar() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasHealScalar = false
           builderResult.healScalar = Float(0)
           return self
      }
      public var hasStaminaLossScalar:Bool {
           get {
                return builderResult.hasStaminaLossScalar
           }
      }
      public var staminaLossScalar:Float {
           get {
                return builderResult.staminaLossScalar
           }
           set (value) {
               builderResult.hasStaminaLossScalar = true
               builderResult.staminaLossScalar = value
           }
      }
      public func setStaminaLossScalar(value:Float) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.staminaLossScalar = value
        return self
      }
      public func clearStaminaLossScalar() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasStaminaLossScalar = false
           builderResult.staminaLossScalar = Float(0)
           return self
      }
      public var hasTrainerLevelMin:Bool {
           get {
                return builderResult.hasTrainerLevelMin
           }
      }
      public var trainerLevelMin:Int32 {
           get {
                return builderResult.trainerLevelMin
           }
           set (value) {
               builderResult.hasTrainerLevelMin = true
               builderResult.trainerLevelMin = value
           }
      }
      public func setTrainerLevelMin(value:Int32) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.trainerLevelMin = value
        return self
      }
      public func clearTrainerLevelMin() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasTrainerLevelMin = false
           builderResult.trainerLevelMin = Int32(0)
           return self
      }
      public var hasTrainerLevelMax:Bool {
           get {
                return builderResult.hasTrainerLevelMax
           }
      }
      public var trainerLevelMax:Int32 {
           get {
                return builderResult.trainerLevelMax
           }
           set (value) {
               builderResult.hasTrainerLevelMax = true
               builderResult.trainerLevelMax = value
           }
      }
      public func setTrainerLevelMax(value:Int32) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.trainerLevelMax = value
        return self
      }
      public func clearTrainerLevelMax() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasTrainerLevelMax = false
           builderResult.trainerLevelMax = Int32(0)
           return self
      }
      public var hasVfxName:Bool {
           get {
                return builderResult.hasVfxName
           }
      }
      public var vfxName:String {
           get {
                return builderResult.vfxName
           }
           set (value) {
               builderResult.hasVfxName = true
               builderResult.vfxName = value
           }
      }
      public func setVfxName(value:String) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.vfxName = value
        return self
      }
      public func clearVfxName() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasVfxName = false
           builderResult.vfxName = ""
           return self
      }
      public var hasDurationMs:Bool {
           get {
                return builderResult.hasDurationMs
           }
      }
      public var durationMs:Int32 {
           get {
                return builderResult.durationMs
           }
           set (value) {
               builderResult.hasDurationMs = true
               builderResult.durationMs = value
           }
      }
      public func setDurationMs(value:Int32) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.durationMs = value
        return self
      }
      public func clearDurationMs() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasDurationMs = false
           builderResult.durationMs = Int32(0)
           return self
      }
      public var hasDamageWindowStartMs:Bool {
           get {
                return builderResult.hasDamageWindowStartMs
           }
      }
      public var damageWindowStartMs:Int32 {
           get {
                return builderResult.damageWindowStartMs
           }
           set (value) {
               builderResult.hasDamageWindowStartMs = true
               builderResult.damageWindowStartMs = value
           }
      }
      public func setDamageWindowStartMs(value:Int32) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.damageWindowStartMs = value
        return self
      }
      public func clearDamageWindowStartMs() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasDamageWindowStartMs = false
           builderResult.damageWindowStartMs = Int32(0)
           return self
      }
      public var hasDamageWindowEndMs:Bool {
           get {
                return builderResult.hasDamageWindowEndMs
           }
      }
      public var damageWindowEndMs:Int32 {
           get {
                return builderResult.damageWindowEndMs
           }
           set (value) {
               builderResult.hasDamageWindowEndMs = true
               builderResult.damageWindowEndMs = value
           }
      }
      public func setDamageWindowEndMs(value:Int32) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.damageWindowEndMs = value
        return self
      }
      public func clearDamageWindowEndMs() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasDamageWindowEndMs = false
           builderResult.damageWindowEndMs = Int32(0)
           return self
      }
      public var hasEnergyDelta:Bool {
           get {
                return builderResult.hasEnergyDelta
           }
      }
      public var energyDelta:Int32 {
           get {
                return builderResult.energyDelta
           }
           set (value) {
               builderResult.hasEnergyDelta = true
               builderResult.energyDelta = value
           }
      }
      public func setEnergyDelta(value:Int32) -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        self.energyDelta = value
        return self
      }
      public func clearEnergyDelta() -> Pogoprotos.Settings.Master.MoveSettings.Builder{
           builderResult.hasEnergyDelta = false
           builderResult.energyDelta = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        builderResult = Pogoprotos.Settings.Master.MoveSettings()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        return try Pogoprotos.Settings.Master.MoveSettings.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.MoveSettings {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.MoveSettings {
        let returnMe:Pogoprotos.Settings.Master.MoveSettings = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.MoveSettings) throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        if other == Pogoprotos.Settings.Master.MoveSettings() {
         return self
        }
        if other.hasMovementId {
             movementId = other.movementId
        }
        if other.hasAnimationId {
             animationId = other.animationId
        }
        if other.hasPokemonType {
             pokemonType = other.pokemonType
        }
        if other.hasPower {
             power = other.power
        }
        if other.hasAccuracyChance {
             accuracyChance = other.accuracyChance
        }
        if other.hasCriticalChance {
             criticalChance = other.criticalChance
        }
        if other.hasHealScalar {
             healScalar = other.healScalar
        }
        if other.hasStaminaLossScalar {
             staminaLossScalar = other.staminaLossScalar
        }
        if other.hasTrainerLevelMin {
             trainerLevelMin = other.trainerLevelMin
        }
        if other.hasTrainerLevelMax {
             trainerLevelMax = other.trainerLevelMax
        }
        if other.hasVfxName {
             vfxName = other.vfxName
        }
        if other.hasDurationMs {
             durationMs = other.durationMs
        }
        if other.hasDamageWindowStartMs {
             damageWindowStartMs = other.damageWindowStartMs
        }
        if other.hasDamageWindowEndMs {
             damageWindowEndMs = other.damageWindowEndMs
        }
        if other.hasEnergyDelta {
             energyDelta = other.energyDelta
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntmovementId = try input.readEnum()
            if let enumsmovementId = Pogoprotos.Enums.PokemonMovementType(rawValue:valueIntmovementId){
                 movementId = enumsmovementId
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntmovementId))
            }

          case 16:
            animationId = try input.readInt32()

          case 24:
            let valueIntpokemonType = try input.readEnum()
            if let enumspokemonType = Pogoprotos.Enums.PokemonType(rawValue:valueIntpokemonType){
                 pokemonType = enumspokemonType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(3, value:Int64(valueIntpokemonType))
            }

          case 37:
            power = try input.readFloat()

          case 45:
            accuracyChance = try input.readFloat()

          case 53:
            criticalChance = try input.readFloat()

          case 61:
            healScalar = try input.readFloat()

          case 69:
            staminaLossScalar = try input.readFloat()

          case 72:
            trainerLevelMin = try input.readInt32()

          case 80:
            trainerLevelMax = try input.readInt32()

          case 90:
            vfxName = try input.readString()

          case 96:
            durationMs = try input.readInt32()

          case 104:
            damageWindowStartMs = try input.readInt32()

          case 112:
            damageWindowEndMs = try input.readInt32()

          case 120:
            energyDelta = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.MoveSettings.Builder()
        if let jsonValueMovementId = jsonMap["movementId"] as? String {
          resultDecodedBuilder.movementId = try Pogoprotos.Enums.PokemonMovementType.fromString(jsonValueMovementId)
        }
        if let jsonValueAnimationId = jsonMap["animationId"] as? NSNumber {
          resultDecodedBuilder.animationId = jsonValueAnimationId.intValue
        }
        if let jsonValuePokemonType = jsonMap["pokemonType"] as? String {
          resultDecodedBuilder.pokemonType = try Pogoprotos.Enums.PokemonType.fromString(jsonValuePokemonType)
        }
        if let jsonValuePower = jsonMap["power"] as? NSNumber {
          resultDecodedBuilder.power = jsonValuePower.floatValue
        }
        if let jsonValueAccuracyChance = jsonMap["accuracyChance"] as? NSNumber {
          resultDecodedBuilder.accuracyChance = jsonValueAccuracyChance.floatValue
        }
        if let jsonValueCriticalChance = jsonMap["criticalChance"] as? NSNumber {
          resultDecodedBuilder.criticalChance = jsonValueCriticalChance.floatValue
        }
        if let jsonValueHealScalar = jsonMap["healScalar"] as? NSNumber {
          resultDecodedBuilder.healScalar = jsonValueHealScalar.floatValue
        }
        if let jsonValueStaminaLossScalar = jsonMap["staminaLossScalar"] as? NSNumber {
          resultDecodedBuilder.staminaLossScalar = jsonValueStaminaLossScalar.floatValue
        }
        if let jsonValueTrainerLevelMin = jsonMap["trainerLevelMin"] as? NSNumber {
          resultDecodedBuilder.trainerLevelMin = jsonValueTrainerLevelMin.intValue
        }
        if let jsonValueTrainerLevelMax = jsonMap["trainerLevelMax"] as? NSNumber {
          resultDecodedBuilder.trainerLevelMax = jsonValueTrainerLevelMax.intValue
        }
        if let jsonValueVfxName = jsonMap["vfxName"] as? String {
          resultDecodedBuilder.vfxName = jsonValueVfxName
        }
        if let jsonValueDurationMs = jsonMap["durationMs"] as? NSNumber {
          resultDecodedBuilder.durationMs = jsonValueDurationMs.intValue
        }
        if let jsonValueDamageWindowStartMs = jsonMap["damageWindowStartMs"] as? NSNumber {
          resultDecodedBuilder.damageWindowStartMs = jsonValueDamageWindowStartMs.intValue
        }
        if let jsonValueDamageWindowEndMs = jsonMap["damageWindowEndMs"] as? NSNumber {
          resultDecodedBuilder.damageWindowEndMs = jsonValueDamageWindowEndMs.intValue
        }
        if let jsonValueEnergyDelta = jsonMap["energyDelta"] as? NSNumber {
          resultDecodedBuilder.energyDelta = jsonValueEnergyDelta.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.MoveSettings.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.MoveSettings.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
