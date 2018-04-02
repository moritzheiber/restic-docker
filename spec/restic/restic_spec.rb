require 'spec_helper'

describe 'moritzheiber/restic' do
  set :os, family: :alpine
  set :backend, :docker
  set :docker_image, 'moritzheiber/restic'
  set :docker_container_create_options, 'Entrypoint' => ['sh']

  describe file('/usr/bin/restic') do
    it { should exist }
    it { should be_file }
    it { should be_executable }
  end

  describe file('/tmp/restic') do
    it { should_not exist }
  end

  %w[openssh ca-certificates fuse].each do |p|
    describe package(p) do
      it { should be_installed }
    end
  end
end
