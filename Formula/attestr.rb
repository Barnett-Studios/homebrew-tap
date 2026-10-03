class Attestr < Formula
  desc "Promise-Theory verification: assess a turn's output against declared promises"
  homepage "https://github.com/Barnett-Studios/attestr"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.0/attestr-aarch64-apple-darwin.tar.gz"
      sha256 "a470d34614b8cc5ab7c7b2c398765ca5a117740163689a928fff1c64a494eacc"
    else
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.0/attestr-x86_64-apple-darwin.tar.gz"
      sha256 "59aa2df2f6b6888a5d1d6d682dfd2d51ee4619f782138ed0f5ac816fbd406497"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.0/attestr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fedb1cc43d9f4ee4730276289412a3d73a040a02b717a940b45f5176ec0b2b87"
    else
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.0/attestr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95992aaadb83fd3aa50a35fcd8184e42bcdfac038b2f02eaa2618d4a458db7d2"
    end
  end

  def install
    bin.install "attestr"
  end

  test do
    system "#{bin}/attestr", "--help"
  end
end
