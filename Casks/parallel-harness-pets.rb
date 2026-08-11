cask "parallel-harness-pets" do
  version "0.0.9"

  on_macos do
    on_intel do
      sha256 "7a26cb37f6c001bf42fe66fda42375ba759438ab3aa7d0f8fd331dc0bd639a3a"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "1633845388ad6bd356c5a8bbf9ce85d2f49c1287a7b5306adca9beff7e1b4a85"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "781c15217034f7986a6797657d5365c71573e277dd53429023734c128db0887e"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_arm64.tar.gz"
    end
  end

  name "parallel-harness-pets"
  desc "A creature for every worktree, in your agent's status line"
  homepage "https://github.com/TevanB/parallel-harness-pets"

  binary "pets"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/pets"],
                   must_succeed: false
  end
end
