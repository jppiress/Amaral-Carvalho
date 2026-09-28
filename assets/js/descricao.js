// assets/js/descricao.js

document.addEventListener("DOMContentLoaded", carregarJogo);

async function carregarJogo() {
    const params = new URLSearchParams(window.location.search);
    const id = Number(params.get("id"));

    if (!id) {
        exibirErro("Nenhum jogo especificado.");
        return;
    }

    try {
        const resposta = await fetch("../../assets/data/descricao.json");
        if (!resposta.ok) throw new Error(`HTTP ${resposta.status}`);

        const jogos = await resposta.json();
        const jogo = jogos.find(j => j.id === id);

        if (!jogo) {
            exibirErro("Jogo não encontrado. Verifique o endereço.");
            return;
        }

        preencher(jogo);
    } catch (erro) {
        console.error("Erro ao carregar jogo:", erro);
        exibirErro("Não foi possível carregar as informações do jogo.");
    }
}

function preencher(jogo) {
    const set = (id, valor) => {
        const el = document.getElementById(id);
        if (el) el.textContent = valor ?? "";
    };

    const img = document.getElementById("imagem-jogo");
    if (img) {
        if (jogo.imagem) {
            img.src = jogo.imagem;
            img.alt = jogo.nome || "Imagem do jogo";
            img.onerror = () => { img.style.display = "none"; };
        } else {
            img.style.display = "none";
        }
    }

    set("nome-jogo", jogo.nome);
    set("subtitulo-jogo", jogo.subtitulo);
    set("descricao-jogo", jogo.descricao);
    set("idade-jogo", jogo.idade);
    set("duracao-jogo", jogo.duracao);
    set("dificuldade-jogo", jogo.dificuldade);

    // Avaliação
    set("avaliacao-jogo", jogo.avaliacao ? `${jogo.avaliacao} ★` : "");

    // Categorias
    const containerCat = document.getElementById("categorias-jogo");
    if (containerCat && Array.isArray(jogo.categorias)) {
        containerCat.innerHTML = jogo.categorias
            .map(cat => `<span class="categoria">${cat}</span>`)
            .join("");
    }

    // Botão jogar
    const btn = document.getElementById("btn-jogar");
    if (btn) {
        if (jogo.link) {
            btn.href = jogo.link;
            btn.target = "_blank";
            btn.rel = "noopener";
        } else {
            btn.textContent = "Em breve....";
            btn.style.backgroundColor = "rgba(255, 255, 255, 0.08)";
            btn.style.borderColor = "white";
            btn.style.color = "white";
        }
    }

    document.title = `${jogo.nome || "Jogo"} | ELO`;
}

function exibirErro(msg) {
    const main = document.querySelector("main");
    if (!main) return;
    main.innerHTML = `<div class="alert alert-warning text-center mt-5">${msg}</div>`;
}
