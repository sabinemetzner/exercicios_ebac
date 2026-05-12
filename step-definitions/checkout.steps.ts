import { Given, When, Then, DataTable } from '@cucumber/cucumber';

// ========== CONTEXTO ==========

Given('que estou na página de Checkout', async function () {
  console.log('Navegando para a página de Checkout');
  // TODO: Implementar navegação
  // Exemplo:
  // await this.page.goto('https://ebac-shop.com/checkout');
});

// ========== AÇÕES ==========

Given('que preencho os campos obrigatórios com os seguintes dados:', async function (dataTable: DataTable) {
  const dados = dataTable.hashes();
  console.log('Preenchendo campos obrigatórios:', dados);
  
  for (const linha of dados) {
    // TODO: Implementar preenchimento dos campos
    // Exemplo:
    // await this.page.fill('#billing_first_name', linha.nome);
    // await this.page.fill('#billing_last_name', linha.sobrenome);
    // await this.page.fill('#billing_country', linha.pais);
    // await this.page.fill('#billing_address_1', linha.endereco);
    // await this.page.fill('#billing_city', linha.cidade);
    // await this.page.fill('#billing_postcode', linha.cep);
    // await this.page.fill('#billing_phone', linha.telefone);
    // await this.page.fill('#billing_email', linha.email);
  }
});

When('clico no botão {string}', async function (botao: string) {
  console.log(`Clicando no botão: ${botao}`);
  // TODO: Implementar clique
  // Exemplo:
  // await this.page.click(`button:has-text("${botao}")`);
});

When('preencho todos os campos obrigatórios corretamente, informo o campo {string} com {string} e clico no botão {string}', 
  async function (campo: string, valor: string, botao: string) {
    console.log(`Preenchendo campos obrigatórios + ${campo}: ${valor}, clicando em: ${botao}`);
    // TODO: Implementar preenchimento com campo opcional
});

When('preencho nome {string}, sobrenome {string}, país {string}, endereço {string}, cidade {string}, CEP {string}, telefone {string}, email {string} e clico no botão {string}',
  async function (nome: string, sobrenome: string, pais: string, endereco: string, cidade: string, cep: string, telefone: string, email: string, botao: string) {
    console.log(`Preenchendo: nome=${nome}, sobrenome=${sobrenome}, país=${pais}, endereço=${endereco}, cidade=${cidade}, CEP=${cep}, telefone=${telefone}, email=${email}`);
    // TODO: Implementar preenchimento
});

When('preencho o checkout sem informar {string} e clico no botão {string}', 
  async function (campoObrigatorio: string, botao: string) {
    console.log(`Preenchendo checkout sem o campo: ${campoObrigatorio}`);
    // TODO: Implementar preenchimento parcial
});

// ========== VERIFICAÇÕES ==========

Then('o sistema deve concluir o cadastro com sucesso', async function () {
  console.log('Verificando sucesso do cadastro');
  // TODO: Implementar verificação de sucesso
  // Exemplo:
  // await expect(this.page.locator('.order-success')).toBeVisible();
});

Then('o sistema deve exibir a mensagem {string}', async function (mensagem: string) {
  console.log(`Verificando mensagem: ${mensagem}`);
  // TODO: Implementar verificação de mensagem
  // Exemplo:
  // await expect(this.page.locator('.error-message')).toContainText(mensagem);
});
