############### ADMIN ###############
puts "CADASTRANDO O USUARIO PADRÃO..."

user = User.new(name: "Admin", email: "admin@admin.com", password: "1234567890", password_confirmation: "1234567890")
user.save

puts "USUÀRIO CADASTRADO COM SUCESSO!"
############### FIM ###############