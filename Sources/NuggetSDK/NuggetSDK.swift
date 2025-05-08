// The Swift Programming Language
// https://docs.swift.org/swift-book
import NuggetExternalDependency
import NuggetInternalDependency
import Nugget

public typealias NuggetAuthUserInfo = Nugget.ZChatAuthUserInfo
public typealias NuggetConversationInfo = Nugget.ZChatConversationInfo
public typealias NuggetFactory = Nugget.ZChatKitFactory
public typealias NuggetAuthProviderDelegate = Nugget.ZChatAuthProviderDelegate
<<<<<<< Updated upstream
public typealias NuggetPushNotificationsListener = ZChatPushNotificationsListener
=======
public typealias NuggetThemeProviderDelegate = Nugget.ZChatCustomThemeProviderDelegate
public typealias NuggetFontProviderDelegate = Nugget.ZChatCustomFontProviderDelegate
public typealias NuggetTicketCreationDelegate = Nugget.ZChatTicketCreationHandlerDelegate
public typealias NuggetPushNotificationsListener = Nugget.ZChatPushNotificationsListener
public typealias NuggetFontPropertiesMapping = Nugget.FontPropertiesMapping
public typealias NuggetFontWeights = Nugget.NuggetFontWeights
public typealias NuggetFontSizes = Nugget.NuggetFontSizes
public typealias NuggetUserInfo = Nugget.ZChatUserInfo
public typealias NuggetBusinessContextProviderDelegate = Nugget.ZChatBusinessContextProviderDelegate
public typealias NuggetChatBusinessContext = Nugget.ZChatBusinessContext
public typealias NuggetDeeplinkListener = Nugget.ZChatDeeplinkListener
>>>>>>> Stashed changes

public class NuggetSDK {
    public static let shared = NuggetSDK()
    private init() {}
    
    // Add your wrapper methods here that use both dependencies
    public func initialize() {}
}
