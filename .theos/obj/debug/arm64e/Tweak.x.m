#line 1 "Tweak.x"
#include "CoreText/CTFontManager.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class PLPlatterHeaderContentView; @class NCNotificationViewControllerView; @class UIImageView; @class NCNotificationShortLookView; @class MTMaterialView; @class PLShadowView; @class NCNotificationContentView; 
static void (*_logos_orig$_ungrouped$NCNotificationShortLookView$_setGrabberVisible$)(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$NCNotificationShortLookView$_setGrabberVisible$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$NCNotificationShortLookView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NCNotificationShortLookView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$NCNotificationViewControllerView$setFrame$)(_LOGOS_SELF_TYPE_NORMAL NCNotificationViewControllerView* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$NCNotificationViewControllerView$setFrame$(_LOGOS_SELF_TYPE_NORMAL NCNotificationViewControllerView* _LOGOS_SELF_CONST, SEL, CGRect); static void (*_logos_orig$_ungrouped$NCNotificationContentView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL NCNotificationContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NCNotificationContentView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationContentView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PLPlatterHeaderContentView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL PLPlatterHeaderContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$PLPlatterHeaderContentView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PLPlatterHeaderContentView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PLShadowView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL PLShadowView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$PLShadowView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PLShadowView* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$UIImageView(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("UIImageView"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$MTMaterialView(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("MTMaterialView"); } return _klass; }
#line 3 "Tweak.x"
@interface PLPlatterView : UIView
@end
@interface PLTitledPlatterView : PLPlatterView
@end
@interface NCNotificationShortLookView : PLTitledPlatterView
@end
@interface PLPlatterCustomContentView : UIImageView
@end
@interface NCNotificationViewControllerView : UIView
@end
@interface BSUIEmojiLabelView : UIView
@property UIColor *textColor;
@property UIFont *font;
@end
@interface NCNotificationContentView : UIView
- (UILabel *)_secondaryLabel;
- (UILabel *)_primaryLabel;
- (UILabel *)_primarySubtitleLabel;
- (BSUIEmojiLabelView *)_summaryLabel;
@end
@interface NCNotificationListCell : UIView
@end
@interface NCNotificationListView : UIScrollView
@end
@interface PLPlatterHeaderContentView : UIView
- (UILabel *) titleLabel;
- (UILabel *) dateLabel;
@end
@interface PLShadowView : UIImageView
@end
@interface BSUIDefaultDateLabel : UILabel
@end
@interface BSUIRelativeDateLabel : BSUIDefaultDateLabel
@end

static void _logos_method$_ungrouped$NCNotificationShortLookView$_setGrabberVisible$(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL ret) {
  _logos_orig$_ungrouped$NCNotificationShortLookView$_setGrabberVisible$(self, _cmd, ret);
  UIColor *black = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  
  self.backgroundColor = black;

  UIImage *background = [UIImage imageWithContentsOfFile:@"/var/mobile/icon/background.png"];
  UIImageView *imageView = [[UIImageView alloc] initWithImage:background];
  imageView.frame = self.frame;
  imageView.hidden = NO;

  [self addSubview:imageView];

  for (UIView *view in self.subviews){
    if([view isKindOfClass:_logos_static_class_lookup$MTMaterialView()]) {
      view.hidden = YES;
    }
  }
}
static void _logos_method$_ungrouped$NCNotificationShortLookView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationShortLookView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$NCNotificationShortLookView$layoutSubviews(self, _cmd);
  for (UIView *view in self.subviews){
    if([view isKindOfClass:_logos_static_class_lookup$UIImageView()]) {
      CGRect newFrame2 = self.frame;
      newFrame2.origin.x -= 12;
      newFrame2.origin.y -= 7;
      newFrame2.size.width += 20;
      newFrame2.size.height += 10;

      view.frame = newFrame2;
    }
  }
}




static void _logos_method$_ungrouped$NCNotificationViewControllerView$setFrame$(_LOGOS_SELF_TYPE_NORMAL NCNotificationViewControllerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect frame) {
  CGRect newFrame = frame;
  newFrame.size.width = 339;
  newFrame.origin.x = 10;
  return _logos_orig$_ungrouped$NCNotificationViewControllerView$setFrame$(self, _cmd, newFrame);
}


static void _logos_method$_ungrouped$NCNotificationContentView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NCNotificationContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$NCNotificationContentView$layoutSubviews(self, _cmd);
  NSString *imgFilePath = [NSString stringWithFormat:@"/var/mobile/icon/PokemonGb-RAeo.ttf"];
  NSURL *fontUrl = [NSURL fileURLWithPath:imgFilePath];
  CGDataProviderRef fontDataProvider =  CGDataProviderCreateWithURL((__bridge CFURLRef)fontUrl);
  CGFontRef fontRef = CGFontCreateWithDataProvider(fontDataProvider);
  CGDataProviderRelease(fontDataProvider);
  CTFontManagerRegisterGraphicsFont(fontRef, NULL);
  NSString *fontName = CFBridgingRelease(CGFontCopyPostScriptName(fontRef));
  UIFont *fonts = [UIFont fontWithName:fontName size:13.0];
  self._primaryLabel.font = fonts;
  self._secondaryLabel.font = fonts;
  self._primarySubtitleLabel.font = fonts;
  self._summaryLabel.font = fonts;

  NSMutableString *secondary = [NSMutableString string];
  [secondary appendString:self._secondaryLabel.text];
  [secondary appendString:@"\n\n\n"];
  NSString *secondarytext = secondary;
  self._secondaryLabel.text = secondarytext;

  CGRect newFrame = self._secondaryLabel.frame;
  newFrame.size.height = 111;
  newFrame.origin.y -= 15;
  self._secondaryLabel.lineBreakMode = 2;
  self._secondaryLabel.frame = newFrame;
}


static void _logos_method$_ungrouped$PLPlatterHeaderContentView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PLPlatterHeaderContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$PLPlatterHeaderContentView$layoutSubviews(self, _cmd);
  
  
  
  
  
  
  
  
  
  UIFont *fonts = [UIFont fontWithName:@"Papyrus" size:11.0];
  
  
  
  
  UILabel *title = MSHookIvar<UILabel *>(self, "_titleLabel");
  title.font = fonts;
}


