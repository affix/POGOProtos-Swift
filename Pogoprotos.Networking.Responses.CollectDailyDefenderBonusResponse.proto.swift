// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "CollectDailyDefenderBonusResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse, rhs: Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.currencyType == rhs.currencyType)
  fieldCheck = fieldCheck && (lhs.currencyAwarded == rhs.currencyAwarded)
  fieldCheck = fieldCheck && (lhs.hasDefendersCount == rhs.hasDefendersCount) && (!lhs.hasDefendersCount || lhs.defendersCount == rhs.defendersCount)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct CollectDailyDefenderBonusResponseRoot {
    public static var sharedInstance : CollectDailyDefenderBonusResponseRoot {
     struct Static {
         static let instance : CollectDailyDefenderBonusResponseRoot = CollectDailyDefenderBonusResponseRoot()
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

  final public class CollectDailyDefenderBonusResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        case Failure = 2
        case TooSoon = 3
        case NoDefenders = 4
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          case .Failure: return "FAILURE"
          case .TooSoon: return "TOO_SOON"
          case .NoDefenders: return "NO_DEFENDERS"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          case "FAILURE":  return .Failure
          case "TOO_SOON":  return .TooSoon
          case "NO_DEFENDERS":  return .NoDefenders
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
                case .Failure: return ".Failure"
                case .TooSoon: return ".TooSoon"
                case .NoDefenders: return ".NoDefenders"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Result = Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var currencyType:Array<String> = Array<String>()
    public private(set) var currencyAwarded:Array<Int32> = Array<Int32>()
    private var currencyAwardedMemoizedSerializedSize:Int32 = -1
    public private(set) var hasDefendersCount:Bool = false
    public private(set) var defendersCount:Int32 = Int32(0)

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
      if !currencyType.isEmpty {
        for oneValuecurrencyType in currencyType {
          try output.writeString(2, value:oneValuecurrencyType)
        }
      }
      if !currencyAwarded.isEmpty {
        try output.writeRawVarint32(26)
        try output.writeRawVarint32(currencyAwardedMemoizedSerializedSize)
        for oneValuecurrencyAwarded in currencyAwarded {
          try output.writeInt32NoTag(oneValuecurrencyAwarded)
        }
      }
      if hasDefendersCount {
        try output.writeInt32(4, value:defendersCount)
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
      var dataSizeCurrencyType:Int32 = 0
      for oneValuecurrencyType in currencyType {
          dataSizeCurrencyType += oneValuecurrencyType.computeStringSizeNoTag()
      }
      serialize_size += dataSizeCurrencyType
      serialize_size += 1 * Int32(currencyType.count)
      var dataSizeCurrencyAwarded:Int32 = 0
      for oneValuecurrencyAwarded in currencyAwarded {
          dataSizeCurrencyAwarded += oneValuecurrencyAwarded.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeCurrencyAwarded
      if !currencyAwarded.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeCurrencyAwarded.computeInt32SizeNoTag()
      }
      currencyAwardedMemoizedSerializedSize = dataSizeCurrencyAwarded
      if hasDefendersCount {
        serialize_size += defendersCount.computeInt32Size(4)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse? {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
      return Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.classBuilder() as! Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if !currencyType.isEmpty {
        jsonMap["currencyType"] = currencyType
      }
      if !currencyAwarded.isEmpty {
        var jsonArrayCurrencyAwarded:Array<NSNumber> = []
          for oneValueCurrencyAwarded in currencyAwarded {
            jsonArrayCurrencyAwarded += [NSNumber(int:oneValueCurrencyAwarded)]
          }
        jsonMap["currencyAwarded"] = jsonArrayCurrencyAwarded
      }
      if hasDefendersCount {
        jsonMap["defendersCount"] = NSNumber(int:defendersCount)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
      return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      var currencyTypeElementIndex:Int = 0
      for oneValueCurrencyType in currencyType  {
          output += "\(indent) currencyType[\(currencyTypeElementIndex)]: \(oneValueCurrencyType)\n"
          currencyTypeElementIndex += 1
      }
      var currencyAwardedElementIndex:Int = 0
      for oneValueCurrencyAwarded in currencyAwarded  {
          output += "\(indent) currencyAwarded[\(currencyAwardedElementIndex)]: \(oneValueCurrencyAwarded)\n"
          currencyAwardedElementIndex += 1
      }
      if hasDefendersCount {
        output += "\(indent) defendersCount: \(defendersCount) \n"
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
            for oneValueCurrencyType in currencyType {
                hashCode = (hashCode &* 31) &+ oneValueCurrencyType.hashValue
            }
            for oneValueCurrencyAwarded in currencyAwarded {
                hashCode = (hashCode &* 31) &+ oneValueCurrencyAwarded.hashValue
            }
            if hasDefendersCount {
               hashCode = (hashCode &* 31) &+ defendersCount.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse = Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
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
        public var result:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Result) -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var currencyType:Array<String> {
           get {
               return builderResult.currencyType
           }
           set (array) {
               builderResult.currencyType = array
           }
      }
      public func setCurrencyType(value:Array<String>) -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        self.currencyType = value
        return self
      }
      public func clearCurrencyType() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
         builderResult.currencyType.removeAll(keepCapacity: false)
         return self
      }
      public var currencyAwarded:Array<Int32> {
           get {
               return builderResult.currencyAwarded
           }
           set (array) {
               builderResult.currencyAwarded = array
           }
      }
      public func setCurrencyAwarded(value:Array<Int32>) -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        self.currencyAwarded = value
        return self
      }
      public func clearCurrencyAwarded() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
         builderResult.currencyAwarded.removeAll(keepCapacity: false)
         return self
      }
      public var hasDefendersCount:Bool {
           get {
                return builderResult.hasDefendersCount
           }
      }
      public var defendersCount:Int32 {
           get {
                return builderResult.defendersCount
           }
           set (value) {
               builderResult.hasDefendersCount = true
               builderResult.defendersCount = value
           }
      }
      public func setDefendersCount(value:Int32) -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        self.defendersCount = value
        return self
      }
      public func clearDefendersCount() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder{
           builderResult.hasDefendersCount = false
           builderResult.defendersCount = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse {
        let returnMe:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        if other == Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if !other.currencyType.isEmpty {
            builderResult.currencyType += other.currencyType
        }
        if !other.currencyAwarded.isEmpty {
            builderResult.currencyAwarded += other.currencyAwarded
        }
        if other.hasDefendersCount {
             defendersCount = other.defendersCount
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 18:
            currencyType += [try input.readString()]

          case 26:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.currencyAwarded += [try input.readInt32()]
            }
            input.popLimit(limit)

          case 32:
            defendersCount = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValueCurrencyType = jsonMap["currencyType"] as? Array<String> {
          resultDecodedBuilder.currencyType = jsonValueCurrencyType
        }
        if let jsonValueCurrencyAwarded = jsonMap["currencyAwarded"] as? Array<NSNumber> {
          var jsonArrayCurrencyAwarded:Array<Int32> = []
          for oneValueCurrencyAwarded in jsonValueCurrencyAwarded {
            jsonArrayCurrencyAwarded += [oneValueCurrencyAwarded.intValue]
          }
          resultDecodedBuilder.currencyAwarded = jsonArrayCurrencyAwarded
        }
        if let jsonValueDefendersCount = jsonMap["defendersCount"] as? NSNumber {
          resultDecodedBuilder.defendersCount = jsonValueDefendersCount.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.CollectDailyDefenderBonusResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
