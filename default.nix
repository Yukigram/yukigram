{ lib, tdesktop }:

tdesktop.override {
  pname = "yukigram";
  unwrapped = tdesktop.unwrapped.overrideAttrs (f: {
    name = "yukigram-unwrapped";
    version = builtins.elemAt (builtins.match ".*(^|\n)AppVersionStrSmall *([^ ]*)($|\n).*" (builtins.readFile Telegram/build/version)) 1;
    src = ./.;
  });
}
