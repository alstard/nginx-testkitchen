require_relative 'spec_helper'

describe 'ntp site.yml' do
  describe package('ntp') do
    it { should be_installed }
  end

  describe file('/etc/ntp.conf') do
    its(:content) { should match(/^server [0-9].uk.pool.ntp.org iburst$/) }
  end

  describe service('ntpd') do
    it { should be_enabled }
  end

  describe service('ntpd') do
    it { should be_running }
  end
end

describe 'nginx site.yml' do
  describe package('nginx') do
    it { should be_installed }
  end

  describe file('/etc/nginx.conf') do
    its(:content) { should match(/^\s+listen 443 ssl;/) }
  end

  describe file('/etc/nginx/ssl/nginx.crt') do
    its(:content) { should match(/-----END CERTIFICATE-----/) }
  end

  describe file('/etc/nginx/ssl/nginx.key') do
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
