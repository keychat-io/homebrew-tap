class Keychat < Formula
  desc "Encrypted messaging CLI over Nostr with Signal protocol"
  homepage "https://github.com/keychat-io/keychat-protocol"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.2.0/keychat-aarch64-apple-darwin.tar.gz"
      sha256 "9c8c29fd71edbac38acaf0679b8ade6f018ea3e357d40110e4fe4b46639fca13"
    else
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.2.0/keychat-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.2.0/keychat-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.2.0/keychat-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "keychat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keychat --version")
  end
end
