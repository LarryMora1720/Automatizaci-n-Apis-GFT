@msjsonplaceholder
Feature: Pruebas de API con Karate

  @crearNuevoUsuario
  Scenario: Crear un nuevo usuario
    * configure ssl = true
    * def customer = 10
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"title":"NuevoCliente","body":"Creación nuevo registro","userId": 1}
    When method POST
    Then status 201
    And match response.title == 'NuevoCliente'
    * def respuesta = response
    * print respuesta.id
    And match response.id == '#number'

  @actualizacionCompleta
  Scenario: Actualizar un usuario existente
    * configure ssl = true
    * def customer = 10
    Given url 'https://jsonplaceholder.typicode.com/posts/'+customer
    And request {"id":10,"title":"ActualizacionNuevoCliente","body":"Actualización nuevo registro","userId": 1}
    When method PUT
    Then status 200
    And match response.id == 10
    And match response.title == 'ActualizacionNuevoCliente'

  @eliminacionCompleta
  Scenario: Eliminar un usuario existente
    * configure ssl = true
    * def customer = 10
    Given url 'https://jsonplaceholder.typicode.com/posts/'+customer
    When method DELETE
    Then status 200

  @validarEliminacion
  Scenario: Obtener usuario por ID
    * configure ssl = true
    * def customer = 101
    Given url 'https://jsonplaceholder.typicode.com/posts/'+customer
    When method GET
    Then status 404

  @crearDatosJson
  Scenario: Enviar POST con datos desde archivo
    * configure ssl = true
    * def body = read('classpath:data/Post_Datos_Prueba.json')
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request body
    When method POST
    Then status 201
    And match response.title == 'Creación Cliente 100'



