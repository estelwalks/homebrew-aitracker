cask "aitracker" do
  download_url = on_arch_conditional(
    arm:   "https://github.com/estelwalks/aitracker/releases/latest/download/AITracker-arm64.dmg",
    intel: "https://github.com/estelwalks/aitracker/releases/latest/download/AITracker-x64.dmg",
  )

  version "1.0.3"
  sha256 arm:   "efb96b83169194f9278938ec00fb2ef2757278c4254a64fc1d05bd1781141295",
         intel: "40aab4cea480fb857adfb3a36936b5a9dab6629aa5dd0485c353cecc3b24eea0"

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
