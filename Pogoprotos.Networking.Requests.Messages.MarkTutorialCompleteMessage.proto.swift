// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "MarkTutorialCompleteMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage, rhs: Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.tutorialsCompleted == rhs.tutorialsCompleted)
  fieldCheck = fieldCheck && (lhs.hasSendMarketingEmails == rhs.hasSendMarketingEmails) && (!lhs.hasSendMarketingEmails || lhs.sendMarketingEmails == rhs.sendMarketingEmails)
  fieldCheck = fieldCheck && (lhs.hasSendPushNotifications == rhs.hasSendPushNotifications) && (!lhs.hasSendPushNotifications || lhs.sendPushNotifications == rhs.sendPushNotifications)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct MarkTutorialCompleteMessageRoot {
    public static var sharedInstance : MarkTutorialCompleteMessageRoot {
     struct Static {
         static let instance : MarkTutorialCompleteMessageRoot = MarkTutorialCompleteMessageRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.TutorialStateRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class MarkTutorialCompleteMessage : GeneratedMessage, GeneratedMessageProtocol {
    private var tutorialsCompletedMemoizedSerializedSize:Int32 = 0
    public private(set) var tutorialsCompleted:Array<Pogoprotos.Enums.TutorialState> = Array<Pogoprotos.Enums.TutorialState>()
    public private(set) var hasSendMarketingEmails:Bool = false
    public private(set) var sendMarketingEmails:Bool = false

    public private(set) var hasSendPushNotifications:Bool = false
    public private(set) var sendPushNotifications:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      for oneValueOftutorialsCompleted in tutorialsCompleted {
          try output.writeEnum(1, value:oneValueOftutorialsCompleted.rawValue)
      }
      if hasSendMarketingEmails {
        try output.writeBool(2, value:sendMarketingEmails)
      }
      if hasSendPushNotifications {
        try output.writeBool(3, value:sendPushNotifications)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      var dataSizetutorialsCompleted:Int32 = 0
      for oneValueOftutorialsCompleted in tutorialsCompleted {
          dataSizetutorialsCompleted += oneValueOftutorialsCompleted.rawValue.computeEnumSizeNoTag()
      }
      serialize_size += dataSizetutorialsCompleted
      serialize_size += (1 * Int32(tutorialsCompleted.count))
      if hasSendMarketingEmails {
        serialize_size += sendMarketingEmails.computeBoolSize(2)
      }
      if hasSendPushNotifications {
        serialize_size += sendPushNotifications.computeBoolSize(3)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage? {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if !tutorialsCompleted.isEmpty {
        var jsonArrayTutorialsCompleted:Array<String> = []
          for oneValueTutorialsCompleted in tutorialsCompleted {
            jsonArrayTutorialsCompleted += [oneValueTutorialsCompleted.toString()]
          }
        jsonMap["tutorialsCompleted"] = jsonArrayTutorialsCompleted
      }
      if hasSendMarketingEmails {
        jsonMap["sendMarketingEmails"] = sendMarketingEmails
      }
      if hasSendPushNotifications {
        jsonMap["sendPushNotifications"] = sendPushNotifications
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
      return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      var tutorialsCompletedElementIndex:Int = 0
      for oneValueOftutorialsCompleted in tutorialsCompleted {
          output += "\(indent) tutorialsCompleted[\(tutorialsCompletedElementIndex)]: \(oneValueOftutorialsCompleted.description)\n"
          tutorialsCompletedElementIndex += 1
      }
      if hasSendMarketingEmails {
        output += "\(indent) sendMarketingEmails: \(sendMarketingEmails) \n"
      }
      if hasSendPushNotifications {
        output += "\(indent) sendPushNotifications: \(sendPushNotifications) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            for oneValueOftutorialsCompleted in tutorialsCompleted {
                hashCode = (hashCode &* 31) &+ Int(oneValueOftutorialsCompleted.rawValue)
            }
            if hasSendMarketingEmails {
               hashCode = (hashCode &* 31) &+ sendMarketingEmails.hashValue
            }
            if hasSendPushNotifications {
               hashCode = (hashCode &* 31) &+ sendPushNotifications.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage = Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var tutorialsCompleted:Array<Pogoprotos.Enums.TutorialState> {
          get {
              return builderResult.tutorialsCompleted
          }
          set (value) {
              builderResult.tutorialsCompleted = value
          }
      }
      public func setTutorialsCompleted(value:Array<Pogoprotos.Enums.TutorialState>) -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        self.tutorialsCompleted = value
        return self
      }
      public func clearTutorialsCompleted() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        builderResult.tutorialsCompleted.removeAll(keepCapacity: false)
        return self
      }
      public var hasSendMarketingEmails:Bool {
           get {
                return builderResult.hasSendMarketingEmails
           }
      }
      public var sendMarketingEmails:Bool {
           get {
                return builderResult.sendMarketingEmails
           }
           set (value) {
               builderResult.hasSendMarketingEmails = true
               builderResult.sendMarketingEmails = value
           }
      }
      public func setSendMarketingEmails(value:Bool) -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        self.sendMarketingEmails = value
        return self
      }
      public func clearSendMarketingEmails() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder{
           builderResult.hasSendMarketingEmails = false
           builderResult.sendMarketingEmails = false
           return self
      }
      public var hasSendPushNotifications:Bool {
           get {
                return builderResult.hasSendPushNotifications
           }
      }
      public var sendPushNotifications:Bool {
           get {
                return builderResult.sendPushNotifications
           }
           set (value) {
               builderResult.hasSendPushNotifications = true
               builderResult.sendPushNotifications = value
           }
      }
      public func setSendPushNotifications(value:Bool) -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        self.sendPushNotifications = value
        return self
      }
      public func clearSendPushNotifications() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder{
           builderResult.hasSendPushNotifications = false
           builderResult.sendPushNotifications = false
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage() {
         return self
        }
        if !other.tutorialsCompleted.isEmpty {
           builderResult.tutorialsCompleted += other.tutorialsCompleted
        }
        if other.hasSendMarketingEmails {
             sendMarketingEmails = other.sendMarketingEmails
        }
        if other.hasSendPushNotifications {
             sendPushNotifications = other.sendPushNotifications
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueInttutorialsCompleted = try input.readEnum()
            if let enumstutorialsCompleted = Pogoprotos.Enums.TutorialState(rawValue:valueInttutorialsCompleted) {
                 builderResult.tutorialsCompleted += [enumstutorialsCompleted]
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueInttutorialsCompleted))
            }

          case 16:
            sendMarketingEmails = try input.readBool()

          case 24:
            sendPushNotifications = try input.readBool()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder()
        if let jsonValueTutorialsCompleted = jsonMap["tutorialsCompleted"] as? Array<String> {
          var jsonArrayTutorialsCompleted:Array<Pogoprotos.Enums.TutorialState> = []
          for oneValueTutorialsCompleted in jsonValueTutorialsCompleted {
            let enumFromStringTutorialsCompleted = try Pogoprotos.Enums.TutorialState.fromString(oneValueTutorialsCompleted)
            jsonArrayTutorialsCompleted += [enumFromStringTutorialsCompleted]
          }
          resultDecodedBuilder.tutorialsCompleted = jsonArrayTutorialsCompleted
        }
        if let jsonValueSendMarketingEmails = jsonMap["sendMarketingEmails"] as? Bool {
          resultDecodedBuilder.sendMarketingEmails = jsonValueSendMarketingEmails
        }
        if let jsonValueSendPushNotifications = jsonMap["sendPushNotifications"] as? Bool {
          resultDecodedBuilder.sendPushNotifications = jsonValueSendPushNotifications
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.MarkTutorialCompleteMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
