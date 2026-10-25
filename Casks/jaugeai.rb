cask "jaugeai" do
  version "0.5.28"
  sha256 "175b1ceac61e9c176ad96d8e31a180d338766d2f87da99374c5f9329faee6bb6"

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
