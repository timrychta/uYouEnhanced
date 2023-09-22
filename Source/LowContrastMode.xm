#import "../Header.h"

//
static BOOL IsEnabled(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}
static int contrastMode() {
    return [[NSUserDefaults standardUserDefaults] integerForKey:@"lcm"];
}
static BOOL lowContrastMode() {
    return IsEnabled(@"lowContrastMode_enabled") && contrastMode() == 0;
}
/*
static BOOL customContrastMode() {
    return IsEnabled(@"lowContrastMode_enabled") && contrastMode() == 1;
}
*/

UIColor *lcmHexColor;

%group gLowContrastMode // Low Contrast Mode v1.5.0 (Compatible with only YouTube v16.05.7-v17.38.10)
%hook UIColor
+ (UIColor *)whiteColor { // Dark Theme Color
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)lightTextColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)lightGrayColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)ychGrey7 {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)skt_chipBackgroundColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)placeholderTextColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)systemLightGrayColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)systemExtraLightGrayColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)labelColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)secondaryLabelColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)tertiaryLabelColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
+ (UIColor *)quaternaryLabelColor {
         return [UIColor colorWithRed: 0.56 green: 0.56 blue: 0.56 alpha: 1.00];
}
%end
%hook YTCommonColorPalette
- (UIColor *)textPrimary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)textSecondary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayTextPrimary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayTextSecondary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)iconActive {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)iconActiveOther {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)brandIconActive {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)staticBrandWhite {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayIconActiveOther {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayIconInactive {
    return self.pageStyle == 1 ? [[UIColor whiteColor] colorWithAlphaComponent:0.7] : %orig;
}
- (UIColor *)overlayIconDisabled {
    return self.pageStyle == 1 ? [[UIColor whiteColor] colorWithAlphaComponent:0.3] : %orig;
}
- (UIColor *)overlayFilledButtonActive {
    return self.pageStyle == 1 ? [[UIColor whiteColor] colorWithAlphaComponent:0.2] : %orig;
}
%end
%hook YTColor
+ (BOOL)darkerPaletteTextColorEnabled {
    return NO;
}
+ (UIColor *)white2 {
    return [UIColor whiteColor];
}
+ (UIColor *)white3 {
    return [UIColor whiteColor];
}
+ (UIColor *)white4 {
    return [UIColor whiteColor];
}
+ (UIColor *)white5 {
    return [UIColor whiteColor];
}
+ (UIColor *)grey1 {
    return [UIColor whiteColor];
}
+ (UIColor *)grey2 {
    return [UIColor whiteColor];
}
%end
%hook QTMColorGroup
- (UIColor *)tint100 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)tint300 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)tint500 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)tint700 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)accent200 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)accent400 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)accentColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)brightAccentColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)regularColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)darkerColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)lightBodyTextColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnRegularColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnLighterColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnDarkerColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnAccentColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)buttonBackgroundColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
%end
%hook YTQTMButton
- (void)setImage:(UIImage *)image {
    UIImage *currentImage = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self setTintColor:[UIColor whiteColor]];
    %orig(currentImage);
}
%end
%hook UIExtendedSRGColorSpace
- (void)setTextColor:(UIColor *)textColor {
    textColor = [[UIColor whiteColor] colorWithAlphaComponent:0.9];
    %orig();
}
%end
%hook VideoTitleLabel
- (void)setTextColor:(UIColor *)textColor {
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UILabel
+ (void)load {
    @autoreleasepool {
        [[UILabel appearance] setTextColor:[UIColor whiteColor]];
    }
}
- (void)setTextColor:(UIColor *)textColor {
    %log;
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UITextField
- (void)setTextColor:(UIColor *)textColor {
    %log;
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UITextView
- (void)setTextColor:(UIColor *)textColor {
    %log;
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UISearchBar
- (void)setTextColor:(UIColor *)textColor {
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UISegmentedControl
- (void)setTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state {
    NSMutableDictionary *modifiedAttributes = [NSMutableDictionary dictionaryWithDictionary:attributes];
    [modifiedAttributes setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    %orig(modifiedAttributes, state);
}
%end
%hook UIButton
- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state {
    color = [UIColor whiteColor];
    %orig(color, state);
}
%end
%hook UIBarButtonItem
- (void)setTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state {
    NSMutableDictionary *modifiedAttributes = [NSMutableDictionary dictionaryWithDictionary:attributes];
    [modifiedAttributes setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    %orig(modifiedAttributes, state);
}
%end
%hook NSAttributedString
- (instancetype)initWithString:(NSString *)str attributes:(NSDictionary<NSAttributedStringKey, id> *)attrs {
    NSMutableDictionary *modifiedAttributes = [NSMutableDictionary dictionaryWithDictionary:attrs];
    [modifiedAttributes setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    return %orig(str, modifiedAttributes);
}
%end
%hook CATextLayer
- (void)setTextColor:(CGColorRef)textColor {
    %orig([UIColor whiteColor].CGColor);
}
%end
%hook ASTextNode
- (NSAttributedString *)attributedString {
    NSAttributedString *originalAttributedString = %orig;
    NSMutableAttributedString *newAttributedString = [originalAttributedString mutableCopy];
    [newAttributedString addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0, newAttributedString.length)];
    return newAttributedString;
}
%end
%hook ASTextFieldNode
- (void)setTextColor:(UIColor *)textColor {
   %orig([UIColor whiteColor]);
}
%end
%hook ASTextView
- (void)setTextColor:(UIColor *)textColor {
   %orig([UIColor whiteColor]);
}
%end
%hook ASButtonNode
- (void)setTextColor:(UIColor *)textColor {
   %orig([UIColor whiteColor]);
}
%end
%end

/*
%group gCustomContrastMode // Custom Contrast Mode (Hex Color)
%hook UIColor
+ (UIColor *)whiteColor {
         return lcmHexColor;
}
+ (UIColor *)lightTextColor {
         return lcmHexColor;
}
+ (UIColor *)lightGrayColor {
         return lcmHexColor;
}
+ (UIColor *)ychGrey7 {
         return lcmHexColor;
}
+ (UIColor *)skt_chipBackgroundColor {
         return lcmHexColor;
}
+ (UIColor *)placeholderTextColor {
         return lcmHexColor;
}
+ (UIColor *)systemLightGrayColor {
         return lcmHexColor;
}
+ (UIColor *)systemExtraLightGrayColor {
         return lcmHexColor;
}
+ (UIColor *)labelColor {
         return lcmHexColor;
}
+ (UIColor *)secondaryLabelColor {
         return lcmHexColor;
}
+ (UIColor *)tertiaryLabelColor {
         return lcmHexColor;
}
+ (UIColor *)quaternaryLabelColor {
         return lcmHexColor;
}
%end
%hook YTCommonColorPalette
- (UIColor *)textPrimary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)textSecondary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayTextPrimary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayTextSecondary {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)iconActive {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)iconActiveOther {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)brandIconActive {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)staticBrandWhite {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayIconActiveOther {
    return self.pageStyle == 1 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)overlayIconInactive {
    return self.pageStyle == 1 ? [[UIColor whiteColor] colorWithAlphaComponent:0.7] : %orig;
}
- (UIColor *)overlayIconDisabled {
    return self.pageStyle == 1 ? [[UIColor whiteColor] colorWithAlphaComponent:0.3] : %orig;
}
- (UIColor *)overlayFilledButtonActive {
    return self.pageStyle == 1 ? [[UIColor whiteColor] colorWithAlphaComponent:0.2] : %orig;
}
%end
%hook YTColor
+ (BOOL)darkerPaletteTextColorEnabled {
    return NO;
}
+ (UIColor *)white2 {
    return [UIColor whiteColor];
}
+ (UIColor *)white3 {
    return [UIColor whiteColor];
}
+ (UIColor *)white4 {
    return [UIColor whiteColor];
}
+ (UIColor *)white5 {
    return [UIColor whiteColor];
}
+ (UIColor *)grey1 {
    return [UIColor whiteColor];
}
+ (UIColor *)grey2 {
    return [UIColor whiteColor];
}
%end
%hook QTMColorGroup
- (UIColor *)tint100 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)tint300 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)tint500 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)tint700 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)accent200 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)accent400 {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)accentColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)brightAccentColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)regularColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)darkerColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)lightBodyTextColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnRegularColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnLighterColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnDarkerColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)bodyTextColorOnAccentColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
- (UIColor *)buttonBackgroundColor {
    return self.groupID == 20 ? [UIColor whiteColor] : %orig;
}
%end
%hook YTQTMButton
- (void)setImage:(UIImage *)image {
    UIImage *currentImage = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self setTintColor:[UIColor whiteColor]];
    %orig(currentImage);
}
%end
%hook UIExtendedSRGColorSpace
- (void)setTextColor:(UIColor *)textColor {
    textColor = [[UIColor whiteColor] colorWithAlphaComponent:0.9];
    %orig();
}
%end
%hook VideoTitleLabel
- (void)setTextColor:(UIColor *)textColor {
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UILabel
+ (void)load {
    @autoreleasepool {
        [[UILabel appearance] setTextColor:[UIColor whiteColor]];
    }
}
- (void)setTextColor:(UIColor *)textColor {
    %log;
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UITextField
- (void)setTextColor:(UIColor *)textColor {
    %log;
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UITextView
- (void)setTextColor:(UIColor *)textColor {
    %log;
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UISearchBar
- (void)setTextColor:(UIColor *)textColor {
    textColor = [UIColor whiteColor];
    %orig(textColor);
}
%end
%hook UISegmentedControl
- (void)setTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state {
    NSMutableDictionary *modifiedAttributes = [NSMutableDictionary dictionaryWithDictionary:attributes];
    [modifiedAttributes setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    %orig(modifiedAttributes, state);
}
%end
%hook UIButton
- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state {
    color = [UIColor whiteColor];
    %orig(color, state);
}
%end
%hook UIBarButtonItem
- (void)setTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state {
    NSMutableDictionary *modifiedAttributes = [NSMutableDictionary dictionaryWithDictionary:attributes];
    [modifiedAttributes setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    %orig(modifiedAttributes, state);
}
%end
%hook NSAttributedString
- (instancetype)initWithString:(NSString *)str attributes:(NSDictionary<NSAttributedStringKey, id> *)attrs {
    NSMutableDictionary *modifiedAttributes = [NSMutableDictionary dictionaryWithDictionary:attrs];
    [modifiedAttributes setObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    return %orig(str, modifiedAttributes);
}
%end
%hook CATextLayer
- (void)setTextColor:(CGColorRef)textColor {
    %orig([UIColor whiteColor].CGColor);
}
%end
%hook ASTextNode
- (NSAttributedString *)attributedString {
    NSAttributedString *originalAttributedString = %orig;
    NSMutableAttributedString *newAttributedString = [originalAttributedString mutableCopy];
    [newAttributedString addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0, newAttributedString.length)];
    return newAttributedString;
}
%end
%hook ASTextFieldNode
- (void)setTextColor:(UIColor *)textColor {
   %orig([UIColor whiteColor]);
}
%end
%hook ASTextView
- (void)setTextColor:(UIColor *)textColor {
   %orig([UIColor whiteColor]);
}
%end
%hook ASButtonNode
- (void)setTextColor:(UIColor *)textColor {
   %orig([UIColor whiteColor]);
}
%end
%end
*/

# pragma mark - ctor
%ctor {
    %init;
    if (lowContrastMode()) {
        %init(gLowContrastMode);
    }
/*
    if (customContrastMode()) {
        %init(gCustomContrastMode);
    }
*/
}
