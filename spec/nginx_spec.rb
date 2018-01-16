require_relative 'spec_helper'

describe 'nginx site.yml' do
  describe package('nginx') do
    it { should be_installed }
  end

  describe file('/etc/nginx/nginx.conf') do
    its(:content) { should match(/^\s+listen 443 ssl;/) }
  end

  describe file('/etc/nginx/ssl/test.crt') do
    its(:content) { should match(/-----END CERTIFICATE-----/) }
  end

  describe file('/etc/nginx/ssl/test.key') do
    its(:content) { should match(/-----END PRIVATE KEY-----/) }
  end

  describe service('nginx') do
    it { should be_enabled }
  end

  describe service('nginx') do
    it { should be_running }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe port(443) do
    it { should be_listening }
  end
end
