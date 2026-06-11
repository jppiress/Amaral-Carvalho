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

# 3. Estudo de Viabilidade

Análise detalhada das viabilidades técnica, operacional, de mercado e financeira para a implementação do projeto.

---

### 3.1. Viabilidade Técnica

* **Compatibilidade:** O sistema será totalmente Web, compatível com os principais navegadores do mercado (Google Chrome, Microsoft Edge, Mozilla Firefox).
* **Recursos Tecnológicos:** - Utilização de dispositivos eletrônicos pessoais dos próprios desenvolvedores (notebooks e computadores).
  - Suporte e uso da infraestrutura física e tecnológica da **Fatec**.
  - Ferramentas gratuitas de gestão e organização, como o **Trello**.

---

### 3.2. Viabilidade Operacional

* **Metodologia de Gerenciamento:** O projeto adotará o modelo de desenvolvimento incremental, com entregas parciais e contínuas ao longo do semestre.
* **Organização da Equipe:** - Divisão clara de tarefas entre os integrantes do grupo.
  - Acompanhamento diário e gestão do fluxo de trabalho centralizados no Trello.
* **Manutenção:** O código-fonte será estruturado, organizado e devidamente comentado. Isso garante que o sistema seja simples de manter e atualizar, permitindo que futuras equipes realizem modificações sem dificuldades.

---

### 3.3. Viabilidade de Mercado

* **Análise de Cenário:** Existe um crescimento constante no mercado de plataformas digitais focadas em entretenimento e aprendizado infantil. Contudo, nota-se uma escassez crônica de soluções voltadas especificamente para o ambiente hospitalar e crianças sob tratamento de saúde.
* **Público-Alvo:** - Crianças em tratamento hospitalar.
  - Instituições de saúde e hospitais.
  - Educadores, acompanhantes e familiares.
* **Concorrência:** Embora existam plataformas de jogos semelhantes no mercado, o projeto se diferencia e ganha força por ser uma plataforma integrada e chancelada como canal oficial do próprio hospital.
* **Diferenciais Estratégicos:**
  - **Foco no Ambiente Hospitalar:** Desenvolvido sob medida para crianças internadas que enfrentam momentos de fragilidade (espera, tratamento e recuperação).
  - **Interface Simples e Acessível:** Design totalmente voltado à experiência infantil, sendo intuitivo e fácil de usar.
  - **Inclusão Dinâmica de Jogos:** Flexibilidade para adicionar novos jogos, criar soluções próprias e, futuramente, aceitar contribuições de jogos desenvolvidos por terceiros.
* **Projeção de Retorno:** O retorno do projeto é estritamente social e humanitário, focado no apoio emocional e no benefício educacional das crianças assistidas, com potencial para expansão para outras instituições de saúde no futuro.

---

### 3.4. Viabilidade Financeira

* **Modelo de Custos:** Por se tratar de um projeto puramente educacional e de responsabilidade social, ele possui custo financeiro direto baixíssimo e não visa lucro.
* **Custos de Desenvolvimento:**
  - **Equipe:** Custos intangíveis focados em consumo de energia e horas de dedicação (hora-homem).
  - **Licenciamento:** Custo zero, priorizando ferramentas de código aberto (*open-source*) ou planos gratuitos.
  - **Hospedagem Inicial:** Realizada de forma gratuita através do **GitHub Pages**.
* **Custos Futuros:** Caso o hospital decida internalizar a plataforma em seus servidores próprios no futuro, o único custo gerado será o de manutenção da hospedagem e do domínio do site.
* 
# 4. Regras de negócio (Modelo canvas)<br>

<img width="1920" height="1080" alt="Modelo de negócio canvas (1)" src="https://github.com/user-attachments/assets/d7391d22-ccb7-4bb8-88d9-c944ea8c7b8d" />

### 4.1. O que será elaborado?

**Proposta de valor:**
- Acolhimento às crianças do hospital Amaral Carvalho;
- Portfólio, apresentando algumas informações do Hospital, sobre o robô Elo, ou queira conhecer os jogos disponíveis que trazem acolhimento;

---

### 4.2. Como será elaborado?

**Parcerias principais:**
- Fatec;
- Hospital Amaral Carvalho.

**Atividades principais:**
- Entender o problema do hospital;
- Levantar os requisitos;
- Elaborar o protótipo;
- Desenvolver o código do repositório on-line para o compartilhamento e manutenção de jogos educativos;

**Recursos principais:**
- Notebook da Fatec, equipamentos pessoais;
- Ferramentas de desenvolvimento: HTML, CSS, JS;
- Ferramentas de organização: Trello;

---

### 4.3. Para quem será elaborado?

**Segmento de clientes:**
- Crianças em tratamento hospitalar;
- Educadores, acompanhantes, visitantes e pessoas interessadas em projetos de responsabilidade social;

**Relacionamento com o cliente:**
- Direto: Feedback integrado na plataforma (avaliação de jogos e comentários e formulários);

**Canais:**
- Plataforma Web (acesso via navegador em desktop ou dispositivo móveis);
- Redes sociais do hospital;
- Outros sites do hospital;

---

### 4.4. Quanto custará?

**Estrutura de custos:**
- Energia;
- Hora homem;
- Hospedagem do site;

**Fontes de receitas:**
- Não haverá fontes de receita no momento, talvez possua parcerias futuras.


# 5. Design
## Paleta de cor:

| Categoria / Nome | Hexadecimais |
| :--- | :--- |
| **ROXO ESCURO A** | `#2E1065` |
| **ROXO ESCURO B** | `#22153C` |
| **AMETISTA ESCURO** | `#4C1D95` |
| **ROXO REAL** | `#5B21B6` |
| **ROXO CLARO** | `#7C3AED` |
| **CINZA CLARO** | `#ECE9FE` |
| **DOURADO** | `#FACC15` |


## Tipografia:
- Inter: Fonte principal utilizada em toda a aplicação (títulos, textos gerais, fluxos de login/cadastro e demais componentes de interface)

## Logo:<br>
<img width="1280" height="698" alt="Logo" src="https://github.com/user-attachments/assets/9d1bb7a0-9b66-4f70-bef7-cabb3f6491e9" />
<br>

<br> 

## Modelo de navegação:<br>
<img width="772" height="612" alt="Modelo de Navegação" src="https://github.com/user-attachments/assets/82afa96b-bcf0-4a99-bbad-ed03aaf491bb" />

## Wireframe: <br>
<img width="1512" height="866" alt="Página Inicial" src="https://github.com/user-attachments/assets/4890808a-e4a2-499b-9ad1-6b4c1ff236f2" />





# 6. Protótipo<br>
https://www.figma.com/proto/vyH992W0mgX97MzCJwBxla/amaral-Rascunho?node-id=4-791&p=f&viewport=437%2C130%2C0.27&t=jHiE7U6EP4UkJCGz-1&scaling=scale-down&content-scaling=fixed&starting-point-node-id=4%3A791&page-id=0%3A1

# 7. Aplicação# Amaral-Carvalho
https://amaralelo.netlify.app/
## repositorio: 
https://github.com/jppiress/Amaral-Carvalho
