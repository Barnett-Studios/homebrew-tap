class Baseplate < Formula
  desc "Shared support crate for the Barnett Studios agentic-harness toolkit"
  homepage "https://github.com/Barnett-Studios/baseplate"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.3.0/baseplate-aarch64-apple-darwin.tar.gz"
      sha256 "656739c67dde99c55b8d492fbc232988bab2d33089e7d6968bf55d2213efad4a"
    else
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.3.0/baseplate-x86_64-apple-darwin.tar.gz"
      sha256 "e8e6b569d5dfe4fbb8889a6e2d0e788a0b45f1ea4deb2ab0f215bbd951417e97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.3.0/baseplate-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5476939ee5c2cfb8426e9ba50898e3009eacafa63f1ad3787bea06a03616b199"
    else
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.3.0/baseplate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "247f5884094ccd1120e7bc7a9072823bc8ecdfa8357edea0873f7f4454e1e30b"
    end
  end

  def install
    bin.install "baseplate"
  end

  test do
    system "#{bin}/baseplate", "--help"
  end
end
