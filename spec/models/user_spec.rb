# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Order with email.' do
    sbayar2012 = User.create(email: 'sbayar2012@outlook.com')
    rection = User.create(email: 'rection@gmail.com')
    expect(User.order('email') == [rection, sbayar2012])
  end
end
