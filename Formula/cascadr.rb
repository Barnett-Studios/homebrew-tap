class Cascadr < Formula
  desc "Cost-ordered fail-open LLM provider cascade"
  homepage "https://github.com/Barnett-Studios/cascadr"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.0/cascadr-aarch64-apple-darwin.tar.gz"
      sha256 "eaf9628f3dddf59fa87ad76e2caed56ce47b26f00428153359f86e631fd88761"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.0/cascadr-x86_64-apple-darwin.tar.gz"
      sha256 "28709f2b3041d37bd8fda2e457da1b2a9119fa548b567e6f65b26959ea39e6c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.0/cascadr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "379369bef0865c1afe0e8b8062322044ab78e85d7cf939133be41e933fb30ea2"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.0/cascadr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52b49a3d8fdb1e6a5d0db00d8c2e19366d5fa7bb69890688429894c6e70ed29d"
    end
  end

  def install
    bin.install "cascadr"
  end

  test do
    system "#{bin}/cascadr", "--help"
  end
end
