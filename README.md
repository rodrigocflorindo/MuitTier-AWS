# three-tier-architecture-aws

# MuitTier-AWS



Arquitetura multicamadas na AWS usando Terraform


Implante uma arquitetura multicamadas escalável e resiliente na AWS usando Terraform.

📌O que é Terraform?
Terraform é uma ferramenta de infraestrutura como código que permite definir recursos de nuvem e locais em arquivos de configuração legíveis que você pode versionar, reutilizar e compartilhar. Você pode então usar um fluxo de trabalho consistente para provisionar e gerenciar toda a sua infraestrutura durante todo o seu ciclo de vida.

🚀 Visão geral da arquitetura multicamadas
Uma arquitetura multicamadas normalmente consiste em três camadas: uma camada de apresentação (servidor web), uma camada de aplicativo (servidor de aplicativos) e uma camada de dados (servidor de banco de dados). Cada camada atende a um propósito específico e pode ser dimensionada de forma independente, proporcionando flexibilidade e eficiência.

Camada Web: Esta camada lida com solicitações recebidas de usuários e pode ser dimensionada horizontalmente para aumentar a capacidade. Normalmente inclui servidores web e um balanceador de carga para distribuição de tráfego.
Camada de aplicativos: os servidores de aplicativos executam nossa lógica de negócios e interagem com a camada de banco de dados. Eles também podem ser dimensionados horizontalmente para atender à demanda.
Camada do banco de dados: O banco de dados armazena e gerencia os dados do nosso aplicativo. Nesta arquitetura, usamos o Amazon RDS para um serviço de banco de dados gerenciado.
📌 Diagrama de Arquitetura

🚦 Primeiros passos
Pré-requisitos
Antes de começar, certifique-se de ter os seguintes pré-requisitos em vigor:

Terraform instalado.
Credenciais AWS IAM configuradas.
✨ Recursos
Alta disponibilidade : A arquitetura é projetada para tolerância a falhas e redundância.
Escalabilidade : dimensione facilmente as camadas da Web e de aplicativos para lidar com diversas cargas de trabalho.
Segurança : grupos de segurança e ACLs de rede são configurados para garantir um ambiente seguro.
🔧 Configuração do Terraform
A configuração do Terraform para este projeto está organizada em diferentes seções e recursos para criar os componentes de infraestrutura AWS necessários. Os principais recursos incluem:

Nuvem privada virtual (VPC)
Sub-redes e tabelas de rotas
Grupos de segurança e ACLs de rede
Balanceadores de carga
Grupos de escalonamento automático
Instâncias de banco de dados RDS
🚀 Implantação
Siga estas etapas para implantar a arquitetura:

É recomendado criar uma pasta separada para este projeto.

Seção do Provedor
O que são provedores?

Um provedor no Terraform é um plugin que permite a interação com uma API. Isso inclui provedores de nuvem e provedores de software como serviço. Os provedores são especificados no código de configuração do Terraform. Eles informam ao Terraform com quais serviços ele precisa interagir.

Crie um provider.tfarquivo usando o código abaixo

provider "aws" { 
  region = var.region-name 
}




