require 'spec_helper'

describe 'A correct Java version is installed' do
  context command('java -version') do
    its(:stderr) { should match /java version \"1.8.0/ }
    its(:exit_status) { should eq 0 }
  end
end

describe 'JCE Unlimited Strength Jurisdiction Policy is installed' do
  context command('java -classpath ./spec JceTest') do
    its(:exit_status) { should eq 0 }
  end
end

