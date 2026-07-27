cask "privovoice" do
  version "0.1.0"
  sha256 "12cae0e765ac5264137a32d17fec95e258470dc79b37266497b70ddab24888ba"

  url "https://github.com/AustinJiangH/PrivoVoice/releases/download/v#{version}/PrivoVoice-#{version}.dmg"
  name "PrivoVoice"
  desc "Private, on-device push-to-talk dictation for macOS"
  homepage "https://austinjiangh.github.io/PrivoVoice/"

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
