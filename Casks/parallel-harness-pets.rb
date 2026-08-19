cask "parallel-harness-pets" do
  version "0.2.3"

  on_macos do
    on_intel do
      sha256 "4b1efbd801cf369fa6a1b03352decc3e1a27faf1cdb2d8769b2749295eeac780"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "8a8a36437ec4a255b017a9816169ad28ef704a4e3e8e0788ff3296a740de05fd"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "787e950bfc9fc2044e6fbdaddc80df30dd3a3ef3f2dc97b04184d468187be42f"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "d3a7b609c6d51de495ce0fe86ba7b60afe60d69b3ba089215911bb1cf5e796a9"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_arm64.tar.gz"
    end
  end

  name "parallel-harness-pets"
  desc "A creature for every worktree, in your agent's status line"
  homepage "https://github.com/TevvvB/parallel-harness-pets"

  binary "pets"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/pets"],
                   must_succeed: false
  end
end
