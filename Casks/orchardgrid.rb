cask "orchardgrid" do
  version "1.17.11"
  sha256 "8d792ca78d68b029343e4e9adabc51745326265f0dd05b9674aafd4cfee53f58"

  url "https://github.com/BingoWon/orchardgrid-app/releases/download/v#{version}/OrchardGrid-v#{version}-macos.dmg",
      verified: "github.com/BingoWon/orchardgrid-app/"
  name "OrchardGrid"
  desc "Share Apple Intelligence Anywhere"
  homepage "https://orchardgrid.com/"

  app "OrchardGrid.app"
  binary "#{appdir}/OrchardGrid.app/Contents/Resources/og"

  zap trash: [
    "~/Library/Application Support/com.orchardgrid.app",
    "~/Library/Containers/com.orchardgrid.app",
    "~/Library/Group Containers/group.com.orchardgrid.shared",
    "~/.config/orchardgrid",
  ]
end
