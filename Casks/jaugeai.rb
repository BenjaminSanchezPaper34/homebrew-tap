cask "jaugeai" do
  version "0.5.25"
  sha256 "7473d4a8583a4567ebb77247532cdf0e4c1ac2a93931a3c467b53dd229c213f8"

  url "https://github.com/BenjaminSanchezPaper34/aijauge-releases/releases/download/v#{version}/JaugeAI-#{version}.dmg",
      verified: "github.com/BenjaminSanchezPaper34/aijauge-releases/"
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
