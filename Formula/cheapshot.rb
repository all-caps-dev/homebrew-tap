class Cheapshot < Formula
  desc "On-device screenshot, video, and PDF OCR with redaction, for AI agents"
  homepage "https://github.com/all-caps-dev/cheapshot"
  url "https://github.com/all-caps-dev/cheapshot/releases/download/v0.6.0/cheapshot-v0.6.0-macos.zip"
  sha256 "113164b29b4b939987b8235568831a691b884b648917d1cda17a739d7de7e380"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "cheapshot"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/cheapshot --version")
  end
end
