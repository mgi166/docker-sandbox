describe 'Dockerfile' do
  it 'installs ubuntu' do
    os_version = command('lsb_release -a').stdout
    expect(os_version).to include('Ubuntu')
  end
end
