cask 'meslolgs-nf-font' do
  version '1.0.0'
  sha256 '9430e4b0b3f8d1519edb980c8f157837aaffff2a98d6c37f03318e76896ceb25'

  url "https://github.com/andqui/meslo-font/releases/download/v#{version}/meslo.zip"
  appcast 'https://github.com/andqui/meslo-font/releases.atom'
  name 'MesloLGS NF (Patched)'
  homepage 'https://github.com/andqui/meslo-font'

  font 'MesloLGS NF Regular.ttf'
  font 'MesloLGS NF Italic.ttf'
  font 'MesloLGS NF Bold.ttf'
  font 'MesloLGS NF Bold Italic.ttf'
end