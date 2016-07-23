// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "UpgradePokemonResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.UpgradePokemonResponse, rhs: Pogoprotos.Networking.Responses.UpgradePokemonResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.hasUpgradedPokemon == rhs.hasUpgradedPokemon) && (!lhs.hasUpgradedPokemon || lhs.upgradedPokemon == rhs.upgradedPokemon)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct UpgradePokemonResponseRoot {
    public static var sharedInstance : UpgradePokemonResponseRoot {
     struct Static {
         static let instance : UpgradePokemonResponseRoot = UpgradePokemonResponseRoot()
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

  final public class UpgradePokemonResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        case ErrorPokemonNotFound = 2
        case ErrorInsufficientResources = 3
        case ErrorUpgradeNotAvailable = 4
        case ErrorPokemonIsDeployed = 5
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          case .ErrorPokemonNotFound: return "ERROR_POKEMON_NOT_FOUND"
          case .ErrorInsufficientResources: return "ERROR_INSUFFICIENT_RESOURCES"
          case .ErrorUpgradeNotAvailable: return "ERROR_UPGRADE_NOT_AVAILABLE"
          case .ErrorPokemonIsDeployed: return "ERROR_POKEMON_IS_DEPLOYED"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          case "ERROR_POKEMON_NOT_FOUND":  return .ErrorPokemonNotFound
          case "ERROR_INSUFFICIENT_RESOURCES":  return .ErrorInsufficientResources
          case "ERROR_UPGRADE_NOT_AVAILABLE":  return .ErrorUpgradeNotAvailable
          case "ERROR_POKEMON_IS_DEPLOYED":  return .ErrorPokemonIsDeployed
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
                case .ErrorPokemonNotFound: return ".ErrorPokemonNotFound"
                case .ErrorInsufficientResources: return ".ErrorInsufficientResources"
                case .ErrorUpgradeNotAvailable: return ".ErrorUpgradeNotAvailable"
                case .ErrorPokemonIsDeployed: return ".ErrorPokemonIsDeployed"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.UpgradePokemonResponse.Result = Pogoprotos.Networking.Responses.UpgradePokemonResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var hasUpgradedPokemon:Bool = false
    public private(set) var upgradedPokemon:Pogoprotos.Data.PokemonData!
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasResult {
        try output.writeEnum(1, value:result.rawValue)
      }
      if hasUpgradedPokemon {
        try output.writeMessage(2, value:upgradedPokemon)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasResult) {
        serialize_size += result.rawValue.computeEnumSize(1)
      }
      if hasUpgradedPokemon {
          if let varSizeupgradedPokemon = upgradedPokemon?.computeMessageSize(2) {
              serialize_size += varSizeupgradedPokemon
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.UpgradePokemonResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.UpgradePokemonResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse? {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.UpgradePokemonResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
      return Pogoprotos.Networking.Responses.UpgradePokemonResponse.classBuilder() as! Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.UpgradePokemonResponse) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if hasUpgradedPokemon {
        jsonMap["upgradedPokemon"] = try upgradedPokemon.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
      return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      if hasUpgradedPokemon {
        output += "\(indent) upgradedPokemon {\n"
        if let outDescUpgradedPokemon = upgradedPokemon {
          output += try outDescUpgradedPokemon.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasResult {
               hashCode = (hashCode &* 31) &+ Int(result.rawValue)
            }
            if hasUpgradedPokemon {
                if let hashValueupgradedPokemon = upgradedPokemon?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueupgradedPokemon
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.UpgradePokemonResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.UpgradePokemonResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.UpgradePokemonResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.UpgradePokemonResponse = Pogoprotos.Networking.Responses.UpgradePokemonResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasResult:Bool{
            get {
                return builderResult.hasResult
            }
        }
        public var result:Pogoprotos.Networking.Responses.UpgradePokemonResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.UpgradePokemonResponse.Result) -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var hasUpgradedPokemon:Bool {
           get {
               return builderResult.hasUpgradedPokemon
           }
      }
      public var upgradedPokemon:Pogoprotos.Data.PokemonData! {
           get {
               if upgradedPokemonBuilder_ != nil {
                  builderResult.upgradedPokemon = upgradedPokemonBuilder_.getMessage()
               }
               return builderResult.upgradedPokemon
           }
           set (value) {
               builderResult.hasUpgradedPokemon = true
               builderResult.upgradedPokemon = value
           }
      }
      private var upgradedPokemonBuilder_:Pogoprotos.Data.PokemonData.Builder! {
           didSet {
              builderResult.hasUpgradedPokemon = true
           }
      }
      public func getUpgradedPokemonBuilder() -> Pogoprotos.Data.PokemonData.Builder {
        if upgradedPokemonBuilder_ == nil {
           upgradedPokemonBuilder_ = Pogoprotos.Data.PokemonData.Builder()
           builderResult.upgradedPokemon = upgradedPokemonBuilder_.getMessage()
           if upgradedPokemon != nil {
              try! upgradedPokemonBuilder_.mergeFrom(upgradedPokemon)
           }
        }
        return upgradedPokemonBuilder_
      }
      public func setUpgradedPokemon(value:Pogoprotos.Data.PokemonData!) -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        self.upgradedPokemon = value
        return self
      }
      public func mergeUpgradedPokemon(value:Pogoprotos.Data.PokemonData) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        if builderResult.hasUpgradedPokemon {
          builderResult.upgradedPokemon = try Pogoprotos.Data.PokemonData.builderWithPrototype(builderResult.upgradedPokemon).mergeFrom(value).buildPartial()
        } else {
          builderResult.upgradedPokemon = value
        }
        builderResult.hasUpgradedPokemon = true
        return self
      }
      public func clearUpgradedPokemon() -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        upgradedPokemonBuilder_ = nil
        builderResult.hasUpgradedPokemon = false
        builderResult.upgradedPokemon = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.UpgradePokemonResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.UpgradePokemonResponse {
        let returnMe:Pogoprotos.Networking.Responses.UpgradePokemonResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.UpgradePokemonResponse) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        if other == Pogoprotos.Networking.Responses.UpgradePokemonResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if (other.hasUpgradedPokemon) {
            try mergeUpgradedPokemon(other.upgradedPokemon)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.UpgradePokemonResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 18:
            let subBuilder:Pogoprotos.Data.PokemonData.Builder = Pogoprotos.Data.PokemonData.Builder()
            if hasUpgradedPokemon {
              try subBuilder.mergeFrom(upgradedPokemon)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            upgradedPokemon = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValueUpgradedPokemon = jsonMap["upgradedPokemon"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.upgradedPokemon = try Pogoprotos.Data.PokemonData.Builder.decodeToBuilder(jsonValueUpgradedPokemon).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.UpgradePokemonResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
