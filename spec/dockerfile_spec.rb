require 'serverspec'
require 'docker'

describe 'Dockerfile' do
  before do
    image = Docker::Image.build_from_dir('.')
  end

  it 'installs ubuntu' do
    os_version = command('lsb_release -a').stdout
    expect(os_version).to include('ubuntu')
  end
end
