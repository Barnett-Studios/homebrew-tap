class Cascadr < Formula
  desc "Cost-ordered fail-open LLM provider cascade"
  homepage "https://github.com/Barnett-Studios/cascadr"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.1/cascadr-aarch64-apple-darwin.tar.gz"
      sha256 "5705558225ebcaf84a868cfe882725ae985abf9b3c3044b479cc5fa3a1158ad0"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.1/cascadr-x86_64-apple-darwin.tar.gz"
      sha256 "128c72ddbc5370d83033df18ebfe7ed4501c7ac17d638eb86c2071f70da0eb95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.1/cascadr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe9f105df1fdd67bc1f551829f11e32d6a71f20eb0ca2db2c957b54279416459"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.3.1/cascadr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "986cbf26e5a6ecedf29ab0c7e282f44ca28ce718669a97705bf4e1f9e82bcb03"
    end
  end

  def install
    bin.install "cascadr"
  end

  test do
    system "#{bin}/cascadr", "--help"
  end
end
