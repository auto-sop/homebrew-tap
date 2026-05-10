class AutoSop < Formula
  desc "Make Claude Code self-improving — auto-detect mistakes, write CLAUDE.md directives"
  homepage "https://auto-sop.com"
  url "https://registry.npmjs.org/auto-sop/-/auto-sop-0.1.10.tgz"
  sha256 "65a1d4239dd6b3843e1f4fb958cbee46bd79941ef3d8938c7eecef5af2b876be"
  license "Elastic-2.0"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/auto-sop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto-sop --version")
  end
end
