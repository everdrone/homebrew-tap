class Genpasswd < Formula
  desc 'Generates iOS style strong password suggested by Safari'
  homepage ''
  url 'https://github.com/everdrone/genpasswd/archive/v0.1.3.tar.gz'
  sha256 '17abe514f2ebe1b82e13153cec3a1913144a94d68d84a607f1e6fa79350ba6cb'

  depends_on :ruby if MacOS.version <= :sierra

  def install
    ENV["GEM_HOME"] = libexec

    system "gem", "build", "genpasswd.gemspec"
    system "gem", "install", "--ignore-dependencies", "genpasswd-#{version}.gem"

    bin.install "bin/genpasswd"
  end
end
