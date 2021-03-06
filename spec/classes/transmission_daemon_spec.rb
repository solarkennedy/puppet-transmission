require 'spec_helper'

describe 'transmission::daemon', :type => 'class' do

  context "With an unknown OS it should fail" do
    let :facts do { :osfamily => "Unknown" } end
    it {
      expect { should raise_error(Puppet::Error) }
    }
  end
  
  context "With Ubuntu/Ubuntu it should install and configure the service" do
    let :facts do { :osfamily => "Debian" } end
    it { should contain_class 'transmission::daemon::install' }
    it { should contain_class 'transmission::daemon::config' }
    it { should contain_class 'transmission::daemon::service' }
  end
end
