resource vnet 'Microsoft.Network/virtualNetworks@2018-10-01' = {
  name: 'vnet-001'
  location: resourceGroup().location
  // 
  tags: {
    'CostCenter': '12345'
  }
  properties: {
    addressSpace: {
      // サブネット内で利用可能なIPアドレス範囲をCIDR (Classless Inter-Domain Routing) 形式で指定
      addressPrefixes: [   
        '10.0.0.0/15'
      ]
    }
    enableVmProtection: false  // 仮想マシンの保護を有効にするかどうか
    enableDdosProtection: false // Distributed Denial of Service (DDoS) 大量アクセス 攻撃からの保護を有効にするかどうか 
 
    // サブネットでは利用できるネットワークの範囲を表せる
    subnets: [
      {
        name: 'subnet002'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}
