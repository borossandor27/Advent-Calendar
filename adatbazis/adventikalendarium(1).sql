-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Dec 18. 22:30
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `adventikalendarium`
--
CREATE DATABASE IF NOT EXISTS `adventikalendarium` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `adventikalendarium`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adventikalendarium`
--

DROP TABLE IF EXISTS `adventikalendarium`;
CREATE TABLE IF NOT EXISTS `adventikalendarium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kivansag` varchar(1024) NOT NULL,
  `kep` varchar(1024) DEFAULT NULL,
  `nyitva` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `adventikalendarium`
--

INSERT INTO `adventikalendarium` (`id`, `kivansag`, `kep`, `nyitva`) VALUES
(1, '„Az Advent a várakozás megszentelése. Az a gyerek, aki az első hóesésre vár – jól várakozik, s már várakozása is felér egy hosszú-hosszú hóeséssel. Az, aki hazakészül, már készülődésében otthon van. Az, aki szeretni tudja azt, ami az övé – szabad, és mentes a birtoklás minden görcsétől, kielégíthetetlen éhétől-szomjától. Aki pedig jól várakozik, az időből épp azt váltja meg, ami a leggépiesebb és legelviselhetetlenebb: a hetek, órák percek kattogó, szenvtelen vonulását. Aki valóban tud várni, abban megszületik az a mélységes türelem, amely szépségében és jelentésében semmivel se kevesebb annál, amire vár.” (Pilinszky János)', NULL, '0'),
(2, '„Az adventi várakozás hasonlít a megemlékezéshez, de valójában mindennél távolabb áll tőle. Valódi várakozás. Pontosabban úgy, ahogy a szeretet mindennél valóságosabban vágyakozik az után, akit magához ölel és örök újszülöttként a karjai között tart.” (Pilinszky János)', NULL, '0'),
(3, '„Ha az ünnep elérkezik az életedben, akkor ünnepelj egészen. (…) Tisztálkodjál belülről és kívülről. Felejts el mindent, ami a köznapok szertartása és feladata. Az ünnepet nemcsak a naptárban írják piros betűkkel. Nézd a régieket, milyen áhítatosan, milyen feltétlenül, milyen körülményesen, mennyi vad örömmel ünnepeltek! Az ünnep a különbözés. Az ünnep a mély és varázsos rendhagyás.” (Márai Sándor)', NULL, '0'),
(4, '„Igazi lelkünket, akárcsak az ünneplő ruhákat gondosan őrizzük meg, hogy tiszta legyen majd az ünnepekre.” (József Attila)', NULL, '0'),
(5, '„Küszöbön áll a nap, az az egyetlen egy nap az évben, mely hivatalosan is a szereteté. Háromszázhatvanöt nap közül háromszázhatvannégy a gondjaidé, a céljaidé, munkádé, és a szereteté csupán egyetlen egy, s annak is az estéje egyedül. Pedig hidd el, Ismeretlen Olvasó, fordítva kellene legyen. Háromszázhatvannégy nap a szereteté, s egyetlen csak a többi dolgoké, s még annak is elég az estéje.” (Wass Albert)', NULL, '0'),
(6, '„Meg fogom ünnepelni a karácsonyt szívemben, és iparkodom egész esztendőben ünnepelni. Élni akarok a Múltban, a Jelenben és a Jövőben. Versengjen bennem ennek a háromnak a szelleme.” (Charles Dickens)', NULL, '0'),
(7, '„Van-e érzés, mely forróbban és sejtelmesebben megdobogtatja az emberi szívet, mint az ünnep és a várakozás izgalma?” (Márai Sándor)', NULL, '0'),
(8, 'A december egy nagy, vörös bársonyfotel, amibe jó beleülni, ha hazamész. Pezsgőbontással kezdődik, és azzal ér véget. Ha szerencsések vagyunk, leszakad a hó is, és mindent tisztára mos. Elfedi a fehér lepel a bánatokat. Decemberben senki sem szomorú. Ilyenkor az emberek hazalátogatnak a családhoz, még az a rokon is hazamegy, aki nyáron haragudott. Megpusziljuk anyát, és megöleljük apát. Együtt vagyunk. Szeretjük a kollégákat is, prémiumokat osztogatnak, megdicsér a főnök, és fényesbe öltöztetjük az ablakokat, csakúgy, mint a szívünket. Ez elég nyálas, de attól még igaz. Szentesi Éva', NULL, '0'),
(9, 'A hónapokon át tartó rohanás után nem tűnik el varázsütésre a stressz attól, ha körülálljuk a szépen feldíszített karácsonyfát. (…) Az elvárások, a tökéletesség hajszolása helyett érdemes inkább az együtt töltött időre fókuszálni. (Krajcsó Nelli)', NULL, '0'),
(10, 'A karácsony a szeretet és a csodák hónapja. Ez bár egy közhely, de mi hajlamosak vagyunk ezt elfelejteni. A valóságos törődés és szeretet helyett mindig csak a karácsonyi rutinok és az ajándékok, és a vásárlósdiban meg az ajándékozósdiban nem vesszük eléggé észre a csodákat. Puzsér Róbert', NULL, '0'),
(11, 'A karácsony a szeretet, és ádvent a várakozás megszentelése. Az a gyerek, aki az első hóesésre vár – jól várakozik, s már várakozása is felér egy hosszú-hosszú hóeséssel. Az, aki hazakészül, már készülődésében otthon van. Az, aki szeretni tudja azt, ami az övé – szabad, és mentes a birtoklás minden görcsétől, kielégíthetetlen éhétől-szomjától. Aki pedig jól várakozik, az időből épp azt váltja meg, ami a leggépiesebb és legelviselhetetlenebb: a hetek, órák percek kattogó, szenvtelen vonulását. Aki valóban tud várni, abban megszületik az a mélységes türelem, amely szépségében és jelentésében semmivel se kevesebb annál, amire vár. Pilinszky János', NULL, '0'),
(12, 'A Karácsony éppen azt hirdeti nekünk, hogy minden külső változásnak lelki feltételei is vannak, s belső változás nélkül igazi eredményt várni nem lehet. (Makkai Sándor)', NULL, '0'),
(13, 'A karácsony nem attól lesz tökéletes, hogy nincs porcica a szekrények mögött, tízféle sütit sütsz és halomban áll a fa alatt az ajándék. Nem lesz jobb az ünnep attól, ha beleszakadsz a házimunkába, hogy aztán az ünnepek alatt holtfáradt legyél! Sem attól, ha mártírként sütsz-főzöl-takarítasz-vásárolsz hetekig. A készülődés lehet az ünnep része. Lehet együtt készülődni és nem attól lesz tökéletes, hogy minden tökéletes, hanem attól, hogy együtt vagyunk. (Vida Ágnes)', NULL, '0'),
(14, 'A karácsony, akár akarjuk, akár nem, felébreszti vágyunkat a csodák után, melyek nem vehetők birtokba, nem kaparinthatók meg; nem mondhatjuk őket magunkéinak, és mégis jelen vannak, mint megannyi ajándék. (Nicolas Barreau)', NULL, '0'),
(15, 'Advent annak az időszaka, mikor meg akarjuk hallani a lépteket, de nem hallhatod a lépteket, ha magad is rohansz!', NULL, '0'),
(16, 'Aki ajándékokkal és ünnepi felhajtással akarja jóvátenni az év közben elmulasztott lehetőségeket, az csak kompenzál és nem lesz boldog karácsonykor. (Csernus Imre)', NULL, '0'),
(17, 'Amikor az embernek igazi karácsonyfa áll az otthonában, alatta az ajándékokkal, semmi se tűnik túl szomorúnak vagy túl keménynek. Valahogy azt sugallja, hogy a világban mindig marad fény és remény. Szerencsés, akinek van valakije, akivel megoszthatja ezt az élményt. (Nora Roberts)', NULL, '0'),
(18, 'Az ádventi várakozás hasonlít a megemlékezéshez, de valójában mindennél távolabb áll tőle. Valódi várakozás. Pontosabban úgy, ahogy a szeretet mindennél valóságosabban vágyakozik az után, akit magához ölel és örök újszülöttként a karjai között tart. Pilinszky János', NULL, '0'),
(19, 'Az ádventi várakozás lényege szerint: várakozás arra, Aki van; ahogy a szeretet misztériuma sem egyéb, mint vágyakozás az után, aki van, aki a miénk. Pilinszky János', NULL, '0'),
(20, 'Az nem ajándékozás, hogy én szeretnék valamit, és akkor azt megveszem a másiknak, miközben felsóhajtok, hogy “De jó volna egy ilyen nekem is!”. Ne ajándékozáskor éljük ki a saját szükségleteinket! A helyes ajándékvásárlás titka, hogy megtudom, kifürkészem, hogy a másik minek örülne. (Bagdy Emőke)', NULL, '0'),
(21, 'Az ünnep nem egy nap. Az ajándék nem a fa alatt vár. Az igazi ajándék az Életben vár. És a karácsony maga az ajándék. Akit az Élettől kapunk. Nekem te vagy a karácsony. (Csitáry- Hock Tamás)', NULL, '0'),
(22, 'Az ünneplés csak annak jelent valamit, aki részt vesz benne. (Hans-Georg Gadamer)', NULL, '0'),
(23, 'Azt hiszem, nekem erről szól a december. Azoknak az öröméről, akiket a legjobban szeretek. Örökké és végtelenül. (Sallay Fanni)', NULL, '0'),
(24, 'Csak kevés holmi van, ami hű marad az emberhez. Talán néhány könyv, egy szerencsepénz vagy egy folyton gyarapodó bélyeggyűjtemény. És a szülői ház karácsonyfadíszei. (Stephen King)', NULL, '0'),
(25, 'Egyetlen helyes gondolat megfordíthatja a sorsot. (Lucius Annaeus Seneca)', NULL, '0'),
(26, 'Érkezett a karácsony, mindig is rajongtam ezért az időszakért. Ilyenkor ünneplőbe öltözik a város, mint a nagy karneválok idején a távoli országokban az idegen helyek. De ez egy sokkal fennköltebb ünnep. Szentesi Éva', NULL, '0'),
(27, 'Hóförgetegek és jégvirágok, partik és hagyományos angol pantomimjáték, klasszikus mozifilmek és érzelgős zene, ajándékcsomagolás, buta kis játékok és fadíszítés. A tél a tündérmesék ideje. Sarah Ivens', NULL, '0'),
(28, 'Karácsony előtt három héttel minden üzletet be kellene zárni, csak pici élelmiszerboltok lennének nyitva. Mindenki otthon üldögélne, s beszélgetnének, játszanának, zenét hallgatnának a családok egy jó pohár bor mellett. Fel kellene készítenünk a lelkünket, hogy befogadja az ünnepet. Egyelőre a legtöbb, amit tehetünk, hogy saját magunkban felépítünk egy ilyen vágyálmot, és próbáljuk követni az útvonalat. Szentpéteri Csilla', NULL, '0'),
(29, 'Két év elég ahhoz, hogy megtanulj beszélni, de egy egész élet kell, hogy megtanulj hallgatni.', NULL, '0'),
(30, 'Merjünk karácsonykor mi magunk ajándékká válni! (Böjte Csaba)', NULL, '0'),
(31, 'Miért van az, hogy minél drágább egy játék, annál valószínűbb, hogy a gyerek a dobozával akar inkább játszani? (Gene Perret)', NULL, '0'),
(32, 'Minden decemberben erővel próbálok emlékezni, hogy soha ne felejtsem el, ekkor zajlik az élet legszebb időszaka. Szentesi Éva', NULL, '0'),
(33, 'Minden évben ugyanazokat a dalokat énekeljük, ugyanazokat az ételeket esszük, követjük a hagyományokat, és megosztjuk egymással azokat a dolgokat, amelyekről úgy érezzük, valahová tartozunk. És végső soron valójában mindannyian csak az otthonunkat keressük. (Richard Paul Evans)', NULL, '0'),
(34, 'Minden szívből szóló karácsonyi énekben, a kandalló ropogásában és melegében, az ünnepi ebéd közben, a beszélgetésben és nevetésben, minden képeslapban, amit egy barát vagy a család küldött, minden, amit ebből meghallunk, és ami elgondolkodtat bennünket, az maga a szeretet. (Noreen Braman)', NULL, '0'),
(35, 'Mit is jelent egyáltalán a karácsony? Mit ünneplünk valójában? Azért lett karácsony, mert szenteste az emberek egyszer csak olyan jól kijöttek egymással? Nem, barátaim, karácsony nem a jó emberek, hanem a jó Isten ünnepe. Ő jelent meg életünk istállójánál, és magával hozta az ünnepet. (Johan Frinsel)', NULL, '0'),
(36, 'Nem csak a karácsony adhat neked ajándékot. Nem csak a karácsonyfa alatt lehet csomag. Bármikor, bárhol rátalálhatsz. (Csitáry-Hock Tamás)', NULL, '0'),
(37, 'Nem időpont vagy időszak a karácsony, hanem lelkiállapot. Békességben, jóakaratúan és könyörületesen élni – ez a karácsony igazi szelleme. (Calvin Coolidge)', NULL, '0'),
(38, 'Nem is az a lényeg, hogy hol vagyok, hanem hogy a békességet megtaláljam. Szerintem erről szól az adventi időszak. A magunk békéjét kell megtalálnunk, a helyünket a világban, hogy megértsük, hol tartunk, s jó úton járunk-e. Rúzsa Magdolna', NULL, '0'),
(39, 'Nem vagyunk az ajándékozás szokása ellen, ha a vásárolt vagy készített ajándék valóban kifejezi azt a szeretetet, amit egymásnak átnyújtani szeretnénk, és nem az egész év során elspórolt szeretet helyett adjuk. (Simon András)', NULL, '0'),
(40, 'Remélem, ezekben a szeretetteljes napokban eszetekbe jut, hogy nem az ajándék a fontos, hanem a blokk! Őrízzétek meg a blokkokat!', NULL, '0'),
(41, 'Sokkal értékesebb a magad alkotta ajándék. – Amíg készíted, mindig arra gondolsz, akié lesz. Nem egy pillanat csak, amíg megveszed, hanem hosszú órák, esték, amíg elkészülsz. Ezalatt beépül az ajándékba a szereteted is. (Kálnay Adél)', NULL, '0'),
(42, 'Sötétséget sötétséggel elűzni nem lehet, csak a fény teheti azt. A gyűlöletet nem űzi ki a gyűlölet, csak a szeretet teheti azt. (Martin Luther King)', NULL, '0'),
(43, 'Ünnepeld meg a karácsonyt a magad módja szerint, nekem pedig engedd meg, hogy én is a magam módja szerint ünnepeljem meg! (Charles Dickens)', NULL, '0'),
(44, 'Valami újat felfedezni ismeretlenül, számomra mindig ez jelentette a kihívást, nem idegenvezetők után kullogni, és folyton arra nézni, amerre kötelező nevezetességeket látni, hanem andalogni csak, nézni a színház épületnyi kulisszáját, aztán szembetalálkozni a felnyitható híddal, tekintetemmel elkísérni az űrhajószerű városnéző hajót, aztán továbbsétálni, amikor újra a lábam elé kanyarítják a vashidat, menni a hazafelé tartók felszaporodott csapatával tovább. Vannak sietők és vannak szemlélődők, minden újabb lépésnek célja van, és egyre inkább tudatosodik bennem, hogy én is valami felé tartok, anélkül, hogy eltévednék, ezek a csatornák vezetnek valahova. Hiszen keresés minden advent. Kontra Ferenc', NULL, '0'),
(45, 'Van-e érzés, mely forróbban és sejtelmesebben megdobogtatja az emberi szívet, mint az ünnep és a várakozás izgalma? Márai Sándor', NULL, '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
