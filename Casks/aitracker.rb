cask "aitracker" do
  download_url = on_arch_conditional(
    arm:   "https://github.com/estelwalks/aitracker/releases/latest/download/AITracker-arm64.dmg",
    intel: "https://github.com/estelwalks/aitracker/releases/latest/download/AITracker-x64.dmg",
  )

  version "1.0.2"
  sha256 arm:   "e58da23ef2250883c42f4e68ad92537043fb8ee0e1997b51f331682ec1e79647",
         intel: "a164701ae3f66b05e303e4b7281eb4997266355f8a08748c794e070ae5e485b5"

  url download_url
  name "AITracker"
  desc "Local-first AI development asset dashboard"
  homepage "https://github.com/estelwalks/aitracker"

  livecheck do
    skip "Version comes from the release metadata that generated this cask"
  end

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
