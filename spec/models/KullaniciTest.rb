require "rails_helper"

RSpec.describe Kullanici, :type => :model do
  it "Nickname e gore siralama" do
    lindeman = Kullanici.create(isim: "Andy", nickname: "Lindeman")
    chelimsky = Kullanici.create(isim: "David", nickname: "Chelimsky")

    expect(Kullanici.order("nickname") == [chelimsky, lindeman])
  end
end
