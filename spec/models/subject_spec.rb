# frozen_string_literal: true

require 'rails_helper' # Test helper

RSpec.describe User, type: :model do
  it 'Subject with order.' do
    subject1 = Yazilar.create(user_id: '1', title: 'deneme yazisi', body: '/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby
/home/safa/.rvm/gems/ruby-2.6.5@blog/gems/fileutil
/home/safa/.rvm/gems/ruby-2.6.5@blog/gems/fileutils-1.4.1/lib/fil
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ru
', status: '1')
    subject2 = Yazilar.create(user_id: '2', title: 'deneme yazisi2', body: 'ialized constant Etc::PC_PIPE_BUF
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2INKS
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.N
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.
', status: '1')
    expect(Yazilar.order('user_id') == [subject1, subject2])
  end
end
