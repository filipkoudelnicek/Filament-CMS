# Laravel Filament CMS – Návod ke spuštění aplikace

Tato aplikace je postavena na frameworku **Laravel** s využitím **Filament** administračního rozhraní. Následující návod slouží ke spuštění projektu ve vašem lokálním prostředí (např. XAMPP).

## Požadavky

* PHP 8.1 nebo vyšší
* Composer
* Node.js a NPM
* MySQL (např. součástí XAMPP)
* Laravel Filament 3.x

## Kroky ke spuštění aplikace

1. **Instalace PHP závislostí:**

```bash
composer install
```

2. **Instalace JavaScript závislostí a sestavení frontendu:**

```bash
npm install
npm run build
```

3. **Vytvoření `.env` souboru a konfigurace:**

Zkopírujte soubor `.env.example` na `.env` a upravte přihlašovací údaje k databázi dle vaší lokální konfigurace. Například:

```
DB_DATABASE=filament_cms
DB_USERNAME=root
DB_PASSWORD=
```

4. **Import databáze:**

V projektu je přiložen SQL dump (`bp-filament.sql`). Importujte jej do vaší MySQL databáze (např. přes **phpMyAdmin**):

* vytvořte databázi např. `filament_cms`
* nahrajte SQL soubor pomocí importu

5. **Vygenerování klíče aplikace:**

```bash
php artisan key:generate
```

6. **Vytvoření symbolického odkazu pro úložiště:**

```bash
php artisan storage:link
```

Následně jsou ve složce `storage` fotky, které je pro zobrazení na webu potřeba nahrát do `\storage\app\public\media`

7. **Spuštění vývojového serveru (volitelně):**

```bash
php artisan serve
```

---

## PHP rozšíření nutná ve XAMPP

Před spuštěním aplikace zkontrolujte v souboru `php.ini`, že máte povolena následující rozšíření (bez `;` na začátku řádku):

```ini
extension=curl
extension=fileinfo
extension=gd
extension=intl
extension=mbstring
extension=exif
extension=mysqli
extension=openssl
extension=pdo_mysql
extension=zip
```

---

## Přístup do administrace

Aplikace využívá Laravel Filament administrační rozhraní.

Po úspěšném spuštění přejděte na:

```
/admin
```

Testovací přihlašovací údaje:

```
Email: admin@gmail.com
Heslo: Admin123
```
