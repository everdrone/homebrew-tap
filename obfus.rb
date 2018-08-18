class Obfus < Formula
  desc "File compression and encryption tool"
  homepage ""
  url "https://github.com/everdrone/obfus/archive/v0.1.1.tar.gz"
  sha256 "33dfe9736edcb3229e07af7aaf8328445324c28702dcf07de98aef5c1c5bd301"

  def install
    bin.install "bin/obfus"
  end

  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
  #   # this will need to be a test that verifies the functionality of the
  #   # software. Run the test with `brew test obfus`. Options passed
  #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #   #
  #   # The installed folder is not in the path, so use the entire path to any
  #   # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "false"
  # end
end
