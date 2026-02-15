# Resolução de Problemas de Conexão com Emulador

## Problema Identificado

Você tinha **múltiplas instâncias de emuladores** rodando simultaneamente (emulator-5554 e emulator-5556), causando conflitos de porta. Já matei essas instâncias, mas o ADB ainda detecta um emulador offline.

## Passos para Resolver

### 1. Fechar Completamente o Emulador
- Vá no **Android Studio** ou **AVD Manager**
- Feche completamente qualquer emulador que esteja aberto
- Ou simplesmente feche a janela do emulador se estiver visível

### 2. Limpar Estado do ADB
Execute no terminal:
```powershell
& "C:\Users\Nataniel\AppData\Local\Android\Sdk\platform-tools\adb.exe" kill-server
```

### 3. Abrir UM ÚNICO Emulador
- Abra o **AVD Manager** (Android Virtual Device Manager)
- Inicie **apenas um** emulador
- Aguarde até ele carregar completamente (você verá a tela inicial do Android)

### 4. Verificar Conexão
Execute:
```powershell
& "C:\Users\Nataniel\AppData\Local\Android\Sdk\platform-tools\adb.exe" devices
```

Você deve ver algo como:
```
List of devices attached
emulator-5554   device
```

**IMPORTANTE**: O status deve ser `device`, não `offline` ou `authorizing`.

### 5. Executar o App
Agora sim, execute:
```bash
npm run android
```

## Sobre o Erro Original de Asset

O erro original `ExpoAsset.downloadAsync` era um problema de rede. A solução com `--tunnel` pode ajudar, mas primeiro precisamos resolver o problema de conexão ADB. Depois que o emulador estiver conectado corretamente, teste primeiro **sem** o `--tunnel` (como está agora no [package.json](file:///c:/Users/Nataniel/Documents/mrpku/package.json)).