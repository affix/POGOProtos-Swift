// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "PlayerAvatar.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Data { public struct Player { }}}

public func == (lhs: Pogoprotos.Data.Player.PlayerAvatar, rhs: Pogoprotos.Data.Player.PlayerAvatar) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasSkin == rhs.hasSkin) && (!lhs.hasSkin || lhs.skin == rhs.skin)
  fieldCheck = fieldCheck && (lhs.hasHair == rhs.hasHair) && (!lhs.hasHair || lhs.hair == rhs.hair)
  fieldCheck = fieldCheck && (lhs.hasShirt == rhs.hasShirt) && (!lhs.hasShirt || lhs.shirt == rhs.shirt)
  fieldCheck = fieldCheck && (lhs.hasPants == rhs.hasPants) && (!lhs.hasPants || lhs.pants == rhs.pants)
  fieldCheck = fieldCheck && (lhs.hasHat == rhs.hasHat) && (!lhs.hasHat || lhs.hat == rhs.hat)
  fieldCheck = fieldCheck && (lhs.hasShoes == rhs.hasShoes) && (!lhs.hasShoes || lhs.shoes == rhs.shoes)
  fieldCheck = fieldCheck && (lhs.hasGender == rhs.hasGender) && (!lhs.hasGender || lhs.gender == rhs.gender)
  fieldCheck = fieldCheck && (lhs.hasEyes == rhs.hasEyes) && (!lhs.hasEyes || lhs.eyes == rhs.eyes)
  fieldCheck = fieldCheck && (lhs.hasBackpack == rhs.hasBackpack) && (!lhs.hasBackpack || lhs.backpack == rhs.backpack)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Data.Player {
  public struct PlayerAvatarRoot {
    public static var sharedInstance : PlayerAvatarRoot {
     struct Static {
         static let instance : PlayerAvatarRoot = PlayerAvatarRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.GenderRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class PlayerAvatar : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasSkin:Bool = false
    public private(set) var skin:Int32 = Int32(0)

    public private(set) var hasHair:Bool = false
    public private(set) var hair:Int32 = Int32(0)

    public private(set) var hasShirt:Bool = false
    public private(set) var shirt:Int32 = Int32(0)

    public private(set) var hasPants:Bool = false
    public private(set) var pants:Int32 = Int32(0)

    public private(set) var hasHat:Bool = false
    public private(set) var hat:Int32 = Int32(0)

    public private(set) var hasShoes:Bool = false
    public private(set) var shoes:Int32 = Int32(0)

    public private(set) var gender:Pogoprotos.Enums.Gender = Pogoprotos.Enums.Gender.Male
    public private(set) var hasGender:Bool = false
    public private(set) var hasEyes:Bool = false
    public private(set) var eyes:Int32 = Int32(0)

    public private(set) var hasBackpack:Bool = false
    public private(set) var backpack:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasSkin {
        try output.writeInt32(2, value:skin)
      }
      if hasHair {
        try output.writeInt32(3, value:hair)
      }
      if hasShirt {
        try output.writeInt32(4, value:shirt)
      }
      if hasPants {
        try output.writeInt32(5, value:pants)
      }
      if hasHat {
        try output.writeInt32(6, value:hat)
      }
      if hasShoes {
        try output.writeInt32(7, value:shoes)
      }
      if hasGender {
        try output.writeEnum(8, value:gender.rawValue)
      }
      if hasEyes {
        try output.writeInt32(9, value:eyes)
      }
      if hasBackpack {
        try output.writeInt32(10, value:backpack)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasSkin {
        serialize_size += skin.computeInt32Size(2)
      }
      if hasHair {
        serialize_size += hair.computeInt32Size(3)
      }
      if hasShirt {
        serialize_size += shirt.computeInt32Size(4)
      }
      if hasPants {
        serialize_size += pants.computeInt32Size(5)
      }
      if hasHat {
        serialize_size += hat.computeInt32Size(6)
      }
      if hasShoes {
        serialize_size += shoes.computeInt32Size(7)
      }
      if (hasGender) {
        serialize_size += gender.rawValue.computeEnumSize(8)
      }
      if hasEyes {
        serialize_size += eyes.computeInt32Size(9)
      }
      if hasBackpack {
        serialize_size += backpack.computeInt32Size(10)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Data.Player.PlayerAvatar> {
      var mergedArray = Array<Pogoprotos.Data.Player.PlayerAvatar>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Player.PlayerAvatar? {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Data.Player.PlayerAvatarRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
      return Pogoprotos.Data.Player.PlayerAvatar.classBuilder() as! Pogoprotos.Data.Player.PlayerAvatar.Builder
    }
    public func getBuilder() -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
      return classBuilder() as! Pogoprotos.Data.Player.PlayerAvatar.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Player.PlayerAvatar.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Player.PlayerAvatar.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
      return try Pogoprotos.Data.Player.PlayerAvatar.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Data.Player.PlayerAvatar) throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasSkin {
        jsonMap["skin"] = NSNumber(int:skin)
      }
      if hasHair {
        jsonMap["hair"] = NSNumber(int:hair)
      }
      if hasShirt {
        jsonMap["shirt"] = NSNumber(int:shirt)
      }
      if hasPants {
        jsonMap["pants"] = NSNumber(int:pants)
      }
      if hasHat {
        jsonMap["hat"] = NSNumber(int:hat)
      }
      if hasShoes {
        jsonMap["shoes"] = NSNumber(int:shoes)
      }
      if hasGender {
        jsonMap["gender"] = gender.toString()
      }
      if hasEyes {
        jsonMap["eyes"] = NSNumber(int:eyes)
      }
      if hasBackpack {
        jsonMap["backpack"] = NSNumber(int:backpack)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Data.Player.PlayerAvatar {
      return try Pogoprotos.Data.Player.PlayerAvatar.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasSkin {
        output += "\(indent) skin: \(skin) \n"
      }
      if hasHair {
        output += "\(indent) hair: \(hair) \n"
      }
      if hasShirt {
        output += "\(indent) shirt: \(shirt) \n"
      }
      if hasPants {
        output += "\(indent) pants: \(pants) \n"
      }
      if hasHat {
        output += "\(indent) hat: \(hat) \n"
      }
      if hasShoes {
        output += "\(indent) shoes: \(shoes) \n"
      }
      if (hasGender) {
        output += "\(indent) gender: \(gender.description)\n"
      }
      if hasEyes {
        output += "\(indent) eyes: \(eyes) \n"
      }
      if hasBackpack {
        output += "\(indent) backpack: \(backpack) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasSkin {
               hashCode = (hashCode &* 31) &+ skin.hashValue
            }
            if hasHair {
               hashCode = (hashCode &* 31) &+ hair.hashValue
            }
            if hasShirt {
               hashCode = (hashCode &* 31) &+ shirt.hashValue
            }
            if hasPants {
               hashCode = (hashCode &* 31) &+ pants.hashValue
            }
            if hasHat {
               hashCode = (hashCode &* 31) &+ hat.hashValue
            }
            if hasShoes {
               hashCode = (hashCode &* 31) &+ shoes.hashValue
            }
            if hasGender {
               hashCode = (hashCode &* 31) &+ Int(gender.rawValue)
            }
            if hasEyes {
               hashCode = (hashCode &* 31) &+ eyes.hashValue
            }
            if hasBackpack {
               hashCode = (hashCode &* 31) &+ backpack.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Data.Player.PlayerAvatar"
    }
    override public func className() -> String {
        return "Pogoprotos.Data.Player.PlayerAvatar"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Data.Player.PlayerAvatar.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Data.Player.PlayerAvatar = Pogoprotos.Data.Player.PlayerAvatar()
      public func getMessage() -> Pogoprotos.Data.Player.PlayerAvatar {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasSkin:Bool {
           get {
                return builderResult.hasSkin
           }
      }
      public var skin:Int32 {
           get {
                return builderResult.skin
           }
           set (value) {
               builderResult.hasSkin = true
               builderResult.skin = value
           }
      }
      public func setSkin(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.skin = value
        return self
      }
      public func clearSkin() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasSkin = false
           builderResult.skin = Int32(0)
           return self
      }
      public var hasHair:Bool {
           get {
                return builderResult.hasHair
           }
      }
      public var hair:Int32 {
           get {
                return builderResult.hair
           }
           set (value) {
               builderResult.hasHair = true
               builderResult.hair = value
           }
      }
      public func setHair(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.hair = value
        return self
      }
      public func clearHair() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasHair = false
           builderResult.hair = Int32(0)
           return self
      }
      public var hasShirt:Bool {
           get {
                return builderResult.hasShirt
           }
      }
      public var shirt:Int32 {
           get {
                return builderResult.shirt
           }
           set (value) {
               builderResult.hasShirt = true
               builderResult.shirt = value
           }
      }
      public func setShirt(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.shirt = value
        return self
      }
      public func clearShirt() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasShirt = false
           builderResult.shirt = Int32(0)
           return self
      }
      public var hasPants:Bool {
           get {
                return builderResult.hasPants
           }
      }
      public var pants:Int32 {
           get {
                return builderResult.pants
           }
           set (value) {
               builderResult.hasPants = true
               builderResult.pants = value
           }
      }
      public func setPants(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.pants = value
        return self
      }
      public func clearPants() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasPants = false
           builderResult.pants = Int32(0)
           return self
      }
      public var hasHat:Bool {
           get {
                return builderResult.hasHat
           }
      }
      public var hat:Int32 {
           get {
                return builderResult.hat
           }
           set (value) {
               builderResult.hasHat = true
               builderResult.hat = value
           }
      }
      public func setHat(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.hat = value
        return self
      }
      public func clearHat() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasHat = false
           builderResult.hat = Int32(0)
           return self
      }
      public var hasShoes:Bool {
           get {
                return builderResult.hasShoes
           }
      }
      public var shoes:Int32 {
           get {
                return builderResult.shoes
           }
           set (value) {
               builderResult.hasShoes = true
               builderResult.shoes = value
           }
      }
      public func setShoes(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.shoes = value
        return self
      }
      public func clearShoes() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasShoes = false
           builderResult.shoes = Int32(0)
           return self
      }
        public var hasGender:Bool{
            get {
                return builderResult.hasGender
            }
        }
        public var gender:Pogoprotos.Enums.Gender {
            get {
                return builderResult.gender
            }
            set (value) {
                builderResult.hasGender = true
                builderResult.gender = value
            }
        }
        public func setGender(value:Pogoprotos.Enums.Gender) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
          self.gender = value
          return self
        }
        public func clearGender() -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
           builderResult.hasGender = false
           builderResult.gender = .Male
           return self
        }
      public var hasEyes:Bool {
           get {
                return builderResult.hasEyes
           }
      }
      public var eyes:Int32 {
           get {
                return builderResult.eyes
           }
           set (value) {
               builderResult.hasEyes = true
               builderResult.eyes = value
           }
      }
      public func setEyes(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.eyes = value
        return self
      }
      public func clearEyes() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasEyes = false
           builderResult.eyes = Int32(0)
           return self
      }
      public var hasBackpack:Bool {
           get {
                return builderResult.hasBackpack
           }
      }
      public var backpack:Int32 {
           get {
                return builderResult.backpack
           }
           set (value) {
               builderResult.hasBackpack = true
               builderResult.backpack = value
           }
      }
      public func setBackpack(value:Int32) -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        self.backpack = value
        return self
      }
      public func clearBackpack() -> Pogoprotos.Data.Player.PlayerAvatar.Builder{
           builderResult.hasBackpack = false
           builderResult.backpack = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        builderResult = Pogoprotos.Data.Player.PlayerAvatar()
        return self
      }
      override public func clone() throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        return try Pogoprotos.Data.Player.PlayerAvatar.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Data.Player.PlayerAvatar {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Data.Player.PlayerAvatar {
        let returnMe:Pogoprotos.Data.Player.PlayerAvatar = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Data.Player.PlayerAvatar) throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        if other == Pogoprotos.Data.Player.PlayerAvatar() {
         return self
        }
        if other.hasSkin {
             skin = other.skin
        }
        if other.hasHair {
             hair = other.hair
        }
        if other.hasShirt {
             shirt = other.shirt
        }
        if other.hasPants {
             pants = other.pants
        }
        if other.hasHat {
             hat = other.hat
        }
        if other.hasShoes {
             shoes = other.shoes
        }
        if other.hasGender {
             gender = other.gender
        }
        if other.hasEyes {
             eyes = other.eyes
        }
        if other.hasBackpack {
             backpack = other.backpack
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 16:
            skin = try input.readInt32()

          case 24:
            hair = try input.readInt32()

          case 32:
            shirt = try input.readInt32()

          case 40:
            pants = try input.readInt32()

          case 48:
            hat = try input.readInt32()

          case 56:
            shoes = try input.readInt32()

          case 64:
            let valueIntgender = try input.readEnum()
            if let enumsgender = Pogoprotos.Enums.Gender(rawValue:valueIntgender){
                 gender = enumsgender
            } else {
                 try unknownFieldsBuilder.mergeVarintField(8, value:Int64(valueIntgender))
            }

          case 72:
            eyes = try input.readInt32()

          case 80:
            backpack = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        let resultDecodedBuilder = Pogoprotos.Data.Player.PlayerAvatar.Builder()
        if let jsonValueSkin = jsonMap["skin"] as? NSNumber {
          resultDecodedBuilder.skin = jsonValueSkin.intValue
        }
        if let jsonValueHair = jsonMap["hair"] as? NSNumber {
          resultDecodedBuilder.hair = jsonValueHair.intValue
        }
        if let jsonValueShirt = jsonMap["shirt"] as? NSNumber {
          resultDecodedBuilder.shirt = jsonValueShirt.intValue
        }
        if let jsonValuePants = jsonMap["pants"] as? NSNumber {
          resultDecodedBuilder.pants = jsonValuePants.intValue
        }
        if let jsonValueHat = jsonMap["hat"] as? NSNumber {
          resultDecodedBuilder.hat = jsonValueHat.intValue
        }
        if let jsonValueShoes = jsonMap["shoes"] as? NSNumber {
          resultDecodedBuilder.shoes = jsonValueShoes.intValue
        }
        if let jsonValueGender = jsonMap["gender"] as? String {
          resultDecodedBuilder.gender = try Pogoprotos.Enums.Gender.fromString(jsonValueGender)
        }
        if let jsonValueEyes = jsonMap["eyes"] as? NSNumber {
          resultDecodedBuilder.eyes = jsonValueEyes.intValue
        }
        if let jsonValueBackpack = jsonMap["backpack"] as? NSNumber {
          resultDecodedBuilder.backpack = jsonValueBackpack.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Data.Player.PlayerAvatar.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Data.Player.PlayerAvatar.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)