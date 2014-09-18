require 'rails_helper'

describe User do
  it {should belong_to :subscription}
end
