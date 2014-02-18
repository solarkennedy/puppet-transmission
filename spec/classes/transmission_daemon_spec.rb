require 'spec_helper'

describe 'transmission::daemon', :type => 'class' do
	let(:title) { 'daemon' }

	describe "With no parameter" do 
		it { should create_class("transmission::daemon") }

		  it { should_not contain_class("transmission::config") }
		  it { should_not contain_class("transmission::param") }
	end

  context "With an unknown OS it should fail" do
    let :facts do { :osfamily => "Unknown" } end
    it {
      expect { should raise_error(Puppet::Error) }
    }
  end
  
 context "With Ubuntu/Ubuntu it should install the service" do
    let :facts do { :osfamily => "Debian" } end
    it { should contain_class 'transmission::daemon::install' }
    it { should contain_class 'transmission::daemon::service' }
  end
end
