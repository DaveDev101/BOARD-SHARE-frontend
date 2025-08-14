// Screen Type
enum SType { mobile, tablet, smallWeb, largeWeb }

SType getSType(double screenWidth) {
  return (screenWidth > kMaxWidth)
      ? SType.largeWeb
      : (screenWidth > kMaxTabletWidth)
      ? SType.smallWeb
      : (screenWidth > kMaxMobileWidth)
      ? SType.tablet
      : SType.mobile;
}

// global
const kMaxWidth = 1320.0;
const kMaxMobileWidth = 680.0;
const kMaxTabletWidth = 1024.0;

// app bar
const kAppBarExtendedHeight = 540.0;
const kAppBarHeightE = 144.0;
const kAppBarHeight = 112.0;

// footer
const kFooterHeight = 560.0;

// padding, margin
const kPadding = 16.0;
const kSpace = kPadding / 2;
const kESpace = 20.0;
const kDSpace = kSpace / 2;
const kMargin = 20.0;
const kEMargin = 36.0;
const kDMargin = 10.0;

// Form Fields
const kFHeight = 40.0;
const kEFHeight = 48.0;
const kEEFHeight = 60.0;
const kFWidth = 300.0;
