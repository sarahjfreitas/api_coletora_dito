# api_coletora_dito

## README

### Requisitos

* RVM (recomendado)

* Ruby 2.6.2

* Postgres


### Access-Control-Allow-Origin
Gem 'rack-cors' foi usada para liberar acesssos externos para api. Está configurada por padrão para aceitar requisições de qualquer origem. Pode ser configurado em config/aplication.rb. Veja a configuração padrão abaixo:

``` ruby

config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :put, :options]
  end
end

```
