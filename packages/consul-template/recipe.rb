class ConsulTemplate < FPM::Cookery::Recipe
  name          'consul-template'
  version       '0.11.0'
  revision      0
  description   'Generic template rendering and notifications with Consul'
  homepage      'https://github.com/hashicorp/consul-template'
  section       'admin'

  source        "https://github.com/hashicorp/consul-template/releases/download/v#{version}/consul_template_#{version}_linux_amd64.zip"
  sha256        '1162de7ecd6303dccc3e8c3cb7faaecb55d1577eea9b690c56cb156102694f15'


  def build

  end

  def install
    install_bin
  end

  private

  def install_bin
    folder = File.join(File.basename(source, '.zip'))
    glob = File.join(builddir(folder),'consul-template')

    Dir[glob].each do |file|
      bin.install(file)
    end
  end
end
