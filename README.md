# Preparação

### Requisitos: 

1. Postgres 9.5
2. Ruby 2.6.5
3. Rails 5.2.4

### Instalação

Instale as gems  
`bundle install`

Crie o banco e rode as migrações 
`rails db:create db:migrate`

Para executar os testes
`rspec spec`

Iniciar o server
`rails s`

### Deploy
https://clicksigntest1.herokuapp.com/

# Descrição

### ruby-dev-test-1

Desenvolver a camada de modelos de um sistema de arquivos persistido em um banco de dados SQL onde seja possível criar diretórios e arquivos. Os diretórios poderão conter sub-diretórios e arquivos. O conteúdo dos arquivos podem estar ser persistidos como blob, S3 ou mesmo em disco.

A soluçãos deverá ser escrita majoritariamente em Ruby com framework Ruby on Rails.

Realizar um fork deste repositório.
