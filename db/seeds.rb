############### ADMIN ###############
puts "CADASTRANDO O USUARIO PADRÃO..."

user = User.new(name: "Admin", phone: "9999999999", email: "admin@admin.com", password: "1234567890", password_confirmation: "1234567890", role: 'admin')
user.save

puts "USUÀRIO CADASTRADO COM SUCESSO!"
############### FIM ###############