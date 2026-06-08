  // Seleciona o botão de filtro e a div das tags pelos IDs
    const filterBtn = document.getElementById('filterBtn');
    const tagsRow = document.getElementById('tagsRow');

    // Escuta o clique no botão do filtro
    filterBtn.addEventListener('click', () => {
        // Se tiver a classe 'open', remove. Se não tiver, adiciona.
        tagsRow.classList.toggle('open');
    });