// 1ª JS

// Esse function vai ser executada na agora que passar aki...
(function () {
    // Função quer será executada assim que a página for carregada!
    //window.onload = SetYearFooter;
    window.onload = ExecutarTodasFuncoes;
})();

// Função Nomeada (SetYearFooter)
function anoFooter() {
    // debugger: uma palavra reservada do JavaScript para debugar o código. Quando o Navegador estiver com o Console (f12) dele aberto, vai parar a interpretação
    // do código quando encontrar esse palavra
    //debugger;
    var lblFooter = document.getElementById('lblAno');
    // new Date() = Estamos instânciando a função Date() do javaScript, e chamando o getFullYear() para retornar o ano
    lblFooter.textContent = new Date().getFullYear().toString();
}


function ExecutarTodasFuncoes() {
    anoFooter();
    carregarNucleos();
}

// ----
// Variável Global com o uma lista de objetos
var nucleos = [
    { texto: "Formação Tecnológica", valor: "01" },
    { texto: "Formação Sócio-Cultural", valor: "02" },
    { texto: "Formação Cidadã", valor: "03" }

];

// Função para preencher o DropDownList
function carregarNucleos() {
    var ddlNucleo = document.getElementById('ddlNucleo');

    var options = '<option value="0">----Selecione o Núcleo de abrangência----</option>';
    var index = 0;
    do {
        options += '<option value="';
        options += nucleos[index].valor;
        options += '">';
        options += nucleos[index].texto;
        options += '</option>';
        index++;
    } while (nucleos.length > index);

    ddlNucleo.innerHTML = options;
}