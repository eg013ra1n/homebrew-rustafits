class Rustafits < Formula
  desc "High-performance FITS/XISF to JPEG converter with auto-stretch"
  homepage "https://github.com/eg013ra1n/rustafits"
  url "https://github.com/eg013ra1n/rustafits/archive/v0.8.5.tar.gz"
  sha256 "6aa52be86cf3b5cdee74f845fefd7ebb0de589f2575f70e09bc05066132851eb"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FITS/XISF to JPEG Converter", shell_output("#{bin}/rustafits --help", 1)
  end
end
