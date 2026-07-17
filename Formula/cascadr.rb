class Cascadr < Formula
  desc "Cost-ordered fail-open LLM provider cascade"
  homepage "https://github.com/Barnett-Studios/cascadr"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.1/cascadr-aarch64-apple-darwin.tar.gz"
      sha256 "ccdbc0af7cff4c24c0a7cba2cf12b107821c13f6118bc47101762ae80b122037"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.1/cascadr-x86_64-apple-darwin.tar.gz"
      sha256 "739589336443367fb47611357161baa65ed8267dd934892ffd832e4d3910069b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.1/cascadr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b78716e108a01851dcc03b7cbc3bbb2000ae00d6b456e0be75e0cb7a3b0425a1"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.1/cascadr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c5596ae7060640887551805e46b7f11a074211470f96008df6c88a23d094718"
    end
  end

  def install
    bin.install "cascadr"
  end

  test do
    system "#{bin}/cascadr", "--help"
  end
end
