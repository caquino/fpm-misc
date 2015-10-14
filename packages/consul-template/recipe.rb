class ConsulTemplate < FPM::Cookery::Recipe
  name          'consul-template'
  version       '0.10.0'
  revision      0
  description   'Generic template rendering and notifications with Consul'
  homepage      'https://github.com/hashicorp/consul-template'
  section       'admin'

  source        "https://github.com/hashicorp/consul-template/releases/download/v#{version}/consul-template_#{version}_linux_amd64.tar.gz"
  sha256        'ef298a2ae54cf51dbfc4108194299a9055b252ff9b917e7dd40c72fa30820096'

  def build

  end

  def install
    install_bin
  end

  private

  def install_bin
    folder = File.join(File.basename(source, '.tar.gz'))
    glob = File.join(builddir(folder),'consul-template')

    Dir[glob].each do |file|
      bin.install(file)
    end
  end
end
