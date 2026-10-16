const API_URL = "https://pokeapi.co/api/v2/pokemon/";

const entrada = document.getElementById("entrada");
const btnBuscar = document.getElementById("btn-buscar");
const btnAleatorio = document.getElementById("btn-aleatorio");
const mensaje = document.getElementById("mensaje");
const tarjeta = document.getElementById("tarjeta");

async function buscarPokemon(consulta) {
  mensaje.textContent = "Buscando...";
  tarjeta.classList.add("oculto");

  try {
    const respuesta = await fetch(API_URL + consulta.toLowerCase().trim());

    if (!respuesta.ok) {
      throw new Error("No se encontró ese Pokémon");
    }

    const datos = await respuesta.json();
    mostrarPokemon(datos);
    mensaje.textContent = "";
  } catch (error) {
    mensaje.textContent = error.message;
  }
}

function mostrarPokemon(datos) {
  document.getElementById("imagen").src =
    datos.sprites.other["official-artwork"].front_default || datos.sprites.front_default;
  document.getElementById("nombre").textContent = datos.name;
  document.getElementById("numero").textContent = "N.º " + datos.id;
  document.getElementById("altura").textContent = "Altura: " + datos.height / 10 + " m";
  document.getElementById("peso").textContent = "Peso: " + datos.weight / 10 + " kg";

  const contenedorTipos = document.getElementById("tipos");
  contenedorTipos.innerHTML = "";
  datos.types.forEach(function (t) {
    const span = document.createElement("span");
    span.className = "tipo";
    span.textContent = t.type.name;
    contenedorTipos.appendChild(span);
  });

  tarjeta.classList.remove("oculto");
}

btnBuscar.addEventListener("click", function () {
  if (entrada.value.trim() === "") {
    mensaje.textContent = "Escribe un nombre o número";
    return;
  }
  buscarPokemon(entrada.value);
});

entrada.addEventListener("keydown", function (e) {
  if (e.key === "Enter") {
    btnBuscar.click();
  }
});

btnAleatorio.addEventListener("click", function () {
  const numero = Math.floor(Math.random() * 1025) + 1;
  entrada.value = numero;
  buscarPokemon(String(numero));
});

// Al cargar la página, mostrar Pikachu
buscarPokemon("pikachu");