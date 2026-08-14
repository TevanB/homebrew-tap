cask "parallel-harness-pets" do
  version "0.2.0"

  on_macos do
    on_intel do
      sha256 "c8c4271453ede2212339b87287e9b89ca3944e5fd7ac4367aa5314e9760f24b0"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "b9655b390b61f70d4319ed85698020101570176b0c270a626bee294db69ee4da"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "5360fe6b5b3a125903a733b4340d027b7cdf2c6fccbd7b5ab2af103f009dca32"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "8a2be578a629eea378d5342fb62477c7239620b15270a70d351802b31e7069ba"
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
