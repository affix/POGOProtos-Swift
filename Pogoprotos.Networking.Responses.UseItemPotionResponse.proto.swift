// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "UseItemPotionResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.UseItemPotionResponse, rhs: Pogoprotos.Networking.Responses.UseItemPotionResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.hasStamina == rhs.hasStamina) && (!lhs.hasStamina || lhs.stamina == rhs.stamina)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct UseItemPotionResponseRoot {
    public static var sharedInstance : UseItemPotionResponseRoot {
     struct Static {
         static let instance : UseItemPotionResponseRoot = UseItemPotionResponseRoot()
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

  final public class UseItemPotionResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        case ErrorNoPokemon = 2
        case ErrorCannotUse = 3
        case ErrorDeployedToFort = 4
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          case .ErrorNoPokemon: return "ERROR_NO_POKEMON"
          case .ErrorCannotUse: return "ERROR_CANNOT_USE"
          case .ErrorDeployedToFort: return "ERROR_DEPLOYED_TO_FORT"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          case "ERROR_NO_POKEMON":  return .ErrorNoPokemon
          case "ERROR_CANNOT_USE":  return .ErrorCannotUse
          case "ERROR_DEPLOYED_TO_FORT":  return .ErrorDeployedToFort
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
                case .ErrorNoPokemon: return ".ErrorNoPokemon"
                case .ErrorCannotUse: return ".ErrorCannotUse"
                case .ErrorDeployedToFort: return ".ErrorDeployedToFort"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.UseItemPotionResponse.Result = Pogoprotos.Networking.Responses.UseItemPotionResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var hasStamina:Bool = false
    public private(set) var stamina:Int32 = Int32(0)

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
      if hasStamina {
        try output.writeInt32(2, value:stamina)
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
      if hasStamina {
        serialize_size += stamina.computeInt32Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.UseItemPotionResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.UseItemPotionResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse? {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.UseItemPotionResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
      return Pogoprotos.Networking.Responses.UseItemPotionResponse.classBuilder() as! Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.UseItemPotionResponse) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if hasStamina {
        jsonMap["stamina"] = NSNumber(int:stamina)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
      return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      if hasStamina {
        output += "\(indent) stamina: \(stamina) \n"
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
            if hasStamina {
               hashCode = (hashCode &* 31) &+ stamina.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.UseItemPotionResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.UseItemPotionResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.UseItemPotionResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.UseItemPotionResponse = Pogoprotos.Networking.Responses.UseItemPotionResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
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
        public var result:Pogoprotos.Networking.Responses.UseItemPotionResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.UseItemPotionResponse.Result) -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var hasStamina:Bool {
           get {
                return builderResult.hasStamina
           }
      }
      public var stamina:Int32 {
           get {
                return builderResult.stamina
           }
           set (value) {
               builderResult.hasStamina = true
               builderResult.stamina = value
           }
      }
      public func setStamina(value:Int32) -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
        self.stamina = value
        return self
      }
      public func clearStamina() -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder{
           builderResult.hasStamina = false
           builderResult.stamina = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.UseItemPotionResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
        return try Pogoprotos.Networking.Responses.UseItemPotionResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.UseItemPotionResponse {
        let returnMe:Pogoprotos.Networking.Responses.UseItemPotionResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.UseItemPotionResponse) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
        if other == Pogoprotos.Networking.Responses.UseItemPotionResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if other.hasStamina {
             stamina = other.stamina
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.UseItemPotionResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 16:
            stamina = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.UseItemPotionResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValueStamina = jsonMap["stamina"] as? NSNumber {
          resultDecodedBuilder.stamina = jsonValueStamina.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.UseItemPotionResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)