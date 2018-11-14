if Rails.env.development?
  Artist.destroy_all
  Tag.destroy_all
end

names = %w(rock blues hip\ hop pop jazz)

artists_attributes = [
  {
    name: "Jimi Hendrix",
    image_url: "https://res.cloudinary.com/opratododia/image/upload/v1532732218/jimi_hendrix_kyegew.jpg"
  },

  {
    name: "Gang Starr",
    image_url: "https://res.cloudinary.com/opratododia/image/upload/v1532732218/gang_starr_roc18v.jpg"
  },

  {
    name: "Refused",
    image_url: "https://res.cloudinary.com/opratododia/image/upload/v1532732218/refused_uj5ose.jpg"
  },

  {
    name: "Cookin' Soul",
    image_url: "https://res.cloudinary.com/opratododia/image/upload/v1532732217/cookin_soul_nmjhbx.jpg"
  },

  {
    name: "Fu Manchu",
    image_url: "https://res.cloudinary.com/opratododia/image/upload/v1532732218/fu_manchu_m6puwu.jpg"
  },

  {
    name: "Little Brother",
    image_url: "https://res.cloudinary.com/opratododia/image/upload/v1532732247/littler_brother_ubz289.jpg"
  }
]

names.each do |name|
  Tag.create(name: name)
end

Artist.create!(artists_attributes)
