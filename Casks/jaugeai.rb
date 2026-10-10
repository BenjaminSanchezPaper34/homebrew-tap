cask "jaugeai" do
  version "0.5.26"
  sha256 "2dae03f87836cf454042055d84e8a1ae0f89b1dfe26bf0e97f70c6c87028007f"

  url "https://github.com/BenjaminSanchezPaper34/aijauge-releases/releases/download/v#{version}/JaugeAI-#{version}.dmg"
  name "JaugeAI"
  desc "Usage limits of Claude, Codex and Gemini plans in the menu bar"
  homepage "https://jaugeai.com/"

  livecheck do
    url "https://raw.githubusercontent.com/BenjaminSanchezPaper34/aijauge-releases/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "JaugeAI.app"

  zap trash: [
    "~/Library/Application Support/AIjauge",
    "~/Library/Caches/fr.paper34.aijauge",
    "~/Library/Group Containers/3G7ZMQU6FC.group.fr.paper34.aijauge",
    "~/Library/Preferences/fr.paper34.aijauge.plist",
  ]
end
