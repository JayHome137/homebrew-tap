cask "deepseekmonitor" do
  version "1.4.11"
  sha256 "6e57ebc01a2bcfb32bafcad579ce58cc9224d7eb620757ca2d689755d8b4f082"

  url "https://github.com/JayHome137/DeepSeekMonitor/releases/download/v#{version}/DeepSeekMonitor-v#{version}.dmg"
  name "DeepSeek Monitor"
  desc "Menu bar app for monitoring DeepSeek V4 Flash and Pro usage"
  homepage "https://github.com/JayHome137/DeepSeekMonitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "DeepSeekMonitor.app"

  zap trash: [
    "~/Library/Application Support/DeepSeekMonitor",
    "~/Library/Containers/com.deepseek.monitor.widget",
    "~/Library/Group Containers/N5YV5FV235.group.com.deepseek.monitor",
    "~/Library/Preferences/com.deepseek.monitor.plist",
  ]
end
