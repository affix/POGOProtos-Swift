// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "GymMembership.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Data { public struct Gym { }}}

public func == (lhs: Pogoprotos.Data.Gym.GymMembership, rhs: Pogoprotos.Data.Gym.GymMembership) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasPokemonData == rhs.hasPokemonData) && (!lhs.hasPokemonData || lhs.pokemonData == rhs.pokemonData)
  fieldCheck = fieldCheck && (lhs.hasTrainerPublicProfile == rhs.hasTrainerPublicProfile) && (!lhs.hasTrainerPublicProfile || lhs.trainerPublicProfile == rhs.trainerPublicProfile)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Data.Gym {
  public struct GymMembershipRoot {
    public static var sharedInstance : GymMembershipRoot {
     struct Static {
         static let instance : GymMembershipRoot = GymMembershipRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.PokemonDataRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Player.PlayerPublicProfileRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class GymMembership : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasPokemonData:Bool = false
    public private(set) var pokemonData:Pogoprotos.Data.PokemonData!
    public private(set) var hasTrainerPublicProfile:Bool = false
    public private(set) var trainerPublicProfile:Pogoprotos.Data.Player.PlayerPublicProfile!
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
      if hasTrainerPublicProfile {
        try output.writeMessage(2, value:trainerPublicProfile)
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
      if hasTrainerPublicProfile {
          if let varSizetrainerPublicProfile = trainerPublicProfile?.computeMessageSize(2) {
              serialize_size += varSizetrainerPublicProfile
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Data.Gym.GymMembership> {
      var mergedArray = Array<Pogoprotos.Data.Gym.GymMembership>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Gym.GymMembership? {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Data.Gym.GymMembershipRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Data.Gym.GymMembership.Builder {
      return Pogoprotos.Data.Gym.GymMembership.classBuilder() as! Pogoprotos.Data.Gym.GymMembership.Builder
    }
    public func getBuilder() -> Pogoprotos.Data.Gym.GymMembership.Builder {
      return classBuilder() as! Pogoprotos.Data.Gym.GymMembership.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Gym.GymMembership.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Gym.GymMembership.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
      return try Pogoprotos.Data.Gym.GymMembership.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Data.Gym.GymMembership) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
      return try Pogoprotos.Data.Gym.GymMembership.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasPokemonData {
        jsonMap["pokemonData"] = try pokemonData.encode()
      }
      if hasTrainerPublicProfile {
        jsonMap["trainerPublicProfile"] = try trainerPublicProfile.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Data.Gym.GymMembership {
      return try Pogoprotos.Data.Gym.GymMembership.Builder.fromJSONToBuilder(data).build()
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
      if hasTrainerPublicProfile {
        output += "\(indent) trainerPublicProfile {\n"
        if let outDescTrainerPublicProfile = trainerPublicProfile {
          output += try outDescTrainerPublicProfile.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
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
            if hasTrainerPublicProfile {
                if let hashValuetrainerPublicProfile = trainerPublicProfile?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuetrainerPublicProfile
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Data.Gym.GymMembership"
    }
    override public func className() -> String {
        return "Pogoprotos.Data.Gym.GymMembership"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Data.Gym.GymMembership.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Data.Gym.GymMembership = Pogoprotos.Data.Gym.GymMembership()
      public func getMessage() -> Pogoprotos.Data.Gym.GymMembership {
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
      public func setPokemonData(value:Pogoprotos.Data.PokemonData!) -> Pogoprotos.Data.Gym.GymMembership.Builder {
        self.pokemonData = value
        return self
      }
      public func mergePokemonData(value:Pogoprotos.Data.PokemonData) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
        if builderResult.hasPokemonData {
          builderResult.pokemonData = try Pogoprotos.Data.PokemonData.builderWithPrototype(builderResult.pokemonData).mergeFrom(value).buildPartial()
        } else {
          builderResult.pokemonData = value
        }
        builderResult.hasPokemonData = true
        return self
      }
      public func clearPokemonData() -> Pogoprotos.Data.Gym.GymMembership.Builder {
        pokemonDataBuilder_ = nil
        builderResult.hasPokemonData = false
        builderResult.pokemonData = nil
        return self
      }
      public var hasTrainerPublicProfile:Bool {
           get {
               return builderResult.hasTrainerPublicProfile
           }
      }
      public var trainerPublicProfile:Pogoprotos.Data.Player.PlayerPublicProfile! {
           get {
               if trainerPublicProfileBuilder_ != nil {
                  builderResult.trainerPublicProfile = trainerPublicProfileBuilder_.getMessage()
               }
               return builderResult.trainerPublicProfile
           }
           set (value) {
               builderResult.hasTrainerPublicProfile = true
               builderResult.trainerPublicProfile = value
           }
      }
      private var trainerPublicProfileBuilder_:Pogoprotos.Data.Player.PlayerPublicProfile.Builder! {
           didSet {
              builderResult.hasTrainerPublicProfile = true
           }
      }
      public func getTrainerPublicProfileBuilder() -> Pogoprotos.Data.Player.PlayerPublicProfile.Builder {
        if trainerPublicProfileBuilder_ == nil {
           trainerPublicProfileBuilder_ = Pogoprotos.Data.Player.PlayerPublicProfile.Builder()
           builderResult.trainerPublicProfile = trainerPublicProfileBuilder_.getMessage()
           if trainerPublicProfile != nil {
              try! trainerPublicProfileBuilder_.mergeFrom(trainerPublicProfile)
           }
        }
        return trainerPublicProfileBuilder_
      }
      public func setTrainerPublicProfile(value:Pogoprotos.Data.Player.PlayerPublicProfile!) -> Pogoprotos.Data.Gym.GymMembership.Builder {
        self.trainerPublicProfile = value
        return self
      }
      public func mergeTrainerPublicProfile(value:Pogoprotos.Data.Player.PlayerPublicProfile) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
        if builderResult.hasTrainerPublicProfile {
          builderResult.trainerPublicProfile = try Pogoprotos.Data.Player.PlayerPublicProfile.builderWithPrototype(builderResult.trainerPublicProfile).mergeFrom(value).buildPartial()
        } else {
          builderResult.trainerPublicProfile = value
        }
        builderResult.hasTrainerPublicProfile = true
        return self
      }
      public func clearTrainerPublicProfile() -> Pogoprotos.Data.Gym.GymMembership.Builder {
        trainerPublicProfileBuilder_ = nil
        builderResult.hasTrainerPublicProfile = false
        builderResult.trainerPublicProfile = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Data.Gym.GymMembership.Builder {
        builderResult = Pogoprotos.Data.Gym.GymMembership()
        return self
      }
      override public func clone() throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
        return try Pogoprotos.Data.Gym.GymMembership.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Data.Gym.GymMembership {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Data.Gym.GymMembership {
        let returnMe:Pogoprotos.Data.Gym.GymMembership = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Data.Gym.GymMembership) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
        if other == Pogoprotos.Data.Gym.GymMembership() {
         return self
        }
        if (other.hasPokemonData) {
            try mergePokemonData(other.pokemonData)
        }
        if (other.hasTrainerPublicProfile) {
            try mergeTrainerPublicProfile(other.trainerPublicProfile)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
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

          case 18:
            let subBuilder:Pogoprotos.Data.Player.PlayerPublicProfile.Builder = Pogoprotos.Data.Player.PlayerPublicProfile.Builder()
            if hasTrainerPublicProfile {
              try subBuilder.mergeFrom(trainerPublicProfile)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            trainerPublicProfile = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
        let resultDecodedBuilder = Pogoprotos.Data.Gym.GymMembership.Builder()
        if let jsonValuePokemonData = jsonMap["pokemonData"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.pokemonData = try Pogoprotos.Data.PokemonData.Builder.decodeToBuilder(jsonValuePokemonData).build()

        }
        if let jsonValueTrainerPublicProfile = jsonMap["trainerPublicProfile"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.trainerPublicProfile = try Pogoprotos.Data.Player.PlayerPublicProfile.Builder.decodeToBuilder(jsonValueTrainerPublicProfile).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Data.Gym.GymMembership.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Data.Gym.GymMembership.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
