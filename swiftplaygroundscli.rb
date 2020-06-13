class Swiftplaygroundscli < Formula
    desc "Easily generate Swift Playgrounds from your command line 👨‍💻"
    homepage "https://github.com/SvenTiigi/SwiftPlaygroundsCLI"
    url "https://github.com/SvenTiigi/SwiftPlaygroundsCLI/archive/1.0.2.tar.gz"
    sha256 "e364b2b294867e4bbc351dbe985912e2eb4e9410cdb2fcd9a7c1a852db152290"
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
