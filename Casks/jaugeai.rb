cask "jaugeai" do
  version "0.5.29"
  sha256 "3d516879d5de6b673ff8c086b101b2d249d33e0e683937f4e4db5350e9efd164"

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
