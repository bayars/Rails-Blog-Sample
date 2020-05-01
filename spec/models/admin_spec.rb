# frozen_string_literal: true

require 'rails_helper' # Test helper

RSpec.describe Admin, type: :model do
  it 'Nickname e gore siralama' do
    lindeman = User.create(email: 'Andy@Lindeman')
    chelimsky = User.create(email: 'David@Chelimsky')

    expect(User.order('email') == ['David@Chelimsky', 'Andy@lindeman'])
  end
end
