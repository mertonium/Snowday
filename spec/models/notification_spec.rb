require 'spec_helper'

describe Notification do
  before(:each) do
    @attr = { 
      :message => "This is a sample message", 
      :sent_at => nil
    }
  end
  
  it "should create a new notification when given valid parameters" do
    Notification.create!(@attr)
  end
  
  it "should require a message" do
    Notification.new(@attr.merge(:message => '')).should_not be_valid
  end
  
  it "should require a message be less than 140 characters" do
    Notification.new(@attr.merge(:message => 'a' * 141)).should_not be_valid
  end
  
end
