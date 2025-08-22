## Proyecto de Automatización de APIs con Karate

Este proyecto es un ejemplo básico de automatización de pruebas para servicios REST utilizando **Karate DSL**, una herramienta sencilla pero poderosa para pruebas de API basada en BDD (Behavior-Driven Development).

---

##  Descripción

El proyecto automatiza diferentes escenarios de prueba sobre la API pública de [JSONPlaceholder](https://jsonplaceholder.typicode.com/), incluyendo:

- Creación de un nuevo recurso (POST)
- Actualización de un recurso existente (PUT)
- Eliminación de un recurso (DELETE)
- Validación de eliminación (GET - 404 esperado)
- Envío de datos desde un archivo JSON externo

---

## Tecnologías utilizadas

- [Karate DSL](https://github.com/karatelabs/karate)  
- Java 17+  
- JUnit 5  
- Maven (o Gradle) para gestión del proyecto

