namespace :export do
  desc "Mevcut database'i db/seed altina kopyala"
  task :seeds_format => :environment do
    Yazilar.order(:id).all.each do |yazi|
      bad_keys = ['created_at','updated_at','id']
      serialized = yazi.serializable_hash.delete_if{|key,value| bad_keys.include?(key)}
      puts "Yazilar.created(#{serialized})"
    end
  end
end
