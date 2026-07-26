cask "deepseekmonitor" do
  version "1.4.9"
  sha256 "29b43536b47c9dd2a1aa88130dc93a9409615c0233f5a8f48e5fcb03fab4f524"

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
