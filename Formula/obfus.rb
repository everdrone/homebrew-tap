class Obfus < Formula
  desc "File compression and encryption tool"
  homepage "https://github.com/everdrone/obfus"
  url "https://github.com/everdrone/obfus/archive/v0.1.5.tar.gz"
  sha256 "4f954d2308c1433007817a79e73d83dd90ee343a615282a36fcdc8f5412e6bce"

  epends_on "ruby" if MacOS.version <= :sierra
  depends_on "brotli"
  depends_on "gnupg"

  def install
    system "rake", "mklink", "prefix=#{prefix}"
  end

  # test do
  # end
end
