
gem "brdinheiro",       :version => ">= 2.1.6"
gem "brcep",            :version => ">= 2.1.6"
gem "brcpfcnpj",        :version => ">= 2.1.6"
gem "brdata",           :version => ">= 2.1.6"
gem "brdinheiro",       :version => ">= 2.1.6"
gem "brhelper",         :version => ">= 2.1.6"
gem "brnumeros",        :version => ">= 2.1.6"
gem "brstring",         :version => ">= 2.1.6"
gem "brI18n",           :version => ">= 2.1.6"

initializer "load_brI18n.rb", <<-CODE
  require 'brI18n'
CODE

git :init

file '.gitignore', <<-CODE
log/*.log
log/*.pid
db/*.db
db/*.sqlite3
db/schema.rb
tmp
.DS_Store
doc/api
doc/app
config/database.yml
nbproject
CODE

if yes?("Deseja fazer uma cópia de database.yml?")
  run "cp config/database.yml config/database.yml.sample" 
end

git :add => "."
git :commit => "-a -m 'Initial commit'"
