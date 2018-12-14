//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try font.validate()
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 1 files.
  struct file {
    /// Resource file `Calibri.otf`.
    static let calibriOtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Calibri", pathExtension: "otf")
    
    /// `bundle.url(forResource: "Calibri", withExtension: "otf")`
    static func calibriOtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.calibriOtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 1 fonts.
  struct font: Rswift.Validatable {
    /// Font `Calibri`.
    static let calibri = Rswift.FontResource(fontName: "Calibri")
    
    /// `UIFont(name: "Calibri", size: ...)`
    static func calibri(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: calibri, size: size)
    }
    
    static func validate() throws {
      if R.font.calibri(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Calibri' could not be loaded, is 'Calibri.otf' added to the UIAppFonts array in this targets Info.plist?") }
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 1 images.
  struct image {
    /// Image `Novartis`.
    static let novartis = Rswift.ImageResource(bundle: R.hostingBundle, name: "Novartis")
    
    /// `UIImage(named: "Novartis", bundle: ..., traitCollection: ...)`
    static func novartis(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.novartis, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 8 view controllers.
  struct segue {
    /// This struct is generated for `AssetUtilizationPresenter`, and contains static references to 1 segues.
    struct assetUtilizationPresenter {
      /// Segue identifier `AssetUtilizationContainerSegue`.
      static let assetUtilizationContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, AssetUtilizationPresenter, AssetUtilizationViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "AssetUtilizationContainerSegue")
      
      /// Optionally returns a typed version of segue `AssetUtilizationContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func assetUtilizationContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, AssetUtilizationPresenter, AssetUtilizationViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.assetUtilizationPresenter.assetUtilizationContainerSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `ChangeoverPresenter`, and contains static references to 1 segues.
    struct changeoverPresenter {
      /// Segue identifier `ChangeOverContainerSegue`.
      static let changeOverContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, ChangeoverPresenter, ChangeoverViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "ChangeOverContainerSegue")
      
      /// Optionally returns a typed version of segue `ChangeOverContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func changeOverContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, ChangeoverPresenter, ChangeoverViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.changeoverPresenter.changeOverContainerSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `HomePresenter`, and contains static references to 2 segues.
    struct homePresenter {
      /// Segue identifier `HomeSelectorContainerSegue`.
      static let homeSelectorContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, HomePresenter, HomeViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "HomeSelectorContainerSegue")
      /// Segue identifier `TimeSelectorPresenterSegue`.
      static let timeSelectorPresenterSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, HomePresenter, TimeSelectorPresenter> = Rswift.StoryboardSegueIdentifier(identifier: "TimeSelectorPresenterSegue")
      
      /// Optionally returns a typed version of segue `HomeSelectorContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func homeSelectorContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, HomePresenter, HomeViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.homePresenter.homeSelectorContainerSegue, segue: segue)
      }
      
      /// Optionally returns a typed version of segue `TimeSelectorPresenterSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func timeSelectorPresenterSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, HomePresenter, TimeSelectorPresenter>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.homePresenter.timeSelectorPresenterSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `LineActivityPresenter`, and contains static references to 1 segues.
    struct lineActivityPresenter {
      /// Segue identifier `LineActivityContainerSegue`.
      static let lineActivityContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, LineActivityPresenter, LineActivityViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "LineActivityContainerSegue")
      
      /// Optionally returns a typed version of segue `LineActivityContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func lineActivityContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, LineActivityPresenter, LineActivityViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.lineActivityPresenter.lineActivityContainerSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `LineyieldPresenter`, and contains static references to 1 segues.
    struct lineyieldPresenter {
      /// Segue identifier `LineyieldContainerSegue`.
      static let lineyieldContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, LineyieldPresenter, LineyieldViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "LineyieldContainerSegue")
      
      /// Optionally returns a typed version of segue `LineyieldContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func lineyieldContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, LineyieldPresenter, LineyieldViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.lineyieldPresenter.lineyieldContainerSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `OAEPresenter`, and contains static references to 2 segues.
    struct oaePresenter {
      /// Segue identifier `OAEAccumulatedContainerSegue`.
      static let oaeAccumulatedContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, OAEPresenter, OAEAccumulatedViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "OAEAccumulatedContainerSegue")
      /// Segue identifier `OAEDetailedContainerSegue`.
      static let oaeDetailedContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, OAEPresenter, OAEDetailedViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "OAEDetailedContainerSegue")
      
      /// Optionally returns a typed version of segue `OAEAccumulatedContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func oaeAccumulatedContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, OAEPresenter, OAEAccumulatedViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.oaePresenter.oaeAccumulatedContainerSegue, segue: segue)
      }
      
      /// Optionally returns a typed version of segue `OAEDetailedContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func oaeDetailedContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, OAEPresenter, OAEDetailedViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.oaePresenter.oaeDetailedContainerSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `SplashPresenter`, and contains static references to 1 segues.
    struct splashPresenter {
      /// Segue identifier `SplashContainerSegue`.
      static let splashContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, SplashPresenter, SplashViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "SplashContainerSegue")
      
      /// Optionally returns a typed version of segue `SplashContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func splashContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, SplashPresenter, SplashViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.splashPresenter.splashContainerSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `TimeSelectorPresenter`, and contains static references to 1 segues.
    struct timeSelectorPresenter {
      /// Segue identifier `TimeSelectorContainerSegue`.
      static let timeSelectorContainerSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, TimeSelectorPresenter, TimeSelectorViewContent> = Rswift.StoryboardSegueIdentifier(identifier: "TimeSelectorContainerSegue")
      
      /// Optionally returns a typed version of segue `TimeSelectorContainerSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func timeSelectorContainerSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, TimeSelectorPresenter, TimeSelectorViewContent>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.timeSelectorPresenter.timeSelectorContainerSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 4 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `home`.
    static let home = _R.storyboard.home()
    /// Storyboard `splash`.
    static let splash = _R.storyboard.splash()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "home", bundle: ...)`
    static func home(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.home)
    }
    
    /// `UIStoryboard(name: "splash", bundle: ...)`
    static func splash(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.splash)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.localized` struct is generated, and contains static references to 16 localization keys.
    struct localized {
      /// en translation: Asset Utilization
      /// 
      /// Locales: en
      static let assetutilization_title = Rswift.StringResource(key: "assetutilization_title", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Cairo
      /// 
      /// Locales: en
      static let lineyield_title = Rswift.StringResource(key: "lineyield_title", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Changeover
      /// 
      /// Locales: en
      static let changeover_title = Rswift.StringResource(key: "changeover_title", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Changeover
      /// 
      /// Locales: en
      static let lineactivity_changeover = Rswift.StringResource(key: "lineactivity_changeover", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Current Month
      /// 
      /// Locales: en
      static let time_selector_current_month = Rswift.StringResource(key: "time_selector_current_month", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Effective Uptime
      /// 
      /// Locales: en
      static let lineactivity_effective_uptime = Rswift.StringResource(key: "lineactivity_effective_uptime", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Last Month
      /// 
      /// Locales: en
      static let time_selector_last_month = Rswift.StringResource(key: "time_selector_last_month", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Line Activity
      /// 
      /// Locales: en
      static let lineactivity_title = Rswift.StringResource(key: "lineactivity_title", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Logistical Stoppage
      /// 
      /// Locales: en
      static let lineactivity_logistical_stoppage = Rswift.StringResource(key: "lineactivity_logistical_stoppage", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Micro Stoppages
      /// 
      /// Locales: en
      static let lineactivity_micro_stoppages = Rswift.StringResource(key: "lineactivity_micro_stoppages", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: OAE Accumulated
      /// 
      /// Locales: en
      static let oaeaccumulated_title = Rswift.StringResource(key: "oaeaccumulated_title", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: OAE Detailed
      /// 
      /// Locales: en
      static let oaedetailed_title = Rswift.StringResource(key: "oaedetailed_title", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Rework
      /// 
      /// Locales: en
      static let lineactivity_rework = Rswift.StringResource(key: "lineactivity_rework", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Scheduled Downtime
      /// 
      /// Locales: en
      static let lineactivity_scheduled_downtime = Rswift.StringResource(key: "lineactivity_scheduled_downtime", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Technical Stoppages
      /// 
      /// Locales: en
      static let lineactivity_technical_stoppages = Rswift.StringResource(key: "lineactivity_technical_stoppages", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: This week
      /// 
      /// Locales: en
      static let time_selector_this_week = Rswift.StringResource(key: "time_selector_this_week", tableName: "Localized", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      
      /// en translation: Asset Utilization
      /// 
      /// Locales: en
      static func assetutilization_title(_: Void = ()) -> String {
        return NSLocalizedString("assetutilization_title", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Cairo
      /// 
      /// Locales: en
      static func lineyield_title(_: Void = ()) -> String {
        return NSLocalizedString("lineyield_title", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Changeover
      /// 
      /// Locales: en
      static func changeover_title(_: Void = ()) -> String {
        return NSLocalizedString("changeover_title", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Changeover
      /// 
      /// Locales: en
      static func lineactivity_changeover(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_changeover", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Current Month
      /// 
      /// Locales: en
      static func time_selector_current_month(_: Void = ()) -> String {
        return NSLocalizedString("time_selector_current_month", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Effective Uptime
      /// 
      /// Locales: en
      static func lineactivity_effective_uptime(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_effective_uptime", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Last Month
      /// 
      /// Locales: en
      static func time_selector_last_month(_: Void = ()) -> String {
        return NSLocalizedString("time_selector_last_month", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Line Activity
      /// 
      /// Locales: en
      static func lineactivity_title(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_title", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Logistical Stoppage
      /// 
      /// Locales: en
      static func lineactivity_logistical_stoppage(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_logistical_stoppage", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Micro Stoppages
      /// 
      /// Locales: en
      static func lineactivity_micro_stoppages(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_micro_stoppages", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: OAE Accumulated
      /// 
      /// Locales: en
      static func oaeaccumulated_title(_: Void = ()) -> String {
        return NSLocalizedString("oaeaccumulated_title", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: OAE Detailed
      /// 
      /// Locales: en
      static func oaedetailed_title(_: Void = ()) -> String {
        return NSLocalizedString("oaedetailed_title", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Rework
      /// 
      /// Locales: en
      static func lineactivity_rework(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_rework", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Scheduled Downtime
      /// 
      /// Locales: en
      static func lineactivity_scheduled_downtime(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_scheduled_downtime", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Technical Stoppages
      /// 
      /// Locales: en
      static func lineactivity_technical_stoppages(_: Void = ()) -> String {
        return NSLocalizedString("lineactivity_technical_stoppages", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: This week
      /// 
      /// Locales: en
      static func time_selector_this_week(_: Void = ()) -> String {
        return NSLocalizedString("time_selector_this_week", tableName: "Localized", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try splash.validate()
      try home.validate()
      try launchScreen.validate()
    }
    
    struct home: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let homePresenter = StoryboardViewControllerResource<HomePresenter>(identifier: "HomePresenter")
      let name = "home"
      
      func homePresenter(_: Void = ()) -> HomePresenter? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: homePresenter)
      }
      
      static func validate() throws {
        if _R.storyboard.home().homePresenter() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'homePresenter' could not be loaded from storyboard 'home' as 'HomePresenter'.") }
      }
      
      fileprivate init() {}
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if UIKit.UIImage(named: "Novartis") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Novartis' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = ViewController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      fileprivate init() {}
    }
    
    struct splash: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "splash"
      let splashPresenter = StoryboardViewControllerResource<SplashPresenter>(identifier: "SplashPresenter")
      
      func splashPresenter(_: Void = ()) -> SplashPresenter? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: splashPresenter)
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "Novartis") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Novartis' is used in storyboard 'splash', but couldn't be loaded.") }
        if _R.storyboard.splash().splashPresenter() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'splashPresenter' could not be loaded from storyboard 'splash' as 'SplashPresenter'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
