cask "novavoice" do
  version "0.7.90"
  sha256 "6434eb9c9d4c1c79b9d894b43a9eed4683f63ad71fe2fabf12ae9d9d2fe0b661"

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
