{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [
    pkgs.jdk17
    pkgs.kotlin
  ];
  idx.extensions = [
    "vscjava.vscode-java-pack"
    "redhat.vscode-xml"
    "vscjava.vscode-gradle"
    "fwcd.kotlin"
  ];
  idx.previews = {
    previews = [
      {
        command = [
          "/bin/bash"
          ".idx/run.sh"
        ];
        id = "android";
        manager = "flutter";
      }
    ];
  };
}