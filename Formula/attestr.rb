class Attestr < Formula
  desc "Promise-Theory verification: assess a turn's output against declared promises"
  homepage "https://github.com/Barnett-Studios/attestr"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.1/attestr-aarch64-apple-darwin.tar.gz"
      sha256 "7cecdad3efc655a0f12765f0109cdd00a368c77d4931d2e14bfbb37a778ecab9"
    else
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.1/attestr-x86_64-apple-darwin.tar.gz"
      sha256 "efdcb1fa33ceb26d6638970ca06853ccbba0573f70bd12132b5cf9d5802cd272"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.1/attestr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6dcfba26e023161621c235796c08ff77f4f3c16a2174bdb7a3708093d65fa266"
    else
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.6.1/attestr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4085dbb21ab72a0837d3fcdc8afc2643bd273d1788ccd5f481aedf5cddda0b63"
    end
  end

  def install
    bin.install "attestr"
  end

  test do
    system "#{bin}/attestr", "--help"
  end
end
