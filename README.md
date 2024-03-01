## what if は azureにデプロイされてい本番環境とローカルのコードの変更の差異を確認できる

```sh
az deployment group what-if --template-file main.bicep
```
サブネットを一つ削除した例
![image](https://github.com/rensawamo/bicep_whatif/assets/106803080/0290faac-a087-45cf-b886-4e0878ddbf2f)
