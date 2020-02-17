class Swiftplaygroundscli < Formula
    desc "Easily generate Swift Playgrounds from your command line 👨‍💻"
    homepage "https://github.com/SvenTiigi/SwiftPlaygroundsCLI"
    url "https://github.com/SvenTiigi/SwiftPlaygroundsCLI/archive/1.0.1.tar.gz"
    sha256 "86a5bfa634e52da306fa4f4ab756741bb057c336505e460553fafaac48a49d6f"
    head "https://github.com/SvenTiigi/SwiftPlaygroundsCLI"

    depends_on :xcode => ["8.0", :build]
  
    def install
        system "swift", "build", "--disable-sandbox", "-c", "release"
        bin.install ".build/release/swiftplayground"
    end

    test do
        system "#{bin}/swiftplayground", "--version"
    end
end
