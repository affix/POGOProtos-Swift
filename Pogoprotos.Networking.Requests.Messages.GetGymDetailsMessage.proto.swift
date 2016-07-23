// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "GetGymDetailsMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage, rhs: Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasGymId == rhs.hasGymId) && (!lhs.hasGymId || lhs.gymId == rhs.gymId)
  fieldCheck = fieldCheck && (lhs.hasPlayerLatitude == rhs.hasPlayerLatitude) && (!lhs.hasPlayerLatitude || lhs.playerLatitude == rhs.playerLatitude)
  fieldCheck = fieldCheck && (lhs.hasPlayerLongitude == rhs.hasPlayerLongitude) && (!lhs.hasPlayerLongitude || lhs.playerLongitude == rhs.playerLongitude)
  fieldCheck = fieldCheck && (lhs.hasGymLatitude == rhs.hasGymLatitude) && (!lhs.hasGymLatitude || lhs.gymLatitude == rhs.gymLatitude)
  fieldCheck = fieldCheck && (lhs.hasGymLongitude == rhs.hasGymLongitude) && (!lhs.hasGymLongitude || lhs.gymLongitude == rhs.gymLongitude)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct GetGymDetailsMessageRoot {
    public static var sharedInstance : GetGymDetailsMessageRoot {
     struct Static {
         static let instance : GetGymDetailsMessageRoot = GetGymDetailsMessageRoot()
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

  final public class GetGymDetailsMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasGymId:Bool = false
    public private(set) var gymId:String = ""

    public private(set) var hasPlayerLatitude:Bool = false
    public private(set) var playerLatitude:Double = Double(0)

    public private(set) var hasPlayerLongitude:Bool = false
    public private(set) var playerLongitude:Double = Double(0)

    public private(set) var hasGymLatitude:Bool = false
    public private(set) var gymLatitude:Double = Double(0)

    public private(set) var hasGymLongitude:Bool = false
    public private(set) var gymLongitude:Double = Double(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasGymId {
        try output.writeString(1, value:gymId)
      }
      if hasPlayerLatitude {
        try output.writeDouble(2, value:playerLatitude)
      }
      if hasPlayerLongitude {
        try output.writeDouble(3, value:playerLongitude)
      }
      if hasGymLatitude {
        try output.writeDouble(4, value:gymLatitude)
      }
      if hasGymLongitude {
        try output.writeDouble(5, value:gymLongitude)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasGymId {
        serialize_size += gymId.computeStringSize(1)
      }
      if hasPlayerLatitude {
        serialize_size += playerLatitude.computeDoubleSize(2)
      }
      if hasPlayerLongitude {
        serialize_size += playerLongitude.computeDoubleSize(3)
      }
      if hasGymLatitude {
        serialize_size += gymLatitude.computeDoubleSize(4)
      }
      if hasGymLongitude {
        serialize_size += gymLongitude.computeDoubleSize(5)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage? {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasGymId {
        jsonMap["gymId"] = gymId
      }
      if hasPlayerLatitude {
        jsonMap["playerLatitude"] = NSNumber(double:playerLatitude)
      }
      if hasPlayerLongitude {
        jsonMap["playerLongitude"] = NSNumber(double:playerLongitude)
      }
      if hasGymLatitude {
        jsonMap["gymLatitude"] = NSNumber(double:gymLatitude)
      }
      if hasGymLongitude {
        jsonMap["gymLongitude"] = NSNumber(double:gymLongitude)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
      return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasGymId {
        output += "\(indent) gymId: \(gymId) \n"
      }
      if hasPlayerLatitude {
        output += "\(indent) playerLatitude: \(playerLatitude) \n"
      }
      if hasPlayerLongitude {
        output += "\(indent) playerLongitude: \(playerLongitude) \n"
      }
      if hasGymLatitude {
        output += "\(indent) gymLatitude: \(gymLatitude) \n"
      }
      if hasGymLongitude {
        output += "\(indent) gymLongitude: \(gymLongitude) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasGymId {
               hashCode = (hashCode &* 31) &+ gymId.hashValue
            }
            if hasPlayerLatitude {
               hashCode = (hashCode &* 31) &+ playerLatitude.hashValue
            }
            if hasPlayerLongitude {
               hashCode = (hashCode &* 31) &+ playerLongitude.hashValue
            }
            if hasGymLatitude {
               hashCode = (hashCode &* 31) &+ gymLatitude.hashValue
            }
            if hasGymLongitude {
               hashCode = (hashCode &* 31) &+ gymLongitude.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage = Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasGymId:Bool {
           get {
                return builderResult.hasGymId
           }
      }
      public var gymId:String {
           get {
                return builderResult.gymId
           }
           set (value) {
               builderResult.hasGymId = true
               builderResult.gymId = value
           }
      }
      public func setGymId(value:String) -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        self.gymId = value
        return self
      }
      public func clearGymId() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder{
           builderResult.hasGymId = false
           builderResult.gymId = ""
           return self
      }
      public var hasPlayerLatitude:Bool {
           get {
                return builderResult.hasPlayerLatitude
           }
      }
      public var playerLatitude:Double {
           get {
                return builderResult.playerLatitude
           }
           set (value) {
               builderResult.hasPlayerLatitude = true
               builderResult.playerLatitude = value
           }
      }
      public func setPlayerLatitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        self.playerLatitude = value
        return self
      }
      public func clearPlayerLatitude() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder{
           builderResult.hasPlayerLatitude = false
           builderResult.playerLatitude = Double(0)
           return self
      }
      public var hasPlayerLongitude:Bool {
           get {
                return builderResult.hasPlayerLongitude
           }
      }
      public var playerLongitude:Double {
           get {
                return builderResult.playerLongitude
           }
           set (value) {
               builderResult.hasPlayerLongitude = true
               builderResult.playerLongitude = value
           }
      }
      public func setPlayerLongitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        self.playerLongitude = value
        return self
      }
      public func clearPlayerLongitude() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder{
           builderResult.hasPlayerLongitude = false
           builderResult.playerLongitude = Double(0)
           return self
      }
      public var hasGymLatitude:Bool {
           get {
                return builderResult.hasGymLatitude
           }
      }
      public var gymLatitude:Double {
           get {
                return builderResult.gymLatitude
           }
           set (value) {
               builderResult.hasGymLatitude = true
               builderResult.gymLatitude = value
           }
      }
      public func setGymLatitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        self.gymLatitude = value
        return self
      }
      public func clearGymLatitude() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder{
           builderResult.hasGymLatitude = false
           builderResult.gymLatitude = Double(0)
           return self
      }
      public var hasGymLongitude:Bool {
           get {
                return builderResult.hasGymLongitude
           }
      }
      public var gymLongitude:Double {
           get {
                return builderResult.gymLongitude
           }
           set (value) {
               builderResult.hasGymLongitude = true
               builderResult.gymLongitude = value
           }
      }
      public func setGymLongitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        self.gymLongitude = value
        return self
      }
      public func clearGymLongitude() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder{
           builderResult.hasGymLongitude = false
           builderResult.gymLongitude = Double(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage() {
         return self
        }
        if other.hasGymId {
             gymId = other.gymId
        }
        if other.hasPlayerLatitude {
             playerLatitude = other.playerLatitude
        }
        if other.hasPlayerLongitude {
             playerLongitude = other.playerLongitude
        }
        if other.hasGymLatitude {
             gymLatitude = other.gymLatitude
        }
        if other.hasGymLongitude {
             gymLongitude = other.gymLongitude
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            gymId = try input.readString()

          case 17:
            playerLatitude = try input.readDouble()

          case 25:
            playerLongitude = try input.readDouble()

          case 33:
            gymLatitude = try input.readDouble()

          case 41:
            gymLongitude = try input.readDouble()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder()
        if let jsonValueGymId = jsonMap["gymId"] as? String {
          resultDecodedBuilder.gymId = jsonValueGymId
        }
        if let jsonValuePlayerLatitude = jsonMap["playerLatitude"] as? NSNumber {
          resultDecodedBuilder.playerLatitude = jsonValuePlayerLatitude.doubleValue
        }
        if let jsonValuePlayerLongitude = jsonMap["playerLongitude"] as? NSNumber {
          resultDecodedBuilder.playerLongitude = jsonValuePlayerLongitude.doubleValue
        }
        if let jsonValueGymLatitude = jsonMap["gymLatitude"] as? NSNumber {
          resultDecodedBuilder.gymLatitude = jsonValueGymLatitude.doubleValue
        }
        if let jsonValueGymLongitude = jsonMap["gymLongitude"] as? NSNumber {
          resultDecodedBuilder.gymLongitude = jsonValueGymLongitude.doubleValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.GetGymDetailsMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)