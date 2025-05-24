-- Adminer 4.8.1 MySQL 10.5.28-MariaDB-ubu2004-log dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `lang_locale` char(16) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `publish_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_lang_locale_unique` (`slug`,`lang_locale`),
  KEY `articles_lang_locale_foreign` (`lang_locale`),
  KEY `articles_user_id_foreign` (`user_id`),
  CONSTRAINT `articles_lang_locale_foreign` FOREIGN KEY (`lang_locale`) REFERENCES `languages` (`locale`),
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `articles` (`id`, `slug`, `lang_locale`, `user_id`, `title`, `content`, `active`, `publish_time`, `created_at`, `updated_at`) VALUES
(2,	'jak-probiha-stavba-rodinneho-domu',	'cs',	9,	'Jak probíhá stavba rodinného domu',	'{\"banner\":null,\"thumbnail\":41,\"body\":\"<p>Stavba rodinn\\u00e9ho domu je velk\\u00fd krok, kter\\u00fd vy\\u017eaduje pl\\u00e1nov\\u00e1n\\u00ed, trp\\u011blivost a dobr\\u00e9 rozhodov\\u00e1n\\u00ed. V tomto \\u010dl\\u00e1nku v\\u00e1m p\\u0159ibl\\u00ed\\u017e\\u00edme cel\\u00fd proces \\u2014 od prvn\\u00edch krok\\u016f a\\u017e po p\\u0159ed\\u00e1n\\u00ed hotov\\u00e9ho domu.<\\/p><h2>Prvn\\u00ed kroky ke stavb\\u011b<\\/h2><p>Ne\\u017e se kopne do zem\\u011b, je pot\\u0159eba proj\\u00edt n\\u011bkolika d\\u016fle\\u017eit\\u00fdmi f\\u00e1zemi:<\\/p><ul><li><strong>V\\u00fdb\\u011br pozemku<\\/strong> \\u2013 d\\u016fle\\u017eit\\u00fd je nejen vzhled, ale i orientace, dostupnost in\\u017een\\u00fdrsk\\u00fdch s\\u00edt\\u00ed a \\u00fazemn\\u00ed pl\\u00e1n.<\\/li><li><strong>Projektov\\u00e1 dokumentace<\\/strong> \\u2013 vypracov\\u00e1n\\u00ed projekt\\u016f autorizovan\\u00fdm projektantem.<\\/li><li><strong>Stavebn\\u00ed povolen\\u00ed nebo ohl\\u00e1\\u0161en\\u00ed<\\/strong> \\u2013 vy\\u0159\\u00edzen\\u00ed na stavebn\\u00edm \\u00fa\\u0159ad\\u011b.<\\/li><li><strong>Financov\\u00e1n\\u00ed stavby<\\/strong> \\u2013 hypot\\u00e9ka, vlastn\\u00ed prost\\u0159edky nebo kombinace.<\\/li><li><strong>V\\u00fdb\\u011br stavebn\\u00ed firmy<\\/strong> \\u2013 ov\\u011b\\u0159en\\u00fd dodavatel s referencemi \\u0161et\\u0159\\u00ed starosti i n\\u00e1klady.<\\/li><\\/ul><p><em>Tip: Nezapome\\u0148te na geodetick\\u00e9 zam\\u011b\\u0159en\\u00ed a radonov\\u00fd pr\\u016fzkum pozemku.<\\/em><\\/p><h2>Samotn\\u00e1 realizace<\\/h2><p>Samotn\\u00e1 v\\u00fdstavba obvykle prob\\u00edh\\u00e1 v n\\u011bkolika na sebe navazuj\\u00edc\\u00edch etap\\u00e1ch:<\\/p><ul><li><strong>V\\u00fdkopov\\u00e9 pr\\u00e1ce a z\\u00e1klady<\\/strong><\\/li><li><strong>Hrub\\u00e1 stavba<\\/strong> (zdivo, stropy, st\\u0159echa)<\\/li><li><strong>Vnit\\u0159n\\u00ed instalace<\\/strong> (elektroinstalace, voda, topen\\u00ed)<\\/li><li><strong>Om\\u00edtky a povrchov\\u00e9 \\u00fapravy<\\/strong><\\/li><li><strong>Fin\\u00e1ln\\u00ed \\u00fapravy a kolaudace<\\/strong><\\/li><\\/ul><p>Ka\\u017ed\\u00e1 f\\u00e1ze by m\\u011bla b\\u00fdt ukon\\u010dena kontroln\\u00edm dnem a pr\\u016fb\\u011b\\u017en\\u011b dokumentov\\u00e1na. P\\u0159i spolupr\\u00e1ci se spolehlivou firmou z\\u00edsk\\u00e1te p\\u0159ehled o n\\u00e1kladech i harmonogramu.<\\/p><h2>Na co si d\\u00e1t pozor<\\/h2><ul><li>Nepodce\\u0148ujte v\\u00fdb\\u011br dodavatele a uzav\\u0159en\\u00ed <strong>smlouvy o d\\u00edlo<\\/strong>.<\\/li><li>Sledujte <strong>dodr\\u017eov\\u00e1n\\u00ed term\\u00edn\\u016f<\\/strong> a <strong>kvalitu prac\\u00ed<\\/strong>.<\\/li><li>Zva\\u017ete <strong>technick\\u00fd dozor investora<\\/strong>, pokud stav\\u00edte na kl\\u00ed\\u010d.<\\/li><\\/ul><h2>Z\\u00e1v\\u011br<\\/h2><p>Stavba domu je v\\u00fdzva, ale s dobrou p\\u0159\\u00edpravou a kvalitn\\u00edm partnerem ji zvl\\u00e1dnete bez stresu. Pokud chcete poradit nebo poptat stavbu, <a href=\\\"\\/kontakt\\\"><strong>kontaktujte n\\u00e1\\u0161 t\\u00fdm<\\/strong><\\/a> \\u2014 r\\u00e1di v\\u00e1m pom\\u016f\\u017eeme.<\\/p>\",\"seo\":{\"title\":\"Jak prob\\u00edh\\u00e1 stavba rodinn\\u00e9ho domu | BIZPER\",\"description\":\"Zjist\\u011bte, jak krok za krokem prob\\u00edh\\u00e1 stavba rodinn\\u00e9ho domu \\u2013 od v\\u00fdb\\u011bru pozemku a projektov\\u00e9 dokumentace a\\u017e po samotnou realizaci a kolaudaci.\",\"keywords\":\"stavba domu, jak prob\\u00edh\\u00e1 stavba, rodinn\\u00fd d\\u016fm, v\\u00fdstavba domu, postup v\\u00fdstavby, stavebn\\u00ed proces, stavebn\\u00ed etapy, stavebn\\u00ed povolen\\u00ed\",\"canonical\":null,\"og_title\":\"Jak se stav\\u00ed rodinn\\u00fd d\\u016fm | BIZPER\",\"og_type\":null,\"og_desc\":\"Praktick\\u00fd p\\u0159ehled v\\u0161ech f\\u00e1z\\u00ed v\\u00fdstavby rodinn\\u00e9ho domu \\u2014 od v\\u00fdb\\u011bru pozemku po fin\\u00e1ln\\u00ed p\\u0159ed\\u00e1n\\u00ed stavby. Srozumiteln\\u011b a p\\u0159ehledn\\u011b s tipy od BIZPER.\",\"og_image\":null}}',	1,	'2025-04-21 12:00:00',	'2025-03-22 21:21:24',	'2025-05-04 10:55:30'),
(4,	'na-co-si-dat-pozor-pri-vyberu-stavebni-firmy',	'cs',	9,	'Na co si dát pozor při výběru stavební firmy',	'{\"banner\":null,\"thumbnail\":38,\"body\":\"<p>V\\u00fdb\\u011br stavebn\\u00ed firmy pat\\u0159\\u00ed mezi nejd\\u016fle\\u017eit\\u011bj\\u0161\\u00ed rozhodnut\\u00ed, kter\\u00e9 ovlivn\\u00ed cel\\u00fd projekt. Kvalitn\\u00ed firma m\\u00e1 nejen dostatek referenc\\u00ed, ale tak\\u00e9 profesion\\u00e1ln\\u00ed p\\u0159\\u00edstup k pl\\u00e1nov\\u00e1n\\u00ed a komunikaci se z\\u00e1kazn\\u00edkem. D\\u016fle\\u017eit\\u00e1 je do detailu zpracovan\\u00e1 cenov\\u00e1 nab\\u00eddka i smluvn\\u00ed zaji\\u0161t\\u011bn\\u00ed v\\u0161ech podm\\u00ednek. Pokud si nejste jist\\u00ed, nebojte se po\\u017eadovat osobn\\u00ed sch\\u016fzku a prohl\\u00eddku ji\\u017e realizovan\\u00fdch staveb.<\\/p><h2>D\\u016fle\\u017eit\\u00e9 faktory<\\/h2><p>Na co si d\\u00e1t pozor:<\\/p><ul><li><strong>Dostupn\\u00e9 reference a recenze<\\/strong><\\/li><li><strong>P\\u0159esn\\u00fd polo\\u017ekov\\u00fd rozpo\\u010det<\\/strong><\\/li><li><strong>Smlouva s jasn\\u00fdmi term\\u00edny a sankcemi<\\/strong><\\/li><li><strong>Poji\\u0161t\\u011bn\\u00ed odpov\\u011bdnosti firmy<\\/strong><\\/li><\\/ul><h2>Tip na z\\u00e1v\\u011br<\\/h2><p>Nepo\\u0159izujte firmu jen podle cen\\u00edku. Seri\\u00f3zn\\u00ed firma v\\u00e1m ochotn\\u011b v\\u0161e vysv\\u011btl\\u00ed a nebude nic tajit. Vyh\\u00fdbejte se nab\\u00eddk\\u00e1m, kter\\u00e9 jsou podez\\u0159ele levn\\u00e9 \\u2013 \\u010dasto skr\\u00fdvaj\\u00ed kompromisy v kvalit\\u011b materi\\u00e1l\\u016f nebo proveden\\u00ed.<\\/p>\",\"seo\":{\"title\":\"Jak vybrat stavebn\\u00ed firmu bez rizika | BIZPER\",\"description\":\"Na co si d\\u00e1t pozor p\\u0159i v\\u00fdb\\u011bru stavebn\\u00ed firmy? P\\u0159ehled kl\\u00ed\\u010dov\\u00fdch faktor\\u016f, tipy na smlouvy, reference i ceny. Vyhn\\u011bte se nej\\u010dast\\u011bj\\u0161\\u00edm chyb\\u00e1m d\\u00edky tomuto \\u010dl\\u00e1nku.\",\"keywords\":\"v\\u00fdb\\u011br stavebn\\u00ed firmy, jak vybrat firmu, stavebn\\u00ed dodavatel, tipy pro stavebn\\u00ed firmu, stavebn\\u00ed smlouva, reference stavebn\\u00ed firmy, rozpo\\u010det stavby\",\"canonical\":null,\"og_title\":\"Na co si d\\u00e1t pozor p\\u0159i v\\u00fdb\\u011bru stavebn\\u00ed firmy | BIZPER\",\"og_type\":null,\"og_desc\":\"Praktick\\u00e9 rady, jak vybrat spolehlivou stavebn\\u00ed firmu. Co by m\\u011bla spl\\u0148ovat, jak se vyhnout probl\\u00e9m\\u016fm a co si pohl\\u00eddat ve smlouv\\u011b.\",\"og_image\":null}}',	1,	'2025-04-22 10:00:00',	'2025-03-22 21:21:24',	'2025-05-18 05:33:42'),
(5,	'nejcastejsi-chyby-pri-stavbe-domu',	'cs',	9,	'Nejčastější chyby při stavbě domu',	'{\"banner\":null,\"thumbnail\":39,\"body\":\"<p>V\\u00fdstavba rodinn\\u00e9ho domu je n\\u00e1ro\\u010dn\\u00fd proces, ve kter\\u00e9m m\\u016f\\u017ee ka\\u017ed\\u00e1 chyba zp\\u016fsobit zpo\\u017ed\\u011bn\\u00ed i nav\\u00fd\\u0161en\\u00ed rozpo\\u010dtu. V tomto \\u010dl\\u00e1nku se pod\\u00edv\\u00e1me na nej\\u010dast\\u011bj\\u0161\\u00ed chyby v p\\u0159\\u00edprav\\u011b i p\\u0159i samotn\\u00e9 realizaci stavby a porad\\u00edme, jak se jim vyhnout.<\\/p><h2>Chyby v p\\u0159\\u00edprav\\u011b<\\/h2><p>Mnoho probl\\u00e9m\\u016f vznik\\u00e1 u\\u017e p\\u0159i p\\u0159\\u00edprav\\u011b stavby. Nedostate\\u010dn\\u011b zpracovan\\u00fd projekt, chybn\\u00fd odhad n\\u00e1klad\\u016f nebo p\\u0159ehl\\u00e9dnut\\u00ed technick\\u00fdch podm\\u00ednek m\\u016f\\u017ee zp\\u016fsobit komplikace, kter\\u00e9 stavbu prodra\\u017e\\u00ed nebo zdr\\u017e\\u00ed o t\\u00fddny a\\u017e m\\u011bs\\u00edce.<\\/p><p>Typick\\u00e9 chyby v p\\u0159\\u00edprav\\u011b:<\\/p><ul><li><strong>Nejasn\\u00e9 zam\\u011b\\u0159en\\u00ed pozemku<\\/strong><\\/li><li><strong>Chybn\\u011b nastaven\\u00fd rozpo\\u010det<\\/strong><\\/li><li><strong>Opomenut\\u00ed p\\u0159ipojen\\u00ed k s\\u00edt\\u00edm<\\/strong><\\/li><li><strong>\\u0160patn\\u011b pr\\u00e1vn\\u011b o\\u0161et\\u0159en\\u00fd pozemek<\\/strong><\\/li><\\/ul><h2>Chyby b\\u011bhem realizace<\\/h2><p>P\\u0159i samotn\\u00e9 v\\u00fdstavb\\u011b je d\\u016fle\\u017eit\\u00e9 hl\\u00eddat kvalitu proveden\\u00ed a dodr\\u017eov\\u00e1n\\u00ed technologick\\u00fdch postup\\u016f. Sp\\u011bch, nekvalitn\\u00ed materi\\u00e1ly nebo nedostate\\u010dn\\u00fd stavebn\\u00ed dozor mohou v\\u00e9st k v\\u00e1\\u017en\\u00fdm technick\\u00fdm i bezpe\\u010dnostn\\u00edm probl\\u00e9m\\u016fm.<\\/p><p>Nej\\u010dast\\u011bj\\u0161\\u00ed chyby stavby:<\\/p><ul><li><strong>\\u0160patn\\u011b proveden\\u00e1 izolace<\\/strong><\\/li><li><strong>Nedostate\\u010dn\\u00e9 armov\\u00e1n\\u00ed betonu<\\/strong><\\/li><li><strong>Chyby p\\u0159i mont\\u00e1\\u017ei oken a dve\\u0159\\u00ed<\\/strong><\\/li><li><strong>Zanedban\\u00e9 kontroly kvality prac\\u00ed<\\/strong><\\/li><\\/ul><h2>Z\\u00e1v\\u011br<\\/h2><p>Chyb\\u00e1m p\\u0159i stavb\\u011b domu se d\\u00e1 p\\u0159edej\\u00edt. Z\\u00e1sadn\\u00ed je spolupracovat s profesion\\u00e1ln\\u00edm partnerem, kter\\u00fd m\\u00e1 zku\\u0161enosti, db\\u00e1 na kvalitu a pracuje podle jasn\\u011b dan\\u00e9ho harmonogramu. M\\u00e1te dotaz? <a href=\\\"\\/kontakt\\\">Nev\\u00e1hejte n\\u00e1s kontaktovat<\\/a>.<\\/p>\",\"seo\":{\"title\":\"Nej\\u010dast\\u011bj\\u0161\\u00ed chyby p\\u0159i stavb\\u011b domu | BIZPER\",\"description\":\"Na co si d\\u00e1t pozor p\\u0159i stavb\\u011b domu? P\\u0159ehled nej\\u010dast\\u011bj\\u0161\\u00edch chyb v p\\u0159\\u00edprav\\u011b i realizaci. Vyhn\\u011bte se zbyte\\u010dn\\u00fdm n\\u00e1klad\\u016fm a probl\\u00e9m\\u016fm d\\u00edky t\\u011bmto tip\\u016fm.\",\"keywords\":\"chyby p\\u0159i stavb\\u011b, stavba domu, stavebn\\u00ed chyby, realizace stavby, p\\u0159\\u00edprava stavby, probl\\u00e9my p\\u0159i v\\u00fdstavb\\u011b, stavba bez chyb\",\"canonical\":null,\"og_title\":\"Na co si d\\u00e1t pozor p\\u0159i stavb\\u011b domu | BIZPER\",\"og_type\":null,\"og_desc\":\"Zjist\\u011bte, jak\\u00e9 chyby nej\\u010dast\\u011bji prov\\u00e1zej\\u00ed stavbu domu \\u2014 a jak se jim vyhnout. P\\u0159ehledn\\u011b, prakticky a s doporu\\u010den\\u00edmi od odborn\\u00edk\\u016f.\",\"og_image\":null}}',	1,	'2025-04-16 14:00:00',	'2025-03-22 21:21:24',	'2025-04-29 18:46:49'),
(10,	'vyhody-stavby-na-klic-2025',	'cs',	9,	'Výhody stavby na klíč 2025',	'{\"banner\":null,\"thumbnail\":41,\"body\":\"<p>Stavba na kl\\u00ed\\u010d je ide\\u00e1ln\\u00ed \\u0159e\\u0161en\\u00ed pro ty, kte\\u0159\\u00ed cht\\u011bj\\u00ed m\\u00edt jistotu hladk\\u00e9ho pr\\u016fb\\u011bhu cel\\u00e9 v\\u00fdstavby \\u2014 bez slo\\u017eit\\u00e9 koordinace r\\u016fzn\\u00fdch dodavatel\\u016f, stresu z term\\u00edn\\u016f a ne\\u010dekan\\u00fdch n\\u00e1klad\\u016f.<\\/p><h2>Co je stavba na kl\\u00ed\\u010d<\\/h2><p>Stavba na kl\\u00ed\\u010d znamen\\u00e1, \\u017ee se o cel\\u00fd proces postar\\u00e1 jedin\\u00e1 firma \\u2013 od prvotn\\u00edho n\\u00e1vrhu a projektov\\u00e9 dokumentace a\\u017e po p\\u0159ed\\u00e1n\\u00ed hotov\\u00e9ho domu. Investor nemus\\u00ed \\u0159e\\u0161it jednotliv\\u00e9 dodavatele ani organizaci f\\u00e1z\\u00ed v\\u00fdstavby.<\\/p><h2>V\\u00fdhody pro investora<\\/h2><p>Tento model p\\u0159in\\u00e1\\u0161\\u00ed nejen \\u00fasporu \\u010dasu, ale i v\\u011bt\\u0161\\u00ed p\\u0159ehlednost a komfort. Odpov\\u011bdnost za v\\u00fdsledek nese jedin\\u00fd zhotovitel, co\\u017e v\\u00fdrazn\\u011b sni\\u017euje rizika i mo\\u017enost chyb.<\\/p><p><strong>Hlavn\\u00ed v\\u00fdhody stavby na kl\\u00ed\\u010d:<\\/strong><\\/p><ul><li><strong>Jeden dodavatel<\\/strong><\\/li><li><strong>P\\u0159ehledn\\u00e9 financov\\u00e1n\\u00ed<\\/strong><\\/li><li><strong>M\\u00e9n\\u011b starost\\u00ed a rizik<\\/strong><\\/li><li><strong>Rychlej\\u0161\\u00ed dokon\\u010den\\u00ed stavby<\\/strong><\\/li><\\/ul><h2>Z\\u00e1v\\u011br<\\/h2><p>Stavba na kl\\u00ed\\u010d p\\u0159edstavuje modern\\u00ed p\\u0159\\u00edstup ke stavebnictv\\u00ed, kter\\u00fd \\u0161et\\u0159\\u00ed \\u010das, pen\\u00edze i nervy. Pokud hled\\u00e1te spolehliv\\u00e9ho partnera pro tento typ realizace, obra\\u0165te se na n\\u00e1s \\u2014 r\\u00e1di v\\u00e1m v\\u0161e vysv\\u011btl\\u00edme a p\\u0159iprav\\u00edme nab\\u00eddku na m\\u00edru.<\\/p>\",\"seo\":{\"title\":\"V\\u00fdhody stavby na kl\\u00ed\\u010d pro investory | BIZPER\",\"description\":\"Zjist\\u011bte, co obn\\u00e1\\u0161\\u00ed stavba na kl\\u00ed\\u010d a pro\\u010d je pro investory v\\u00fdhodn\\u00e1. M\\u00e9n\\u011b starost\\u00ed, p\\u0159ehledn\\u00e9 financov\\u00e1n\\u00ed a rychl\\u00e9 dokon\\u010den\\u00ed v re\\u017eii jednoho dodavatele.\",\"keywords\":\"stavba na kl\\u00ed\\u010d, v\\u00fdstavba na kl\\u00ed\\u010d, v\\u00fdhody stavby na kl\\u00ed\\u010d, kompletn\\u00ed realizace domu, stavebn\\u00ed firma na kl\\u00ed\\u010d, bezstarostn\\u00e1 stavba, koordinace stavby\",\"canonical\":null,\"og_title\":\"Pro\\u010d zvolit stavbu na kl\\u00ed\\u010d | BIZPER\",\"og_type\":null,\"og_desc\":\"Stavba na kl\\u00ed\\u010d \\u0161et\\u0159\\u00ed \\u010das, n\\u00e1klady i rizika. P\\u0159e\\u010dt\\u011bte si, jak\\u00e9 v\\u00fdhody p\\u0159in\\u00e1\\u0161\\u00ed a pro\\u010d ji zva\\u017euje st\\u00e1le v\\u00edce investor\\u016f.\",\"og_image\":null}}',	1,	'2025-04-25 21:49:19',	'2025-04-28 17:52:09',	'2025-04-29 18:51:06'),
(11,	'moderni-trendy-v-bydleni-2025',	'cs',	9,	'Moderní trendy v bydlení 2025',	'{\"banner\":null,\"thumbnail\":38,\"body\":\"<p>Bydlen\\u00ed se neust\\u00e1le vyv\\u00edj\\u00ed. Rok 2025 p\\u0159in\\u00e1\\u0161\\u00ed do dom\\u00e1cnost\\u00ed nov\\u00e9 technologie, v\\u011bt\\u0161\\u00ed d\\u016fraz na udr\\u017eitelnost a vy\\u0161\\u0161\\u00ed komfort pro obyvatele. Co bude letos v modern\\u00edm bydlen\\u00ed dominovat?<\\/p><h2>Chytr\\u00e9 technologie<\\/h2><p>Rok 2025 p\\u0159in\\u00e1\\u0161\\u00ed je\\u0161t\\u011b \\u0161ir\\u0161\\u00ed vyu\\u017eit\\u00ed chytr\\u00fdch syst\\u00e9m\\u016f v dom\\u00e1cnostech. <strong>Automatick\\u00e9 ovl\\u00e1d\\u00e1n\\u00ed sv\\u011btel<\\/strong>, <strong>inteligentn\\u00ed zabezpe\\u010den\\u00ed<\\/strong>, <strong>d\\u00e1lkov\\u011b \\u0159\\u00edzen\\u00e9 vyt\\u00e1p\\u011bn\\u00ed<\\/strong> nebo integrace s mobiln\\u00edmi aplikacemi se st\\u00e1vaj\\u00ed standardem novostaveb i modernizac\\u00ed.<\\/p><p>Modern\\u00ed d\\u016fm dnes um\\u00ed:<\\/p><ul><li>rozpoznat p\\u0159\\u00edtomnost osob a podle toho \\u0159\\u00eddit osv\\u011btlen\\u00ed a teplotu<\\/li><li>upozornit na podez\\u0159el\\u00fd pohyb nebo otev\\u0159en\\u00e1 okna<\\/li><li>optimalizovat spot\\u0159ebu energi\\u00ed a \\u0161et\\u0159it n\\u00e1klady<\\/li><\\/ul><h2>Energetick\\u00e1 sob\\u011bsta\\u010dnost<\\/h2><p><strong>Ekologie a \\u00faspory<\\/strong> jsou kl\\u00ed\\u010dov\\u00fdm trendem. D\\u016fraz se klade na to, aby d\\u016fm s\\u00e1m dok\\u00e1zal vyr\\u00e1b\\u011bt a uchov\\u00e1vat energii.<\\/p><p>B\\u011b\\u017enou sou\\u010d\\u00e1st\\u00ed nov\\u00e9ho bydlen\\u00ed jsou:<\\/p><ul><li><strong>Sol\\u00e1rn\\u00ed panely<\\/strong><\\/li><li><strong>Tepeln\\u00e1 \\u010derpadla<\\/strong><\\/li><li><strong>Rekuperace tepla<\\/strong><\\/li><li><strong>Vysoce \\u00fa\\u010dinn\\u00e1 izolace a trojskla<\\/strong><\\/li><\\/ul><p>Modern\\u00ed d\\u016fm roku 2025 se p\\u0159ibli\\u017euje energeticky pasivn\\u00edmu standardu \\u2013 nejen pro ekologii, ale i pro dlouhodobou ekonomickou v\\u00fdhodnost.<\\/p><h2>Z\\u00e1v\\u011br<\\/h2><p>Bydlen\\u00ed roku 2025 je chyt\\u0159ej\\u0161\\u00ed, \\u00fasporn\\u011bj\\u0161\\u00ed a pohodln\\u011bj\\u0161\\u00ed. A\\u0165 u\\u017e stav\\u00edte nov\\u00fd d\\u016fm nebo rekonstruujete, sledujte aktu\\u00e1ln\\u00ed trendy \\u2013 usnadn\\u00ed v\\u00e1m \\u017eivot i spr\\u00e1vu dom\\u00e1cnosti. Zva\\u017eujete chytr\\u00fd nebo energeticky \\u00fasporn\\u00fd projekt? <a href=\\\"\\/kontakt\\\">Ozv\\u011bte se n\\u00e1m<\\/a> \\u2013 r\\u00e1di v\\u00e1m s t\\u00edm pom\\u016f\\u017eeme.<\\/p><p><br><\\/p>\",\"seo\":{\"title\":\"Modern\\u00ed trendy v bydlen\\u00ed 2025 | BIZPER\",\"description\":\"Jak vypad\\u00e1 modern\\u00ed bydlen\\u00ed v roce 2025? Chytr\\u00e9 technologie, sol\\u00e1rn\\u00ed panely, tepeln\\u00e1 \\u010derpadla a d\\u016fraz na \\u00fasporu energi\\u00ed. Inspirujte se nov\\u00fdmi trendy.\",\"keywords\":\"trendy bydlen\\u00ed 2025, modern\\u00ed bydlen\\u00ed, chytr\\u00fd d\\u016fm, smart home, sol\\u00e1rn\\u00ed panely, energetick\\u00e1 sob\\u011bsta\\u010dnost, ekologick\\u00e9 stavby, technologie v dom\\u00e1cnosti\",\"canonical\":null,\"og_title\":\"Bydlen\\u00ed budoucnosti: trendy 2025 | BIZPER\",\"og_type\":null,\"og_desc\":\"Chytr\\u00e9 ovl\\u00e1d\\u00e1n\\u00ed, energetick\\u00e1 sob\\u011bsta\\u010dnost a vysok\\u00fd komfort. P\\u0159e\\u010dt\\u011bte si, co bude dominovat bydlen\\u00ed v roce 2025.\",\"og_image\":null}}',	1,	'2025-04-26 17:10:21',	'2025-04-28 18:39:14',	'2025-04-29 18:53:36'),
(12,	'kdy-je-nejlepsi-cas-zacit-stavet',	'cs',	9,	'Kdy je nejlepší čas začít stavět',	'{\"banner\":null,\"thumbnail\":39,\"body\":\"<p>Pl\\u00e1nov\\u00e1n\\u00ed stavby vyvol\\u00e1v\\u00e1 \\u010dastou ot\\u00e1zku \\u2013 kdy je vlastn\\u011b nejlep\\u0161\\u00ed za\\u010d\\u00edt? Rozhodnut\\u00ed \\u010dasto z\\u00e1vis\\u00ed na po\\u010das\\u00ed, dostupnosti firem i va\\u0161ich \\u010dasov\\u00fdch mo\\u017enostech. Nej\\u010dast\\u011bji se za\\u010d\\u00edn\\u00e1 na ja\\u0159e nebo na podzim, ob\\u011b obdob\\u00ed maj\\u00ed sv\\u00e9 v\\u00fdhody.<\\/p><h2>V\\u00fdhody jarn\\u00ed stavby<\\/h2><p>Jaro p\\u0159in\\u00e1\\u0161\\u00ed p\\u0159\\u00edzniv\\u00e9 klimatick\\u00e9 podm\\u00ednky. Po zimn\\u00ed p\\u0159est\\u00e1vce je p\\u016fda stabiln\\u00ed a d\\u00e9\\u0161\\u0165 nen\\u00ed tak \\u010dast\\u00fd jako na podzim. Dny se prodlu\\u017euj\\u00ed, co\\u017e znamen\\u00e1 del\\u0161\\u00ed pracovn\\u00ed dobu a men\\u0161\\u00ed riziko p\\u0159eru\\u0161en\\u00ed prac\\u00ed kv\\u016fli po\\u010das\\u00ed.<\\/p><p><strong>V\\u00fdhody:<\\/strong><\\/p><ul><li>Lep\\u0161\\u00ed klimatick\\u00e9 podm\\u00ednky<\\/li><li>Dlouh\\u00e1 denn\\u00ed doba<\\/li><li>Plynulej\\u0161\\u00ed pr\\u016fb\\u011bh v\\u00fdstavby<\\/li><li>V\\u010dasn\\u00e9 dokon\\u010den\\u00ed je\\u0161t\\u011b b\\u011bhem roku<\\/li><\\/ul><h2>V\\u00fdhody podzimn\\u00ed stavby<\\/h2><p>Podzimn\\u00ed obdob\\u00ed m\\u016f\\u017ee b\\u00fdt v\\u00fdhodn\\u00e9 z finan\\u010dn\\u00edho hlediska. Mimo hlavn\\u00ed sezonu n\\u011bkter\\u00e9 firmy nab\\u00edzej\\u00ed v\\u00fdhodn\\u011bj\\u0161\\u00ed ceny a maj\\u00ed voln\\u011bj\\u0161\\u00ed kapacity. To znamen\\u00e1 v\\u011bt\\u0161\\u00ed flexibilitu a ni\\u017e\\u0161\\u00ed tlak na \\u010das.<\\/p><p><strong>V\\u00fdhody:<\\/strong><\\/p><ul><li>Mo\\u017en\\u00e9 slevy mimo sezonu<\\/li><li>V\\u011bt\\u0161\\u00ed dostupnost \\u0159emesln\\u00edk\\u016f a firem<\\/li><li>Klidn\\u011bj\\u0161\\u00ed pr\\u016fb\\u011bh bez n\\u00e1val\\u016f<\\/li><li>Lep\\u0161\\u00ed pl\\u00e1nov\\u00e1n\\u00ed na nov\\u00fd rok<\\/li><\\/ul><h2>Z\\u00e1v\\u011br<\\/h2><p>Neexistuje jednozna\\u010dn\\u011b nejlep\\u0161\\u00ed obdob\\u00ed \\u2013 z\\u00e1le\\u017e\\u00ed na konkr\\u00e9tn\\u00ed situaci, rozpo\\u010dtu i dostupnosti dodavatel\\u016f. Pokud si nejste jisti, r\\u00e1di v\\u00e1m porad\\u00edme s v\\u00fdb\\u011brem spr\\u00e1vn\\u00e9ho term\\u00ednu a zajist\\u00edme hladk\\u00fd pr\\u016fb\\u011bh cel\\u00e9 stavby.<\\/p>\",\"seo\":{\"title\":\"Kdy je nejlep\\u0161\\u00ed za\\u010d\\u00edt stav\\u011bt d\\u016fm? | BIZPER\",\"description\":\"Pl\\u00e1nujete v\\u00fdstavbu? Zjist\\u011bte, zda je pro v\\u00e1s v\\u00fdhodn\\u011bj\\u0161\\u00ed za\\u010d\\u00edt stav\\u011bt na ja\\u0159e nebo na podzim. Srovn\\u00e1n\\u00ed obou obdob\\u00ed s tipy pro rozhodov\\u00e1n\\u00ed.\",\"keywords\":\"kdy za\\u010d\\u00edt stav\\u011bt, nejlep\\u0161\\u00ed \\u010das na stavbu, jarn\\u00ed stavba, podzimn\\u00ed stavba, v\\u00fdhody jarn\\u00ed stavby, v\\u00fdstavba domu, pl\\u00e1nov\\u00e1n\\u00ed stavby\",\"canonical\":null,\"og_title\":\"Kdy za\\u010d\\u00edt se stavbou domu? | BIZPER\",\"og_type\":null,\"og_desc\":\"Jaro nebo podzim? Porovnali jsme v\\u00fdhody obou obdob\\u00ed pro zah\\u00e1jen\\u00ed stavby. Pom\\u016f\\u017eeme v\\u00e1m rozhodnout se spr\\u00e1vn\\u011b a bez stresu.\",\"og_image\":null}}',	1,	'2025-04-27 14:42:06',	'2025-04-28 18:43:18',	'2025-04-29 18:55:32'),
(13,	'jak-pripravit-pozemek-pro-stavbu',	'cs',	9,	'Jak připravit pozemek pro stavbu',	'{\"banner\":null,\"thumbnail\":41,\"body\":\"<p>P\\u0159\\u00edprava pozemku je jedn\\u00edm z nejd\\u016fle\\u017eit\\u011bj\\u0161\\u00edch krok\\u016f p\\u0159ed zah\\u00e1jen\\u00edm v\\u00fdstavby. Kvalitn\\u00ed p\\u0159\\u00edprava zaji\\u0161\\u0165uje hladk\\u00fd pr\\u016fb\\u011bh stavby, minimalizuje komplikace a \\u0161et\\u0159\\u00ed \\u010das i pen\\u00edze.<\\/p><h2>Technick\\u00e1 p\\u0159\\u00edprava<\\/h2><p>Ne\\u017e za\\u010dne samotn\\u00e1 v\\u00fdstavba, je t\\u0159eba prov\\u00e9st zam\\u011b\\u0159en\\u00ed pozemku, posouzen\\u00ed jeho \\u00fanosnosti a p\\u0159\\u00edpravu p\\u0159ipojen\\u00ed na in\\u017een\\u00fdrsk\\u00e9 s\\u00edt\\u011b.<\\/p><p><strong>Do technick\\u00e9 p\\u0159\\u00edpravy spad\\u00e1 zejm\\u00e9na:<\\/strong><\\/p><ul><li>P\\u0159ipojen\\u00ed na vodovod, kanalizaci a elekt\\u0159inu<\\/li><li>P\\u0159\\u00edjezdov\\u00e1 komunikace a p\\u0159\\u00edstup na staveni\\u0161t\\u011b<\\/li><li>Geologick\\u00fd a radonov\\u00fd pr\\u016fzkum<\\/li><li>Odstran\\u011bn\\u00ed n\\u00e1letov\\u00e9 vegetace, srovn\\u00e1n\\u00ed ter\\u00e9nu<\\/li><\\/ul><p>Bez t\\u011bchto krok\\u016f nelze zaru\\u010dit bezpe\\u010dn\\u00fd a efektivn\\u00ed pr\\u016fb\\u011bh v\\u00fdstavby.<\\/p><h2>Administrativn\\u00ed p\\u0159\\u00edprava<\\/h2><p>Bez schv\\u00e1len\\u00e9 dokumentace stavbu nezah\\u00e1j\\u00edte. Ve\\u0161ker\\u00e9 \\u00fa\\u0159edn\\u00ed z\\u00e1le\\u017eitosti je t\\u0159eba za\\u010d\\u00edt \\u0159e\\u0161it s dostate\\u010dn\\u00fdm p\\u0159edstihem, aby nedo\\u0161lo ke zdr\\u017een\\u00ed.<\\/p><p><strong>Nezapome\\u0148te vy\\u0159\\u00eddit:<\\/strong><\\/p><ul><li>\\u00dazemn\\u00ed rozhodnut\\u00ed<\\/li><li>Stavebn\\u00ed povolen\\u00ed nebo ohl\\u00e1\\u0161en\\u00ed stavby<\\/li><li>Souhlasy spr\\u00e1vc\\u016f s\\u00edt\\u00ed<\\/li><li>P\\u0159\\u00edpadn\\u011b vyj\\u00e1d\\u0159en\\u00ed soused\\u016f<\\/li><\\/ul><p>Dobr\\u00e9 napl\\u00e1nov\\u00e1n\\u00ed administrativn\\u00edch krok\\u016f v\\u00e1m u\\u0161et\\u0159\\u00ed zbyte\\u010dn\\u00e9 komplikace a pr\\u00e1vn\\u00ed probl\\u00e9my.<\\/p><h2>Z\\u00e1v\\u011br<\\/h2><p>P\\u0159\\u00edprava pozemku nen\\u00ed jen o technice \\u2013 d\\u016fle\\u017eit\\u00e1 je i spr\\u00e1vn\\u00e1 administrativa. Pokud si nejste jisti, co v\\u0161e je pot\\u0159eba za\\u0159\\u00eddit, obra\\u0165te se na odborn\\u00edky. R\\u00e1di v\\u00e1m pom\\u016f\\u017eeme se v\\u0161emi kroky od A do Z.<\\/p>\",\"seo\":{\"title\":\"Jak spr\\u00e1vn\\u011b p\\u0159ipravit pozemek pro stavbu | BIZPER\",\"description\":\"Co v\\u0161echno je pot\\u0159eba ud\\u011blat p\\u0159ed zah\\u00e1jen\\u00edm stavby? Zam\\u011b\\u0159en\\u00ed, in\\u017een\\u00fdrsk\\u00e9 s\\u00edt\\u011b, povolen\\u00ed a dal\\u0161\\u00ed kroky p\\u0159ehledn\\u011b v na\\u0161em \\u010dl\\u00e1nku.\",\"keywords\":\"p\\u0159\\u00edprava pozemku, stavebn\\u00ed pozemek, technick\\u00e1 p\\u0159\\u00edprava, administrativn\\u00ed p\\u0159\\u00edprava, stavebn\\u00ed povolen\\u00ed, p\\u0159ipojen\\u00ed na s\\u00edt\\u011b, \\u00fazemn\\u00ed rozhodnut\\u00ed\",\"canonical\":null,\"og_title\":\"Jak p\\u0159ipravit stavebn\\u00ed pozemek | BIZPER\",\"og_type\":null,\"og_desc\":\"Zam\\u011b\\u0159en\\u00ed, s\\u00edt\\u011b, povolen\\u00ed \\u2013 v\\u0161e, co pot\\u0159ebujete k p\\u0159\\u00edprav\\u011b pozemku p\\u0159ed stavbou. Praktick\\u00fd p\\u0159ehled krok\\u016f bez zbyte\\u010dn\\u00fdch komplikac\\u00ed.\",\"og_image\":null}}',	1,	'2025-04-28 13:43:51',	'2025-04-28 18:44:47',	'2025-04-29 18:57:04'),
(14,	'rekonstrukce-versus-novostavba',	'cs',	9,	'Rekonstrukce versus novostavba',	'{\"banner\":null,\"thumbnail\":38,\"body\":\"<p>Pl\\u00e1nujete bydlen\\u00ed a rozhodujete se, zda koupit star\\u0161\\u00ed d\\u016fm a zrekonstruovat, nebo za\\u010d\\u00edt stav\\u011bt od z\\u00e1kladu? Ob\\u011b mo\\u017enosti maj\\u00ed sv\\u00e9 v\\u00fdhody i limity. Pod\\u00edvejme se na n\\u011b z pohledu n\\u00e1klad\\u016f, komfortu i svobody v\\u00fdb\\u011bru.<\\/p><h2>V\\u00fdhody rekonstrukce<\\/h2><p>Rekonstrukce m\\u016f\\u017ee b\\u00fdt <strong>rychlej\\u0161\\u00ed a levn\\u011bj\\u0161\\u00ed<\\/strong>, pokud je objekt ve slu\\u0161n\\u00e9m technick\\u00e9m stavu. \\u010casto se vyplat\\u00ed i kv\\u016fli lokalit\\u011b \\u2014 star\\u0161\\u00ed domy se nach\\u00e1zej\\u00ed v atraktivn\\u00edch \\u010d\\u00e1stech m\\u011bst a obc\\u00ed.<\\/p><p><strong>Dal\\u0161\\u00ed v\\u00fdhody rekonstrukce:<\\/strong><\\/p><ul><li>Mo\\u017enost zachov\\u00e1n\\u00ed p\\u016fvodn\\u00edch historick\\u00fdch prvk\\u016f<\\/li><li>Ni\\u017e\\u0161\\u00ed n\\u00e1roky na stavebn\\u00ed povolen\\u00ed<\\/li><li>Rychlej\\u0161\\u00ed pr\\u016fb\\u011bh ne\\u017e novostavba<\\/li><li>Ni\\u017e\\u0161\\u00ed vstupn\\u00ed n\\u00e1klady p\\u0159i dobr\\u00e9m v\\u00fdb\\u011bru objektu<\\/li><\\/ul><h2>V\\u00fdhody novostavby<\\/h2><p>Nov\\u00fd d\\u016fm znamen\\u00e1 <strong>nulov\\u00e9 kompromisy<\\/strong>. M\\u016f\\u017eete si jej navrhnout zcela podle sebe a vyu\\u017e\\u00edt nejnov\\u011bj\\u0161\\u00ed technologie i \\u00fasporn\\u00e1 \\u0159e\\u0161en\\u00ed.<\\/p><p><strong>V\\u00fdhody novostavby:<\\/strong><\\/p><ul><li>Modern\\u00ed dispozice a technick\\u00e9 \\u0159e\\u0161en\\u00ed<\\/li><li>Vy\\u0161\\u0161\\u00ed energetick\\u00e1 \\u00fa\\u010dinnost<\\/li><li>Dlouh\\u00e1 \\u017eivotnost a n\\u00edzk\\u00e9 provozn\\u00ed n\\u00e1klady<\\/li><li>Mo\\u017enost vyu\\u017e\\u00edt dota\\u010dn\\u00ed programy<\\/li><\\/ul><h2>Z\\u00e1v\\u011br<\\/h2><p>Volba mezi rekonstrukc\\u00ed a novostavbou z\\u00e1vis\\u00ed na rozpo\\u010dtu, lokalit\\u011b i preferenc\\u00edch. Pokud si nejste jist\\u00ed, obra\\u0165te se na n\\u00e1s \\u2014 pom\\u016f\\u017eeme v\\u00e1m zv\\u00e1\\u017eit v\\u0161echna pro a proti a naj\\u00edt ide\\u00e1ln\\u00ed \\u0159e\\u0161en\\u00ed.<\\/p>\",\"seo\":{\"title\":\"Rekonstrukce nebo novostavba? V\\u00fdhody a rozd\\u00edly | BIZPER\",\"description\":\"Nev\\u00edte, zda zrekonstruovat star\\u0161\\u00ed d\\u016fm nebo postavit nov\\u00fd? Porovn\\u00e1n\\u00ed v\\u00fdhod rekonstrukce a novostavby v\\u00e1m pom\\u016f\\u017ee se rozhodnout.\",\"keywords\":\"rekonstrukce vs. novostavba, co je lep\\u0161\\u00ed, v\\u00fdhody novostavby, v\\u00fdhody rekonstrukce, rekonstrukce domu, stavba nov\\u00e9ho domu, srovn\\u00e1n\\u00ed rekonstrukce a stavby\",\"canonical\":null,\"og_title\":\"Rekonstrukce nebo stavba na zelen\\u00e9 louce? | BIZPER\",\"og_type\":null,\"og_desc\":\"Porovnali jsme v\\u00fdhody rekonstrukce a novostavby. P\\u0159ehledn\\u00e9 srovn\\u00e1n\\u00ed, kter\\u00e9 v\\u00e1m pom\\u016f\\u017ee vybrat spr\\u00e1vnou cestu k bydlen\\u00ed.\",\"og_image\":null}}',	1,	'2025-04-29 12:00:25',	'2025-04-28 18:46:36',	'2025-04-29 18:58:43'),
(15,	'how-to-prepare-your-land-for-construction',	'en',	9,	'How to Prepare Your Land for Construction',	'{\"banner\":null,\"thumbnail\":41,\"body\":\"<p>Proper land preparation is a key step before starting any construction project. It ensures that the building process runs smoothly, legally, and safely \\u2014 saving time and money in the long run.<\\/p><h2>Technical Preparation<\\/h2><p>Before construction can begin, a thorough technical evaluation of the plot must be performed.<\\/p><p><strong>Key steps include:<\\/strong><\\/p><ul><li>Surveying and assessing soil bearing capacity<\\/li><li>Connecting utilities (water, electricity, sewage)<\\/li><li>Removing old vegetation and leveling terrain<\\/li><li>Ensuring site accessibility and access roads<\\/li><\\/ul><p>Neglecting these aspects can lead to construction delays and costly corrections later.<\\/p><h2>Administrative Preparation<\\/h2><p>Even a perfect technical setup won\'t help if paperwork isn\\u2019t in order. Legal and administrative steps are essential before ground is broken.<\\/p><p><strong>What you need to arrange:<\\/strong><\\/p><ul><li>Zoning approval and land-use permits<\\/li><li>Building permit or notice of intent<\\/li><li>Utility connection approvals<\\/li><li>Neighbor consent (if applicable)<\\/li><\\/ul><h2>Conclusion<\\/h2><p>Preparing your land properly is about more than just digging. It\\u2019s a combination of technical groundwork and proper documentation. Not sure where to start? Contact our team \\u2014 we\\u2019ll walk you through every step.<\\/p>\",\"seo\":{\"title\":\"Land Preparation Before Building | BIZPER\",\"description\":\"Planning to build? Discover all the technical and legal steps needed to prepare your land for construction \\u2014 from utilities to permits.\",\"keywords\":\"land preparation, construction site setup, prepare land for building, building permits, utility connections, zoning approval\",\"canonical\":null,\"og_title\":\"How to Prepare Land for a Building Project | BIZPER\",\"og_type\":null,\"og_desc\":\"Get your land ready for construction the right way. From technical surveys to permits \\u2014 here\\u2019s everything you need to know before building.\",\"og_image\":null}}',	1,	'2025-04-16 12:00:49',	'2025-04-29 19:01:55',	'2025-04-29 19:01:55'),
(16,	'renovation-vs-new-construction-which-one-to-choose',	'en',	9,	'Renovation vs. New Construction: Which One to Choose?',	'{\"banner\":null,\"thumbnail\":39,\"body\":\"<p>Should you renovate an old house or build a new one from scratch? Each option comes with different benefits, costs, and risks. Here\'s what to consider before you decide.<\\/p><h2>Advantages of Renovation<\\/h2><p>Renovating an existing home can save time and money \\u2014 especially if the structure is in decent condition.<\\/p><p><strong>Why choose renovation:<\\/strong><\\/p><ul><li>Lower upfront cost<\\/li><li>Faster project timeline<\\/li><li>Option to preserve historical charm<\\/li><li>Often located in established neighborhoods<\\/li><\\/ul><h2>Advantages of New Construction<\\/h2><p>New builds offer complete freedom to design your home exactly as you want it, with modern systems and materials.<\\/p><p><strong>Why build new:<\\/strong><\\/p><ul><li>Tailored layout and aesthetics<\\/li><li>Higher energy efficiency<\\/li><li>Fewer long-term maintenance issues<\\/li><li>Eligibility for green building incentives<\\/li><\\/ul><h2>Conclusion<\\/h2><p>There\\u2019s no one-size-fits-all answer. Consider your location, budget, timeline, and expectations. Need guidance? BIZPER helps clients evaluate all options and make the right decision.<\\/p>\",\"seo\":{\"title\":\"Renovation or New Build? Pros & Cons | BIZPER\",\"description\":\"Renovate or build from scratch? Discover the pros and cons of each option \\u2014 and find out what suits your budget and lifestyle best.\",\"keywords\":\"renovation vs new build, build or renovate, house renovation, new construction, home building options, remodeling\",\"canonical\":null,\"og_title\":\"Should You Renovate or Build a New House? | BIZPER\",\"og_type\":null,\"og_desc\":\"Torn between renovating and building? This guide compares costs, timelines, and benefits to help you decide what\\u2019s best.\",\"og_image\":null}}',	1,	'2025-04-16 11:02:25',	'2025-04-29 19:03:31',	'2025-04-29 19:03:31'),
(17,	'when-to-start-building',	'en',	9,	'When to Start Building',	'{\"banner\":null,\"thumbnail\":38,\"body\":\"<p>Timing your construction project right can save money, avoid delays, and improve build quality. So \\u2014 when\\u2019s the best time to start?<\\/p><h2>Spring Advantages<\\/h2><p>Spring offers longer daylight, stable weather, and an earlier start to the building season.<\\/p><ul><li>Ideal climate<\\/li><li>Fewer weather delays<\\/li><li>Faster progress<\\/li><li>Possible completion within the year<\\/li><\\/ul><h2>Autumn Advantages<\\/h2><p>Fall can be cheaper. Many contractors have more availability and offer off-season discounts.<\\/p><ul><li>More flexible scheduling<\\/li><li>Lower prices from some builders<\\/li><li>Easier planning ahead for next season<\\/li><\\/ul><h2>Conclusion<\\/h2><p>There\\u2019s no \\u201cperfect\\u201d time, but with the right planning, any season can work. Contact us \\u2014 we\\u2019ll help you find your ideal timeline.<\\/p>\",\"seo\":{\"title\":\"Best Time to Start Construction | BIZPER\",\"description\":\"Spring or fall? Find out the pros and cons of each season when planning your construction project.\",\"keywords\":\"when to build, best time to start construction, spring building, fall construction, seasonal planning\",\"canonical\":null,\"og_title\":\"When to Build a House | BIZPER\",\"og_type\":null,\"og_desc\":\"Wondering when to build your home? We compare spring and fall building to help you choose the best time.\",\"og_image\":null}}',	1,	'2025-04-18 23:04:14',	'2025-04-29 19:05:03',	'2025-04-29 19:05:03'),
(18,	'choosing-the-right-builder',	'en',	9,	'Choosing the Right Builder',	'{\"banner\":null,\"thumbnail\":41,\"body\":\"<p>Selecting the right construction company is one of the most important decisions of your project. Here\'s what to look out for.<\\/p><h2>What to Check<\\/h2><ul><li>Proven experience and references<\\/li><li>Transparent pricing and estimates<\\/li><li>Clear contracts and deadlines<\\/li><li>Insurance and liability coverage<\\/li><\\/ul><h2>Final Tip<\\/h2><p>Avoid deals that seem too good to be true. Trust and communication are just as important as price.<\\/p>\",\"seo\":{\"title\":\"How to Choose a Reliable Builder | BIZPER\",\"description\":\"Looking for a contractor? Here\\u2019s how to choose the right construction company \\u2014 from references to contracts.\",\"keywords\":\"how to choose a builder, reliable construction company, hiring a contractor, finding the right builder\",\"canonical\":null,\"og_title\":\"Choosing a Construction Company | BIZPER\",\"og_type\":\"Learn how to pick the right builder for your project \\u2014 and what red flags to avoid.\",\"og_desc\":\"Learn how to pick the right builder for your project \\u2014 and what red flags to avoid.\",\"og_image\":null}}',	1,	'2025-04-21 09:06:07',	'2025-04-29 19:06:29',	'2025-04-29 19:07:20'),
(19,	'build-vs-buy',	'en',	9,	'Build vs. Buy',	'{\"banner\":null,\"thumbnail\":39,\"body\":\"<p>Should you build your own home or buy one that\\u2019s ready? Let\\u2019s compare the two.<\\/p><h2>Building a Home<\\/h2><ul><li>Fully customized layout and design<\\/li><li>Latest materials and energy efficiency<\\/li><li>Higher upfront cost, but tailored results<\\/li><\\/ul><h2>Buying a Home<\\/h2><ul><li>Faster move-in<\\/li><li>Lower risk and effort<\\/li><li>Potential compromises on layout or quality<\\/li><\\/ul><h2>Conclusion<\\/h2><p>Building gives you freedom. Buying offers convenience. BIZPER helps with both \\u2014 ask us how.<\\/p>\",\"seo\":{\"title\":\"Should You Build or Buy a Home? | BIZPER\",\"description\":\"Not sure whether to build or buy? Compare pros and cons of both options \\u2014 and decide what fits your goals best.\",\"keywords\":\"build vs buy, build a home, buy a house, homeownership options, new home decision\",\"canonical\":null,\"og_title\":\"Build or Buy? Pros and Cons | BIZPER\",\"og_type\":null,\"og_desc\":\"Should you build your dream home or buy one ready? Compare both paths and find your answer.\",\"og_image\":null}}',	1,	'2025-04-23 07:07:40',	'2025-04-29 19:08:31',	'2025-04-29 19:08:31'),
(20,	'step-by-step-building-guide',	'en',	9,	'Step-by-Step Building Guide',	'{\"banner\":null,\"thumbnail\":38,\"body\":\"<p>New to construction? Here\'s how the process works \\u2014 from the first consultation to final handover.<\\/p><h2>Construction in 3 Steps:<\\/h2><ol><li><strong>Initial consultation<\\/strong> \\u2013 project goals, needs, location<\\/li><li><strong>Proposal &amp; planning<\\/strong> \\u2013 documents, timeline, pricing<\\/li><li><strong>Construction &amp; handover<\\/strong> \\u2013 full execution + delivery<\\/li><\\/ol><h2>Why Process Matters<\\/h2><p>A clear workflow reduces delays, miscommunication, and cost overruns. That\\u2019s why BIZPER builds with structure and precision.<\\/p>\",\"seo\":{\"title\":\"How We Build Your Home | BIZPER\",\"description\":\"From consultation to handover \\u2014 see how a professional construction process works in three clear steps.\",\"keywords\":\"construction process, home building steps, how to build a house, build a home timeline\",\"canonical\":null,\"og_title\":\"Construction Process Explained | BIZPER\",\"og_type\":null,\"og_desc\":\"Want to know how building a house works? Discover our simple 3-step approach to your dream home.\",\"og_image\":null}}',	1,	'2025-04-25 15:09:03',	'2025-04-29 19:09:43',	'2025-04-29 19:10:04'),
(21,	'cost-saving-tips-for-construction',	'en',	9,	'Cost-Saving Tips for Construction',	'{\"banner\":null,\"thumbnail\":39,\"body\":\"<p>Building doesn\\u2019t have to break the bank. With the right planning and smart choices, you can cut costs without cutting corners.<\\/p><h2>Smart Ways to Save<\\/h2><ul><li><strong>Plan thoroughly<\\/strong> \\u2013 avoid expensive changes later<\\/li><li><strong>Compare offers<\\/strong> \\u2013 get multiple quotes<\\/li><li><strong>Use standard materials<\\/strong> \\u2013 custom = costly<\\/li><li><strong>Build in stages<\\/strong> \\u2013 split budget over time<\\/li><li><strong>Think energy-efficient<\\/strong> \\u2013 lower long-term costs<\\/li><\\/ul><h2>Conclusion<\\/h2><p>It\\u2019s possible to save money and still build well. At BIZPER, we help clients plan smart \\u2014 and stay within budget.<\\/p>\",\"seo\":{\"title\":\"How to Save Money When Building | BIZPER\",\"description\":\"Learn how to reduce building costs without sacrificing quality. Smart planning, efficient materials, and professional guidance.\",\"keywords\":\"construction savings, building on a budget, cost-saving tips, how to reduce building cost, affordable home construction\",\"canonical\":null,\"og_title\":\"Smart Ways to Save on Your Build | BIZPER\",\"og_type\":null,\"og_desc\":\"Discover proven ways to save money on your construction project \\u2014 without compromising quality or safety.\",\"og_image\":null}}',	1,	'2025-04-26 23:10:28',	'2025-04-29 19:11:35',	'2025-04-29 19:55:25'),
(22,	'what-to-include-in-a-building-contract',	'en',	9,	'What to Include in a Building Contract',	'{\"banner\":null,\"thumbnail\":41,\"body\":\"<p>A solid contract protects you throughout the entire construction process. Here\\u2019s what to check before you sign.<\\/p><h2>Key Contract Elements<\\/h2><ul><li><strong>Detailed scope of work<\\/strong><\\/li><li><strong>Clear timeline and milestones<\\/strong><\\/li><li><strong>Fixed pricing and payment terms<\\/strong><\\/li><li><strong>Liability and insurance clauses<\\/strong><\\/li><li><strong>Warranty and post-build support<\\/strong><\\/li><\\/ul><h2>Final Tip<\\/h2><p>Always read the fine print. A good contract avoids disputes and gives both sides peace of mind. Not sure where to start? Ask us \\u2014 we\\u2019ll help.<\\/p>\",\"seo\":{\"title\":\"What Your Building Contract Should Include | BIZPER\",\"description\":\"Before you build, secure your rights. Learn what to include in a construction contract to avoid issues and delays.\",\"keywords\":\"building contract, construction agreement, what to include in contract, home building legal terms, construction warranty\",\"canonical\":null,\"og_title\":\"Checklist: Building Contract Essentials | BIZPER\",\"og_type\":null,\"og_desc\":\"A clear contract is the foundation of a safe project. Here\\u2019s what every home builder agreement should cover.\",\"og_image\":null}}',	1,	'2025-04-27 23:13:07',	'2025-04-29 19:13:34',	'2025-04-29 19:13:34');

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('livewire-rate-limiter:67e7963426045014d77c9ae93a0df3b383225db7',	'i:2;',	1747837283),
('livewire-rate-limiter:67e7963426045014d77c9ae93a0df3b383225db7:timer',	'i:1747837283;',	1747837283),
('livewire-rate-limiter:94790704bcc177af1ddca85c46bb67d83b765319',	'i:2;',	1748080816),
('livewire-rate-limiter:94790704bcc177af1ddca85c46bb67d83b765319:timer',	'i:1748080816;',	1748080816),
('livewire-rate-limiter:c673b7d723c38659c1018158720b90c033647941',	'i:1;',	1747909317),
('livewire-rate-limiter:c673b7d723c38659c1018158720b90c033647941:timer',	'i:1747909317;',	1747909317),
('spatie.permission.cache',	'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:90:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"view_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"create_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"update_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"restore_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"restore_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:17:\"replicate_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:15:\"reorder_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:14:\"delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:20:\"force_delete_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:24:\"force_delete_any_article\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"view_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"view_any_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"create_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"update_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"restore_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:20:\"restore_any_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:18:\"replicate_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"reorder_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:15:\"delete_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:19:\"delete_any_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:21:\"force_delete_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:25:\"force_delete_any_language\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:10:\"view_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:14:\"view_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:12:\"create_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:12:\"update_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:13:\"restore_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:17:\"restore_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"replicate_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"reorder_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:12:\"delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:16:\"delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:18:\"force_delete_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:22:\"force_delete_any_media\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:9:\"view_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:13:\"view_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"create_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"update_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:12:\"restore_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:16:\"restore_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:14:\"replicate_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:12:\"reorder_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:15:\"delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:17:\"force_delete_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:21:\"force_delete_any_page\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:14:\"view_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:18:\"view_any_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:17:\"view_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:21:\"view_any_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:4;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:16:\"create_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:16:\"update_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:17:\"restore_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:21:\"restore_any_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:19:\"replicate_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:17:\"reorder_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:16:\"delete_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:20:\"delete_any_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:22:\"force_delete_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:26:\"force_delete_any_reference\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:19:\"create_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:19:\"update_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:20:\"restore_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:24:\"restore_any_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:22:\"replicate_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:20:\"reorder_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:19:\"delete_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:23:\"delete_any_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:25:\"force_delete_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:29:\"force_delete_any_team::member\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"panel_user\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:6:\"Writer\";s:1:\"c\";s:3:\"web\";}}}',	1748100563);

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `locale` char(16) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_locale_unique` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `languages` (`id`, `name`, `locale`, `active`, `content`, `created_at`, `updated_at`) VALUES
(1,	'Čeština',	'cs',	1,	NULL,	'2025-03-22 20:58:04',	'2025-05-04 15:04:30'),
(2,	'English',	'en',	1,	NULL,	'2025-03-29 20:05:33',	'2025-04-26 11:48:29');

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `disk` varchar(255) NOT NULL DEFAULT 'public',
  `directory` varchar(255) NOT NULL DEFAULT 'media',
  `visibility` varchar(255) NOT NULL DEFAULT 'public',
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `size` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'image',
  `ext` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `caption` text DEFAULT NULL,
  `exif` text DEFAULT NULL,
  `curations` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `disk`, `directory`, `visibility`, `name`, `path`, `width`, `height`, `size`, `type`, `ext`, `alt`, `title`, `description`, `caption`, `exif`, `curations`, `created_at`, `updated_at`, `tenant_id`) VALUES
(4,	'public',	'media',	'public',	'hp-banner1',	'media/hp-banner1.jpg',	1920,	1080,	179690,	'image/jpeg',	'jpg',	'hp-banner1',	'hp-banner1',	'hp-banner1',	'hp-banner1',	'{\"FileName\":\"yzJmyxUjqf9b9CBgyxvfAm0DMXmQTP-metaaHAtYmFubmVyMS5qcGc=-.jpg\",\"FileDateTime\":1745773321,\"FileSize\":179690,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"1920\\\" height=\\\"1080\\\"\",\"Height\":1080,\"Width\":1920,\"IsColor\":1}}',	'[]',	'2025-04-27 15:02:09',	'2025-04-29 18:17:35',	NULL),
(5,	'public',	'media',	'public',	'hp-banner2',	'media/hp-banner2.jpg',	1920,	1080,	214605,	'image/jpeg',	'jpg',	'hp-banner2',	'hp-banner2',	'hp-banner2',	'hp-banner2',	'{\"FileName\":\"UWRyv57dPcQLoLZ04z7p3aYSRyZj0x-metaaHAtYmFubmVyMi5qcGc=-.jpg\",\"FileDateTime\":1745773322,\"FileSize\":214605,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"1920\\\" height=\\\"1080\\\"\",\"Height\":1080,\"Width\":1920,\"IsColor\":1}}',	'[]',	'2025-04-27 15:02:09',	'2025-04-29 18:17:09',	NULL),
(6,	'public',	'media',	'public',	'hp-banner3',	'media/hp-banner3.jpg',	1920,	1080,	188037,	'image/jpeg',	'jpg',	'hp-banner3',	'hp-banner3',	'hp-banner3',	'hp-banner3',	'{\"FileName\":\"o3sYPeluB8jIkyL46zfBYJy38FWjGO-metaaHAtYmFubmVyMy5qcGc=-.jpg\",\"FileDateTime\":1745773326,\"FileSize\":188037,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"1920\\\" height=\\\"1080\\\"\",\"Height\":1080,\"Width\":1920,\"IsColor\":1}}',	'[]',	'2025-04-27 15:02:09',	'2025-04-29 18:16:15',	NULL),
(11,	'public',	'media',	'public',	'o-nas',	'media/o-nas.jpg',	630,	584,	68314,	'image/jpeg',	'jpg',	'o-nas',	'o-nas',	'o-nas',	'o-nas',	'{\"FileName\":\"DysC51XZWYu1R8oXB60ps3kKdCGDIu-metaYWJvdXQtMi5qcGc=-.jpg\",\"FileDateTime\":1745773989,\"FileSize\":68314,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"630\\\" height=\\\"584\\\"\",\"Height\":584,\"Width\":630,\"IsColor\":1}}',	'[]',	'2025-04-27 15:13:14',	'2025-04-29 18:17:55',	NULL),
(12,	'public',	'media',	'public',	'ikona-sluzby6',	'media/ikona-sluzby6.png',	60,	60,	2431,	'image/png',	'png',	'ikona-sluzby6',	'ikona-sluzby6',	'ikona-sluzby6',	'ikona-sluzby6',	NULL,	'[]',	'2025-04-27 15:16:25',	'2025-04-29 18:20:14',	NULL),
(13,	'public',	'media',	'public',	'ikona-sluzby5',	'media/ikona-sluzby5.png',	60,	60,	1507,	'image/png',	'png',	'ikona-sluzby5',	'ikona-sluzby5',	'ikona-sluzby5',	'ikona-sluzby5',	NULL,	'[]',	'2025-04-27 15:16:25',	'2025-04-29 18:19:57',	NULL),
(14,	'public',	'media',	'public',	'ikona-sluzby4',	'media/ikona-sluzby4.png',	60,	60,	1571,	'image/png',	'png',	'ikona-sluzby4',	'ikona-sluzby4',	'ikona-sluzby4',	'ikona-sluzby4',	NULL,	'[]',	'2025-04-27 15:16:25',	'2025-04-29 18:19:41',	NULL),
(15,	'public',	'media',	'public',	'ikona-sluzby3',	'media/ikona-sluzby3.png',	50,	60,	4213,	'image/png',	'png',	'ikona-sluzby3',	'ikona-sluzby3',	'ikona-sluzby3',	'ikona-sluzby3',	NULL,	'[]',	'2025-04-27 15:16:25',	'2025-04-29 18:19:18',	NULL),
(16,	'public',	'media',	'public',	'ikona-sluzby2',	'media/ikona-sluzby2.png',	60,	60,	4277,	'image/png',	'png',	'ikona-sluzby2',	'ikona-sluzby2',	'ikona-sluzby2',	'ikona-sluzby2',	NULL,	'[]',	'2025-04-27 15:16:25',	'2025-04-29 18:18:59',	NULL),
(17,	'public',	'media',	'public',	'ikona-sluzby1',	'media/ikona-sluzby1.png',	421,	486,	8860,	'image/png',	'png',	'ikona-sluzby1',	'ikona-sluzby1',	'ikona-sluzby1',	'ikona-sluzby1',	NULL,	'[]',	'2025-04-27 15:16:25',	'2025-04-29 18:18:40',	NULL),
(18,	'public',	'media',	'public',	'faq-obrazek',	'media/faq-obrazek.jpg',	540,	541,	57831,	'image/jpeg',	'jpg',	'faq-obrazek',	'faq-obrazek',	'faq-obrazek',	'faq-obrazek',	'{\"FileName\":\"EvuawUp0n8mBKvCNLW0mvBOVJpmpvU-metaZmFxLWltZy5qcGc=-.jpg\",\"FileDateTime\":1745774395,\"FileSize\":57831,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"540\\\" height=\\\"541\\\"\",\"Height\":541,\"Width\":540,\"IsColor\":1}}',	'[]',	'2025-04-27 15:19:58',	'2025-04-29 18:20:58',	NULL),
(19,	'public',	'media',	'public',	'portfolio-1',	'media/portfolio-1.png',	410,	500,	75346,	'image/png',	'png',	'portfolio-1',	'portfolio-1',	'portfolio-1',	'portfolio-1',	NULL,	'[]',	'2025-04-27 15:23:40',	'2025-04-29 18:23:20',	NULL),
(20,	'public',	'media',	'public',	'portfolio-2',	'media/portfolio-2.png',	410,	500,	76131,	'image/png',	'png',	'portfolio-2',	'portfolio-2',	'portfolio-2',	'portfolio-2',	NULL,	'[]',	'2025-04-27 15:23:40',	'2025-04-29 18:23:04',	NULL),
(21,	'public',	'media',	'public',	'portfolio-3',	'media/portfolio-3.png',	410,	500,	85768,	'image/png',	'png',	'portfolio-3',	'portfolio-3',	'portfolio-3',	'portfolio-3',	NULL,	'[]',	'2025-04-27 15:23:40',	'2025-04-29 18:22:50',	NULL),
(22,	'public',	'media',	'public',	'portfolio-4',	'media/portfolio-4.png',	410,	500,	91726,	'image/png',	'png',	'portfolio-4',	'portfolio-4',	'portfolio-4',	'portfolio-4',	NULL,	'[]',	'2025-04-27 15:23:40',	'2025-04-29 18:22:32',	NULL),
(23,	'public',	'media',	'public',	'portfolio-5',	'media/portfolio-5.png',	410,	500,	77382,	'image/png',	'png',	'portfolio-5',	'portfolio-5',	'portfolio-5',	'portfolio-5',	NULL,	'[]',	'2025-04-27 15:23:40',	'2025-04-29 18:22:09',	NULL),
(24,	'public',	'media',	'public',	'firma-1',	'media/firma-1.png',	70,	70,	2062,	'image/png',	'png',	'firma-1',	'firma-1',	'firma-1',	'firma-1',	NULL,	'[]',	'2025-04-27 15:34:26',	'2025-04-29 18:25:52',	NULL),
(25,	'public',	'media',	'public',	'firma-2',	'media/firma-2.png',	70,	70,	2668,	'image/png',	'png',	'firma-2',	'firma-2',	'firma-2',	'firma-2',	NULL,	'[]',	'2025-04-27 15:34:26',	'2025-04-29 18:25:33',	NULL),
(26,	'public',	'media',	'public',	'firma-3',	'media/firma-3.png',	70,	70,	1660,	'image/png',	'png',	'firma-3',	'firma-3',	'firma-3',	'firma-3',	NULL,	'[]',	'2025-04-27 15:34:26',	'2025-04-29 18:25:18',	NULL),
(27,	'public',	'media',	'public',	'firma-4',	'media/firma-4.png',	70,	70,	2349,	'image/png',	'png',	'firma-4',	'firma-4',	'firma-4',	'firma-4',	NULL,	'[]',	'2025-04-27 15:34:26',	'2025-04-29 18:25:01',	NULL),
(28,	'public',	'media',	'public',	'pracovni-postup-1',	'media/pracovni-postup-1.png',	354,	354,	49331,	'image/png',	'png',	'pracovni-postup-1',	'pracovni-postup-1',	'pracovni-postup-1',	'pracovni-postup-1',	NULL,	'[]',	'2025-04-27 15:55:58',	'2025-04-29 18:26:53',	NULL),
(29,	'public',	'media',	'public',	'pracovni-postup-2',	'media/pracovni-postup-2.png',	354,	354,	225000,	'image/png',	'png',	'pracovni-postup-2',	'pracovni-postup-2',	'pracovni-postup-2',	'pracovni-postup-2',	NULL,	'[]',	'2025-04-27 15:55:58',	'2025-04-29 18:26:40',	NULL),
(30,	'public',	'media',	'public',	'pracovni-postup-3',	'media/pracovni-postup-3.png',	354,	354,	57409,	'image/png',	'png',	'pracovni-postup-3',	'pracovni-postup-3',	'pracovni-postup-3',	'pracovni-postup-3',	NULL,	'[]',	'2025-04-27 15:55:58',	'2025-04-29 18:26:27',	NULL),
(31,	'public',	'media',	'public',	'portfolio-6',	'media/portfolio-6.png',	410,	500,	79565,	'image/png',	'png',	'portfolio-6',	'portfolio-6',	'portfolio-6',	'portfolio-6',	NULL,	'[]',	'2025-04-27 17:20:11',	'2025-04-29 18:27:18',	NULL),
(32,	'public',	'media',	'public',	'tym-1',	'media/tym-1.png',	820,	920,	224242,	'image/png',	'png',	'tym-1',	'tym-1',	'tym-1',	'tym-1',	NULL,	'[]',	'2025-04-27 17:30:05',	'2025-04-29 18:28:36',	NULL),
(33,	'public',	'media',	'public',	'tym-2',	'media/tym-2.png',	820,	920,	327697,	'image/png',	'png',	'tym-2',	'tym-2',	'tym-2',	'tym-2',	NULL,	'[]',	'2025-04-27 17:30:05',	'2025-04-29 18:28:23',	NULL),
(34,	'public',	'media',	'public',	'tym-3',	'media/tym-3.png',	820,	920,	210636,	'image/png',	'png',	'tym-3',	'tym-3',	'tym-3',	'tym-3',	NULL,	'[]',	'2025-04-27 17:30:05',	'2025-04-29 18:28:08',	NULL),
(35,	'public',	'media',	'public',	'tym-4',	'media/tym-4.jpg',	820,	920,	499131,	'image/jpeg',	'jpg',	'tym-4',	'tym-4',	'tym-4',	'tym-4',	'{\"FileName\":\"GXKrD0PS65RCPbKpDNhglwtodJFqF4-metadGVhbS00LmpwZw==-.jpg\",\"FileDateTime\":1745782197,\"FileSize\":499131,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"820\\\" height=\\\"920\\\"\",\"Height\":920,\"Width\":820,\"IsColor\":1}}',	'[]',	'2025-04-27 17:30:05',	'2025-04-29 18:27:53',	NULL),
(36,	'public',	'media',	'public',	'recenze-fotka-2',	'media/recenze-fotka-2.jpg',	144,	210,	11692,	'image/jpeg',	'jpg',	'recenze-fotka-2',	'recenze-fotka-2',	'recenze-fotka-2',	'recenze-fotka-2',	'{\"FileName\":\"WRh8Wpt7uPDVdIblSNNjrzQBi4a2KN-metadGVzdGltb25pYWwtMS5qcGc=-.jpg\",\"FileDateTime\":1745782568,\"FileSize\":11692,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"144\\\" height=\\\"210\\\"\",\"Height\":210,\"Width\":144,\"IsColor\":1}}',	'[]',	'2025-04-27 17:36:13',	'2025-04-29 18:29:15',	NULL),
(37,	'public',	'media',	'public',	'recenze-fotka-1',	'media/recenze-fotka-1.jpg',	144,	210,	12042,	'image/jpeg',	'jpg',	'recenze-fotka-1',	'recenze-fotka-1',	'recenze-fotka-1',	'recenze-fotka-1',	'{\"FileName\":\"wvXU8mqTYUrl9MYG6j1IYb3wBU6E07-metadGVzdGltb25pYWwtMi5qcGc=-.jpg\",\"FileDateTime\":1745782569,\"FileSize\":12042,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"\",\"COMPUTED\":{\"html\":\"width=\\\"144\\\" height=\\\"210\\\"\",\"Height\":210,\"Width\":144,\"IsColor\":1}}',	'[]',	'2025-04-27 17:36:13',	'2025-04-29 18:28:58',	NULL),
(38,	'public',	'media',	'public',	'blog-1',	'media/blog-1.png',	820,	600,	213525,	'image/png',	'png',	'blog-1',	'blog-1',	'blog-1',	'blog-1',	NULL,	'[]',	'2025-04-27 17:39:55',	'2025-04-29 18:29:59',	NULL),
(39,	'public',	'media',	'public',	'blog-2',	'media/blog-2.png',	820,	600,	215077,	'image/png',	'png',	'blog-2',	'blog-2',	'blog-2',	'blog-2',	NULL,	'[]',	'2025-04-27 17:39:55',	'2025-04-29 18:29:49',	NULL),
(40,	'public',	'media',	'public',	'portfolio-7',	'media/portfolio-7.png',	410,	500,	79565,	'image/png',	'png',	'portfolio-7',	'portfolio-7',	'portfolio-7',	'portfolio-7',	NULL,	'[]',	'2025-04-28 16:03:00',	'2025-04-29 18:29:36',	NULL),
(41,	'public',	'media',	'public',	'blog-3',	'media/blog-3.png',	820,	600,	196160,	'image/png',	'png',	'blog-3',	'blog-3',	'blog-3',	'blog-3',	NULL,	'[]',	'2025-04-29 17:09:42',	'2025-04-29 18:30:12',	NULL);

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'0001_01_01_000000_create_users_table',	1),
(2,	'0001_01_01_000001_create_cache_table',	1),
(3,	'0001_01_01_000002_create_jobs_table',	1),
(4,	'2025_03_22_205014_create_languages_table',	1),
(5,	'2025_03_22_205029_create_pages_table',	1),
(6,	'2025_03_22_205040_create_articles_table',	1),
(7,	'2025_03_24_215626_create_media_table',	2),
(8,	'2025_03_24_215627_add_tenant_aware_column_to_media_table',	2),
(9,	'2025_03_26_192137_create_permission_tables',	3),
(12,	'2025_04_27_092345_create_team_members_table',	4),
(13,	'2025_04_27_095102_create_references_table',	4);

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4,	'App\\Models\\User',	9);

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `lang_locale` char(16) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `in_menu` tinyint(4) DEFAULT 0,
  `in_menu_order` int(11) DEFAULT 0,
  `in_menu_title` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_lang_locale_unique` (`slug`,`lang_locale`),
  KEY `pages_lang_locale_foreign` (`lang_locale`),
  CONSTRAINT `pages_lang_locale_foreign` FOREIGN KEY (`lang_locale`) REFERENCES `languages` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pages` (`id`, `slug`, `lang_locale`, `type`, `title`, `content`, `active`, `in_menu`, `in_menu_order`, `in_menu_title`, `created_at`, `updated_at`) VALUES
(4,	'/',	'cs',	'homepage',	'Domů',	'{\"slides\":[{\"sub_title\":\"Stavebn\\u00ed spole\\u010dnost s tradic\\u00ed\",\"title\":\"Prom\\u011bn\\u00edme va\\u0161e sny ve skute\\u010dn\\u00e9 stavby\",\"text\":\"Od prvn\\u00edho n\\u00e1vrhu a\\u017e po dokon\\u010den\\u00ed \\u2013 stav\\u00edme s d\\u016frazem na kvalitu, spolehlivost a detail.\",\"button_text\":\"Kontaktujte n\\u00e1s\",\"button_link\":\"\\/kontakt\",\"background_image\":4},{\"sub_title\":\"Komplexn\\u00ed stavebn\\u00ed slu\\u017eby\",\"title\":\"Stav\\u00edme z\\u00e1klady pro va\\u0161i budoucnost\",\"text\":\"Realizujeme reziden\\u010dn\\u00ed, komer\\u010dn\\u00ed i pr\\u016fmyslov\\u00e9 projekty na kl\\u00ed\\u010d, p\\u0159esn\\u011b podle va\\u0161ich p\\u0159edstav.\",\"button_text\":\"Kontaktujte n\\u00e1s\",\"button_link\":\"\\/kontakt\",\"background_image\":6},{\"sub_title\":\"Individu\\u00e1ln\\u00ed p\\u0159\\u00edstup ke ka\\u017ed\\u00e9mu projektu\",\"title\":\"Va\\u0161e stavba, na\\u0161e odpov\\u011bdnost\",\"text\":\"Ka\\u017ed\\u00fd projekt vn\\u00edm\\u00e1me jako vlastn\\u00ed. Dod\\u00e1v\\u00e1me v\\u00fdsledky v nejvy\\u0161\\u0161\\u00ed kvalit\\u011b a v dohodnut\\u00fdch term\\u00ednech.\",\"button_text\":\"Kontaktujte n\\u00e1s\",\"button_link\":\"\\/kontakt\",\"background_image\":5}],\"specialization\":[{\"icon\":24,\"title\":\"Pl\\u00e1nov\\u00e1n\\u00ed a strategie v\\u00fdstavby\",\"text\":\"Pl\\u00e1nujeme ka\\u017ed\\u00fd projekt do detailu, abychom zajistili hladk\\u00fd pr\\u016fb\\u011bh realizace a splnili va\\u0161e o\\u010dek\\u00e1v\\u00e1n\\u00ed.\"},{\"icon\":25,\"title\":\"Individu\\u00e1ln\\u00ed n\\u00e1vrhy staveb\",\"text\":\"Navrhneme v\\u00e1m origin\\u00e1ln\\u00ed \\u0159e\\u0161en\\u00ed na m\\u00edru \\u2013 od rodinn\\u00fdch dom\\u016f a\\u017e po komer\\u010dn\\u00ed prostory.\"},{\"icon\":26,\"title\":\"Kontrola kvality a harmonogramu\",\"text\":\"Pr\\u016fb\\u011b\\u017en\\u011b analyzujeme postup prac\\u00ed, hl\\u00edd\\u00e1me rozpo\\u010dty a zaji\\u0161\\u0165ujeme, \\u017ee projekt b\\u011b\\u017e\\u00ed p\\u0159esn\\u011b podle pl\\u00e1nu.\"},{\"icon\":27,\"title\":\"\\u00daspora n\\u00e1klad\\u016f a investice do budoucna\",\"text\":\"Pom\\u00e1h\\u00e1me optimalizovat stavebn\\u00ed rozpo\\u010dty a vytv\\u00e1\\u0159\\u00edme hodnotn\\u00e9 a dlouhodob\\u011b udr\\u017eiteln\\u00e9 investice.\"}],\"aboutImage\":11,\"aboutNumber\":\"450\",\"aboutNumberText\":\"\\u00fasp\\u011b\\u0161n\\u011b dokon\\u010den\\u00fdch projekt\\u016f\",\"aboutSubtitle\":\"O n\\u00e1s\",\"aboutTitle\":\"Poznejte na\\u0161i stavebn\\u00ed spole\\u010dnost bl\\u00ed\\u017ee\",\"aboutText\":\"S v\\u00edce ne\\u017e 15 lety zku\\u0161enost\\u00ed ve stavebnictv\\u00ed p\\u0159etv\\u00e1\\u0159\\u00edme va\\u0161e p\\u0159edstavy ve skute\\u010dn\\u00e9 stavby. Realizujeme projekty v\\u0161ech velikost\\u00ed s d\\u016frazem na kvalitu, bezpe\\u010dnost a v\\u010dasn\\u00e9 dod\\u00e1n\\u00ed. Na\\u0161\\u00edm c\\u00edlem je v\\u017edy maxim\\u00e1ln\\u00ed spokojenost klienta.\",\"about\":[{\"text\":\"Kvalita a spolehlivost\",\"percent\":\"92\"},{\"text\":\"Dodr\\u017eov\\u00e1n\\u00ed term\\u00edn\\u016f\",\"percent\":\"87\"}],\"aboutButtonText\":\"Kontaktujte n\\u00e1s\",\"aboutButtonLink\":\"\\/kontakt\",\"servicesSubtitle\":\"Na\\u0161e slu\\u017eby\",\"servicesTitle\":\"Co v\\u00e1m m\\u016f\\u017eeme nab\\u00eddnout\",\"services\":[{\"icon\":12,\"title\":\"Instalace st\\u0159ech a krytin\",\"text\":\"Realizujeme kompletn\\u00ed pokl\\u00e1dku st\\u0159ech v\\u010detn\\u011b izolac\\u00ed a klemp\\u00ed\\u0159sk\\u00fdch prvk\\u016f. Spolehliv\\u00e1 ochrana va\\u0161eho domu.\"},{\"icon\":13,\"title\":\"N\\u00e1vrh interi\\u00e9r\\u016f\",\"text\":\"Pom\\u00e1h\\u00e1me vytvo\\u0159it funk\\u010dn\\u00ed a estetick\\u00e9 interi\\u00e9ry dom\\u016f, byt\\u016f i kancel\\u00e1\\u0159\\u00ed \\u2013 od n\\u00e1vrhu a\\u017e po realizaci.\"},{\"icon\":14,\"title\":\"Instalat\\u00e9rsk\\u00e9 pr\\u00e1ce\",\"text\":\"Prov\\u00e1d\\u00edme profesion\\u00e1ln\\u00ed rozvody vody, kanalizace a plynu v novostavb\\u00e1ch i p\\u0159i rekonstrukc\\u00edch.\"},{\"icon\":15,\"title\":\"Elektroinstalace\",\"text\":\"Realizujeme kompletn\\u00ed elektroinstalace v\\u010detn\\u011b chytr\\u00fdch syst\\u00e9m\\u016f a reviz\\u00ed, s d\\u016frazem na bezpe\\u010dnost.\"},{\"icon\":16,\"title\":\"\\u00dapravy ter\\u00e9n\\u016f\",\"text\":\"Zajist\\u00edme ter\\u00e9nn\\u00ed \\u00fapravy, pokl\\u00e1dku tr\\u00e1vn\\u00edk\\u016f a realizaci zahradn\\u00edch staveb pro dokonal\\u00e9 okol\\u00ed va\\u0161\\u00ed stavby.\"},{\"icon\":17,\"title\":\"Pokl\\u00e1dka podlah\",\"text\":\"Montujeme v\\u0161echny typy podlahov\\u00fdch krytin \\u2013 od dla\\u017eby po plovouc\\u00ed podlahy \\u2013 s precizn\\u00edm zpracov\\u00e1n\\u00edm.\"}],\"numbersSubtitle\":\"1500+ D\\u016eV\\u011a\\u0158UJ\\u00cdC\\u00cdCH KLIENT\\u016e\",\"numbersTitle\":\"Na\\u0161e v\\u00fdsledky mluv\\u00ed za n\\u00e1s\",\"numbers\":[{\"number\":\"450\",\"text\":\"Dokon\\u010den\\u00fdch stavebn\\u00edch projekt\\u016f\"},{\"number\":\"120\",\"text\":\"Spokojen\\u00fdch firemn\\u00edch klient\\u016f\"},{\"number\":\"250000\",\"text\":\"Postaven\\u00e9 podlahov\\u00e9 plochy\"},{\"number\":\"15\",\"text\":\"Zku\\u0161enost\\u00ed ve stavebnictv\\u00ed\"}],\"processSubtitle\":\"N\\u00e1\\u0161 pracovn\\u00ed postup\",\"processTitle\":\"Jak spole\\u010dn\\u011b stav\\u00edme va\\u0161e projekty\",\"process\":[{\"image\":28,\"number\":\"01\",\"title\":\"\\u00davodn\\u00ed konzultace\",\"text\":\"Sezn\\u00e1m\\u00edme se s va\\u0161imi po\\u017eadavky, zam\\u011b\\u0159en\\u00edm stavby a p\\u0159iprav\\u00edme prvn\\u00ed n\\u00e1vrhy \\u0159e\\u0161en\\u00ed.\"},{\"image\":29,\"number\":\"02\",\"title\":\"N\\u00e1vrh projektu\",\"text\":\"P\\u0159iprav\\u00edme konkr\\u00e9tn\\u00ed projektovou dokumentaci a detailn\\u00ed kalkulaci n\\u00e1klad\\u016f i \\u010dasov\\u00e9ho harmonogramu.\"},{\"image\":30,\"number\":\"03\",\"title\":\"Realizace a p\\u0159ed\\u00e1n\\u00ed\",\"text\":\"Zajist\\u00edme kompletn\\u00ed realizaci stavby v\\u010detn\\u011b fin\\u00e1ln\\u00edho p\\u0159ed\\u00e1n\\u00ed d\\u00edla dle domluven\\u00fdch podm\\u00ednek.\"}],\"portfolioSubtitle\":\"Na\\u0161e realizace\",\"portfolioTitle\":\"Pod\\u00edvejte se na na\\u0161e nejlep\\u0161\\u00ed projekty\",\"portfolio\":[{\"image\":19,\"title\":\"Bytov\\u00fd d\\u016fm\",\"text\":\"Kompletn\\u00ed v\\u00fdstavba modern\\u00edho bytov\\u00e9ho komplexu.\"},{\"image\":20,\"title\":\"Administrativn\\u00ed budova\",\"text\":\"V\\u00fdstavba kancel\\u00e1\\u0159sk\\u00fdch prostor na kl\\u00ed\\u010d.\"},{\"image\":21,\"title\":\"Rekonstrukce \\u0161koly\",\"text\":\"Obnova historick\\u00e9 budovy z\\u00e1kladn\\u00ed \\u0161koly.\"},{\"image\":22,\"title\":\"Rodinn\\u00e9 domy\",\"text\":\"Realizace developersk\\u00e9ho projektu 15 dom\\u016f.\"},{\"image\":23,\"title\":\"Pr\\u016fmyslov\\u00e1 hala\",\"text\":\"V\\u00fdstavba nov\\u00e9 v\\u00fdrobn\\u00ed haly pro lehk\\u00fd pr\\u016fmysl.\"},{\"image\":40,\"title\":\"Parkovac\\u00ed d\\u016fm\",\"text\":\"V\\u00fdstavba modern\\u00edho parkovac\\u00edho domu pro 250 aut.\"}],\"faqSubtitle\":\"Ot\\u00e1zky a odpov\\u011bdi\",\"faqTitle\":\"\\u010casto se n\\u00e1s pt\\u00e1te\",\"faqImage\":18,\"faq\":[{\"question\":\"Jak dlouho trv\\u00e1 realizace stavby?\",\"answer\":\"D\\u00e9lka realizace z\\u00e1vis\\u00ed na rozsahu projektu. U rodinn\\u00fdch dom\\u016f se obvykle pohybuje mezi 6 a\\u017e 12 m\\u011bs\\u00edci.\"},{\"question\":\"Nab\\u00edz\\u00edte i pomoc s vy\\u0159\\u00edzen\\u00edm stavebn\\u00edho povolen\\u00ed?\",\"answer\":\"Ano, zaji\\u0161\\u0165ujeme kompletn\\u00ed administrativn\\u00ed podporu v\\u010detn\\u011b vy\\u0159\\u00edzen\\u00ed stavebn\\u00edho povolen\\u00ed.\"},{\"question\":\"Je mo\\u017en\\u00e9 p\\u0159izp\\u016fsobit projekt b\\u011bhem stavby?\",\"answer\":\"Men\\u0161\\u00ed \\u00fapravy jsou mo\\u017en\\u00e9 po dohod\\u011b. V\\u017edy hled\\u00e1me \\u0159e\\u0161en\\u00ed, kter\\u00e9 nejl\\u00e9pe vyhov\\u00ed va\\u0161im po\\u017eadavk\\u016fm.\"},{\"question\":\"Jak\\u00fdm zp\\u016fsobem prob\\u00edh\\u00e1 financov\\u00e1n\\u00ed stavby?\",\"answer\":\"Financov\\u00e1n\\u00ed se obvykle d\\u011bl\\u00ed do n\\u011bkolika etap podle pr\\u016fb\\u011bhu stavby. V\\u0161e podrobn\\u011b vysv\\u011btl\\u00edme a nastav\\u00edme ve smlouv\\u011b.\"}],\"faqMoreQuestions\":\"St\\u00e1le m\\u00e1te dotazy?\",\"faqContact\":\"Kontaktujte n\\u00e1\\u0161 t\\u00fdm odborn\\u00edk\\u016f!\",\"faqContactLink\":\"\\/kontakt\",\"teamSubtitle\":\"N\\u00e1\\u0161 expertn\\u00ed t\\u00fdm\",\"teamTitle\":\"Seznamte se s na\\u0161imi odborn\\u00edky\",\"referenceSubtitle\":\"Reference klient\\u016f\",\"referenceTitle\":\"Co o n\\u00e1s \\u0159\\u00edkaj\\u00ed na\\u0161i z\\u00e1kazn\\u00edci\",\"contactTitleLeft\":\"Kontaktujte n\\u00e1s\",\"contactTextLeft\":\"M\\u00e1te z\\u00e1jem o spolupr\\u00e1ci nebo pot\\u0159ebujete v\\u00edce informac\\u00ed? Ozv\\u011bte se n\\u00e1m \\u2013 r\\u00e1di v\\u00e1m pom\\u016f\\u017eeme s va\\u0161\\u00edm projektem.\",\"contactTitleRight\":\"M\\u00e1te dotaz? Jsme tu pro v\\u00e1s.\",\"contactTextRight\":\"Vypl\\u0148te jednoduch\\u00fd formul\\u00e1\\u0159 a my se v\\u00e1m co nejd\\u0159\\u00edve ozveme. A\\u0165 u\\u017e se jedn\\u00e1 o nez\\u00e1vaznou popt\\u00e1vku, konzultaci projektu nebo bli\\u017e\\u0161\\u00ed informace, r\\u00e1di v\\u00e1m porad\\u00edme a najdeme to nejlep\\u0161\\u00ed \\u0159e\\u0161en\\u00ed.\",\"phoneName\":\"Telefon\",\"phoneInformation\":\"+420 123 456 789\",\"emailName\":\"E-mail\",\"emailInformation\":\"info@stavime.cz\",\"addressName\":\"Adresa\",\"addressInformation\":\"T\\u0159. Tom\\u00e1\\u0161e Bati 123, Zl\\u00edn\",\"blogSubtitle\":\"Aktuality z firmy\",\"blogTitle\":\"Nejnov\\u011bj\\u0161\\u00ed zpr\\u00e1vy a \\u010dl\\u00e1nky\",\"seo\":{\"title\":\"Profesion\\u00e1ln\\u00ed stavebn\\u00ed firma | BIZPER\",\"description\":\"Spolehliv\\u00e1 stavebn\\u00ed spole\\u010dnost s v\\u00edce ne\\u017e 140 realizovan\\u00fdmi projekty. Zajist\\u00edme kompletn\\u00ed slu\\u017eby \\u2014 od n\\u00e1vrhu p\\u0159es instalace a\\u017e po kone\\u010dn\\u00e9 p\\u0159ed\\u00e1n\\u00ed stavby.\",\"keywords\":\"stavebn\\u00ed firma, realizace staveb, stavebn\\u00ed slu\\u017eby, n\\u00e1vrh stavby, projektov\\u00e1 dokumentace, elektroinstalace, interi\\u00e9rov\\u00fd design, udr\\u017eiteln\\u00e9 stavby\",\"canonical\":\"https:\\/\\/bp-filament.expertdev1.cz\",\"og_title\":\"Prom\\u011bn\\u00edme va\\u0161e sny ve skute\\u010dn\\u00e9 stavby | BIZPER\",\"og_type\":null,\"og_desc\":\"Objevte siln\\u00e9ho partnera pro va\\u0161i stavbu. S v\\u00edce ne\\u017e 140 projekty a 15 lety zku\\u0161enost\\u00ed prom\\u011bn\\u00edme va\\u0161e vize ve skute\\u010dnost \\u2014 od prvn\\u00edho n\\u00e1vrhu po realizaci.\",\"og_image\":6}}',	1,	1,	1,	'Domů',	'2025-03-22 23:02:57',	'2025-05-18 09:40:31'),
(6,	'blog',	'cs',	'blog',	'Blog',	'{\"seo\":{\"title\":\"Stavebn\\u00ed novinky a \\u010dl\\u00e1nky | BIZPER\",\"description\":\"Prozkoumejte novinky, \\u010dl\\u00e1nky a rady ze sv\\u011bta stavebnictv\\u00ed. Sledujte aktu\\u00e1ln\\u00ed trendy, inspiraci a odborn\\u00e9 tipy od t\\u00fdmu BIZPER.\",\"keywords\":\"stavebn\\u00ed blog, stavebnictv\\u00ed \\u010dl\\u00e1nky, tipy pro stavbu, novinky ze stavebnictv\\u00ed, BIZPER blog, stavebn\\u00ed inspirace\",\"canonical\":null,\"og_title\":\"Stavebn\\u00ed novinky a inspirace | BIZPER\",\"og_type\":null,\"og_desc\":\"\\u010ct\\u011bte odborn\\u00e9 \\u010dl\\u00e1nky, inspiraci a aktu\\u00e1ln\\u00ed trendy v oblasti stavebnictv\\u00ed. P\\u0159in\\u00e1\\u0161\\u00edme tipy, novinky a zku\\u0161enosti na\\u0161eho t\\u00fdmu BIZPER.\",\"og_image\":null}}',	1,	1,	3,	'Blog',	'2025-03-23 06:47:25',	'2025-04-29 18:02:27'),
(9,	'kontakt',	'cs',	'contact',	'Kontakt',	'{\"contactTitleLeft\":\"Kontaktujte n\\u00e1s\",\"contactTextLeft\":\"M\\u00e1te z\\u00e1jem o spolupr\\u00e1ci nebo pot\\u0159ebujete v\\u00edce informac\\u00ed? Ozv\\u011bte se n\\u00e1m \\u2013 r\\u00e1di v\\u00e1m pom\\u016f\\u017eeme s va\\u0161\\u00edm projektem.\",\"contactTitleRight\":\"M\\u00e1te dotaz? Jsme tu pro v\\u00e1s.\",\"contactTextRight\":\"Vypl\\u0148te jednoduch\\u00fd formul\\u00e1\\u0159 a my se v\\u00e1m co nejd\\u0159\\u00edve ozveme. A\\u0165 u\\u017e se jedn\\u00e1 o nez\\u00e1vaznou popt\\u00e1vku, konzultaci projektu nebo bli\\u017e\\u0161\\u00ed informace, r\\u00e1di v\\u00e1m porad\\u00edme a najdeme to nejlep\\u0161\\u00ed \\u0159e\\u0161en\\u00ed.\",\"phoneName\":\"Telefon\",\"phoneInformation\":\"+420 123 456 789\",\"emailName\":\"E-mail\",\"emailInformation\":\"info@stavime.cz\",\"addressName\":\"Adresa\",\"addressInformation\":\"T\\u0159. Tom\\u00e1\\u0161e Bati 123, Zl\\u00edn\",\"seo\":{\"title\":\"Kontaktujte n\\u00e1s ohledn\\u011b stavby | BIZPER\",\"description\":\"M\\u00e1te z\\u00e1jem o spolupr\\u00e1ci nebo pot\\u0159ebujete poradit? Kontaktujte BIZPER \\u2013 r\\u00e1di v\\u00e1m pom\\u016f\\u017eeme s va\\u0161\\u00edm stavebn\\u00edm projektem \\u010di nez\\u00e1vaznou konzultac\\u00ed.\",\"keywords\":\"kontakt stavebn\\u00ed firma, stavebn\\u00ed konzultace, BIZPER kontakt, stavebn\\u00ed popt\\u00e1vka, stavebn\\u00ed podpora\",\"canonical\":null,\"og_title\":\"Spojte se s n\\u00e1mi | BIZPER\",\"og_type\":null,\"og_desc\":\"M\\u00e1te dotaz nebo pot\\u0159ebujete v\\u00edce informac\\u00ed? Ozv\\u011bte se na\\u0161emu t\\u00fdmu \\u2013 porad\\u00edme v\\u00e1m s n\\u00e1vrhem i realizac\\u00ed va\\u0161\\u00ed stavby.\",\"og_image\":null}}',	1,	1,	4,	'Kontakt',	'2025-04-27 16:42:02',	'2025-05-04 15:04:35'),
(12,	'o-nas',	'cs',	'about',	'O nás',	'{\"aboutImage\":11,\"aboutNumber\":\"450\",\"aboutNumberText\":\"\\u00fasp\\u011b\\u0161n\\u011b dokon\\u010den\\u00fdch projekt\\u016f\",\"aboutSubtitle\":\"O n\\u00e1s\",\"aboutTitle\":\"Poznejte na\\u0161i stavebn\\u00ed spole\\u010dnost bl\\u00ed\\u017ee\",\"aboutText\":\"S v\\u00edce ne\\u017e 15 lety zku\\u0161enost\\u00ed ve stavebnictv\\u00ed p\\u0159etv\\u00e1\\u0159\\u00edme va\\u0161e p\\u0159edstavy ve skute\\u010dn\\u00e9 stavby. Realizujeme projekty v\\u0161ech velikost\\u00ed s d\\u016frazem na kvalitu, bezpe\\u010dnost a v\\u010dasn\\u00e9 dod\\u00e1n\\u00ed. Na\\u0161\\u00edm c\\u00edlem je v\\u017edy maxim\\u00e1ln\\u00ed spokojenost klienta.\",\"about\":[{\"text\":\"Kvalita a spolehlivost\",\"percent\":\"92\"},{\"text\":\"Dodr\\u017eov\\u00e1n\\u00ed term\\u00edn\\u016f\",\"percent\":\"87\"}],\"aboutButtonText\":\"Kontaktujte n\\u00e1s\",\"aboutButtonLink\":\"\\/kontakt\",\"processSubtitle\":\"N\\u00e1\\u0161 pracovn\\u00ed postup\",\"processTitle\":\"Jak spole\\u010dn\\u011b stav\\u00edme va\\u0161e projekty\",\"process\":[{\"image\":28,\"number\":\"01\",\"title\":\"\\u00davodn\\u00ed konzultace\",\"text\":\"Sezn\\u00e1m\\u00edme se s va\\u0161imi po\\u017eadavky, zam\\u011b\\u0159en\\u00edm stavby a p\\u0159iprav\\u00edme prvn\\u00ed n\\u00e1vrhy \\u0159e\\u0161en\\u00ed.\"},{\"image\":29,\"number\":\"02\",\"title\":\"N\\u00e1vrh projektu\",\"text\":\"P\\u0159iprav\\u00edme konkr\\u00e9tn\\u00ed projektovou dokumentaci a detailn\\u00ed kalkulaci n\\u00e1klad\\u016f i \\u010dasov\\u00e9ho harmonogramu.\"},{\"image\":30,\"number\":\"03\",\"title\":\"Realizace a p\\u0159ed\\u00e1n\\u00ed\",\"text\":\"Zajist\\u00edme kompletn\\u00ed realizaci stavby v\\u010detn\\u011b fin\\u00e1ln\\u00edho p\\u0159ed\\u00e1n\\u00ed d\\u00edla dle domluven\\u00fdch podm\\u00ednek.\"}],\"teamSubtitle\":\"N\\u00e1\\u0161 expertn\\u00ed t\\u00fdm\",\"teamTitle\":\"Seznamte se s na\\u0161imi odborn\\u00edky\",\"referenceSubtitle\":\"Reference klient\\u016f\",\"referenceTitle\":\"Co o n\\u00e1s \\u0159\\u00edkaj\\u00ed na\\u0161i z\\u00e1kazn\\u00edci\",\"seo\":{\"title\":\"O na\\u0161\\u00ed stavebn\\u00ed spole\\u010dnosti | BIZPER\",\"description\":\"V\\u00edce ne\\u017e 15 let zku\\u0161enost\\u00ed a 450+ \\u00fasp\\u011b\\u0161n\\u011b dokon\\u010den\\u00fdch projekt\\u016f. Poznejte t\\u00fdm BIZPER, n\\u00e1\\u0161 pracovn\\u00ed postup a d\\u016fraz na kvalitu a dodr\\u017eov\\u00e1n\\u00ed term\\u00edn\\u016f.\",\"keywords\":\"o n\\u00e1s stavebn\\u00ed firma, BIZPER t\\u00fdm, stavebn\\u00ed zku\\u0161enosti, pracovn\\u00ed postup, odborn\\u00edci na stavby, stavebn\\u00ed projekty, stavebn\\u00ed spole\\u010dnost\",\"canonical\":null,\"og_title\":\"Poznejte t\\u00fdm a vize BIZPER | BIZPER\",\"og_type\":null,\"og_desc\":\"Seznamte se s na\\u0161\\u00edm t\\u00fdmem, hodnotami a \\u00fasp\\u011b\\u0161n\\u011b dokon\\u010den\\u00fdmi projekty. BIZPER je partnerem pro va\\u0161i stavbu \\u2014 od prvn\\u00edho n\\u00e1vrhu po realizaci.\",\"og_image\":null}}',	1,	1,	2,	'O nás',	'2025-04-28 16:37:02',	'2025-04-29 18:12:11'),
(13,	'/',	'en',	'homepage',	'Home',	'{\"slides\":[{\"sub_title\":\"Construction company with tradition\",\"title\":\"We turn your dreams into real buildings\",\"text\":\"From the first design to completion - we build with attention to quality, reliability and detail.\",\"button_text\":\"Contact us\",\"button_link\":\"\\/en\\/contact\",\"background_image\":4},{\"sub_title\":\"Comprehensive construction services\",\"title\":\"Building the foundations for your future\",\"text\":\"We carry out residential, commercial and industrial turnkey projects, exactly to your specifications.\",\"button_text\":\"Contact us\",\"button_link\":\"\\/en\\/contact\",\"background_image\":6},{\"sub_title\":\"Individual approach to each project\",\"title\":\"Your building, our responsibility\",\"text\":\"We see each project as our own. We deliver results of the highest quality and within agreed deadlines.\",\"button_text\":\"Contact us\",\"button_link\":\"\\/en\\/contact\",\"background_image\":5}],\"specialization\":[{\"icon\":24,\"title\":\"Project Strategy\",\"text\":\"We plan each project in detail to ensure smooth execution and meet all expectations.\"},{\"icon\":25,\"title\":\"Custom Design\",\"text\":\"From homes to offices, we create tailored architectural solutions for your needs.\"},{\"icon\":26,\"title\":\"Quality Control\",\"text\":\"We monitor progress and budgets to keep your project on track and well-managed.\"},{\"icon\":27,\"title\":\"Smart Investment\",\"text\":\"We reduce costs and build long-term value through sustainable construction.\"}],\"aboutImage\":11,\"aboutNumber\":\"450\",\"aboutNumberText\":\"successfully completed projects\",\"aboutSubtitle\":\"About us\",\"aboutTitle\":\"Get to know our construction company better\",\"aboutText\":\"With over 15 years of experience in the construction industry, we transform your ideas into real buildings. We complete projects of all sizes with an emphasis on quality, safety and on-time delivery. Our goal is always maximum client satisfaction.\",\"about\":[{\"text\":\"Quality and reliability\",\"percent\":\"92\"},{\"text\":\"Compliance with deadlines\",\"percent\":\"87\"}],\"aboutButtonText\":\"Contact us\",\"aboutButtonLink\":\"\\/en\\/contact\",\"servicesSubtitle\":\"Our services\",\"servicesTitle\":\"What we can offer you\",\"services\":[{\"icon\":12,\"title\":\"Installation of roofs\",\"text\":\"We carry out complete roof installation including insulation and plumbing. Reliable protection of your house.\"},{\"icon\":13,\"title\":\"Interior design\",\"text\":\"We help to create functional and aesthetic interiors of houses, apartments and offices - from design to implementation.\"},{\"icon\":14,\"title\":\"Plumbing\",\"text\":\"We carry out professional water, sewerage and gas distribution in new buildings and during renovations.\"},{\"icon\":15,\"title\":\"Electrical installation\",\"text\":\"We carry out complete electrical installations, including smart systems and revisions, with an emphasis on safety.\"},{\"icon\":16,\"title\":\"Landscaping\",\"text\":\"We provide landscaping, lawn laying and garden construction for the perfect surroundings of your building.\"},{\"icon\":17,\"title\":\"Laying floors\",\"text\":\"We install all types of floor coverings - from tiles to floating floors - with precision workmanship.\"}],\"numbersSubtitle\":\"1500+ TRUSTING CLIENTS\",\"numbersTitle\":\"Our results speak for themselves\",\"numbers\":[{\"number\":\"450\",\"text\":\"Completed construction projects\"},{\"number\":\"120\",\"text\":\"Satisfied corporate clients\"},{\"number\":\"250000\",\"text\":\"Total completed floor space\"},{\"number\":\"15\",\"text\":\"Experience in the construction industry\"}],\"processSubtitle\":\"Our workflow\",\"processTitle\":\"How we build your projects together\",\"process\":[{\"image\":28,\"number\":\"01\",\"title\":\"Initial consultation\",\"text\":\"We will get to know your requirements, the focus of the building and prepare the first proposals for solutions.\"},{\"image\":29,\"number\":\"02\",\"title\":\"Project proposal\",\"text\":\"We will prepare specific project documentation and detailed cost and schedule calculations.\"},{\"image\":30,\"number\":\"03\",\"title\":\"Build & Handover\",\"text\":\"We ensure the complete realization of the construction, including the final handover of the work according to the agreed conditions.\"}],\"portfolioSubtitle\":\"Our realization\",\"portfolioTitle\":\"See our best projects\",\"portfolio\":[{\"image\":19,\"title\":\"Residential house\",\"text\":\"Complete construction of a modern residential complex.\"},{\"image\":20,\"title\":\"Administration building\",\"text\":\"Turnkey construction of office space.\"},{\"image\":21,\"title\":\"School reconstruction\",\"text\":\"Restoration of a historic primary school building.\"},{\"image\":22,\"title\":\"Family houses\",\"text\":\"Implementation of a development project of 15 houses.\"},{\"image\":23,\"title\":\"Industrial hall\",\"text\":\"Construction of a new production hall for light industry.\"},{\"image\":40,\"title\":\"Parking house\",\"text\":\"Construction of a modern parking house for 250 cars.\"}],\"faqSubtitle\":\"Questions and Answers\",\"faqTitle\":\"You often ask us\",\"faqImage\":18,\"faq\":[{\"question\":\"How long does the construction take?\",\"answer\":\"The length of implementation depends on the scope of the project. For single-family houses, it is usually between 6 and 12 months.\"},{\"question\":\"Do you offer assistance with obtaining a building permit?\",\"answer\":\"Yes, we provide complete administrative support, including the processing of building permits.\"},{\"question\":\"Is it possible to adapt the project during construction?\",\"answer\":\"Minor modifications are possible upon agreement. We always look for the solution that best suits your requirements.\"},{\"question\":\"How is the construction financed?\",\"answer\":\"Financing is usually divided into several stages according to the progress of the construction. We will explain everything in detail and set it up in the contract.\"}],\"faqMoreQuestions\":\"Still have questions?\",\"faqContact\":\"Contact our team of experts!\",\"faqContactLink\":\"\\/en\\/contact\",\"teamSubtitle\":\"Our expert team\",\"teamTitle\":\"Meet our experts\",\"referenceSubtitle\":\"Client references\",\"referenceTitle\":\"What our customers say about us\",\"contactTitleLeft\":\"Contact us\",\"contactTextLeft\":\"Interested in cooperation or need more information? Contact us - we will be happy to help you with your project.\",\"contactTitleRight\":\"Do you have a question?\",\"contactTextRight\":\"Fill out the simple form and we will get back to you as soon as possible. Whether it is a non-binding inquiry, project consultation or more information, we will be happy to advise you and find the best solution.\",\"phoneName\":\"Phone\",\"phoneInformation\":\"+420 123 456 789\",\"emailName\":\"E-mail\",\"emailInformation\":\"info@stavime.cz\",\"addressName\":\"Address\",\"addressInformation\":\"T\\u0159. Tom\\u00e1\\u0161e Bati 123, Zl\\u00edn\",\"blogSubtitle\":\"News from the company\",\"blogTitle\":\"Latest news and articles\",\"seo\":{\"title\":\"From Vision to Handover | BIZPER\",\"description\":\"Reliable construction company with 140+ completed projects. We provide full services \\u2014 from design and architecture to plumbing, landscaping and handover.\",\"keywords\":\"construction company, building services, project realization, custom construction, architectural design, plumbing, landscaping, interior design\",\"canonical\":null,\"og_title\":\"We Turn Your Dreams Into Real Buildings\",\"og_type\":null,\"og_desc\":\"Discover a trusted construction partner with 140+ completed projects. From concept to handover, we bring your vision to life with expert care.\",\"og_image\":null}}',	1,	1,	1,	'Home',	'2025-03-22 23:02:57',	'2025-05-21 17:44:56'),
(14,	'contact',	'en',	'contact',	'Contact',	'{\"contactTitleLeft\":\"Contact us\",\"contactTextLeft\":\"Interested in cooperation or need more information? Contact us - we will be happy to help you with your project.\",\"contactTitleRight\":\"Do you have a question?\",\"contactTextRight\":\"Fill out the simple form and we will get back to you as soon as possible. Whether it is a non-binding inquiry, project consultation or more information, we will be happy to advise you and find the best solution.\",\"phoneName\":\"Phone\",\"phoneInformation\":\"+420 123 456 789\",\"emailName\":\"E-mail\",\"emailInformation\":\"info@stavime.cz\",\"addressName\":\"Address\",\"addressInformation\":\"T\\u0159. Tom\\u00e1\\u0161e Bati 123, Zl\\u00edn\",\"seo\":{\"title\":\"Contact Our Construction Team | BIZPER\",\"description\":\"Looking to start a project or need advice? Get in touch with BIZPER \\u2014 our experts are here to support you with consultation and cooperation.\",\"keywords\":\"contact construction company, project inquiry, building consultation, BIZPER contact, construction support\",\"canonical\":null,\"og_title\":\"Get in Touch with BIZPER\",\"og_type\":null,\"og_desc\":\"Contact our experienced team to discuss your project or ask questions. We\'re here to guide you from idea to realization \\u2014 let\\u2019s build together.\",\"og_image\":null}}',	1,	1,	4,	'Contact',	'2025-04-27 16:42:02',	'2025-04-29 17:56:00'),
(15,	'blog',	'en',	'blog',	'Blog',	'{\"seo\":{\"title\":\"Construction Insights and Articles | BIZPER\",\"description\":\"Explore articles, news and tips from the world of construction. Stay informed with insights, updates and expertise from the BIZPER team.\",\"keywords\":\"construction blog, building articles, construction tips, industry news, BIZPER blog, construction insights\",\"canonical\":null,\"og_title\":\"Construction Insights and News | BIZPER\",\"og_type\":null,\"og_desc\":\"Read expert articles, updates and inspiration from our team. Discover trends, case studies and know-how from the construction industry.\",\"og_image\":null}}',	1,	1,	3,	'Blog',	'2025-03-23 06:47:25',	'2025-04-29 18:00:17'),
(16,	'about',	'en',	'about',	'About',	'{\"aboutImage\":11,\"aboutNumber\":\"450\",\"aboutNumberText\":\"successfully completed projects\",\"aboutSubtitle\":\"About us\",\"aboutTitle\":\"Get to know our construction company better\",\"aboutText\":\"With over 15 years of experience in the construction industry, we transform your ideas into real buildings. We complete projects of all sizes with an emphasis on quality, safety and on-time delivery. Our goal is always maximum client satisfaction.\",\"about\":[{\"text\":\"Quality and reliability\",\"percent\":\"92\"},{\"text\":\"Compliance with deadlines\",\"percent\":\"87\"}],\"aboutButtonText\":\"Contact us\",\"aboutButtonLink\":\"\\/en\\/contact\",\"processSubtitle\":\"Our workflow\",\"processTitle\":\"How we build your projects together\",\"process\":[{\"image\":28,\"number\":\"01\",\"title\":\"Initial consultation\",\"text\":\"We will get to know your requirements, the focus of the building and prepare the first proposals for solutions.\"},{\"image\":29,\"number\":\"02\",\"title\":\"Project proposal\",\"text\":\"We will prepare specific project documentation and detailed cost and schedule calculations.\"},{\"image\":30,\"number\":\"03\",\"title\":\"Build & Handover\",\"text\":\"We ensure the complete realization of the construction, including the final handover of the work according to the agreed conditions.\"}],\"teamSubtitle\":\"Our expert team\",\"teamTitle\":\"Meet our experts\",\"referenceSubtitle\":\"Client references\",\"referenceTitle\":\"What our customers say about us\",\"seo\":{\"title\":\"About Our Construction Company | BIZPER\",\"description\":\"With over 15 years of experience and 90+ completed projects, BIZPER is your trusted partner for reliable, on-time and high-quality construction services.\",\"keywords\":\"about construction company, BIZPER team, construction experience, project management, building expertise, expert engineers, meet our team\",\"canonical\":null,\"og_title\":\"Meet the BIZPER Construction Team | BIZPER\",\"og_type\":null,\"og_desc\":\"Get to know our experienced team, proven process and successful projects. Discover why clients trust BIZPER with their construction needs.\",\"og_image\":null}}',	1,	1,	2,	'About',	'2025-04-28 16:37:02',	'2025-05-21 17:45:18');

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1,	'view_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(2,	'view_any_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(3,	'create_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(4,	'update_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(5,	'restore_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(6,	'restore_any_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(7,	'replicate_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(8,	'reorder_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(9,	'delete_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(10,	'delete_any_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(11,	'force_delete_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(12,	'force_delete_any_article',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(13,	'view_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(14,	'view_any_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(15,	'create_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(16,	'update_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(17,	'restore_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(18,	'restore_any_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(19,	'replicate_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(20,	'reorder_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(21,	'delete_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(22,	'delete_any_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(23,	'force_delete_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(24,	'force_delete_any_language',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(25,	'view_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(26,	'view_any_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(27,	'create_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(28,	'update_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(29,	'restore_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(30,	'restore_any_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(31,	'replicate_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(32,	'reorder_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(33,	'delete_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(34,	'delete_any_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(35,	'force_delete_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(36,	'force_delete_any_media',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(37,	'view_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(38,	'view_any_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(39,	'create_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(40,	'update_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(41,	'restore_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(42,	'restore_any_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(43,	'replicate_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(44,	'reorder_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(45,	'delete_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(46,	'delete_any_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(47,	'force_delete_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(48,	'force_delete_any_page',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(49,	'view_role',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(50,	'view_any_role',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(51,	'create_role',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(52,	'update_role',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(53,	'delete_role',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(54,	'delete_any_role',	'web',	'2025-03-26 18:27:58',	'2025-03-26 18:27:58'),
(55,	'view_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(56,	'view_any_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(57,	'create_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(58,	'update_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(59,	'restore_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(60,	'restore_any_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(61,	'replicate_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(62,	'reorder_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(63,	'delete_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(64,	'delete_any_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(65,	'force_delete_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(66,	'force_delete_any_user',	'web',	'2025-03-26 19:52:04',	'2025-03-26 19:52:04'),
(67,	'view_reference',	'web',	'2025-05-04 10:49:24',	'2025-05-04 10:49:24'),
(68,	'view_any_reference',	'web',	'2025-05-04 10:49:24',	'2025-05-04 10:49:24'),
(69,	'view_team::member',	'web',	'2025-05-04 10:49:24',	'2025-05-04 10:49:24'),
(70,	'view_any_team::member',	'web',	'2025-05-04 10:49:24',	'2025-05-04 10:49:24'),
(71,	'create_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(72,	'update_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(73,	'restore_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(74,	'restore_any_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(75,	'replicate_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(76,	'reorder_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(77,	'delete_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(78,	'delete_any_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(79,	'force_delete_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(80,	'force_delete_any_reference',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(81,	'create_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(82,	'update_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(83,	'restore_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(84,	'restore_any_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(85,	'replicate_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(86,	'reorder_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(87,	'delete_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(88,	'delete_any_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(89,	'force_delete_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35'),
(90,	'force_delete_any_team::member',	'web',	'2025-05-04 11:13:35',	'2025-05-04 11:13:35');

DROP TABLE IF EXISTS `references`;
CREATE TABLE `references` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `lang_locale` char(16) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `references` (`id`, `name`, `position`, `lang_locale`, `content`, `created_at`, `updated_at`) VALUES
(4,	'Petr Novák',	'Majitel rodinného domu',	'cs',	'{\"reference\":\"\\u201eSpolupr\\u00e1ce s touto stavebn\\u00ed firmou p\\u0159ed\\u010dila na\\u0161e o\\u010dek\\u00e1v\\u00e1n\\u00ed. Profesion\\u00e1ln\\u00ed p\\u0159\\u00edstup, dodr\\u017een\\u00ed term\\u00edn\\u016f a vysok\\u00e1 kvalita pr\\u00e1ce \\u2013 jednozna\\u010dn\\u011b doporu\\u010dujeme.\\u201c\",\"stars\":\"5\",\"photo\":37}',	'2025-04-28 16:16:56',	'2025-04-28 16:16:56'),
(5,	'Lucie Svobodová',	'Jednatelka společnosti',	'cs',	'{\"reference\":\"\\u201eB\\u011bhem cel\\u00e9 realizace na\\u0161eho firemn\\u00edho s\\u00eddla jsme se mohli spolehnout na skv\\u011blou komunikaci a rychl\\u00e9 \\u0159e\\u0161en\\u00ed v\\u0161ech po\\u017eadavk\\u016f. Drobn\\u00e9 nedostatky byly obratem odstran\\u011bny.\\u201c\",\"stars\":\"4\",\"photo\":37}',	'2025-04-28 16:17:54',	'2025-04-28 16:21:03'),
(6,	'Martin Dvořák',	'Starosta',	'cs',	'{\"reference\":\"\\u201eProfesion\\u00e1ln\\u00ed p\\u0159\\u00edstup od prvn\\u00edho setk\\u00e1n\\u00ed a\\u017e po p\\u0159ed\\u00e1n\\u00ed hotov\\u00e9 stavby. Oce\\u0148ujeme skv\\u011blou komunikaci, dodr\\u017een\\u00ed rozpo\\u010dtu a vysokou kvalitu proveden\\u00ed.\\u201c\",\"stars\":\"4.5\",\"photo\":36}',	'2025-04-28 16:20:03',	'2025-04-28 16:46:35'),
(7,	'Petr Novák',	'House owner',	'en',	'{\"reference\":\"\\\"The cooperation with this construction company exceeded our expectations. Professional approach, meeting deadlines and high quality of work - we definitely recommend it.\\\"\",\"stars\":\"5\",\"photo\":37}',	'2025-04-28 16:16:56',	'2025-04-28 16:25:10'),
(8,	'Lucie Svobodová',	'CEO of the company',	'en',	'{\"reference\":\"\\\"Throughout the entire implementation of our corporate headquarters, we could rely on excellent communication and quick resolution of all requirements. Minor deficiencies were promptly corrected.\\\"\",\"stars\":\"4\",\"photo\":37}',	'2025-04-28 16:17:54',	'2025-04-28 16:25:46'),
(9,	'Martin Dvořák',	'Mayor',	'en',	'{\"reference\":\"\\\"Professional approach from the first meeting to the handover of the finished building. We appreciate the excellent communication, adherence to budget and high quality of workmanship.\\\"\",\"stars\":\"4.5\",\"photo\":36}',	'2025-04-28 16:20:03',	'2025-04-28 16:46:05');

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3,	'panel_user',	'web',	'2025-03-26 18:54:18',	'2025-03-26 18:54:18'),
(4,	'super_admin',	'web',	'2025-03-26 19:47:30',	'2025-03-26 19:47:30'),
(5,	'Writer',	'web',	'2025-05-04 11:15:07',	'2025-05-04 11:30:09');

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1,	3),
(1,	4),
(1,	5),
(2,	3),
(2,	4),
(2,	5),
(3,	4),
(3,	5),
(4,	4),
(4,	5),
(5,	4),
(5,	5),
(6,	4),
(6,	5),
(7,	4),
(7,	5),
(8,	4),
(8,	5),
(9,	4),
(9,	5),
(10,	4),
(10,	5),
(11,	4),
(11,	5),
(12,	4),
(12,	5),
(13,	3),
(13,	4),
(14,	3),
(14,	4),
(15,	4),
(16,	4),
(17,	4),
(18,	4),
(19,	4),
(20,	4),
(21,	4),
(22,	4),
(23,	4),
(24,	4),
(25,	3),
(25,	4),
(25,	5),
(26,	3),
(26,	4),
(26,	5),
(27,	4),
(27,	5),
(28,	4),
(28,	5),
(29,	4),
(29,	5),
(30,	4),
(30,	5),
(31,	4),
(31,	5),
(32,	4),
(32,	5),
(33,	4),
(33,	5),
(34,	4),
(34,	5),
(35,	4),
(35,	5),
(36,	4),
(36,	5),
(37,	3),
(37,	4),
(38,	3),
(38,	4),
(39,	4),
(40,	4),
(41,	4),
(42,	4),
(43,	4),
(44,	4),
(45,	4),
(46,	4),
(47,	4),
(48,	4),
(49,	4),
(50,	4),
(51,	4),
(52,	4),
(53,	4),
(54,	4),
(55,	3),
(55,	4),
(56,	3),
(56,	4),
(57,	4),
(58,	4),
(59,	4),
(60,	4),
(61,	4),
(62,	4),
(63,	4),
(64,	4),
(65,	4),
(66,	4),
(67,	3),
(67,	4),
(68,	3),
(68,	4),
(69,	3),
(69,	4),
(70,	3),
(70,	4),
(71,	4),
(72,	4),
(73,	4),
(74,	4),
(75,	4),
(76,	4),
(77,	4),
(78,	4),
(79,	4),
(80,	4),
(81,	4),
(82,	4),
(83,	4),
(84,	4),
(85,	4),
(86,	4),
(87,	4),
(88,	4),
(89,	4),
(90,	4);

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('36hNEsEFUXQayQCVF323b4a3MiVKhSHo1fVplcri',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3hyTm0xZWpQdElhZ1YxTDN5TnRTNzFrbmtRcFhZbkVyUzEwczJsayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748078961),
('4oeVkXNbx1OIPUb9X7zltBgzm3xjd60HDwU3EkMM',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFhqTTBhb0h0VTA5dWwxT0xVOVBwYnR6a1RaNzROYWozUEx1Mk9ZRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748076201),
('8FC1N9amtXsB3vHj0PyQd6Ttyg6APmlM4yecdNAJ',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTdtbkxtSEo3ejNxUjJUWWx0SVdGdXRiSm9RM1RJdFcyRG54MWxVOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748075281),
('bQTQaJ8rybLtiwIB4uVn4EBAUyRpJ6qF69onCi4l',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlNNckh4M09vUnZLWjk3TzdRdjMwTHFyRFN1NURFV2NRT2tldEZFeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748078500),
('bWPg7mHICPFyoVu0nLiRGoI9kQOkN5ujEdlQhewU',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1I1VXpLOHVaUWVncjUxNDM0UHdsY1hzaXZ6YnlvRDZHV0o2bjV2WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748077581),
('bzrHE14VGnAgzoNdoNqC4iaPoQ4EoMR5COTYnw4f',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTRmd1NpcXEzV0tXVVRIdXBKM1ZlQ1lhVEFMWFppOGFsbnVhdXN0ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748077120),
('cGSsYswYGYLaW5HvQdOFrbtuXoU1c4d8ZpZ7KbCU',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGNySEYwNlJSVWZCaDBlS0FyM1dsWHpLeUJpVGFFWk8wUWJKR0VzZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748073442),
('IE4llCDR6NIn1ZrAxtv48WEkIm6EwBofStZb7mOE',	9,	'31.30.166.81',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 OPR/118.0.0.0',	'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jei9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJKS3FLengwZkg4RmY1SFlCRzNSMjdqdmRJeDREYkI3Sk1TMFBJRDUwIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkUERnbHpjSEpiTlZaNUlQL3hRVGFSdW9URkF0cWZqUmVYVEd3Mk9tM3BrS2NjZUxZZjMuakciO30=',	1748080880),
('l0xrno4h209nEX20IXSZalM1zFhlaDNqAzv4jocT',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjJnYzdaVDluc2hnQVVYTzJDUmd6dEFUYWd0VzlVdFhobndXMkxnWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748079881),
('la1yH7fjh7IgCpx916ArxXTOASsvitUp4m1EhEEF',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFplZWNpbndZWk4xNlVGN1VIUEJpSlp6ZlY4TDBTS0VZYmZ1Z2FhbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748075741),
('oLcFTXgTYnNZ2PHm0ZXoPDG6qL9JYLZyWuOiuBIi',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHhMOVNRZ3lpNDhYN2hlUWp3ZTZWZXhMWFNjMmJtT0YwSE1Bbjl0aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748074361),
('OT4Km2B2GSRA7x9slYPhgQdLhVD7CaPuBXabQ7t5',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnJrbTFoTmRJUnFkaGxyZjdvSnVnRnRxYlFydnVmTGx0Qmd4SmFwWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748078040),
('TgnXgf6sXwcyVJ4oSKutWx6dy3DiTwfOwjF8sZIi',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaU5RTjBNZENRTkNTdURadEFBZDVBVm1rdmdPa3VQVXc2Q2llSHZWayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748074820),
('tsQBhNHkwSOi7GzQrSVWZzW5oNTAMBttNji93imv',	9,	'31.30.166.81',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 OPR/118.0.0.0',	'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNlBPSlhZVDFGTzhxMmt0SlVXQ3ZnZzVldWpJcHp0UUNGSTV6bFNJYyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4OiJodHRwczovL2JwLWZpbGFtZW50LmV4cGVydGRldjEuY3ovYWRtaW4vYXJ0aWNsZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkUERnbHpjSEpiTlZaNUlQL3hRVGFSdW9URkF0cWZqUmVYVEd3Mk9tM3BrS2NjZUxZZjMuakciO30=',	1748080636),
('UutmrVWdCZsft0vCGwMBRrZ5NyloRi4jNQ0BvQgV',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUFCUjlCSUROeUh5NHNYSXNNa0cya0ZJVGRhMDZvMDdDOVVrNXZHMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748076661),
('V2CZpqijHhqqgN2PDGU0u6FhYbSbEtHrKbMml621',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzhYSzRzcm13RzFCeWthejhyQUhHSTZJeTJVSUpCempiN3lrbmdXUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748079421),
('w2Uvf6QtRk7AlnFXdWtfDepLyznpaQIsw7PLU02k',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzVDR1ZyS0RDR0xTRXdudXNDNnQ5dFBETFNCdVZPRng4N0NtUXBvZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748080801),
('YF2gRXs7RniC1TUPQV9xdti9cSArSjMFvWqxkISC',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVR0dzhjZlpremM0MUc3WXN3aG9QcVQ4MUp2eUVYYThzMTkxU015aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748080341),
('YGKaUC2TK3nQpn4uKOfSLGuJOEGQsI9NG7AXbdMy',	NULL,	'5.75.208.253',	'SiteCheckerBotCrawler/1.0 (+http://sitechecker.pro)',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2h0cEZvTjJIcTY4SkV2emlrWHp3NHBWa3QzVVlEZzVtMlRMVzd5dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYnAtZmlsYW1lbnQuZXhwZXJ0ZGV2MS5jeiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1748073901);

DROP TABLE IF EXISTS `team_members`;
CREATE TABLE `team_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `lang_locale` char(16) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `team_members` (`id`, `name`, `position`, `lang_locale`, `content`, `created_at`, `updated_at`) VALUES
(1,	'Klára Novotná',	'Ředitelka společnosti',	'cs',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":33}',	'2025-04-27 17:30:18',	'2025-04-28 16:13:18'),
(2,	'Jan Línek',	'Projektový manažer',	'cs',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":34}',	'2025-04-27 17:31:02',	'2025-04-28 16:13:27'),
(3,	'Viktor Malý',	'Vedoucí stavební realizace',	'cs',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":35}',	'2025-04-27 17:31:35',	'2025-04-28 16:13:35'),
(4,	'Tomáš Veselý',	'Hlavní inženýr',	'cs',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":32}',	'2025-04-27 17:32:10',	'2025-04-28 16:22:17'),
(5,	'Klára Novotná',	'Director of the company',	'en',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":33}',	'2025-04-27 17:30:18',	'2025-04-28 16:27:37'),
(6,	'Jan Línek',	'Project manager',	'en',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":34}',	'2025-04-27 17:31:02',	'2025-04-28 16:27:56'),
(7,	'Viktor Malý',	'Head of Construction',	'en',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":35}',	'2025-04-27 17:31:35',	'2025-04-28 16:29:13'),
(8,	'Tomáš Veselý',	'Head Engineer',	'en',	'{\"facebook\":\"https:\\/\\/www.facebook.com\",\"linkedin\":\"https:\\/\\/www.linkedin.com\",\"twitter\":\"https:\\/\\/x.com\",\"photo\":32}',	'2025-04-27 17:32:10',	'2025-04-28 16:28:40');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9,	'Admin',	'admin@gmail.com',	NULL,	'$2y$12$PDglzcHJbNVZ5IP/xQTaRuoTFAtqfjReXTGw2Om3pkKcceLYf3.jG',	NULL,	'2025-05-24 07:54:23',	'2025-05-24 07:54:23');

-- 2025-05-24 10:01:32
