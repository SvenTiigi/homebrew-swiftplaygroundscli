class SwiftPlaygroundsCLI < Formula
    desc "Easily generate Swift Playgrounds from your command line 👨‍💻"
    homepage "https://github.com/SvenTiigi/SwiftPlaygroundsCLI"
    url "https://github.com/SvenTiigi/SwiftPlaygroundsCLI/archive/1.0.0.tar.gz"
    sha256 "9f9665b21dd1ebe1d6d62edbfbbb8f146a067efcf2c2c5efd128d8aa59fbfefa"
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
