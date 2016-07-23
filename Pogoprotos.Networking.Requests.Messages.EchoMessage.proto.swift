// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "EchoMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.EchoMessage, rhs: Pogoprotos.Networking.Requests.Messages.EchoMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct EchoMessageRoot {
    public static var sharedInstance : EchoMessageRoot {
     struct Static {
         static let instance : EchoMessageRoot = EchoMessageRoot()
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

  // No message needed.
  final public class EchoMessage : GeneratedMessage, GeneratedMessageProtocol {
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.EchoMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.EchoMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage? {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.EchoMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.EchoMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.EchoMessage) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      let jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
      return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.EchoMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.EchoMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.EchoMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.EchoMessage = Pogoprotos.Networking.Requests.Messages.EchoMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.EchoMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.EchoMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.EchoMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.EchoMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.EchoMessage) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.EchoMessage() {
         return self
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder()
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.EchoMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
