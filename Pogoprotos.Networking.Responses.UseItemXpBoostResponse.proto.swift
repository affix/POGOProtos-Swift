// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "UseItemXpBoostResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.UseItemXpBoostResponse, rhs: Pogoprotos.Networking.Responses.UseItemXpBoostResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.hasAppliedItems == rhs.hasAppliedItems) && (!lhs.hasAppliedItems || lhs.appliedItems == rhs.appliedItems)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct UseItemXpBoostResponseRoot {
    public static var sharedInstance : UseItemXpBoostResponseRoot {
     struct Static {
         static let instance : UseItemXpBoostResponseRoot = UseItemXpBoostResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.AppliedItemsRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class UseItemXpBoostResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        case ErrorInvalidItemType = 2
        case ErrorXpBoostAlreadyActive = 3
        case ErrorNoItemsRemaining = 4
        case ErrorLocationUnset = 5
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          case .ErrorInvalidItemType: return "ERROR_INVALID_ITEM_TYPE"
          case .ErrorXpBoostAlreadyActive: return "ERROR_XP_BOOST_ALREADY_ACTIVE"
          case .ErrorNoItemsRemaining: return "ERROR_NO_ITEMS_REMAINING"
          case .ErrorLocationUnset: return "ERROR_LOCATION_UNSET"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          case "ERROR_INVALID_ITEM_TYPE":  return .ErrorInvalidItemType
          case "ERROR_XP_BOOST_ALREADY_ACTIVE":  return .ErrorXpBoostAlreadyActive
          case "ERROR_NO_ITEMS_REMAINING":  return .ErrorNoItemsRemaining
          case "ERROR_LOCATION_UNSET":  return .ErrorLocationUnset
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
                case .ErrorInvalidItemType: return ".ErrorInvalidItemType"
                case .ErrorXpBoostAlreadyActive: return ".ErrorXpBoostAlreadyActive"
                case .ErrorNoItemsRemaining: return ".ErrorNoItemsRemaining"
                case .ErrorLocationUnset: return ".ErrorLocationUnset"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Result = Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var hasAppliedItems:Bool = false
    public private(set) var appliedItems:Pogoprotos.Inventory.AppliedItems!
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
      if hasAppliedItems {
        try output.writeMessage(2, value:appliedItems)
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
      if hasAppliedItems {
          if let varSizeappliedItems = appliedItems?.computeMessageSize(2) {
              serialize_size += varSizeappliedItems
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.UseItemXpBoostResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.UseItemXpBoostResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse? {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.UseItemXpBoostResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
      return Pogoprotos.Networking.Responses.UseItemXpBoostResponse.classBuilder() as! Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.UseItemXpBoostResponse) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if hasAppliedItems {
        jsonMap["appliedItems"] = try appliedItems.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
      return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      if hasAppliedItems {
        output += "\(indent) appliedItems {\n"
        if let outDescAppliedItems = appliedItems {
          output += try outDescAppliedItems.getDescription("\(indent)  ")
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
            if hasAppliedItems {
                if let hashValueappliedItems = appliedItems?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueappliedItems
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.UseItemXpBoostResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.UseItemXpBoostResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.UseItemXpBoostResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.UseItemXpBoostResponse = Pogoprotos.Networking.Responses.UseItemXpBoostResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
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
        public var result:Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Result) -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var hasAppliedItems:Bool {
           get {
               return builderResult.hasAppliedItems
           }
      }
      public var appliedItems:Pogoprotos.Inventory.AppliedItems! {
           get {
               if appliedItemsBuilder_ != nil {
                  builderResult.appliedItems = appliedItemsBuilder_.getMessage()
               }
               return builderResult.appliedItems
           }
           set (value) {
               builderResult.hasAppliedItems = true
               builderResult.appliedItems = value
           }
      }
      private var appliedItemsBuilder_:Pogoprotos.Inventory.AppliedItems.Builder! {
           didSet {
              builderResult.hasAppliedItems = true
           }
      }
      public func getAppliedItemsBuilder() -> Pogoprotos.Inventory.AppliedItems.Builder {
        if appliedItemsBuilder_ == nil {
           appliedItemsBuilder_ = Pogoprotos.Inventory.AppliedItems.Builder()
           builderResult.appliedItems = appliedItemsBuilder_.getMessage()
           if appliedItems != nil {
              try! appliedItemsBuilder_.mergeFrom(appliedItems)
           }
        }
        return appliedItemsBuilder_
      }
      public func setAppliedItems(value:Pogoprotos.Inventory.AppliedItems!) -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        self.appliedItems = value
        return self
      }
      public func mergeAppliedItems(value:Pogoprotos.Inventory.AppliedItems) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        if builderResult.hasAppliedItems {
          builderResult.appliedItems = try Pogoprotos.Inventory.AppliedItems.builderWithPrototype(builderResult.appliedItems).mergeFrom(value).buildPartial()
        } else {
          builderResult.appliedItems = value
        }
        builderResult.hasAppliedItems = true
        return self
      }
      public func clearAppliedItems() -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        appliedItemsBuilder_ = nil
        builderResult.hasAppliedItems = false
        builderResult.appliedItems = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.UseItemXpBoostResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse {
        let returnMe:Pogoprotos.Networking.Responses.UseItemXpBoostResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.UseItemXpBoostResponse) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        if other == Pogoprotos.Networking.Responses.UseItemXpBoostResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if (other.hasAppliedItems) {
            try mergeAppliedItems(other.appliedItems)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 18:
            let subBuilder:Pogoprotos.Inventory.AppliedItems.Builder = Pogoprotos.Inventory.AppliedItems.Builder()
            if hasAppliedItems {
              try subBuilder.mergeFrom(appliedItems)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            appliedItems = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValueAppliedItems = jsonMap["appliedItems"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.appliedItems = try Pogoprotos.Inventory.AppliedItems.Builder.decodeToBuilder(jsonValueAppliedItems).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.UseItemXpBoostResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
