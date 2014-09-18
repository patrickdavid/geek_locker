require 'rails_helper'

describe Subscription do
  it {should have_many :users}
end
