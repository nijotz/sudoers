require 'spec_helper'

describe 'sudoers::default' do
  describe file('/etc/sudoers.d/testing_single') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode '440' }
    it { should contain 'test' }
  end

  describe file('/etc/sudoers.d/testing_multiple') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode '440' }
    it { should contain 'test' }
    it { should contain 'many lines' }
    it { should contain 'one file' }
  end
end
