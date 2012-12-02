# Generated by generate.rb at 2012-12-02 18:03:24 +0100, heads/master-0-g9a90bb4
require 'helper'

describe_juno "adapter_sdbm" do
  def new_store
    Juno::Adapters::SDBM.new(:file => File.join(make_tempdir, "adapter_sdbm"))
  end

  include_context 'setup_store'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
end
