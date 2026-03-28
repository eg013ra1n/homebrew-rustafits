class Rustafits < Formula
  desc "High-performance FITS/XISF to JPEG converter with auto-stretch"
  homepage "https://github.com/eg013ra1n/rustafits"
  url "https://github.com/eg013ra1n/rustafits/archive/v0.9.0.tar.gz"
  sha256 "1cdabe9d85d4b8797d369b12e63b46bed305385ca7019719009b27eda780b37f"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FITS/XISF to JPEG Converter", shell_output("#{bin}/rustafits --help", 1)
  end
end
