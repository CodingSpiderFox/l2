#!/bin/bash

sudo  snap install code --classic

export PATH=$PATH:/snap/bin/
code

proxyArgsForVsCodeExtensions=""
if [ -z "$http_proxy" ]; then
  echo "Not using proxy because no env variable is set"
else
  proxyArgsForVsCodeExtensions="--proxy-server=http=$http_proxy"
  proxyArgsForVsCodeExtensions="$proxyArgsForVsCodeExtensions --proxy-server=https=$http_proxy"
fi

echo "Proxy args for vscode extension installation: $proxyArgsForVsCodeExtensions"

code --install-extension meganrogge.template-string-converter $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension wix.glean $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension wix.vscode-import-cost $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension nrwl.angular-console $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension firsttris.vscode-jest-runner $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension christian-kohler.path-intellisense $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension bradlc.vscode-tailwindcss $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension heaths.vscode-guid $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension dbaeumer.vscode-eslint $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension ms-dotnettools.csharp $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension knisterpeter.vscode-github $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension humano.rest-client $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension llvm-vs-code-extensions.vscode-clangd $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension stylelint.vscode-stylelint $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension gabrielbb.vscode-lombok $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension ms-vscode.vscode-typescript-tslint-plugin $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension dbaeumer.vscode-eslint $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension graphql.vscode-graphql $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension timonwong.ansible-autocomplete $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension mhutchie.git-graph $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension christian-kohler.path-intellisense $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension VisualStudioExptTeam.vscodeintellicode $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension ritwickdey.LiveServer $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension streetsidesoftware.code-spell-checker $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension mechatroner.rainbow-csv $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension oderwat.indent-rainbow $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension 2gua.rainbow-brackets $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension tabnine.tabnine-vscode $proxyArgsForVsCodeExtensions --force --user-data-dir /home/user/.config/Code
code --install-extension james-yu.latex-workshop $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension kameshkotwani.google-search $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension hashicorp.terraform $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension samuelcolvin.jinjahtml $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension coolbear.systemd-unit-file $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension aaron-bond.better-comments $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension mathiasfrohlich.kotlin $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension ms-python.python $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension ms-vscode.powershell $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension mrorz.language-gettext $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension golang.go $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension dotjoshjohnson.xml $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension ms-azuretools.vscode-docker $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension webfreak.debug $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension ms-vscode.cpptools $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension prince781.vala $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension vscjava.vscode-java-pack $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension esbenp.prettier-vscode $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension msjsdiag.debugger-for-chrome $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension dsznajder.es7-react-js-snippets $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension msjsdiag.vscode-react-native $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension eg2.tslint $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension pivotal.vscode-boot-dev-pack $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension zignd.html-css-class-completion $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension gencer.html-slim-scss-css-class-completion $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension abusaidm.html-snippets $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension cssho.vscode-svgviewer $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension jock.svg $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension rogalmic.bash-debug $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension peterjausovec.vscode-docker $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension eamodio.gitlens $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension technosophos.vscode-helm $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension rust-lang.rust $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code
code --install-extension redhat.fabric8-analytics $proxyArgsForVsCodeExtensions --force --user-data-dir ~/.config/Code

mkdir -p ~/.config/Code/User
cp home/user/.config/Code/User/* ~/.config/Code/User/
sudo chown -R $(whoami):$(whoami) ~/.config/Code
