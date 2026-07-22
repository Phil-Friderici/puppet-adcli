require 'spec_helper'
describe 'adcli' do
  describe 'on RedHat 6.7' do
    let(:facts) do
      {
        os: {
          'family' => 'RedHat',
          'release' => {
            'full'  => '6.7',
            'major' => '6',
          },
        },
      }
    end
    let(:params) do
      {
        ad_domain: 'ad.example.com',
        ad_join_username: 'userid',
        ad_join_password: 'secret',
        ad_join_domain_controller: 'dc01.example.com',
        ad_join_ou: 'cn=computers,dn=ad,dn=example,dn=com',
        ad_join_computer_name: 'TEST-RHEL-67',
        ad_join_os: 'RedHat',
        ad_join_os_version: '6',
        ad_join_os_service_pack: '7',
      }
    end

    context 'with defaults for all parameters' do
      it { is_expected.to contain_class('adcli::install') }
      it { is_expected.to contain_class('adcli::join') }
      it { is_expected.to contain_package('adcli').with_ensure('present') }
      it { is_expected.to contain_exec('adcli_join') }
    end
  end

  describe 'on RedHat 7.2' do
    let(:facts) do
      {
        os: {
          'family' => 'RedHat',
          'release' => {
            'full'  => '7.2',
            'major' => '7',
          },
        },
      }
    end
    let(:params) do
      {
        ad_domain: 'ad.example.com',
        ad_join_username: 'userid',
        ad_join_password: 'secret',
        ad_join_domain_controller: 'dc01.example.com',
        ad_join_ou: 'cn=computers,dn=ad,dn=example,dn=com',
        ad_join_computer_name: 'TEST-RHEL-72',
        ad_join_os: 'RedHat',
        ad_join_os_version: '7',
        ad_join_os_service_pack: '2',
      }
    end

    context 'with defaults for all parameters' do
      it { is_expected.to contain_class('adcli::install') }
      it { is_expected.to contain_class('adcli::join') }
      it { is_expected.to contain_package('adcli').with_ensure('present') }
      it { is_expected.to contain_exec('adcli_join') }
    end
  end

  describe 'on RedHat 7.6' do
    let(:facts) do
      {
        os: {
          'family' => 'RedHat',
          'release' => {
            'full'  => '7.6',
            'major' => '7',
          },
        },
      }
    end
    let(:params) do
      {
        ad_domain: 'ad.example.com',
        ad_join_username: 'userid',
        ad_join_password: 'secret',
        ad_join_ou: 'cn=computers,dn=ad,dn=example,dn=com',
        ad_join_domain_controller: 'dc01.example.com',
        ad_join_computer_name: 'TEST-RHEL-76',
        ad_join_os: 'RedHat',
        ad_join_os_version: '7',
        ad_join_os_service_pack: '6',
      }
    end

    context 'with only required parameters' do
      it { is_expected.to contain_class('adcli::install') }
      it { is_expected.to contain_class('adcli::join') }
      it { is_expected.to contain_package('adcli').with_ensure('present') }
      it { is_expected.to contain_exec('adcli_join') }
    end
  end

  describe 'on RedHat 6.7' do
    let(:facts) do
      {
        os: {
          'family' => 'RedHat',
          'release' => {
            'full'  => '6.7',
            'major' => '6',
          },
        },
      }
    end
    let(:params) do
      {
        ad_domain: 'ad.example.com',
        ad_join_username: 'userid',
        ad_join_password: 'secret',
        ad_join_ou: 'cn=computers,dn=ad,dn=example,dn=com',
        ad_join_domain_controller: 'dc01.example.com',
        ad_join_computer_name: 'TEST-RHEL-67',
        ad_join_os: 'RedHat',
        ad_join_os_version: '6',
        ad_join_os_service_pack: '7',
      }
    end

    context 'with only required parameters' do
      it { is_expected.to contain_class('adcli::install') }
      it { is_expected.to contain_class('adcli::join') }
      it { is_expected.to contain_package('adcli').with_ensure('present') }
      it { is_expected.to contain_exec('adcli_join') }
    end
  end
end
