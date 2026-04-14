cask "orchardgrid" do
  version "1.14.6"
  sha256 "93e8659e94e06f99a53e12fe90393a335c237a4f281bf63da3a0df32dc5f7f3e"

  url "https://github.com/BingoWon/orchardgrid-app/releases/download/v#{version}/OrchardGrid-v#{version}-macos.dmg"
  name "OrchardGrid"
  desc "Share Apple Intelligence Anywhere"
  homepage "https://orchardgrid.com/"

  app "OrchardGrid.app"
end
