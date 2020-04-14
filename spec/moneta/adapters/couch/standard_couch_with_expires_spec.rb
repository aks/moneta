require_relative '../faraday_helper.rb'

describe "standard_couch_with_expires", adapter: :Couch do
  let(:t_res) { 0.125 }
  let(:min_ttl) { t_res }
  use_timecop

  include_context :faraday_adapter

  moneta_store :Couch do
    { db: 'standard_couch_with_expires', adapter: faraday_adapter, expires: true, login: 'admin', password: 'password' }
  end

  moneta_loader do |value|
    ::Marshal.load(value.unpack('m').first)
  end

  moneta_specs STANDARD_SPECS.without_increment.with_expires.with_each_key
end
