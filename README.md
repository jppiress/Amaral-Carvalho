<p align="left" style="font-size:28px;">
  <strong><em>Documentação do PI</em></strong></p> 
  <details>
    <summary><strong>Sumário</strong></summary>

- [1. Introdução](#1-introdução)
- [Objetivos](#-objetivos)
- [Metodologia](#-metodologia)
- [2. Requisitos](#2-requisitos)
- [Requisitos funcionais](#-requisitos-funcionais)
- [Requisitos não funcionais](#-requisitos-não-funcionais)
- [3. Modelo de casos de uso](#3-modelo-de-casos-de-uso)
- [4. Modelo do banco de dados](#4-modelo-do-banco-de-dados)
- [5. Banco de dados](#5-banco-de-dados)
- [6. Diagrama de classes](#6-diagrama-de-classes)
- [7. Estudo de viabilidade](#7-estudo-de-viabilidade)
- [8. Regras de negócio (Modelo canvas)](#8-regras-de-negócio-modelo-canvas)
- [9. Design](#9-design)
- [10. Protótipo](#10-protótipo)
- [11. Aplicação](#11-aplicação)

</details>

Para cada semestre, do 1º ao 6º, iremos utilizar este template para documentar o PI -
incrementalmente.

# 1. Introdução
Contexto: O hospital Amaral Carvalho possui um robô chamado elo, que foi um investimento do Hospital, porém não está sendo utilizado 100% do tempo. 

Justificativa: Sabendo disso iremos criar um site que irá acolher as crianças que estão em tratamento no hospital e que irá dar mais utilidade para o robô. 

## • Objetivos

Desenvolver um site no qual será adicionado os jogos já existentes da empresa e adicionar jogos criados por nós ou possivelmente por outras pessoas. 

## • Metodologia

Modelo: modelo incremental   
Com o que? HTML, CSS, JS + Trello(para organização)  
Onde? ambiente web 
Quando?  durante o semestre 
Quem? Crianças 

# 2. Requisitos

## • Requisitos funcionais<br>

RF01 – O sistema deve permitir que usuários realizem cadastro e login: Nome, E-mail, Senha e Confirmação de senha. <br>
RF02 – O sistema deve permitir navegação entre as páginas: Início, Sobre, Jogos, Contato. Login/cadastro e Equipe. <br>
RF03 – O sistema deve permitir que administradores publiquem e removam jogos na plataforma: Nome, Categoria, Descrição, Imagem de capa, Arquivo ou link do jogo. <br>
RF04 – O sistema deve peossuir uma vitrina para exibição dos jogos disponíveis: Nome do jogo, Imagem/capa, Categoria, Descrição resumida, Avaliação média. <br>
RF05 – O sistema deve permitir que o usuário visualize os detalhes de um jogo ao selecioná-lo. <br>
RF06 - O sistema deve permitir que os jogos sejam executados diretamente no navegador: Botão"Jogar", Carregamento do jogo na própria plataforma. <br>
RF07 – O sistema deve permitir que usuários enviem feedbacks sobre os jogos. <br>
RF08 – O sistema deve permitir que usuários avaliem os jogos por meio de notas: Nota de 1 a 5 estrelas, Comentário testual <br>
RF09 – O sistema deve possuir um sistema de pesquisa por nome do jogo: Campo de pesquisa, Exibição dos resultados encontrados. <br>
RF10 – O sistema deve apresentar uma página de Contato com formulário para envio de dúvidas e links para redes sociais: Nome, E-mail, Assunto, Mensagem, Link para redes sociais. <br>
RF11 – O sistema deve permitir a visualização das equipes responsáveis pelo projeto: Nome dos integrantes, Função ou participação no projeto, Foto(opcional). <br>
RF12 – O sistema deve exibir os jogos mais bem avaliados ou em destaque: Jogos mais acessados, Jogos mais bem avaliados. <br>
RF13 – O sistema deve permitir a filtragem de jogos: Categoria, Avaliação, Ordem alfabética. <br>
<br>
## • Requisitos não funcionais<br>
<br>
Requisitos de produto: <br>   
RNF01 – O sistema deve possuir interface simples, intuitiva e de fácil compreensão para usuários em geral, incluindo crianças. <br>
RNF02 – O sistema deve apresentar tempo de resposta de até 3 segundos para carregamento das páginas e jogos.<br> 
RNF03 – O sistema deve ser responsivo, adaptando-se a diferentes tamanhos de tela.<br> 
RNF04 – O sistema deve permitir fácil navegação entre as funcionalidades.<br>
<br>
Requisitos de organização: <br>
RNF05 – O desenvolvimento do sistema deve ser organizado utilizando a ferramenta Trello para gerenciamento de tarefas. <br>
RNF06 – O projeto deve seguir um modelo de desenvolvimento incremental, com entregas parciais ao longo do tempo. <br>
<br>
Requisitos de confiabilidade:   <br> 
RNF07 – O sistema deve evitar falhas durante a execução dos jogos. <br>
RNF08 – O sistema deve garantir funcionamento contínua, sem travamentos frequentes.<br>
<br>
Requisito de implementação:   <br>
RNF09 – O sistema deve ser desenvolvido utilizando HTML, CSS e JavaScript. <br>
RNF10– O sistema deve ser executado diretamente em navegadores web, sem necessidade de instalação.<br>
<br>
Requisito de padrões:   <br>
RNF11 – O código deve ser organizado e comentado para facilitar manutenção.<br>
<br>
Requisitos de interoperabilidade:  <br>
RNF12 – O sistema deve ser compatível com navegadores modernos como Google Chrome, Mozilla Firefox e Microsoft Edge. <br>
RNF13 – O sistema deve funcionar em diferentes dispositivos (desktop e mobile)<br>
<br>

# 3. Estudo de viabilidade<br>
<br>
  *Viabilidade Técnica: <br>
Utilização de navegadores(Chrome, Edge, FireFox);  <br>
 <br>
  *Recursos: <br>
Ferramentas de organização como o Trello; <br>
Dispositivos eletrônicos por parte dos desenvolvedores, utilizando a infraestrutura da fatec, como computadores e notebooks; <br>
<br>
  *Viabilidade Operacional: <br>
  <br>
  *Gerenciamento: <br>
O projeto seguirá modelo de desenvolvimento incremental; <br>
Entregas parciais ao longo do semestre; <br>
O acompanhamento de todas as tarefas será realizado através da ferramenta Trello; <br>
Desenvolvimento dividido entre os integrantes; <br>
O código será organizado e comentado para permitir que equipe realizem manutenções futuras;<br>
Sistema simples de manter e atualizar; <br>
<br>
  *Viabilidade de Mercado:<br>
Existe um crescimento do mercado de plataformas digitais voltadas ao entretenimento e aprendizado infantil. <br>
Quase nenhum é voltado para hospitais; <br>
Falta foco em crianças em tratamento;<br>
   <br>
   *Público-alvo: <br>
Crianças em tratamento hospitalar; <br>
Instituições de saúde; <br>
Educadores e familiares; <br>
  <br>
  *Concorrência: <br>
Em relação aos concorrentes existam plataformas semelhantes,porém o projeto se destaca por ser um site próprio do hospital. <br>
  <br>
  *Diferencial:<br>
  <br>
Foco em ambiente hospitalar: <br>
crianças internadas; <br>
ambiente hospitalar; <br>
momentos de fragilidade (tratamento, espera, recuperação);<br>
<br>
  *Interface simples e acessível: <br>
interface simples, intuitiva e fácil para crianças; <br>
<br>
  *Possibilidade de inclusão de jogos próprios: <br>
adicionar novos jogos; <br>
criar jogos próprios; <br>
talvez até receber jogos de terceiros no futuro; <br>
<br>
  *Projeção de vendas (ou retorno): <br>
Uso por crianças no hospital; <br>
Benefício educacional; <br>
Apoio emocional; <br>
Possível expansão para outras instituições; <br>
<br>
  *Viabilidade Financeira: <br>
Não haverá ganho pois é um projeto educacional. <br>
Este projeto possui baixo custo; <br>
<br>
  *Custo de Desenvolvimento: <br>
Para a equipe existirá o custo de energia e horas de trabalho.
Não há custos de licenciamento de software. Os recursos principais são os equipamentos dos próprios integrantes (notebooks pessoais), e o suporte da infraestrutura da Fatec. <br>
Hospedagem por enquanto será pelo Github; <br>
  <br>
  _Possíveis custos: <br>
Para o hospital só existirá o custo da hospedagem do site.  <br>
<br>
# 4. Regras de negócio (Modelo canvas)<br>

<img width="1920" height="1080" alt="Modelo de negócio canvas" src="https://github.com/user-attachments/assets/bae7844b-d33c-4cbb-b6e4-e8760d66dbbc" />

# 5. Design
Paleta de cor:
-Roxo Escuro A: #2E1065 <br>
-Roxo Escuro B: #22153C <br>
-Ametista Escuro: #4C1D95 <br>
-Roxo Real: #5B21B6 <br>
-Roxo Claro: #7C3AED <br>
-Cinza Claro: #ECE9FE <br>
-Branco: #FFFFFF <br>
-Dourado: #FACC15 <br>

Tipografia:<br>
-Inter

Logo:<br>
<img width="1280" height="698" alt="Logo" src="https://github.com/user-attachments/assets/9d1bb7a0-9b66-4f70-bef7-cabb3f6491e9" />
<br>

Wireframes:

<br> 

Modelo de navegação:<br>
<img width="772" height="612" alt="Modelo de Navegação" src="https://github.com/user-attachments/assets/82afa96b-bcf0-4a99-bbad-ed03aaf491bb" />

# 6. Protótipo<br>
https://www.figma.com/proto/vyH992W0mgX97MzCJwBxla/amaral-Rascunho?node-id=4-791&p=f&viewport=437%2C130%2C0.27&t=jHiE7U6EP4UkJCGz-1&scaling=scale-down&content-scaling=fixed&starting-point-node-id=4%3A791&page-id=0%3A1

# 7. Aplicação# Amaral-Carvalho
