class Unjson < Formula
    desc "Flatten JSON logs"
    homepage "https://github.com/daulet/unjson"
    version "0.1.0"
  
    if Hardware::CPU.intel?
      url "https://github.com/daulet/unjson/releases/download/v#{version}/unjson-darwin-x86_64"
      sha256 "9e12c422d6c5f0a261bab3f5ba41a0cd17f17ad98d477136cbabf07028b83872"
    elsif Hardware::CPU.arm?
      url "https://github.com/daulet/unjson/releases/download/v#{version}/unjson-darwin-aarch64"
      sha256 "3e5a0e202c558dc5d15c8cd66c1148ce09530b291e7175dff3a6cbeb0349d19e"
    end
  
    def install
      if Hardware::CPU.intel?
          bin.install "unjson-darwin-x86_64" => "unjson"
      elsif Hardware::CPU.arm?
          bin.install "unjson-darwin-aarch64" => "unjson"
      end
    end
  
    test do
      system "#{bin}/unjson", "--version"
    end
  
  end
  
  