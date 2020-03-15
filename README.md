# youtube

Clone do youtube para fins de Estudo. Ela foi feita consumindo a API do Youtube

## Configurações
É necessário criar em /lib a pasta config e dentro dela o Arquivo ApiConfig.dart. Ele terá os arquivos de configuração para cnsumir a Api do youtube. Ele possue a seguinte estrutura:

```dart
class ApiConfig{
  static const CHAVE_API_YOUTUBE = ""; // Colocar a chave de acesso da api
  static const  CANAL_ID = ""; // Colocar o ID de algum canal, caso deseje restringir seus resultados
  static const  URL_BASE = "https://www.googleapis.com/youtube/v3/" // é a url base da api do youtube;
}
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
