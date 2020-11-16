require 'rails_helper'

RSpec.describe ReadController do
  describe 'POST #index with no params passed in' do
    it 'should retrieve error message' do
      get :index
      response.body.should == "Invalid address"
    end
  end
  describe 'POST #index with params valid' do
    it 'should return original ip' do
      get :index, :params => {:ip => "192.168.1.234"}
      response.body.should == "192.168.1.234"
    end
  end
  describe 'POST #index with invalid params' do
    it 'should return Invalid address' do
      get :index, :params => {:ip => "192,168,1.234"}
      response.body.should == "Invalid address"
    end
    it 'should return Invalid address' do
      get :index, :params => {:ip => "192.168.1.234.3"}
      response.body.should == "Invalid address"
    end
    it 'should return Invalid address' do
      get :index, :params => {:ip => "1.234.3"}
      response.body.should == "Invalid address"
    end
    it 'should return Invalid address' do
      get :index, :params => {:ip => "2192.1168.1.234"}
      response.body.should == "Invalid address"
    end
  end
end