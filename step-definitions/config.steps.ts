import { Given, When, Then } from '@cucumber/cucumber';

// ========== CONTEXTO ==========

Given('que estou na página de um produto', async function () {
  console.log('Navegando para a página de um produto');
  // TODO: Implementar navegação
  // Exemplo:
  // await this.page.goto('https://ebac-shop.com/produto/exemplo');
});

Given('que selecionei a cor {string}, o tamanho {string} e a quantidade {int}', 
  async function (cor: string, tamanho: string, quantidade: number) {
    console.log(`Selecionando: cor=${cor}, tamanho=${tamanho}, quantidade=${quantidade}`);
    // TODO: Implementar seleção prévia
});

// ========== AÇÕES ==========

When('seleciono a cor {string}, o tamanho {string} e a quantidade {int}', 
  async function (cor: string, tamanho: string, quantidade: number) {
    console.log(`Selecionando: cor=${cor}, tamanho=${tamanho}, quantidade=${quantidade}`);
    // TODO: Implementar seleção
    // Exemplo:
    // await this.page.selectOption('#color', cor);
    // await this.page.selectOption('#size', tamanho);
    // await this.page.fill('#quantity', quantidade.toString());
});

When('seleciono apenas a cor {string} e clico no botão {string}', 
  async function (cor: string, botao: string) {
    console.log(`Selecionando apenas cor: ${cor} e clicando em: ${botao}`);
    // TODO: Implementar seleção parcial
});

When('clico no botão {string}', async function (botao: string) {
  console.log(`Clicando no botão: ${botao}`);
  // TODO: Implementar clique
  // Exemplo:
  // await this.page.click(`button:has-text("${botao}")`);
});

// ========== VERIFICAÇÕES ==========

Then('o botão {string} deve estar habilitado', async function (botao: string) {
  console.log(`Verificando se o botão "${botao}" está habilitado`);
  // TODO: Implementar verificação
  // Exemplo:
  // await expect(this.page.locator(`button:has-text("${botao}")`)).toBeEnabled();
});

Then('o sistema deve exibir mensagem de erro informando campos obrigatórios', async function () {
  console.log('Verificando mensagem de erro para campos obrigatórios');
  // TODO: Implementar verificação
});

Then('o sistema deve exibir mensagem {string}', async function (mensagem: string) {
  console.log(`Verificando mensagem: ${mensagem}`);
  // TODO: Implementar verificação
  // Exemplo:
  // await expect(this.page.locator('.error')).toContainText(mensagem);
});

Then('o produto deve voltar ao estado original', async function () {
  console.log('Verificando se o produto voltou ao estado original');
  // TODO: Implementar verificação
  // Exemplo:
  // await expect(this.page.locator('#color')).toHaveValue('');
  // await expect(this.page.locator('#size')).toHaveValue('');
  // await expect(this.page.locator('#quantity')).toHaveValue('1');
});
