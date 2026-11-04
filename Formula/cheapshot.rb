class Cheapshot < Formula
  desc "On-device screenshot, video, and PDF OCR with redaction, for AI agents"
  homepage "https://github.com/all-caps-dev/cheapshot"
  url "https://github.com/all-caps-dev/cheapshot/releases/download/v0.5.0/cheapshot-v0.5.0-macos.zip"
  sha256 "a0772202438a04280b8bb7aeb65b4293de5d290571d5c623a0bded2610125c5c"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "cheapshot"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/cheapshot --version")
  end
end
