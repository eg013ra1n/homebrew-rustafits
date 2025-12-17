class Rustafits < Formula
  desc "High-performance FITS/XISF to JPEG converter with auto-stretch"
  homepage "https://github.com/eg013ra1n/rustafits"
  url "https://crates.io/api/v1/crates/rustafits/0.2.1/download"
  sha256 "c7bfd3a158f9271c0cb94f50ff57f7a2dc32ee2430e3d8f9439bd0213a144ddf"
  license "GPL-3.0"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build
  depends_on "lz4"
  depends_on "zstd"

  def install
    ENV["RUSTAFITS_PORTABLE"] = "1"
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FITS to JPEG Converter", shell_output("#{bin}/rustafits --help", 1)
  end
end
