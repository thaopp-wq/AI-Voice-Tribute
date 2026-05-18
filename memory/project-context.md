---
name: artimind-ai-album-context
description: Artimind AI Album — iOS 26 Liquid Glass app structure, theme, and architecture
metadata:
  type: project
---

App: Artimind AI Album — AI-powered family photo/video album creator. Dark theme (pure black). 4 tabs: Home, Moments, Loved One, Restore.

**Stack**: SwiftUI, iOS 26+, Liquid Glass, DM Sans + Cormorant Garamond fonts.

**Architecture**:
- `ContentView.swift` — native `TabView` with iOS 26 `Tab` API (auto Liquid Glass tab bar)
- `Shared/LiquidGlass/` — production glass component library
  - `GlassTypes.swift` — ShapeType/GlassStyle enums
  - `GlassButtonBackgroundModifier.swift` — `.glassBackground()` extension (single source of truth)
  - `LiquidGlassIconButton.swift` — SF Symbol + optional title glass button
  - `LiquidGlassTextButton.swift` — text glass button
  - `GlassCard.swift` — content container with glass
- `Theme/AppTheme.swift` — AppColor, AppFont (cormorant/dmSans), AppSpacing
- `Components/NavBarView.swift` — `GlassBackButton` + `GlassCircleButton` using `.glassBackground()`

**Key design decisions**:
- Custom `FloatingTabBar` was replaced with native iOS 26 `TabView` (gets Liquid Glass tab bar free)
- `.glassBackground()` extension wraps all glass calls — never call `.glassEffect()` directly
- iOS deployment target: 26.0
- Brand accent: `#007AE4` (tab active blue), `#A60816`/`#F2333F` (brand red)

**Design system (Figma)**: `ArtimindDS` tokens in `AppTheme.swift`. Figma components in `Components/ArtimindComponents.swift`: `ArtBadge`, `ArtPillButton`, `ArtLogo`, `HeroMemoryCard`, `MemoryAvatar`, `PageIndicator`, `ExploreCard`. Required image assets in Assets.xcassets: `hero-memory`, `avatar-man`, `avatar-woman`, `explore-loved-ones`, `explore-restore`, `explore-living-album`.

**Why:** User requested Liquid Glass + Figma design system applied to the app.
