require_relative 'spec_helper'

describe 'nginxtests site.yml' do
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

  describe package('nginx') do
    it { should be_installed }
  end

  describe service('nginx') do
    it { should be_enabled }
  end

  describe service('nginx') do
    it { should be_running }
  end
end