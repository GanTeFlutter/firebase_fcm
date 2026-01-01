Metin zaten GitHub README formatına uygun, ancak birkaç küçük düzenleme yaptım. İşte doğrudan kopyalayıp yapıştırabileceğin versiyon:

markdown# FCM Notification Service

Production-ready Firebase Cloud Messaging (FCM) bildirim sistemi. Flutter BLoC pattern ve HydratedBloc kullanılarak geliştirilmiş, tüm bildirim senaryolarını kapsayan güvenli ve performanslı bir çözüm.

## Özellikler

- ✅ **Üç Bildirim Senaryosu Desteği**
  - Foreground (Uygulama açık)
  - Background (Uygulama arka planda)
  - Terminated (Uygulama kapalı)

- ✅ **Veri Persistance**
  - HydratedBloc ile otomatik state saklama
  - Uygulama kapansa bile bildirim geçmişi korunur

- ✅ **Güvenlik Katmanları**
  - Duplicate bildirim koruması
  - Güvenli JSON parsing (corrupt data durumunda crash önleme)
  - StreamController lifecycle yönetimi

- ✅ **Performans Optimizasyonu**
  - Gereksiz state emit'leri kaldırıldı
  - Race condition koruması
  - Broadcast stream kullanımı

## Mimari

### BLoC Pattern
```
UI Layer → NotificationBloc → FirebaseNotificationService → Firebase
```

### Dosya Yapısı
```
lib/product/service/notification/
├── bloc/
│   ├── notification_bloc.dart          # Ana BLoC logic
│   ├── notification_event.dart         # Event tanımları
│   └── notification_state.dart         # State tanımları
├── model/
│   └── notification_model.dart         # Bildirim model
└── firebase_notification_service.dart  # FCM servisi (Singleton)
```

## Bildirim Senaryoları

### 1. Foreground (Uygulama Açık)
```
FirebaseMessaging.onMessage → StreamController → NotificationBloc → UI Update
```

### 2. Background (Arka Planda)
```
Bildirime Tıklama → onMessageOpenedApp → StreamController → NotificationBloc → UI Update
```

### 3. Terminated (Tamamen Kapalı)
```
Bildirime Tıklama → Uygulama Açılır → getInitialMessage → NotificationBloc → UI Update
```

## Duplicate Bildirim Koruması

Aynı mesaj ID'sine sahip bildirimler otomatik olarak engellenir:
```dart
// notification_bloc.dart:89-92
if (currentMessages.any((m) => m.id == newNotification.id)) {
  return; // Duplicate, ekleme
}
```

> Bu sayede `getInitialMessage` ve `onMessageOpenedApp` aynı mesajı gönderebilse bile (cihaz/OS bağımlı), sadece bir kere listeye eklenir.

## Veri Persistance

HydratedBloc kullanılarak tüm state'lerde bildirimler diske kaydedilir:
```dart
Map? toJson(NotificationState state) {
  return state.maybeMap(
    initial: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
    messagesUpdated: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
    loading: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
    error: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
    notificationReceived: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
    orElse: () => null,
  );
}
```

## Güvenli JSON Parsing

Hatalı mesajlar atlanır, tüm veri silinmez:
```dart
for (final item in messagesList) {
  try {
    if (item is Map) {
      final message = NotificationModel.fromJson(item);
      messages.add(message);
    }
  } on Exception catch (e) {
    if (kDebugMode) {
      print('-- ⚠️ Error parsing notification: $e');
    }
  }
}
```

## StreamController Lifecycle Yönetimi

Singleton servis dispose sonrası yeniden başlatma desteği:
```dart
void _ensureStreamControllerInitialized() {
  if (_messageStreamController == null || _messageStreamController!.isClosed) {
    _messageStreamController = StreamController.broadcast();
  }
}
```

> Bu sayede Logout/Login senaryolarında crash oluşmaz.

## Kullanım

### 1. Bloc Initialization
```dart
BlocProvider(
  create: (context) => NotificationBloc(
    FirebaseNotificationService.instance,
  )..add(const NotificationEvent.initialize()),
  child: MyApp(),
)
```

### 2. UI'da Dinleme
```dart
BlocBuilder(
  builder: (context, state) {
    return state.maybeMap(
      initial: (s) => NotificationList(messages: s.messages),
      messagesUpdated: (s) => NotificationList(messages: s.messages),
      loading: (s) => CircularProgressIndicator(),
      error: (s) => Text('Error: ${s.message}'),
      orElse: () => SizedBox(),
    );
  },
)
```

### 3. Bildirim Silme
```dart
context.read().add(
  NotificationEvent.deleteNotification(notificationId),
);
```

### 4. Tümünü Temizle
```dart
context.read().add(
  const NotificationEvent.clearAllNotifications(),
);
```

### 5. Okundu İşaretle
```dart
context.read().add(
  NotificationEvent.markAsRead(notificationId),
);
```

## Konfigürasyon

### Firebase Setup

1. Firebase Console'da proje oluşturun
2. `google-services.json` (Android) ve `GoogleService-Info.plist` (iOS) dosyalarını ekleyin
3. FCM token'ı almak için:
```dart
final token = FirebaseNotificationService.instance.fcmToken;
print('FCM Token: $token');
```

### Notification Limits

Maksimum bildirim sayısı varsayılan olarak 10'dur. Değiştirmek için:
```dart
static const int _maxNotifications = 20; // İstediğiniz değer
```

## Debug Logging

Production'da loglar otomatik olarak kapatılır:
```dart
if (kDebugMode) {
  print('-- 📨 Foreground message received: ${message.messageId}');
}
```

## Kod Kalitesi Metrikleri

| Metrik | Durum |
|--------|-------|
| Null Safety | ✅ Tüm nullable alanlar kontrol ediliyor |
| Error Handling | ✅ Try-catch blokları uygun yerlerde |
| Debug/Production Ayrımı | ✅ `kDebugMode` ile loglar kontrol altında |
| Clean Code | ✅ Yorumlar açıklayıcı ve güncel |
| Memory Safety | ✅ StreamSubscription düzgün dispose ediliyor |
| No Race Conditions | ✅ Event sıralaması ve state emit'leri optimize |

## Production Checklist

- [x] Tüm bildirim senaryoları test edildi
- [x] Duplicate bildirim koruması aktif
- [x] Veri persistence çalışıyor
- [x] JSON parsing güvenli
- [x] StreamController lifecycle yönetimi
- [x] Memory leak kontrolü yapıldı
- [x] Null safety uygulandı
- [x] Debug/Production ayrımı yapıldı

## Bilinen Limitasyonlar

| Limitasyon | Açıklama |
|------------|----------|
| Maksimum Bildirim | 10 adet (değiştirilebilir) |
| Local Notifications | Ayrı payload handling gerekebilir |

## Katkıda Bulunma

1. Fork edin
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Commit edin (`git commit -m 'Add some amazing feature'`)
4. Push edin (`git push origin feature/amazing-feature`)
5. Pull Request açın

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

## İletişim

Sorularınız için issue açabilirsiniz.
