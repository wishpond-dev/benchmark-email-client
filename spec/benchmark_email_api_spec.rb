require 'spec_helper'

describe BenchmarkEmailApi do

  it 'makes a connection with the api' do
    bm = BenchmarkEmailApi.new(username,password,apikey)
    expect(bm.token).to eq (true)
  end
end