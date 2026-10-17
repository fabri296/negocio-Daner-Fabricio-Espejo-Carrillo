GET:
    Es un metodo http el cual nos permite obtener un recurso en especifico o todos los recursos de una api
    Entrada:
    GET https://jsonplaceholder.typicode.com/posts/1 
    
    Salida:
    {
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
    Codigo de estado: 200 OK

POST:
    Es un metodo http el cual nos permite crear nuevos recursos de una api en formato json
    Entrada
    POST https://jsonplaceholder.typicode.com/posts
    Body: {
        "userId": 1,
        "title": "creando un recurso",
        "body": "esto es un nuevo recurso"
        }
    Salida:
        {
        "userId": 1,
        "title": "creando un recurso",
        "body": "esto es un nuevo recurso",
        "id": 101
        }
    Codigo de estado: 201 Created
PUT:
    Es un metodo http el cual cambia por completo todos los atributos de un recurso ya existente de una api
    Entrada:
    PUT https://jsonplaceholder.typicode.com/posts/1?title=actualizando post&userId=2&body=esto es un nuevo recurso
    Salida:
    {
    "userId": 1,
    "title": "creando un recurso",
    "body": "esto es un nuevo recurso",
    "id": 1
    }
    Codigo de estado: 200 OK
PATCH:
    Es un metodo http el cual nos sirve para cambiar parcialmente un recurso de una api 
    Entrada: 
    PATCH https://jsonplaceholder.typicode.com/posts/1
    body:
    {
    "title": "esta es un nuevo titulo"
    }
    Salida:
    {
        "userId": 1,
        "id": 1,
        "title": "esta es un nuevo titulo",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
    codigo de estado:200 OK
DELETE:
    Es un metodo http el cual permite eliminar recursos de una api
    Entrada: 
    DELETE https://jsonplaceholder.typicode.com/posts/1
    Salida:
    {}
    Codigo de estado: 200 OK