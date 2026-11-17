cask "novavoice" do
  version "0.7.86"
  sha256 "8297f3e06822833832131895dae84cbe493a2e115fb775c5ae7a687d05fd0c23"

  url "https://novavoice.org/updates/macos/NovaVoice_#{version}_universal.dmg"
  name "NovaVoice"
  desc "Voice, chat and screen sharing for friends and communities"
  homepage "https://novavoice.org/"

  livecheck do
    url "https://novavoice.org/updates/macos/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "NovaVoice.app"

  zap trash: [
    "~/Library/Application Support/com.novavoice.desktop",
    "~/Library/Caches/com.novavoice.desktop",
    "~/Library/Preferences/com.novavoice.desktop.plist",
    "~/Library/Saved Application State/com.novavoice.desktop.savedState",
    "~/Library/WebKit/com.novavoice.desktop",
  ]
end
