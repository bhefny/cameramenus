# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Brand.destroy_all

User.create!({email: "bhefny@gmail.com", password: "12345678", password_confirmation: "12345678" })

%w(Arri).each do |brand_title|
  brand = Brand.create(title: brand_title)
  3.times.each do |variant_id|
    variant = Variant.create(title: "#{brand.title[0].upcase}#{brand.id}#{variant_id}", brand: brand)
    1.times.each do |software_id|
      markup = "File\r\n-New File\r\n-Open File [monkey, balls]\r\nEdit\r\n-Undo\r\n-Redo\r\n-Find\r\n--Previous [monkey]\r\n--Next\r\n-Replace"
      software = Software.create(title: "V0.#{software_id}", variant: variant, menu_markup: markup)
    end
  end
end