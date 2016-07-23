// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "IncenseEncounterMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage, rhs: Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasEncounterId == rhs.hasEncounterId) && (!lhs.hasEncounterId || lhs.encounterId == rhs.encounterId)
  fieldCheck = fieldCheck && (lhs.hasEncounterLocation == rhs.hasEncounterLocation) && (!lhs.hasEncounterLocation || lhs.encounterLocation == rhs.encounterLocation)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct IncenseEncounterMessageRoot {
    public static var sharedInstance : IncenseEncounterMessageRoot {
     struct Static {
         static let instance : IncenseEncounterMessageRoot = IncenseEncounterMessageRoot()
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

  final public class IncenseEncounterMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasEncounterId:Bool = false
    public private(set) var encounterId:Int64 = Int64(0)

    public private(set) var hasEncounterLocation:Bool = false
    public private(set) var encounterLocation:String = ""

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasEncounterId {
        try output.writeInt64(1, value:encounterId)
      }
      if hasEncounterLocation {
        try output.writeString(2, value:encounterLocation)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasEncounterId {
        serialize_size += encounterId.computeInt64Size(1)
      }
      if hasEncounterLocation {
        serialize_size += encounterLocation.computeStringSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage? {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasEncounterId {
        jsonMap["encounterId"] = "\(encounterId)"
      }
      if hasEncounterLocation {
        jsonMap["encounterLocation"] = encounterLocation
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasEncounterId {
        output += "\(indent) encounterId: \(encounterId) \n"
      }
      if hasEncounterLocation {
        output += "\(indent) encounterLocation: \(encounterLocation) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasEncounterId {
               hashCode = (hashCode &* 31) &+ encounterId.hashValue
            }
            if hasEncounterLocation {
               hashCode = (hashCode &* 31) &+ encounterLocation.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage = Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasEncounterId:Bool {
           get {
                return builderResult.hasEncounterId
           }
      }
      public var encounterId:Int64 {
           get {
                return builderResult.encounterId
           }
           set (value) {
               builderResult.hasEncounterId = true
               builderResult.encounterId = value
           }
      }
      public func setEncounterId(value:Int64) -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        self.encounterId = value
        return self
      }
      public func clearEncounterId() -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder{
           builderResult.hasEncounterId = false
           builderResult.encounterId = Int64(0)
           return self
      }
      public var hasEncounterLocation:Bool {
           get {
                return builderResult.hasEncounterLocation
           }
      }
      public var encounterLocation:String {
           get {
                return builderResult.encounterLocation
           }
           set (value) {
               builderResult.hasEncounterLocation = true
               builderResult.encounterLocation = value
           }
      }
      public func setEncounterLocation(value:String) -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        self.encounterLocation = value
        return self
      }
      public func clearEncounterLocation() -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder{
           builderResult.hasEncounterLocation = false
           builderResult.encounterLocation = ""
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage() {
         return self
        }
        if other.hasEncounterId {
             encounterId = other.encounterId
        }
        if other.hasEncounterLocation {
             encounterLocation = other.encounterLocation
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            encounterId = try input.readInt64()

          case 18:
            encounterLocation = try input.readString()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder()
        if let jsonValueEncounterId = jsonMap["encounterId"] as? String {
          resultDecodedBuilder.encounterId = Int64(jsonValueEncounterId)!
        }
        if let jsonValueEncounterLocation = jsonMap["encounterLocation"] as? String {
          resultDecodedBuilder.encounterLocation = jsonValueEncounterLocation
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.IncenseEncounterMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
