console.log("descricao.js carregado");

const params = new URLSearchParams(window.location.search);

const id = Number(params.get("id"));

console.log(id);



async function carregarJogo() {

    const resposta =
        await fetch("../../assets/data/descricao.json");

    const jogos =
        await resposta.json();

    const jogo =
        jogos.find(
            jogo => jogo.id === id
        );

    console.log(jogo);

    document.getElementById("imagem-jogo").src =
    jogo.imagem;

    document.getElementById("nome-jogo").textContent =
        jogo.nome;

    document.getElementById("subtitulo-jogo").textContent =
        jogo.subtitulo;

    document.getElementById("descricao-jogo").textContent =
        jogo.descricao;

        
    document.getElementById("btn-jogar").href =
        jogo.link;

    document.getElementById("idade-jogo").textContent =
        jogo.idade;

    document.getElementById("duracao-jogo").textContent =
        jogo.duracao;

    document.getElementById("dificuldade-jogo").textContent =
        jogo.dificuldade;

}

carregarJogo();


