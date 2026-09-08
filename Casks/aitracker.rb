cask "aitracker" do
  download_url = on_arch_conditional(
    arm:   "https://github.com/estelwalks/aitracker/releases/download/v1.0.1/AITracker-1.0.1-arm64.dmg",
    intel: "https://github.com/estelwalks/aitracker/releases/download/v1.0.1/AITracker-1.0.1-x64.dmg",
  )

  version "1.0.1"
  sha256 arm:   "67bcc9478e44eb48dd1cf05ea4f7ffb167204d70d7aafd028e55fc8ffec4dd59",
         intel: "6356c86e2489c76aee070b8876b6775b984568c724ae503a5159483fd72bbe95"

  url download_url
  name "AITracker"
  desc "Local-first AI development asset dashboard"
  homepage "https://github.com/estelwalks/aitracker"

  depends_on macos: :big_sur

  app "AITracker.app"

  uninstall quit: "com.aitracker.desktop"

  zap trash: [
    "~/.aitracker",
    "~/Library/Application Support/AITracker",
    "~/Library/Preferences/com.aitracker.desktop.plist",
    "~/Library/Saved Application State/com.aitracker.desktop.savedState",
  ]
end
