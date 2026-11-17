cask "novavoice" do
  version "0.7.87"
  sha256 "e11d20206e7693ef705f18bd9d2fde62dbc13ab9bff01b6813c2ab6a6444df2b"

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
