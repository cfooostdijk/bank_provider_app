App de Bancos y Proveedores

Horas de desarrollo aproximadas: 12 horas

Características Principales:
Es una aplicación monolito, en la cual se puede acceder a distintos tableros con información de Bancos, Proveedores, Dashboar y Login de usuario.

Gemas utilizadas:
'i18n', 'simple_form', 'kaminari', 'faker', 'devise', 'view_component', 'tailwindcss-rails', 'rspec-rails', 'factory_bot_rails', 'shoulda-matchers', 'rails-controller-testing', 'bootstrap'

Uso de la app:

1) git clone git@github.com:cfooostdijk/bank_provider_app.git
2) Navegar al repositorio clonado
3) bundle install
4) rails db:migrate
5) rails db:create
6) Levantar la aplicación utilizando bin/dev
7) Abrir en un navegador: http://localhost:3000

To do list:
1) Refactorizar las vistas utilizando view_components
2) Utilizar Hotwire para mejor desempeño de la aplicación
3) Utilizar Rubocop para mejorar la legibilidad de la aplicación

