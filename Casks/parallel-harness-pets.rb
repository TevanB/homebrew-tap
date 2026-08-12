cask "parallel-harness-pets" do
  version "0.1.3"

  on_macos do
    on_intel do
      sha256 "e09f67c751da44384866d729af6ddb464c5462060283e0166dd92e0916863f34"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "d4e98ff07e337b97d7a9c7e41ac9a0f7f5aee91402a562b3aebf20794205e101"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "e84475b165a06ed4a3a1fd8ce86840d634c4e0dbcfada3160f3c97abb1a80a22"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "84fc0cea8075c576205c9a003e497bb78058c38adb53751700bef43b5a1cac2d"
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
