class Cascadr < Formula
  desc "Cost-ordered fail-open LLM provider cascade"
  homepage "https://github.com/Barnett-Studios/cascadr"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.0/cascadr-aarch64-apple-darwin.tar.gz"
      sha256 "82545c89fb144b323fe66c77201a6b900c8180f1de77682c6d5a3540cdb03d77"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.0/cascadr-x86_64-apple-darwin.tar.gz"
      sha256 "f90d13874e3522c019b4604aed8dd6e4848459ff22c24035cac585ee64ba4ac7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.0/cascadr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cdb819681334e92cb0b0eacdebc62ffc9372e535c4ef621940e3d56fb45ac5b"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.0/cascadr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "825fc9d865c8748d1075c5e85898f44f7478c4cc6628337194f8b094023756e4"
    end
  end

  def install
    bin.install "cascadr"
  end

  test do
    system "#{bin}/cascadr", "--help"
  end
end
