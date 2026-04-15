cask "orchardgrid" do
  version "1.17.7"
  sha256 "76ac7be68fc5f99046ebedfa62513c7194d80c1eed98965113a7b7cc893881e5"

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
