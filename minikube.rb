class Minikube < Formula
  desc "Tool that provisions and manages local single-node Kubernetes clusters"
  homepage "https://github.com/kubernetes/minikube"
  url "https://storage.googleapis.com/minikube/releases/v0.4.0/minikube-darwin-amd64"
  version "0.4.0"
  sha256 "ae29ffabbc8766f1681af1fc06dc6805e5fdda4c984d79a2b170269a6ab8a023"
  head "https://github.com/kubernetes/minikube.git"

  def install
    mv "minikube-darwin-amd64", "minikube"
    bin.install "minikube"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minikube version 2>&1")
  end
end
