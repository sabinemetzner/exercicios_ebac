module.exports = {
  default: {
    // Caminho para os arquivos .feature
    paths: ['Cucumber/**/*.feature'],
    
    // Caminho para os step definitions
    require: ['step-definitions/**/*.ts'],
    
    // Usar ts-node para executar TypeScript
    requireModule: ['ts-node/register'],
    
    // Formato de saída
    format: [
      'progress-bar',
      'html:reports/cucumber-report.html'
    ],
    
    // Linguagem padrão (português)
    language: 'pt',
    
    // Publicar relatório (desabilitado por padrão)
    publishQuiet: true
  }
};
