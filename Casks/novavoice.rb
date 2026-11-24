cask "novavoice" do
  version "0.7.91"
  sha256 "fb4d22df4daeb2b5e37d10941890c2ddaec5f7a092be280c330b80a69dd4728e"

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
