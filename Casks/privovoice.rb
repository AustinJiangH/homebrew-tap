cask "privovoice" do
  version "0.2.1"
  sha256 "570addbb5b323ac3342e2c8c7871e22e5e39cdbeb3eefc13ec3175ba084b7e11"

  url "https://github.com/AustinJiangH/PrivoVoice/releases/download/v#{version}/PrivoVoice-#{version}.dmg"
  name "PrivoVoice"
  desc "Private, on-device push-to-talk dictation for macOS"
  homepage "https://privovoice.com/"

  depends_on arch: :arm64

  app "PrivoVoice.app"

  zap trash: [
    "~/Library/Application Support/PrivoVoice",
    "~/Library/PrivoVoice",
  ]

  caveats <<~EOS
    PrivoVoice requires macOS 27 or later (Apple Silicon).

    The app is open source but not yet notarized by Apple. Install with
    --no-quarantine to skip the Gatekeeper prompt, or right-click the app
    and choose Open on first launch.
  EOS
end
