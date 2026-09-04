cask "aitracker" do
  download_url = on_arch_conditional(
    arm:   "https://github.com/estelwalks/aitracker/releases/download/v1.0.0/AITracker-1.0.0-arm64.dmg",
    intel: "https://github.com/estelwalks/aitracker/releases/download/v1.0.0/AITracker-1.0.0-x64.dmg",
  )

  version "1.0.0"
  sha256 arm:   "6048c46d32f19b8f1aa6f82ae1c9c296ba8b7303b5b280113a7a54eb2fafd6a4",
         intel: "85e2b1a4ba4b0f8074f898e66185936de413e38c084868872dad8d6211758695"

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
