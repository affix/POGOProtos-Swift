// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "MarkTutorialCompleteResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse, rhs: Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasSuccess == rhs.hasSuccess) && (!lhs.hasSuccess || lhs.success == rhs.success)
  fieldCheck = fieldCheck && (lhs.hasPlayerData == rhs.hasPlayerData) && (!lhs.hasPlayerData || lhs.playerData == rhs.playerData)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct MarkTutorialCompleteResponseRoot {
    public static var sharedInstance : MarkTutorialCompleteResponseRoot {
     struct Static {
         static let instance : MarkTutorialCompleteResponseRoot = MarkTutorialCompleteResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.PlayerDataRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class MarkTutorialCompleteResponse : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasSuccess:Bool = false
    public private(set) var success:Bool = false

    public private(set) var hasPlayerData:Bool = false
    public private(set) var playerData:Pogoprotos.Data.PlayerData!
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasSuccess {
        try output.writeBool(1, value:success)
      }
      if hasPlayerData {
        try output.writeMessage(2, value:playerData)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasSuccess {
        serialize_size += success.computeBoolSize(1)
      }
      if hasPlayerData {
          if let varSizeplayerData = playerData?.computeMessageSize(2) {
              serialize_size += varSizeplayerData
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse? {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.MarkTutorialCompleteResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
      return Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.classBuilder() as! Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasSuccess {
        jsonMap["success"] = success
      }
      if hasPlayerData {
        jsonMap["playerData"] = try playerData.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasSuccess {
        output += "\(indent) success: \(success) \n"
      }
      if hasPlayerData {
        output += "\(indent) playerData {\n"
        if let outDescPlayerData = playerData {
          output += try outDescPlayerData.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasSuccess {
               hashCode = (hashCode &* 31) &+ success.hashValue
            }
            if hasPlayerData {
                if let hashValueplayerData = playerData?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueplayerData
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse = Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasSuccess:Bool {
           get {
                return builderResult.hasSuccess
           }
      }
      public var success:Bool {
           get {
                return builderResult.success
           }
           set (value) {
               builderResult.hasSuccess = true
               builderResult.success = value
           }
      }
      public func setSuccess(value:Bool) -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        self.success = value
        return self
      }
      public func clearSuccess() -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder{
           builderResult.hasSuccess = false
           builderResult.success = false
           return self
      }
      public var hasPlayerData:Bool {
           get {
               return builderResult.hasPlayerData
           }
      }
      public var playerData:Pogoprotos.Data.PlayerData! {
           get {
               if playerDataBuilder_ != nil {
                  builderResult.playerData = playerDataBuilder_.getMessage()
               }
               return builderResult.playerData
           }
           set (value) {
               builderResult.hasPlayerData = true
               builderResult.playerData = value
           }
      }
      private var playerDataBuilder_:Pogoprotos.Data.PlayerData.Builder! {
           didSet {
              builderResult.hasPlayerData = true
           }
      }
      public func getPlayerDataBuilder() -> Pogoprotos.Data.PlayerData.Builder {
        if playerDataBuilder_ == nil {
           playerDataBuilder_ = Pogoprotos.Data.PlayerData.Builder()
           builderResult.playerData = playerDataBuilder_.getMessage()
           if playerData != nil {
              try! playerDataBuilder_.mergeFrom(playerData)
           }
        }
        return playerDataBuilder_
      }
      public func setPlayerData(value:Pogoprotos.Data.PlayerData!) -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        self.playerData = value
        return self
      }
      public func mergePlayerData(value:Pogoprotos.Data.PlayerData) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        if builderResult.hasPlayerData {
          builderResult.playerData = try Pogoprotos.Data.PlayerData.builderWithPrototype(builderResult.playerData).mergeFrom(value).buildPartial()
        } else {
          builderResult.playerData = value
        }
        builderResult.hasPlayerData = true
        return self
      }
      public func clearPlayerData() -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        playerDataBuilder_ = nil
        builderResult.hasPlayerData = false
        builderResult.playerData = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse {
        let returnMe:Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        if other == Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse() {
         return self
        }
        if other.hasSuccess {
             success = other.success
        }
        if (other.hasPlayerData) {
            try mergePlayerData(other.playerData)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            success = try input.readBool()

          case 18:
            let subBuilder:Pogoprotos.Data.PlayerData.Builder = Pogoprotos.Data.PlayerData.Builder()
            if hasPlayerData {
              try subBuilder.mergeFrom(playerData)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            playerData = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder()
        if let jsonValueSuccess = jsonMap["success"] as? Bool {
          resultDecodedBuilder.success = jsonValueSuccess
        }
        if let jsonValuePlayerData = jsonMap["playerData"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.playerData = try Pogoprotos.Data.PlayerData.Builder.decodeToBuilder(jsonValuePlayerData).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.MarkTutorialCompleteResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)