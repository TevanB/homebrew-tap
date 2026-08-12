cask "parallel-harness-pets" do
  version "0.1.2"

  on_macos do
    on_intel do
      sha256 "1cae7faeb0b334a2951959f0df30c3bfe3374b68f08c4a01e16c79b9b24806ab"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "200e9b4bc812e13d9ea4001c8e1810c3cab55114209bda6dd7cf5f17ec6db67f"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "7bf95bf7cc49b006193f06ab24fa0773e9a4f4daa314ceacec762d37f524d140"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "438fbb3bb2743e256434ae4c21ac65fb74ba37d424db85145f84729bd55978d3"
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
