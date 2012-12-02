# Generated by generate.rb at 2012-12-02 18:03:24 +0100, heads/master-0-g9a90bb4
require 'helper'

describe_juno "expires_memory" do
  def new_store
    Juno.build do
      use :Expires
      adapter :Memory
    end
  end

  include_context 'setup_store'
  it_should_behave_like 'null_objectkey_objectvalue'
  it_should_behave_like 'null_objectkey_stringvalue'
  it_should_behave_like 'null_objectkey_hashvalue'
  it_should_behave_like 'null_stringkey_objectvalue'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'null_stringkey_hashvalue'
  it_should_behave_like 'null_hashkey_objectvalue'
  it_should_behave_like 'null_hashkey_stringvalue'
  it_should_behave_like 'null_hashkey_hashvalue'
  it_should_behave_like 'store_objectkey_objectvalue'
  it_should_behave_like 'store_objectkey_stringvalue'
  it_should_behave_like 'store_objectkey_hashvalue'
  it_should_behave_like 'store_stringkey_objectvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_hashvalue'
  it_should_behave_like 'store_hashkey_objectvalue'
  it_should_behave_like 'store_hashkey_stringvalue'
  it_should_behave_like 'store_hashkey_hashvalue'
  it_should_behave_like 'expires_objectkey_objectvalue'
  it_should_behave_like 'expires_objectkey_stringvalue'
  it_should_behave_like 'expires_objectkey_hashvalue'
  it_should_behave_like 'expires_stringkey_objectvalue'
  it_should_behave_like 'expires_stringkey_stringvalue'
  it_should_behave_like 'expires_stringkey_hashvalue'
  it_should_behave_like 'expires_hashkey_objectvalue'
  it_should_behave_like 'expires_hashkey_stringvalue'
  it_should_behave_like 'expires_hashkey_hashvalue'
end
