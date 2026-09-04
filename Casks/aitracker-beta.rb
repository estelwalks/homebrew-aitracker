cask "aitracker-beta" do
  download_url = on_arch_conditional(
    arm:   "https://github.com/estelwalks/aitracker/releases/download/v1.0.0-beta.3/AITracker-1.0.0-beta.3-arm64.dmg",
    intel: "https://github.com/estelwalks/aitracker/releases/download/v1.0.0-beta.3/AITracker-1.0.0-beta.3-x64.dmg",
  )

  version "1.0.0-beta.3"
  sha256 arm:   "6f44d305e8e4259bb81d118c7b669e5cd528eee8895fb528567d697d8661cd36",
         intel: "1af270848d46d19af3e1a0b7bb4df864261fdb0cf52466d4dfa22f338580a158"

  url download_url
  name "AITracker Beta"
  desc "Pre-release local-first AI development asset dashboard"
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
