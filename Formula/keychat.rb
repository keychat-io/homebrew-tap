class Keychat < Formula
  desc "Encrypted messaging CLI over Nostr with Signal protocol"
  homepage "https://github.com/keychat-io/keychat-protocol"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.1.1/keychat-aarch64-apple-darwin.tar.gz"
      sha256 "1071dfe5216b437b58c2b8b4aba4b465248cc1c11c453871523d562a20d682ef"
    else
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.1.0/keychat-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.1.0/keychat-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/keychat-io/keychat-protocol/releases/download/cli-v0.1.0/keychat-x86_64-unknown-linux-gnu.tar.gz"
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
