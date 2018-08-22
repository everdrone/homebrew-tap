class Obfus < Formula
  desc "File compression and encryption tool"
  homepage "https://github.com/everdrone/obfus"
  url "https://github.com/everdrone/obfus.git",
    :tag => "v0.1.5",
    :revision => "014ed7cdd1f547ce420ea90f7463636c42cb8922"

  epends_on "ruby" if MacOS.version <= :sierra
  # depends_on "brotli"
  # depends_on "gnupg"

  # def install
  #   system "rake", "mklink", "prefix=#{prefix}"
  # end

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "obfus.gemspec"
    system "gem", "install", "obfus-#{version}.gem"
    bin.install libexec/"bin/obfus"
    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV["GEM_HOME"])
  end

  # test do
  # end
end
