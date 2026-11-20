cask "privovoice" do
  version "0.2.3"
  sha256 "cf767f44dc529514b0ce19cc2cbde2bfc8495e384cc8aa5cd1b0b260b6311c2e"

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
