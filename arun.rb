# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Arun < Formula
  desc ""
  homepage ""
  url "https://github.com/ahuigo/arun/archive/refs/tags/master.tar.gz"
  version "v0.1.7"
  sha256 "8ae4cc84a79d667341fcf912faac7cfc7ec5fc4e9c64d0d198885688d8c32933"
  license "MIT"

  # depends_on "cmake" => :build
  depends_on "go" => :build


  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    # for binary
    # bin.install "arun"
    system "ls"
    system "go", "build", "-trimpath", "-ldflags", "-w -s", "-o", bin/name, "."
  end

  def caveats
    <<~EOS
      arun is insalled to #{bin}/arun
      For help:
        arun -h
    EOS
  end

  test do
    system "#{bin}/arun", "-h"
  end
end
