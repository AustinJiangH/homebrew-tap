cask "privovoice" do
  version "0.2.0"
  sha256 "c5b930d9310f91211a03b4b680009372c63dc5149c983293f6b11f11f98b0c1a"

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
