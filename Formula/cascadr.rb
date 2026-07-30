class Cascadr < Formula
  desc "Cost-ordered fail-open LLM provider cascade"
  homepage "https://github.com/Barnett-Studios/cascadr"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.2.0/cascadr-aarch64-apple-darwin.tar.gz"
      sha256 "d1dbe31dd730dcbfcba063dc98bebb5e538841164842864b405049c6920a1c6e"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.2.0/cascadr-x86_64-apple-darwin.tar.gz"
      sha256 "4b3f919514ef86dcb3981d82d66c238beb84717dc8409ffcba1076391b0d37b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.2.0/cascadr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "161b40b8cfd8661de5f3932adcba3113bdcbf3f5672e1f9d6c68781affd415c1"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.2.0/cascadr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27da7c103c1a936a69b76aed0b0b3ecd671155ceb903caf2a6bcce38d75e4d85"
    end
  end

  def install
    bin.install "cascadr"
  end

  test do
    system "#{bin}/cascadr", "--help"
  end
end
