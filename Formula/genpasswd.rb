class Genpasswd < Formula
  desc "Generates iOS style strong password suggested by Safari"
  homepage ""
  url "https://github.com/everdrone/genpasswd/archive/v0.1.1.tar.gz"
  sha256 "f630c6eebcf936e7c5c7c84cd45fa9537125e87a342e1cce10a1d4bab8d1965c"

  def install
    ENV['GEM_HOME'] = libexec
    system 'gem', 'build', 'genpasswd.gemspec'
    system 'gem', 'install' "genpasswd-#{version}.gem"
    bin.install libexec/"bin/genpasswd"
    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV['GEM_HOME'])
  end
end
