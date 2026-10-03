class Cascadr < Formula
  desc "Cost-ordered fail-open LLM provider cascade"
  homepage "https://github.com/Barnett-Studios/cascadr"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.2/cascadr-aarch64-apple-darwin.tar.gz"
      sha256 "8ce777818b7e640fc611eb427b8f0dcd023a6d10df75b15be4ce14754b4d6a63"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.2/cascadr-x86_64-apple-darwin.tar.gz"
      sha256 "3a5ef80bc7c4a97381da60381ed5866584bf24abfc78ab52f158c8f650f6ce9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.2/cascadr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30a3c4b89b299a01cf0a8c9811c89db469630126a10d0a9364cc57701f6012ab"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.2/cascadr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "891920a5dd216040acd633073a409695864890f5f92fbc011f7e1a2ecf7f9da3"
    end
  end

  def install
    bin.install "cascadr"
  end

  test do
    system "#{bin}/cascadr", "--help"
  end
end