static void _logos_method$_ungrouped$PLShadowView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PLShadowView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$PLShadowView$layoutSubviews(self, _cmd);
  self.hidden = YES;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NCNotificationShortLookView = objc_getClass("NCNotificationShortLookView"); MSHookMessageEx(_logos_class$_ungrouped$NCNotificationShortLookView, @selector(_setGrabberVisible:), (IMP)&_logos_method$_ungrouped$NCNotificationShortLookView$_setGrabberVisible$, (IMP*)&_logos_orig$_ungrouped$NCNotificationShortLookView$_setGrabberVisible$);MSHookMessageEx(_logos_class$_ungrouped$NCNotificationShortLookView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$NCNotificationShortLookView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$NCNotificationShortLookView$layoutSubviews);Class _logos_class$_ungrouped$NCNotificationViewControllerView = objc_getClass("NCNotificationViewControllerView"); MSHookMessageEx(_logos_class$_ungrouped$NCNotificationViewControllerView, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$NCNotificationViewControllerView$setFrame$, (IMP*)&_logos_orig$_ungrouped$NCNotificationViewControllerView$setFrame$);Class _logos_class$_ungrouped$NCNotificationContentView = objc_getClass("NCNotificationContentView"); MSHookMessageEx(_logos_class$_ungrouped$NCNotificationContentView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$NCNotificationContentView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$NCNotificationContentView$layoutSubviews);Class _logos_class$_ungrouped$PLPlatterHeaderContentView = objc_getClass("PLPlatterHeaderContentView"); MSHookMessageEx(_logos_class$_ungrouped$PLPlatterHeaderContentView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$PLPlatterHeaderContentView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$PLPlatterHeaderContentView$layoutSubviews);Class _logos_class$_ungrouped$PLShadowView = objc_getClass("PLShadowView"); MSHookMessageEx(_logos_class$_ungrouped$PLShadowView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$PLShadowView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$PLShadowView$layoutSubviews);} }
#line 138 "Tweak.x"
