require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "Nickname e gore siralama" do
    lindeman = Kullanici.create(isim: "Andy", nickname: "Lindeman")
    chelimsky = Kullanici.create(isim: "David", nickname: "Chelimsky")

    expect(Kullanici.order("nickname") == [chelimsky, lindeman])
  end
end
