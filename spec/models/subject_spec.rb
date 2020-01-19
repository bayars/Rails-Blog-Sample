require 'rails_helper'

RSpec.describe User, type: :model do

  it 'Subject with order.' do
    subject1 = Yazilar.create(user_id: '1', title: 'deneme yazisi', body: '/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/fileutils.rb:1267: warning: already initialized constant FileUtils::Entry_::S_IF_DOOR
/home/safa/.rvm/gems/ruby-2.6.5@blog/gems/fileutils-1.4.1/lib/fileutils.rb:1284: warning: previous definition of S_IF_DOOR was here
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/fileutils.rb:1540: warning: already initialized constant FileUtils::Entry_::DIRECTORY_TERM
/home/safa/.rvm/gems/ruby-2.6.5@blog/gems/fileutils-1.4.1/lib/fileutils.rb:1568: warning: previous definition of DIRECTORY_TERM was here
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/fileutils.rb:1595: warning: already initialized constant FileUtils::OPT_TABLE
/home/safa/.rvm/gems/ruby-2.6.5@blog/gems/fileutils-1.4.1/lib/fileutils.rb:1626: warning: previous definition of OPT_TABLE was here
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/fileutils.rb:1649: warning: already initialized constant FileUtils::LOW_METHODS
/home/safa/.rvm/gems/ruby-2.6.5@blog/gems/fileutils-1.4.1/lib/fileutils.rb:1685: warning: previous definition of LOW_METHODS was here
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/fileutils.rb:1656: warning: already initialized constant FileUtils::METHODS
/home/safa/.rvm/gems/ruby-2.6.5@blog/gems/fileutils-1.4.1/lib/fileutils.rb:1692: warning: previous definition of METHODS was here
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/forwardable.rb:116: warning: already initialized constant Forwardable::VERSION
', status: '1' )
    subject2 = Yazilar.create(user_id: '2', title: 'deneme yazisi2', body: 'ialized constant Etc::PC_PIPE_BUF
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_2_SYMLINKS
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_ALLOC_SIZE_MIN
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_REC_INCR_XFER_SIZE
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_REC_MAX_XFER_SIZE
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_REC_MIN_XFER_SIZE
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_REC_XFER_ALIGN
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_SYMLINK_MAX
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_CHOWN_RESTRICTED
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_NO_TRUNC
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_VDISABLE
/home/safa/.rvm/rubies/ruby-2.6.5/lib/ruby/2.6.0/x86_64-linux/etc.so: warning: already initialized constant Etc::PC_ASYNC_IO
', status: '1' )
    expect(Yazilar.order("user_id") == [subject1, subject2])

  end
end
