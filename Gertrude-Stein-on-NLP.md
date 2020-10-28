# Gertrude Stein on NLP

## Inhaltsverzeichnis

- [Intro > Poesie & Bewegung](#Intro)
- [Steins Leserschaft](#Steins-Leserschaft)
- [Zählen und Dichten](#Zählen-und-Dichten)
- [Raum - Schrift - Zeit](#RAUM-SCHRIFT-ZEIT)
- [Rechnen](#Rechnen)<!--[Beginnen wir nun also langsam mit Wörtern im Rechner zu rechnen](#Rechnen)-->
- [Verstehen](#Verständnisaufbauten)<!--[Gertrude Steins Versuch des Verstehens von Prosa hin zur Poesie](#Verständnisaufbauten)-->
- [Methodentraining](#Methodentraining)<!--[Methodentraining zur Annäherung an NLP in unserem Kontext](#Methodentraining)-->
    - [kurzes Intermezzo zu Donald Knuth und seiner Schreib- bzw. Leserschaft](#Intermezzo)
    - [Wertzuweisungen](#Wertzuweisungen)
    - [die Programmiersprache Python](#Python)
    - [Textpreprocessing](#Textvorverarbeitung)
- [Substantive (NN)](#Substantive-NN)


## Intro
##### *Poesie & Bewegung* ... warum eigentlich gerade Stein für NLP? 


"*Will man verstehen, wie sich Kunst und Technik in unserer europäischen  Tradition zueinander verhalten, muss man weit ausgreifen. Wir sind es  heute gewohnt, Intuition und Ratio als Gegensätze zu sehen. Der  gemeinsame Ursprung der Poetik (poietike – der schaffenden, dichtenden  Kunst) und der Technik (techne) in der griechischen Poiesis ist dagegen weithin in Vergessenheit geraten.*"[^1] 

Es gibt wohl keine schönere essayistische Annäherung an diese beiden Gegensätze in der westlichen Literaturgeschichte als die von Gertrude Stein in  ihrer »Poetik und Grammatik«[^2]. Keine leidenschaftlichere literarische Beschreibung des Schreibens und der Technologie des *Natural Language Processing* (NLP), welche heute im Fokus unserer Auseinandersetzung mit Schrift und Bewegung stehen wird. Und dabei schreibt sie in ihren Essays, in keinem Moment über diese ganz spezifische Technologie. Noch ferner. Techniken der computergestützten natürlichen Sprachverarbeitung, die Computerlinguistik, sprich die maschinelle Verarbeitung natürlicher Sprachen, sie sollte sich erst Jahrzehnte später gesellschaftlich etablieren. Was Gertrude Stein uns damals aber zeigte ist, dass Technologie eine Art des Denkens und des Handelns ist.

<!--HIER FÜR POIESIS-PUB: Es gibt wohl keine schönere essayistische Annäherung an diese beiden Gegensätze in der westlichen Literaturgeschichte als die von Gertrude Stein in  ihrer »Poetik und Grammatik«. Keine leidenschaftlichere literarische Beschreibung des Schreibens und der Technologie des *Natural Language Processing* (NLP), welche heute im Fokus unserer Auseinandersetzung mit Schrift und politischen Bewegungen stehen wird. Und dabei schreibt sie in ihren Essays, in keinem Moment über diese ganz spezifische Technologie. Noch ferner. Techniken der computergestützten natürlichen Sprachverarbeitung, die Computerlinguistik, sprich die maschinelle Verarbeitung natürlicher Sprachen, sie sollte sich erst Jahrzehnte später im poietischen, sowie auch im politischen Kontext in seiner Rezeption und Anwendung gesellschaftlich etablieren. Was Gertrude Stein uns damals zeigte ist, dass Technologie eine Art des Denkens und des Handelns ist.-->

Ursprünge der in diesem Beitrag in erster Linie zu behandelnden Sprachmodellierungs- und Feature-Learning-Technik, nämlich der von Vector-Space Modellen finden wir schon dort, und eigentlich schon viel viel früher in angewandten Schreibtechniken von Prosa und Poesie, doch für unseren heutigen Beitragskontext möchten wir *dort* beginnen. Bei Gertrude Stein, bei ihrem gewaltigen und leidenschaftlichen Schreibabenteuer, ihrem Essay »Poetik und Grammatik«, ihrer *wirklichen* Bekanntschaft mit der Poesie und ihrer Erzählung davon. Denn es ist eine einzige Freude, ganz so als ob man ihr beim schreiben *zulesen* könnt. 

Gertrude Stein schrieb vom Schreiben als poietisches Handeln und dabei geht es für unseren heutigen Beitragskontext eben nicht einzig darum *wa*s sie beschrieb, nämlich wie ihr Geschriebenes, ihr hervorgebrachtes Werk begann sein Eigenleben zu führen, sprich eigenständig zu tun, sondern vor allem auch, *wie* sie dies beschrieb, wenn sie beispielsweise schrieb: "*Wenn man in der schule ist und Grammatik lernt, ist Grammatik sehr aufregend. Ich weiß wirklich nicht daß irgendetwas je aufregender gewesen wäre als Diagramme von Sätzen aufzustellen. (...)*", denn für Gertrude Stein war Grammatik eine wirklich spannende Sache, und es sollte für sie in ihrem Leben zu einer Herzenssache werden.

Und gerade weil Poesie so viel mit Freude und mit Leidenschaft zu tun hat, mit Bewegung und damit wie man die Wörter innerlich fühlt, aber auch genauso viel mit unserer Kulturtechnik des Zählens, mit Wissensrepräsentationen, mit Regelsystemen unserer Sprache und wie man Diagramme von Sätzen aufstellt, vor allem aber auch wie man von diesen seinen Erfahrungen des Schreibens dazu in der Lage ist, sie zu erzählen, gerade deshalb möchte ich diesen meinen Essay mit ihr beginnen. 

[^1]: Georg Trogemann, [»Von poietischen Prozessen und poetischen Maschinen«](http://www.rlfbckr.org/texts/trogemann.html)
[^²]: in Gertrude Stein, Was ist englische Literatur, Zürich, 1965

## Steins Leserschaft

Max Bense und Reinhard Döhl und ihr Stuttgarter Umfeld (die Stuttgarter Schule) studierten Stein auch, in erster Linie durch Helmut Heißenbüttels öffentlicher Vermittlung ihres Werkes. Auch Ernst Jandl bezeichnete seine Prosa in »Laut und Luise« eine gelungene Assimilation von Gertrude Steins Schreibtechniken, sowie auch der *"oulipotische"* Schreibstil des Autorenkreises Oulipo (L' Ouvroir de Littérature Potentielle), wenn man diesen zusammenfassen kann, was man am besten nicht tun sollte, war stark von Steins experimenteller Herangehensweise an das Schreiben beeinflußt. Ein paar Jahre vor Oulipos literarischen Experimenten in Frankreich führte Jack Kerouac den Begriff der *Beat-Generation* in die New Yorker Literaturszene ein. Die Autoren die sich in erster Linie mit dieser selbst gesetzten "Generation" identifizierten, benannten sich nicht nur in Analogie zur *Lost-Generation* (F. Scott Fitzgerald, Ernest Hemingway, Gertrude Stein u.v.m.), auch ihr Umgang mit dem Schreiben steht in direkter ästhetischer Tradition zu Stein. 

William S. Burroughs, der wohl ambivalenteste Beat-Literat stellte die Sprache oft als etwas dem Menschen Fremdes dar. In seinem Essay [»Electronic Revolution«](http://www.ubu.com/historical/burroughs/electronic_revolution.pdf) von 1971, der Gilles Deleuze zu seiner Vorstellung der  "society of control" verhalf, stellte Burroughs u.a. Konzepte auf wie wir diese Gesellschaftsform *grammatikalisch* zerwürfeln (to scramble) können, um hierdurch die Kontrollsyntax zu entschlüsseln (to unscramble) wozu er in [»Rub Out the Word«](https://www.thirdmindbooks.com/pages/books/2991/william-s-burroughs-brion-gysin/rub-out-the-word-blank-notebook) (*William S. Burroughs and Brion Gysin, "Rub Out the Word," The Third Mind (Viking, 1978).* zusammen mit Brion Gysin 1978 folgende 3 Schritte herausarbeitet:

> Löschen Sie **1.** die Kopula (*sein / bleiben*), diese Satzbänder mit zwar überaus wichtiger grammatischer Funktion zur Identitätsbildung, doch mit eher schwach ausgeprägter Bedeutung. **2.** Ersetzen Sie bestimmte Artikel (*der*) vor Substantiven durch unbestimmte Artikel (*ein*), d.h. vermeiden Sie eine Verdinglichung und ersetzen Sie **3.** *entweder/oder* mit *und*, was soviel heißt wie das Gesetz des Widerspruchs zu ignorieren. [^3]

<!--soll hier Neusprech rein?-->

Burroughs' *Kontrollsyntax* dringt in das gesellschaftliche Subjekt ein und bestimmt sein ganzes Denken und Handeln. Ein Weg, dieser Herrschaftssprache zu entkommen, war für Burroughs die literarische Anwendung der von ihm und Boris Gysin entwickelten Cut-Up Technik: durch zufälliges Collagieren von Textteilen finden sich neue Assoziationen durch die verborgene Sinnebenen in Erscheinung treten um *"über den Begriff durch den Begriff hinauszugelangen"*, im Sinne von Adorno. Nur ein Beispiel für Technologien der Beatniks  gegen die "*squareness*" ihrer Zeit, deren Essenz die totale Abwesenheit von Qualität darstellte, "*jene rein intellektuelle, pedantische, spießige Grundhaltung*"[^4], wie sie Robert Pirsig in seinem »Zen und die Kunst ein Motorrad zu warten« beschrieb. Ihre Suche nach Möglichkeiten die Grenzen der Sprache auszuloten und die Voraussetzungen des Verstehens zu entschlüsseln, eben weil die herrschende Sprache die Sprache der Herrschenden ist, ein dominant-legitimer Sprachgebrauch, den es durch den Gebrauch alternativer Sprach-Techniken zu formulieren gilt. Wenn auch wie jegliche Form der Sprachkritik natürlich mit sprachlichen Mitteln. 

Auch die Prosa anderer Beat-Schriftsteller wie z.B. Jack Kerouac oder Allen Ginsberg's Gedichte finden sich in direkter Korrespondez zu Gertrude Steins  Kampf sich "*selbst von Substantiven zu befreien*", Gertrude Stein war seiner Zeit der Überzeugung, *"Substantive müssen* (komplett) *aus der Poesie verschwinden".* Es musste Wege geben, die Dinge beim Namen zu nennen, ohne diese benennen zu müssen. So wie Rainer Maria Rilke in seinem » Der Panther« es tat. Er stockte für einen Moment beim Schreiben des Gedichts, er unterbrach den Rhytmus in dem Moment, als der Wille des Panthers sich über sein Gefängnis hinaus stellt. Als er "*innerlich die Wörter fühlte die herauskommen um außerhalb von einem zu sein*" (stein, 158). Als sprichwörtlich sein Möglichkeitsraum über den Wirklichkeitsraum hinausragte. Das Denkbare über das Wirkliche. Und "*hört im Herzen auf zu sein*"(Rilke). Es musste Wege des Weitergehens geben, so wie diese auch Rolf Dieter Brinkmann Jahrzehnte später in seinen Gedichten schrieb, in seine Wörter, »alles mach weiter«, "*die Zeichen in den Maschinen, die bewegt werden, Bewegungen in den Zimmern, durch eine Wohnung, wenn niemand außer einem selbst da ist,*" (alles macht weiter. r.d.b. westwärts1&2). Sprache muß gesprochen werden können und Sprache muß auch geschrieben werden können, Sprache die "*die ganze Geschichte ihrer geistigen Wiedererschaffung*" in sich trägt. (stein, s. 183). Technologie. 

<div><span style="float:right"><tt>„Wer Dichtung will, muss auch die Schreibmaschine wollen.“</tt></span></div>

<div><span style="float:right"><tt>Arno Schmidt, »Zettels's Traum«</tt></span></div>

[^3]: siehe auch: https://seansturm.wordpress.com/2010/09/21/burroughs-on-how-to-escape-the-society-of-control/
[^4]: Robert M. Pirsig, Zen und die Kunst ein Motorrad zu warten, Frankfurt a. M., 1978

## RAUM-SCHRIFT-ZEIT 

**Lehrmethoden des sehens, des schreibens und des sich bewegens...**

Die Schreibmaschine, sie ersetzt nur sehr selten die menschliche Handschrift. Gutenbergs Druckpresse tat es im Übrigen auch nicht, genauso wenig wies es unsere Computer tun. Aber "*sie deplazieren sie und führen sie hin zum Schreiben, zum Erfinden und zum Denken über andere Dinge.*" < Stephanie Dick (wo war das noch gleich?)

Was müssen wir wissen über die *anderen* Dinge, müssen wir lernen um deren Namen zu wissen? Wie können wir sie fühlen, wenn sie unserer Lebenserfahrung doch so fremd scheinen? Wie lernen, sie leidenschaftlich zu lieben, wie Gertrude Stein danach strebte? Die Dinge singen zu hören? (R. M. Rilke). Unsere Artefakte? Sie beim Namen zu nennen, ohne sich ihrer *Kontrollsyntax* unterwerfen zu müssen?  Ob wir diese nun schreiben oder ob wir sie coden.

Zu Zeiten von Homer waren die Substantive, also die Namen von Dingen, sie waren die Grundlage von Poesie, so Stein. Zu Zeiten von Chaucer und von der Bibel. Die Werke unserer Werte, sie waren *"trunken von Substantiven, mit Namen zu nennen zu wissen wie Erde Meer und Himmel zu nennen sind"*. Heute *wissen* wir das nicht mehr. Heute müssen wir lernen uns von ihnen zu befreien. So sind sie die Grundlage von Poesie geblieben. Nur eben anders.

Viele Dinge unseres Alltagslebens liegen jenseits unseres Erfahrungshorizonts. Es handelt sich meist um *geistige Dinge*, um *geistige Begriffe*. Begriffe, die scheinbar "*unüberwindbare sprachliche Grenzen*" hervorrufen. Diese Grenzen gilt es zu überwinden. Denn wir machen nicht die Erfahrung dass wir diese erfahren. 

Es handelt sich hierbei also um *"keine Begriffe, die sich auf Erfahrbares beziehen*" aber auch nicht "*auf etwas, das sich der Erfahrung entzöge."* Hans Peter Duerr, schrieb in seinem »*Ni Dieu*, *ni mètre*«[^5]: *"Indem wir erfahren, erfahren wir selbstversändlich die Dinge um uns herum, wenn man will, die wirklichkeit. doch es ist sinnlos, zu sagen, wir erfahren, dass es die dinge, die wirklichkeit, gebe*". (h. p. duerr diss)

Wir lernen diese Begriffe ständig neu kennen, erfahren diese neu indem wir uns unterhalten, mit anderen Menschen sprechen, diese Begriffe also *„gebrauchen“*.  Und *"die Art, wie dieser Gebrauch in unser Leben eingreift“* sei ihre Bedeutung, so Wittgenstein in seiner »Philosophische Grammatik«. Aber wie können wir uns letzten Endes selbst prüfen ob wir den Gebrauch, wie beispielsweise des Begriffs *„false positives“* nur nachahmen oder ob wir ihn verstanden haben? Müssen wir binäre Klassifikatoren (Grundbausteine des Deep Learnings, der Teilbereich der Künstlichen Intelligenzen, welcher zur derzeitigen großen KI-Welle maßgeblich beitrug) programmieren können? Müssen wir mit Menschen sprechen die den *Falsos-Positivos-Skandal* in diesem Jahrtausend schon ein zweites Mal in ihrem Land, in Kolumbien erfahren?

**Wirklich ist was wirkt.** Das heißt, was Wirkungen hervorruft. Seit ihrer Übertragung aus dem lateinischen *Actualitas* ins Deutsche mit *Wirklichkeit* von Meister Eckhart, wurde ihr sprachlich das *Wesen des Wirkens* einverleibt. Reine Handlungsmacht trägt dieses Wesen jedoch nicht automatisch in sich drinnen. Handlungsmacht bedeutet nicht gleich Wirkmacht. Unsere Neugestaltungen von Lebensräumen, d.h. unsere Verwirklichungen individueller Möglichkeitsräume, sie entspringen nicht rein dem geistigen Auge und sie taten dies auch nie. Nicht in ihrer Wirkmächtigkeit. Diese entsprang stets in der *"Pluralität unter Menschen"*[^6]. 

Sind uns diese *Begrifflichkeiten des Geistes*, diese *anderen* Adjektive und Substantive, sind sie unserer Lebenserfahrung wirklich so fremd? Können wir sie wirklich nicht fühlen? Ist die von uns errichtete Ding-Welt soweit entfernt von unseren geistigen Gewohnheiten?

[^5]: Hans Peter Duerr, Ni Dieu – ni mètre. Anarchische Bemerkungen zur Bewußtseins- und Erkenntnistheorie, Frankfurt am Main 1974
[^6]: Hannah Arendt, »Vita activa oder Vom tätigen Leben«, München, 1981

### 3 große Schlüsseltechnologien unserer Zeit-Geschichte um uns unseren Handlungsraum zu erschließen

REF zu Handlungsraum: Der [Raumtyp](https://www.teachsam.de/deutsch/glossar_deu_r.htm#Raumtypen) **Handlungsraum** ist ein [erzähltechnisches Mittel](https://www.teachsam.de/deutsch/d_literatur/d_gat/d_epik/strukt/erzmit0.htm) der [Raumgestaltung](https://www.teachsam.de/deutsch/d_literatur/d_gat/d_epik/strukt/raum/raum0.htm) im [epischen Text](https://www.teachsam.de/deutsch/d_literatur/d_gat/d_epik/epik0.htm). Was sich in einem Handlungsraum befindet, ist "real", existiert also in der fiktionalen Welt der Geschichte "wirklich".

<!--3 Technologische Revolutionen unserer Zeitgeschichte-->

#### bewegliche Zeichen

Der Legende nach führte uns Gutenbergs Druckverfahren zur dritten Medienrevolution (nach Ausbildung der Sprache und Erfindung komplexer Schriftsysteme). Das sogenannte Gutenberg-Zeitalter, aus medientheoretischer Sicht eine Periode der "Explosion", dauerte geprägt von seinen zahlreichen Kulturkämpfen und von seinen Widerstandsbewegungen gegen Normierungen, sowie auch Standardisierungen der Sprache bis hin zur Entwicklung von Nationalsprachen, es dauerte Jahre, ja gar Jahrhunderte bis sich nur ansatzweise so etwas wie demokratische Prozesse herauskristallisierten, es dauerte bis in das *elektronische Zeitalter* hinein. Ins *Zeitalter der Implosion*. In Burroughs' "*Electronic Revolution*". Die Gutenberg-Explosion ist somit zugleich auch eine [Gutenberg-Mythologie](https://link.springer.com/chapter/10.1007/978-94-015-8418-0_4) der technologischen Revolutionen unserer Zeitgeschichte. Im Grunde funktionierte die Gutenbergpresse perfekt in den alten Strukturen. In diesem Sinne zählt sie eher zu den konservativen als zu den innovativen Technologien. Die gesellschaftliche Wirksamkeit dieses *Schlüsselelemts der Renaissance*, sie vollzog sich also nicht explosionsartig durch die Ausweitung des Menschen in den Raum durch plötzliche breitengesellschaftliche Anwendung einer Drucktechnik mit beweglichen Lettern. Erst 200 Jahre später konnten um die 50% der Europäer lesen. Weder bewirkte diese Technik an sich demokratische Prozesse noch befreite sie die Gesellschaft von kirchlichen Repressionen und ihrer gesellschaftlichen Wirkmächtigkeit. 

**Diese Ausweitung, sprich die erweiterte Perspektive des realen Raums, sie verweist auf weitere Errungenschaften seiner, sowie auch der, unserer Zeit.** 

#### mechanische Zeiten

In erster Linie aber auf *die Zeit selbst*. Die Uhr-Zeit und deren Vergesellschaftlichung.

In einer Zeit in welcher man die Zeit noch aus Wasseruhren, aus Sanduhren,  dem Sternenverlauf oder dem Hahnenschrei las, vermutet Gerhard Dohrn-van Rossum, ein deutscher Historiker, in den Klöstern, die Entwicklung des  Hemmungsmechanismus. Ein Mechanismus, der den Durchbruch der mechanischen Uhr herbeiführte. Dort nämlich, in den Klöstern bedurf es einer genauen  Zeitbestimmung, und zwar unabhängig der *natürlichen Zeit*,  sprich der *natürlichen Bewegung*, eben weil die "*vorgeschriebenen Offizien einen tageslichtunabhängigen  Anfangszeitpunkt hatten*"[^7].

Es sollte noch einige Jahrzehnte dauern bis Turmuhren in die Städte kamen,  nämlich Anfang des 14. Jahrhunderts in Italien. Einmal in Erscheinung  getreten verbreiteten sie sich jedoch schlagartig in den Städten Europas.  Auf dem Land aber regte sich Widerstand. "*Die Bauern waren von der  Notwendigkeit des Stundensignals nicht überall überzeugt und verweigerten ihren Beitrag vor allem dann, wenn sie außerhalb der akustischen Reichweite  des Zeitsignals lebten.*"[^8] 

Innerhalb der Stadt entwickelte sich allmählich  ein anderes Zeitgefühl als auf dem Land, denn die Turmuhren der  mittelalterlichen Stadt stellten von nun an einen Grundpfeiler zur  Regulierung des Lebensalltags städtischer Bewohner dar.

Den Folgeschritt vollzog die Einkehr der mechanischen Uhren in die Haushalte und an die Körper der Stadtbewohner. Der Nürnberger Peter Henlein galt lange als der Erfinder der, am Körper tragbaren Uhr. Eine Erfindung, die noch einscheidender in den Alltag städtischer Bewohner wirkte, als die akustischen Zeitsignale der Kirchturmuhren. Ein Zeitgefühl zur *Regulierung des Arbeitstages* etablierte sich hierdurch im privaten Lebensalltag.

Nach Hannah Arendt ist das Uhrengleichnis als evidentes Paradigma für ein mechanistisches Weltbild anzusehen. Es stamme aus einer Zeit, in der in den Uhrbewegungen der Prozesscharakter des Natürlichen angezeigt werde. Die Natur werde als Endprodukt eines göttlichen Herstellers angesehen. Andererseits symbolisiere dieses Anschauungsmodell aber die beginnende Vergöttlichung des Homo faber. Die Begrenztheit der Naturerkenntnis habe in diesem etwas starren mechanistischen Bilde eben noch verharrt. Den Schritt in ein neues Zeitalter. In Nürnberg nahmen die Uhren also ihren Lauf...:

"*Aus dem individuellen Werk eines Nürnberger Handwerkers verwandelte sich die Uhr in das gesellschaftliche Produkt einer Unzahl von Teilarbeitern, wie:*

```
Tick Rohwerkmacher, 
Tack Uhrfedermacher, 
Tick Zifferblattmacher, 
Tack Spiralfedermacher, 
Tick Steinloch- und Rubinhebelmacher, 
Tack Zeigermacher, 
Tick Gehäusemacher, 
Tack Schraubenmacher, 
Tick Vergolder, mit vielen Unterabteilungen, wie z.B. Räderfabrikant (Messing- und Stahlräder wieder geschieden), 
Tack Triebmacher, 
Tick Zeigerwerkmacher, 
Tack acheveur de pignon (befestigt die Räder auf den Trieben, poliert die facettes usw.), 
Tick Zapfenmacher, 
Tack planteur de finissage (setzt verschiedne Räder und Triebe in das Werk), 
Tick finisseur de barillet (läßt Zähne einschneiden, macht die Löcher zur richtigen Weite, härtet Stellung und Gesperr), 
Tack Hemmungmacher, 
Tick bei der Zylinderhemmung wieder Zylindermacher, 
Tack Steigradmacher, 
Tick Unruhemacher, 
Tack Requettemacher (das Rückwerk, woran die Uhr reguliert wird), 
Tick planteur d'échappement (eigentliche Hemmungmacher); 
Tack dann der repasseur de barillet (macht Federhaus und Stellung ganz fertig), 
Tick Stahlpolierer, 
Tack Räderpolierer, 
Tick Schraubenpolierer, 
Tack Zahlenmaler, 
Tick Blattmacher (schmilzt das Email auf das Kupfer), 
Tack fabricant de pendants (macht bloß die Bügel des Gehäuses), 
Tick finisseur de charnière (steckt den Messingstift in die Mitte des Gehäuses etc.), 
Tack faiseur de secret (macht die Federn im Gehäuse, die den Deckel aufspringen machen),
Tick graveur, 
Tack ciseleur, 
Tick polisseur de boîte <Polierer des Gehäuses> 
Tack endlich der repasseur, der die ganze Uhr zusammensetzt und sie gehend abliefert.
```

*Nur wenige Teile der Uhr laufen durch verschiedne Hände, und alle diese membra disjecta sammeln sich erst in der Hand, die sie schließlich in ein mechanisches Ganzes verbindet.*"[^9]

Diese einzelnen Teile, zur Erschaffung der mechanischen Uhr-Zeit, automatisierten unseren Arbeitsalltag, im Sinne eines Automaten, also bereits bevor dieser als ein Solcher in Erscheinung trat.
Doch im selben Moment erschafft seine ihm inhärent liegende Struktur eine Gleichzeitigkeit. Eine Gleichzeitigkeit im Produktionsprozess in welchem jedes Teil dieses Automaten theoretisch, wie auch praktisch im selben Moment gefertigt werden kann. Aus seinen Rohmaterialien gefertigt werden kann, um ihn dann im Finale zusammenzufügen.

So wurde Mensch also auch zum Teilstück dieses Automaten, zum Teilarbeiter, "*der Arbeiter, der sich nach dem Werk richten muß und nicht das Werk nach dem Arbeiter*" (Plato, wo war das noch gleich?)

Als *Industrielle Revolution* wird die tiefgreifende und dauerhafte Umgestaltung der wirtschaftlichen und sozialen Verhältnisse, der Arbeitsbedingungen und Lebensumstände bezeichnet, die in der zweiten Hälfte des 18. Jahrhunderts begann und verstärkt im 19. Jahrhundert, zunächst in England, dann in ganz Westeuropa und den USA.

Unser technisches (a priori) Wissen liegt in einer rationalistischen Tradition eingebettet, welche untrennbar mit dieser Zeitgeschichte in Verbindung steht, ihren zweckrationalen, industriellen Produktionssystemen, den ihnen nahestehenden Technikwissenschaften, das abstrakte Modellieren gesellschaftlicher Gruppen, algorithmische Problemlösungen und statistische Vorhersageverfahren, kurz: das zweckrationale Denken. "*Es folgt einer binären Logik*" (georg): "*In the past the man was first. In the future the system will be first*" (F. W. Taylor)	

Frederick Winsolw Taylor, ein Ingenieur und sogenannter Arbeitswissenschaftler (1856-1915) der sich anfangs noch gegen den Begriff des *Scientific Management* wehrte, und diesen mit Prozesssteuerung (Original: *task management*) ersetzen wollte, ihn aber dann doch widerwillig akzeptierte und im Jahre 1911 ein Buch veröffentlichte mit dem Titel »The principles of scientific management« in welchem er u.a. folgendes schrieb: "*Arbeiter gehorchen ähnlichen Gesetzen wie Teile einer Maschine*".
Die Fabriken, sie rollten im frühen 19. Jahrhundert, und Taylor's Satz wurde, wie oben gesehen schon lange bevor er ihn veröffentlicht hat, zum Alltag des Arbeiters in der Manufakturperiode in der er seine geistige, sowie auch seine körperliche Bewegung dem Apparatus anpasste.

[^7]: Gerhard Dohrn-van Rossum, »Schlaguhr und Zeitorganisation«, in »Im Netz der Zeit«, Hrsg. Rudolf Wendorff, Stuttgart, 1989, s. 50
[^8]: Ebd. s.55
[^9]: Karl Marx, »Das Kapital«, erster Band, Köln, 2001,  Aufl. (zuerst 2000), ungekürzte Ausg. nach der 2. Aufl. von 1872. s. 329

#### Intermezzo *Beatniks & Bewegung*

Springen wir für einen Moment zurück zu den Beatniks, denn sie wurden ab und an als *["die, die im Rhytmus schreiben"](https://www.ursachewirkung.at/leben/660-die-die-im-rhytmus-schrieben)* bezeichnet, sie machten sich im poietischen Sinne die Sprachtechnologien ihrer Zeit zu eigen. Ihre Poesie schien sich dem bewußt zu sein, was Hannah Arendt ein paar Jahre später wie folgt beschrieb:  *"...daß der Mensch sich an diesen Rhythmus der Maschinen gewissermaßen schon gewöhnt haben mußte, als er ein soches Ding wie eine Maschine auch nur im Geist konzipierte.*", denn solange unsere Arbeit an, und mit und durch unsere Maschinen andauert, solange treten auch ihre mechanischen Prozesse, ihre diskreten Zeiteinheiten an Stelle unseres uns eigenen Körperrhytmus: *"Noch das raffinierteste Werkzeug bleibt ein Diener seines Herrn, unfähig die Hand zu leiten oder sie zu ersetzen. Aber selbst die primitivste Maschine leitet die Arbeit des Körpers, bis sie sie schließlich ganz und gar ersetzt."*.  (Arendt)

"*Wer Dichtung will muß auch die Schreibmaschine wollen...*"

Antonio Gramsci (1891-1937), ein italienischer Schriftsteller, Mitbegründer der *Partito Comunista Italiano* und marxistischer Philosoph, analysierte das 19. Jahrhundert sinngemäß folgendermaßen: Der Mensch informiert die Natur. Und er informiert sie so lange bis sie vollkommen durchformuliert ist. Solange bis der Mensch völlig in der Natur realisiert ist. Demnach ist Arbeit die einzige Quelle der Werte in der kommunistischen Gesellschaft. Die Natur ist wertfrei und der Mensch verwertet sie. Heute unterscheiden wir den Arbeitsprozess in 2 Phasen. 1. die Phase der Ausarbeitung der Informationen, das heißt soviel wie das Schreiben eines Rezeptes für die Brötchen in einer Backfabrik. Die 2. Phase ist das "Aufdrücken der Information" auf das Material: Mehl, Salz etc. Georg Trogemann spricht bei diesem Prozess von der "*traditionellen Materialsublimierung*", denn "*auch Funktionen zu programmieren ist technische Materialsublimierung*" (aus habitate-des-denkens, darf ich das überhaupt benutzen?)

Denn derjenige der das eigentliche Rezept in diesem Sinne *schreibt* sind Ingenieure und Programmierer. Wir haben auf der einen Seite die Software, das Rezept und auf der anderen Seite die Hardware, die jeweiligen Automaten zur Durchführung der Teilprozesse. Auf der einen Seite den geistigen Menschen, den Intellektuellen, auf der anderen Seite die ausführende Maschine. Informationen werden im wissenschaftlichen Diskurs ausgearbeitet, und dann werden sie an die jeweiligen Maschinen weitergegeben, (...). Weder das Material, noch die Arbeit ist etwas wert, sondern nur der Entwurf (...). Auch der Mensch, der diesen gezeichnet hat, ist nicht mehr dabei. (gramsci-quelle rein) . Vilem Flusser beschrieb diesen Prozess als das "*Ende des Marxismus*"[^10].

Wichtig ist hierbei für unseren Kontext zu verstehen, bzw. zu differenzieren zwischen den *syntaktischen* und *semantischen* Strukturen im *Brötchen und Gedichte schreiben*.

Syntaktische Strukturen (*syntactic structures*, siehe Chomsky in den späten 50ern) sind nicht gleichzusetzen mit den semantischen, den Codes in der Maschine. 

Syntaktische Codes bilden nach Umberto Eco das Wissen um die Konstruktionen ab, wobei die semantischen auf ihre Funktion verweisen. Das Rezept, von dem soeben noch die eigentliche Rede war, beinhaltet beide. Analysieren wir diese Ebene nicht, während wir diese schreiben und trennen diese beiden Immanenzen nicht sauber voneinander, so schließen wir laut Georg Trogemann jeglichen *"Freiraum für die Partizipation und die Imagination des Nutzers"* während unserer technischen Handlungen in die Welt ein, in der die anzuwendenden Algorithmen eingebettet sind. 

Es wird uns unmöglich sein, dem Code, unseren geschriebenen Zeichen, einen (gesellschaftlichen) Wert zuzuweisen, wie wir in Folge dieses Beitrags noch sehen werden.

Die semantischen Codifizierungen, sie geben *"ausgearbeiteten Lösungen eine Form"* und können *"ihren Nutzern nichts liefern, worauf sie nicht schon gefasst wären"* (georgs, code & maschine paper).

Bei den Zeichen, denen wir in neuronalen Einbettungen des Natural Language Processing Lernfähigkeit zusprechen, also jene auf die wir zum Ende dieses Beitrages hin zusteuern, kommt ein weiteres notwendiges Trennelement mit ins Spiel, welches wir uns in unserem Methodentraining experimentell erarbeiten werden

Doch zurück zu den UrSprüngen, zu unseren traditionsreichen Lehrmethoden, bevor wir ins *machine learning* übergehen...:

Der Mensch, er mußte sich also langsam im Laufe des 15. Jahrhunderts auf das Zeitalter der Fabriken evolutionär vorbereiten, er mußte seine Zeit, dass heißt seine Bewegung an die jeweiligen Maschinen anpassen. Maschinen, welche während der ersten industriellen Revolution vom einfachen Werk-Zeug des Handwerkers, zum Kontrollinstrument der jeweiligen Arbeitsprozesse und ihrer Kombination, sowie den statistischen Vorhersagen der einzelnen Arbeitschritte mutierte. Ganz nach dem Grundsatz der von Francis Bacon (1561-1626) und seiner *Royal Society* entwickelt wurde, einer experimentellen Methode, der *Methode der Interpretation*, welche besagt, dass es möglich sei, "*die Natur durch Technologie zu kontrollieren*". Ein Grundbaustein unseres heutigen zweckrationalem Denkens.

[^10]: Vilém Flusser, Kommunikologie weiter denken, Frankfurt am Main, 2009, s.52

#### Lineare Perpektiven

Auch die Linearperspektive, welche in dieser Zeit der Renaissance italienischen Architekten und Malern wie Filippo Brunelleschi, Leon Battista Alberti und Giotto entwickelt wurde, ist nicht nur für diesen Beitragskontext, der maschinellen Zuordnung von Bedeutungsvektoren zu den jeweiligen Textinhalten, von unermeßlicher Bedeutung, sondern zählt zu den großen *Schlüsselelemten der Rennaissance*: *"Man ist sich nicht bewußt, wie sehr damals die Stadt, die Politik, der Krieg und die Ökonomie der mittelalterlichen Welt durch die Erfindung der Perspektive erschüttert wurden"*[^11] 

==Albrecht Dürer== veröffentlichte 1525 das erste Mathematikbuch in deutscher Sprache, seine »*Underweysung der messung mit dem zirckel und richtscheyt in Linien ebnen unnd gantzen corporen*« in der erstmals mathematisch-geometrische Grundlagen der Perspektive veröffentlicht wurden. Dürer definierte darin spezielle Kurven, insbesondere erstmals die *[Muschellinie](https://de.wikipedia.org/wiki/Konchoide_von_Dürer)* und die *[Pascalsche Schnecke](https://de.wikipedia.org/wiki/Pascalsche_Schnecke)* und stellte u.a. die [Tangens-Funktion](https://de.wikipedia.org/wiki/Tangens_und_Kotangens) grafisch dar.

Technologien der Fragmentierung, der Rasterung, bzw. des „Scannings“ (diskrete Punkte / Zeilen / Spalten) wie es Peter Weibel einige Jahrhunderte später bezeichnete[^12]. Albrecht Dürer fragmentierte seiner Zeit  also nicht nur Lauten und Muscheln oder den Akt einer Frau mit Blick durch den „Teiler“, seinem eigens hierfür geschaffenem Apparatus, er trug mit diesem Werk auch maßgeblich dazu bei, eine Formalisierung von Wahrnehmung in Peter Henleins Uhrmacherstadt einzuführen. Historisch betrachtet gab auch Dürer somit, mit seiner Veröffentlichung dieser Technologien einen nicht zu verachtenden Auftakt zur Manufakturperiode, auch oder gerade weil nur wenige dazu in der Lage waren sein Buch zu lesen, den Vorstoß zu einem Wandel vom möglichkeitsausschöpfenden Individuum zum industrialisierten Menschenbild[^13], dessen Denkweisen eine geistige Grundlage der in diesem Beitrag im Fokus stehenden Technologie bildet, dem Erstellen von Sprachmodellen. Zeit-Geschichten die uns unserer Frage nach einem *apriorischen Wissen* annähern lassen, der Frage was wir an Vorwissen benötigen um die Dinge die wir einst schufen kennenlernen zu können? Welche *"syntaktischen Strukturen"* wir wissen müssen anzuwenden auf unser Erfahrenes und welche "*semantischen*" verstehen lernen?

Eine jede einzelne dieser 3 sogenannten *technischen Innovationen* ebneten uns einst den Weg, den wir gemeinsam gingen, in ein neues Jahrtausend in dem wir jene Macht der technischen Handlung an die von uns geschaffenen Zeichensysteme deligierten. Heute. Hier und Jetzt. hic et nunc, da die Echtzeit über den realen Raum triumphiert, gerade heute gilt es sich stets darüber bewußt zu sein, dass Sein, *in situ* sein heißt. Dass rationalistische Traditionen von Lehrmethoden des Sehens und des Schreibens, sowie auch des sich Bewegens durch Apparate im Alltag von uns BürgerInnen westlicher Industrienationen, in Nationen einer Sprache, in der das Augenblickliche stets globalisiert zu sein scheint, dass trotz, und auch dass dank all dieser technologischen Errungenschaften zur Erweiterung des realen Raums, dass die Basis demokratischer Bewegungen stets an einen Ort gebunden bleibt. Sei es nun draußen auf dem Acker oder vor dem Computer.

---

Sprach- und Gesellschaftsmodelle zu erstellen und diese zu gebrauchen, benötigt geistige Grundlagen. Unsere Technologien.

Um heute Sprachmodelle zu erstellen, -also das was wir heute tun wollen- müssen handschriftliche Bewegungen in formale, computerlinguistisch verarbeitbare Informationen umgewandelt werden, bevor die jeweilige Maschine (in unserem Falle ein Modell Namens Word2Vec, zwei Künstliche Neuronale Netze zur Generierung von *Worteinbettungen*, unsere Grundlage zur endgültigen Textklassifikation) mit diesen operieren kann. U.a. geschieht diese *Textvorverarbeitung* in unserem konkreten Fall in 2 Schritten ohne die eine maschinelle semantische Analyse des jeweiligen Texts, sprich den jeweiligen Textinhalt Bedeutungsvektoren zuzuordnen: 1. Die Umwandlung in Textform, dies ist ein allgemeiner Formalisierungs- bzw. Implementierungsprozess welcher allem Konkreten wiederfahren muß um es mit digitalen Technologien weiterzuverarbeiten. 2., und dieser Schritt ist für diese ganz spezielle Art des Natural Language Processing spezifisch, nämlich der Prozess der Tokenisierung,  mit dem wir in unserem Methodentraining experimentieren werden.

<!--EINGESCHRIEBEN UND VORHERBESTIMMT DIE POLITISCHE HANDLUNG < !!!!!-->

Die Frage nach den *a priori* Kenntnissen bleibt also unser stummer Begleiter auf unserem Weg, denn unsere technischen Handlungen, sie bewegen sich durch die *Texte*, erst *a posteriori* mit zu Hilfenahme formaler Gerüste, von der Eingangsrepräsentation hin zu ihren jeweiligen Bedeutungsvektoren,  den *"Worteinbettungen"*.

[^11]: Paul Virilio, [Alarm im Cyberspace!](https://monde-diplomatique.de/artikel/!1259127), Erschienen in Le Monde diplomatique, 1995
[^12]: Peter Weibel, »Neurocinema. Zum Wandel der Wahrnehmung im technischen Zeitalter«, in Brigitte Felderer (Hg.) »Wunschmaschine, Welterfindung. Eine Geschichte der Technikvisionen seit dem 18. Jahrhundert«, Wien/New York, 1996, s. 174
[^13]: siehe hierzu: Karl Marx, »Das Kapital«, erster Band, Köln, 2001, 2. Aufl. (zuerst 2000), ungekürzte Ausg. nach der 2. Aufl. von 1872. s.335

## Zählen und Dichten

Back to Poetry...

Poesie unseres Zeitalters *ist* also, sie ist Bewegung, sie ist weitaus näher am Zählen dran, als an den Zahlen, näher am Formen als an der Form, kurz Poesie ist ganz ganz nah an den Dingen selbst dran, viel näher als an ihrer äußerlichen Erscheinung, *"im wesentlichen* (ist Poesie) *die Entdeckung, die Liebe, die Leidenschaft für den Namen von jedem."* (Stein)

Erzählen hat auch sehr viel mit Zählen zu tun aber ganz anders. Zur Erzählung kommen wir letzten Endes in diesem Beitrag, aber nur wenn uns die Zeit noch reicht.

Wir beginnen nun also, sprechen wir von der Kulturtechnik des Zählens, sprechen wir Von-etwas, was im heutigen Rechnungswesen Für-etwas steht. Früher hießen diese Etwasse Ersatzmengen. Sie waren die Vorläufer jener Kulturtechnik, die sich heute in all unseren Lebensbereichen etabliert hat. Ich spreche hier von der Grundidee des Computers, denn anderes können Computer nicht, auch wenn sie anderes *sein* können.

Dies ist wichtig in diesem unseren Beitragskontext nicht aus den geistigen Augen zu verlieren, nämlich das Zählen eine Erfindung ist. Und Computer eben auch Erfindungen sind.

Jemand der Computerprogramme schreibt, der muß all diese abstrakten Zwischenenbenen, welche zwischen den Dingen und unserem Denken liegen allesamt mitdenken können und jemand der Computerprogramme liest der liest diese auch mit, auch wenn er sie gar nicht sieht. Der Programmierer, er muß stetig zwischen dem was war, (das heißt er muß dazu in der Lage sein, während er tut seine Tat historisch einzuordnen) und den jeweiligen Konsequenzen welches sein Tun mit sich bringt, er muß dazu in der Lage sein, diese abzuwägen und abschätzen zu können. Auch, und vor allem all die sogenannten *Nebenprodukte* dieser jeweiligen technischen Handlung, welche er gerade am durchführen ist. Er muß klar trennen, Syntax von Semantik. Muß dem Code, seinen geschriebenen Zeichen, er muß ihnen einen Wert zuweisen. Man nimmt immer an, wenn man im Volksmund sagt, *dieses oder jenes Zeichen , das steht für etwas*, sprich dass dieses Etwas dem hierfür stehenden Zeichen vorstünde. 

Doch wie ist es nun, wenn ein Geschriebenes, wie es Gertrude Stein beschreibt, wenn ihr hervorgebrachtes Werk beginnt sein Eigenleben zu führen und eigenständig zu handeln?

Wenn unsere Zeichen, nehmen wir ein Beispiel aus den Interpunktionen, nehmen wir den Punkt, wenn diese beginnen, wenn sie auf ihre eigene "*Weise dazu kommen zu existieren*"

Wofür steht ein Punkt? 

Ein Punkt, hält uns an "*wieder und wieder manchmal anzuhalten*", ganz einfach weil man ab und an physisch anhalten muß.

*Eins	 Zwei	 Drei     Vier     ...* 

## Rechnen
##### Beginnen wir nun also langsam mit Wörtern im Rechner zu rechnen 

<!--verweis auf das was davor geschehen muß also die maschinenlesbaren handlungen und handlungsanweisungen-->

In der Vorbereitungsphase des Maschinenlesbarmachens von geschriebenen Texten, in welcher Form auch immer, werden mehrere Schritte des Text-preprocessing angewendet auf die wir im Folgenden näher eingehen werden. Hierbei handelt es sich um Prozesse, welche für den uns gegebenen Zweck einmal mehr, einmal weniger notwendig sind, dennoch werden sie in den meisten Fällen des Natural Language Processing in ihrer gesamten Bandbreite angewandt, um Worteinbettungen zu generieren.

 d.h. Worte in Vektoren darstellen zu können, um mit ihnen zu rechnen und natürlichE Sprache maschinenelsbar zu machen. Eines sei vorweg schon gesagt, was wir im Folgenden uns erarbeiten werden: je weiter dieser prozess des *Maschinenlesbarmachens (machine readable) von menschen gemachten Texten* voranschreitet, desto weniger und weniger wird dieser *für den Menschen lesbar (human readable)* Diese jeweiligen Prozesse des Bereinigen von Ungereimtheiten im jeweiligen Sprachgebrauch, von Bedeutungszusammenhängen, sprich eine Formalisierung von maschinenlesbar zu machenden Sprachformen, stellt uns in der individuellen dichterischen Sprache häufig vor Probleme, da diese häufig nicht formalisiert ist.

Was bedeutet das? 

Die dichterische Sprache, sie ist nicht in eine "strenge Form" gebracht, wobei hier mit "strenger Form" eine Schriftform gemeint ist, deren Zeichen in einer festgelegten Reihenfolge auf festgelegte Art und Weise verarbeitet werden, so wie dies in den allermeisten, von uns verfassten Textgattungen der Fall ist. Wir werden anhand der dargestellten Prozesse im Folgenden und ihrer zeitgleichen Gegenüberstellung von Gertrude Steins Gedanken und Schreibabenteuern beim Schreiben von Prosa und von Gedichten sehen was es im Praktischen bedeutet "offene" Schriftformen zu implementieren, bzw. diese zu erkennen.

<!--hier mal kurz zu eco schaun-->

Die größte Schwierigkeit, die sich uns bereiten wird bei der Tokenisierung von Gedichten ist ihre Fülle von Unschärfen & Zweideutigkeiten. *Die Ungereimtheiten im Gedicht*. Dichter laden sie damit auf anstatt sie von ihnen zu bereinigen, so wie es eigentlich für Formalisierungsprozesse unabdingbar ist. Auch der stete Gebrauch von Metaphern bereitet beispielsweise bei der Auswertung sozialwissenschaftlicher Studien an Hand von Social-Media-Content dem Forscher so manch schlaflose Nächte beim *Debuggen von Gedichten und anderen offenen Schriftformen*.

<!--EXKURS: Digital Humanities-->

Sprachliche Ausdrücke, bei denen ein Wort aus seinem eigentlichen Bedeutungszusammenhang in einen anderen übertragen wurde, ohne Verdeutlichungen direkter Vergleiche von Beziehungen zwischen Bezeichnendem und Bezeichnetem, sind nicht  gerade leicht semantisch zu analysieren, bzw. in formale Gerüste zu packen.


## Verständnisaufbauten
##### Gertrude Steins Versuch des Verstehens von Prosa hin zur Poesie

Beim künstlichen Vereinfachen intendierter Kompliziertheiten durch Funktionen, wie wir sie nun gleich benutzen werden, bleibt uns Steins "*Vergnügen des sich konzentrierens auf die endgültige Einfachheit außergewöhnlicher Komplikation*" meist verwährt. Sie bezeichnete dieses Vergnügen als "*die Intensität von Komplikation der Dinge*". Wenn sie schreibt, dass sie das Gefühl liebt von Sätzen wie sie selbst Diagramme aufstellen

*"**Ich habe das Gefühl gern das immerwährende Gefühl von Sätzen wie sie selbst Diagramme aufstellen.**"*

Gertrude Stein ging beim Diagrammieren von Sätzen, bei ihren zahlreichen Versuchen des "Verstehens" (s.o.) wie folgt vor, um wie sie schrieb "*innerlich die Wörter zu fühlen die herauskommen um außerhalb von einem zu sein*", sie begann also all diejenigen aufzuzählen, die in ihren Augen etwas tun, denn "*so lange irgend etwas etwas tut, bleibt es lebendig*":

1. Die **Präpositionen**, die sich meistens irren.

2. **Artikel**, empfindliche und vielfältige Etwasse, deren Gebrauch ein vielfältiges und lebendiges Vergnügen sein kann, immer dann wenn man sie in Gebrauch nimmt. "*Sie sind genauso interessant wie Substantive und Adjektive es nicht sind.*"

3. **Adjektive** aus dem einfachen Grund, weil sie "*das erste Ding (sind) das igendeiner aus dem geschriebenen von irgendeinem herausnimmt*" und **Substantive**, um diese wird es auf unserem Weg gemeinsam hin zur POESIE?? noch im Weiteren in erster Line gehen.

4. **Verben** und **Adverbien** können und dürfen unentwegt Fehler machen. Nicht nur aus diesem Grunde sind diese für uns am interessantesten bei unserem Vorhaben. Sie können sich verändern, sie können "*sich verändern um auszusehen wie sie selbst (...) sie sind sozusagen in Bewegung*". Und Adverbien bewegen sich mit ihnen.

5. **Pronomia**, im Gegensatz zu **Namen** bewegen sich in einem weitaus größeren Möglichkeitsraum, 1. weil diese nicht von Adjektiven begleitet werden können und 2. weil sie eben nicht wirklich der Name von irgendetwas sind. 

6. Schließlich kommt Gertrude Stein zu den **Interpunktionen**. Zur Groß- und Kleinschreibung mit der es Spaß macht zu spielen und zu "*uninteressanten Fragezeichen*" und zu Ausrufungszeichen und Anführungszeichen, die sie als "*unnötig*" und "*häßlich*" empfindet, weil diese "*das Bild des geschriebenen verderben*". Zu Zwischenräumen wie Gedankenstrichen und Pünktchen und zu besitzanzeigenden Apostrophen die so manchem Genitiv "*einen feinen zarten Unterton*" verleihen Die Benutzung von Kommatas, ist für Stein ohne weiteren Nutzen, denn sie ersetzen einem auf ihre Art das eigene Interesse, sie machen einem die Sache leichter aber nicht einfacher, sie sind "*arme Punkte*". Kommatas sind servil. Ganz im Gegensatz zu den Punkten.

   Mit keinem Wort beschreibt Gertrude Stein schöner, wie es ist, wenn ein Geschriebenes, wenn ihr hervorgebrachtes Werk beginnt sein Eigenleben zu führen als mit dem "Punkt". Wenn dieser beginnt eigenständig zu handeln. Wenn er einen dazu anhält "*wieder und wieder manchmal anzuhalten*", ganz einfach weil man ab und an physisch anhalten muß. Der Punkt konnte auf seine eigene "*Weise dazu kommen zu existieren*". Punkte haben ihre "*eigene Notwendigkeit ein eigenes Gefühl eine eigene Zeit. Und jenes Gefühl jenes Leben jene Notwendigkeit jene Zeit kann sich selbst ausdrücken in einer unendlichen Mannigfaltigkeit.*"

7. Abschließend kommt Gertrude Stein dann zu den **Sätzen** die sich eben in der Benutzung des vorherigen bilden und zu **Absätzen**. Ihr Versuch, in einem kurzen Satz das nicht emotionale Gleichgewicht eines Satzes, wie sie diese beschreibt, mit dem emotionalen Gleichgewicht der Absätze zu bringen, dazu dass sie in diesem Eins werden, ist ein Meilenstein von Gertrude Steins Weg über die Prosa hinaus hin zur Poesie. Ein neues Gleichgewicht zu schaffen, "*das zu tun hatte mit einem Gefühl von Bewegung von Zeit eingeschlossen in einen gegebenen Raum.*".


## Methodentraining
##### Methodentraining zur Annäherung an NLP in unserem Kontext

### Intermezzo
##### kurzes Intermezzo zu Donald Knuth und seiner Schreib- bzw. Leserschaft

1. [The Comlexity of Songs](https://web.archive.org/web/20051226111159/http://www.cs.utexas.edu/users/arvindn/misc/knuth_song_complexity.pdf) < https://de.wikipedia.org/wiki/The_Complexity_of_Songs < **The Complexity of Songs (en, de: Über die Komplexität von Liedern) ist ein im Jahre 1977 von dem Informatiker Donald Ervin Knuth veröffentlichter Fachartikel und wissenschaftlicher Witz:**

   Er analysiert darin die Länge von Liedern in Abhängigkeit vom zu lernenden Text mit den Methoden der Komplexitätstheorie. Der Artikel polemisiert zudem eine angebliche Tendenz populärer Musik von komplexen Balladen hin zu stark repetitiven Texten beziehungsweise Trivialität.*

2. [Further Results on the Complexity of Songs](https://dl.acm.org/doi/10.1145/3166.315004) < !!!hier inline math dann rein!!! **In einem Leserbrief an die ACM wies Kurt Eisemann (San Diego State University) auf eine bekannte Verbesserung der Komplexitätsabschätzung hin**, indem die ${\displaystyle L_{n}}$ wie oben zu betrachten seien. Setzt man ${\displaystyle V_{k}='{\mbox{la}}'}V_{k}='{\mbox{la}}'$, habe man eine Verbesserung der von Knuth vorgeschlagenen Methode um ${\displaystyle c={\frac {2}{53}}=0.037736\dots }c={\frac  {2}{53}}=0.037736\dots$ . Eine Komplexität von ${\displaystyle {\mathcal {O}}(0)}{\mathcal  {O}}(0)$ könne man durch die Nutzung stiller Datenstrukturen erreichen.

3. [Songs and the analysis of algorithms](https://dl.acm.org/doi/pdf/10.1145/236462.236475) < **Darrah Chavey griff Knuths Idee ernsthaft auf, um einen didaktischen Ansatz zur Erläuterung von Methoden der Informatik zu entwickeln:**

   *Beim Unterrichten eines Kurses, der die Analyse von Algorithmen umfasst, können Songs als Unterrichtsbeispiele verwendet werden. Mehrere Beispiele können gleichzeitig oder in einem Hausaufgaben-Set erstellt werden, ohne dass die Hintergrunderklärung für die Analyse realer Algorithmen erforderlich ist. Viele Komponenten der Algorithmusanalyse können mithilfe einer Analyse von Songs eingeführt werden. Dies ist besonders nützlich, um Erfahrungen mit dem Extrahieren von Summierungen aus "Wortproblemen" zu sammeln.*

----

### Wertzuweisungen

Ich erwähnte oben, beim Schreiben von Computerprogrammen kurz die kontinuierliche Notwendigkeit seinen geschriebenen Zeichen Wert zuzuweisen. Nach Gertrude Steins individuell literarisch- emotionalen Bewertung innerhalb der grammatikalischen Regelhaftigkeit, nähern wir uns nun also langsam dem Verständnis dieses Prozesses in der computergestützten natürlichen Sprachverarbeitung:

*Wertzuweisungen* in die jeweilige Technik einzuschreiben und diese anzuwenden gehört wohl zu den elementarsten Programmierkonzepten. Unter anderem ist für unseren Kontext wichtig zu verstehen, dass die jeweiligen zugewiesenen Werte eines strukturierten Objekts im Computerspeicher, z.b. einer Liste von Wörtern,  eigentlich nur eine Referenz auf dieses sind. siehe Bild.

![](http://www.nltk.org/images/array-memory.png)

http://www.nltk.org/book/ch04.html

### Python

Wir arbeiten mit der Programmiersprache `Python`, die in unserem Kontext am häufigsten genutzte formale Sprache zur natürlichen Textverarbeitung mit Künstlichen Neuronalen Netzen. Der Entwickler (Schriftsteller) dieser *höheren Programmiersprache* , Guido van Rossum bezog sich bei der Namensgebung auf das Komikerkollektiv »Monty Python«.

Fangen wir an:

Tim Peters, langjähriges Mitglied der Python Software Foundation und früher Mitentwickler formulierte u.a. die Python-Designphilosophe aus, *"The Zen of Python"* 


```python
import this
```

```
The Zen of Python, by Tim Peters

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
In the face of ambiguity, refuse the temptation to guess.
There should be one-- and preferably only one --obvious way to do it.
Although that way may not be obvious at first unless you're Dutch.
Now is better than never.
Although never is often better than *right* now.
If the implementation is hard to explain, it's a bad idea.
If the implementation is easy to explain, it may be a good idea.
Namespaces are one honking great idea -- let's do more of those!
```

Bitte beachten Sie vor allem die vorletzten 2 Zeilen:

```
Wenn die Implementierung schwer zu erklären ist, ist es eine schlechte Idee.
Wenn die Implementierung leicht zu erklären ist, kann dies eine gute Idee sein.
```



Diese Aussagen führen uns zurück zu einer ganz alten Philosophie der frühen Computerentwickler, zur UNIX-Philosophie von Douglas McIlry, der unter anderem die Unixpipes geschrieben hat. Eine Pipe ist kurz gesagt ein Datenstrom der vom Output des einen in den Input eines nächsten Programms führt. 

In ihrer Zusammenfassung des Computerlinguisten Peter Henry Salus liest sich McIlry Philosophie wie folgt:

- *Schreibe Computerprogramme so, dass sie nur eine Aufgabe erledigen und diese gut machen.*
- *Schreibe Programme so, dass sie zusammenarbeiten.*
- *Schreibe Programme so, dass sie Textströme verarbeiten, denn das ist eine universelle Schnittstelle.*

Gewöhnlich wird das verkürzt zu: *„Mache nur eine Sache und mache sie gut.“*

Auch Eric S. Raymond, der Verfasser des Essays »Die Kathedrale und der Basar«, welches er erstmal '97 in Würzburg vortrug und das als das Manifest der Open-Source Bewegung angesehen werden kann, adaptierte diese Philosophie in seinem Buch »The Art of Unix Programming«, indem er die Unixphilosophie mit der allseits bekannten Ingenieursweisheit *Keep it Simple, Stupid* (KISS) zusammenfasste

Donald Knuth ging, wie wir alle wissen noch einen Schritt weiter, in dem er die Computerprogrammierung selbst als literarische Praxis behandelt. Er schlug 1984 vor, "*the time is ripe for significantly better documentation of programs, and that we can best achieve this by considering programs to be works of literature.’*" < siehe hierzu auch Stephanie Dick's [»Machines Who Write](https://www.researchgate.net/publication/265800634_Machines_Who_Write)

----

**Zurück zu *Python* und zur Abbildung 1.1.**

setzen wir folgende Variablen mit


```python
foo = 'Monty'
bar = foo
foo = 'Python'
bar
'Monty'
```




    'Monty'



Was haben wir gemacht?

1. Wir haben in die Variable *foo* den Wert, bzw. die Zeichenfolge 'Monty' gesetzt.
2. Haben wir dadurch der Variable *foo* eine Objektreferenz zugewiesen, welche an Position 3133 gespeichert ist. Die Positionsauswahl geschah ohne unser zutun. 
3. Durch das Kopieren des Werts, welcher in der Variable *foo* gespeichert ist, in die erneute Variable *bar*, setzen wir eine  zweite Objektreferenz auf die selbe Position
4. Beim Überschreiben der Variable *foo* mit einer erneuten Zeichenfolge (hier: 'Python') wird der Wert von *bar* nicht beeinflusst.
5. ![](http://www.nltk.org/images/array-memory.png)

Werte in diesem speziellen, jedoch elementaren Fall sind also im Computerspeicher nichts anderes als Referenzen auf die jeweiligen Objekte, und diese könnten anstatt einem Wort wie 'Monty' auch eine Liste wie z.B. ```foo = ['Monty', 'Python', 'comedians']``` datstellen.

----


### Textvorverarbeitung
#### 1. Variablen setzen (strings)
Lasst uns nun also ein Gedicht von Gertrude Stein aus [»Before the Flowers of Friendship Faded Friendship Faded«](https://www.poetrynook.com/poem/flowers-friendship-faded-friendship-faded), Kapitel XII 

<pre>
I am very hungry when I drink
I need to leave it when I have it held,
They will be white with which they know they see, that darker makes it be a color white for me, white is not shown when I am dark indeed with red despair who comes who has to care that they will let me a little lie like now I like to lie I like to live I like to die I like to lie and live and die and live and die and by and by I like to live and die and by and by they need to sew, the difference is that sewing makes it bleed and such with them in all the way of seed and seeding and repine and they will which is mine and not all mine who can be thought curious of this of all of that made it and come lead it and done weigh it and mourn and sit upon it know it for ripeness without deserting all of it of which without which it has not been born. Oh no not to be thirsty with the thirst of hunger not alone to know that they plainly and ate or wishes. Any little one will kill himself for milk.
</pre>

in die Maschine einlesen und mit dem `print` Befehl wieder *auf selbe Weise* ausgeben


```python
XII = """I am very hungry when I drink
I need to leave it when I have it held,
They will be white with which they know they see, that darker makes it be a color white for me, white is not shown when I am dark indeed with red despair who comes who has to care that they will let me a little lie like now I like to lie I like to live I like to die I like to lie and live and die and live and die and by and by I like to live and die and by and by they need to sew, the difference is that sewing makes it bleed and such with them in all the way of seed and seeding and repine and they will which is mine and not all mine who can be thought curious of this of all of that made it and come lead it and done weigh it and mourn and sit upon it know it for ripeness without deserting all of it of which without which it has not been born. Oh no not to be thirsty with the thirst of hunger not alone to know that they plainly and ate or wishes. Any little one will kill himself for milk."""
print(XII)
```

    I am very hungry when I drink
    I need to leave it when I have it held,
    They will be white with which they know they see, that darker makes it be a color white for me, white is not shown when I am dark indeed with red despair who comes who has to care that they will let me a little lie like now I like to lie I like to live I like to die I like to lie and live and die and live and die and by and by I like to live and die and by and by they need to sew, the difference is that sewing makes it bleed and such with them in all the way of seed and seeding and repine and they will which is mine and not all mine who can be thought curious of this of all of that made it and come lead it and done weigh it and mourn and sit upon it know it for ripeness without deserting all of it of which without which it has not been born. Oh no not to be thirsty with the thirst of hunger not alone to know that they plainly and ate or wishes. Any little one will kill himself for milk.


#### 2. Notwendige Bibliotheken importieren
danach importieren wir eine Python-Bibliothek Namens `NLTK` (Natural Language Toolkit) und arbeiten mit dieser Bibliothek, die speziell für diese Zwecke erstellt worden ist, weiter:


```python
import nltk
```

#### 3. Tokenisation & Interpunktionen
von NLTK importieren wir uns nun den sogenannten *Wordtokenizer* `word_tokenize()`, ein Algorithmus der uns (vereinfacht gesagt), den Text in einzelne Zeichenfolgen, sogenannte *Tokens* welche Wörter repräsentieren zerlegt.

Danach filtern wir alle Token heraus, die nicht alphabetisch sind. Für unseren Fall: alle eigenständigen Interpunktionen.

Python hat die Funktion `isalpha ()`, die herfür verwendet werden kann


```python
from nltk.tokenize import word_tokenize

tokenized = word_tokenize(XII)
# remove all tokens that are not alphabetic
tokenized_word = [word for word in tokenized if word.isalpha()]
print(tokenized_word)
```

    ['I', 'am', 'very', 'hungry', 'when', 'I', 'drink', 'I', 'need', 'to', 'leave', 'it', 'when', 'I', 'have', 'it', 'held', 'They', 'will', 'be', 'white', 'with', 'which', 'they', 'know', 'they', 'see', 'that', 'darker', 'makes', 'it', 'be', 'a', 'color', 'white', 'for', 'me', 'white', 'is', 'not', 'shown', 'when', 'I', 'am', 'dark', 'indeed', 'with', 'red', 'despair', 'who', 'comes', 'who', 'has', 'to', 'care', 'that', 'they', 'will', 'let', 'me', 'a', 'little', 'lie', 'like', 'now', 'I', 'like', 'to', 'lie', 'I', 'like', 'to', 'live', 'I', 'like', 'to', 'die', 'I', 'like', 'to', 'lie', 'and', 'live', 'and', 'die', 'and', 'live', 'and', 'die', 'and', 'by', 'and', 'by', 'I', 'like', 'to', 'live', 'and', 'die', 'and', 'by', 'and', 'by', 'they', 'need', 'to', 'sew', 'the', 'difference', 'is', 'that', 'sewing', 'makes', 'it', 'bleed', 'and', 'such', 'with', 'them', 'in', 'all', 'the', 'way', 'of', 'seed', 'and', 'seeding', 'and', 'repine', 'and', 'they', 'will', 'which', 'is', 'mine', 'and', 'not', 'all', 'mine', 'who', 'can', 'be', 'thought', 'curious', 'of', 'this', 'of', 'all', 'of', 'that', 'made', 'it', 'and', 'come', 'lead', 'it', 'and', 'done', 'weigh', 'it', 'and', 'mourn', 'and', 'sit', 'upon', 'it', 'know', 'it', 'for', 'ripeness', 'without', 'deserting', 'all', 'of', 'it', 'of', 'which', 'without', 'which', 'it', 'has', 'not', 'been', 'born', 'Oh', 'no', 'not', 'to', 'be', 'thirsty', 'with', 'the', 'thirst', 'of', 'hunger', 'not', 'alone', 'to', 'know', 'that', 'they', 'plainly', 'and', 'ate', 'or', 'wishes', 'Any', 'little', 'one', 'will', 'kill', 'himself', 'for', 'milk']


#### 4. Groß- und Kleinschreibung

Nun wandeln wir alle Wörter in einen Fall (Kleinbuchstaben) um.

Dies bedeutet, dass der Wortschatz kleiner wird, aber auch, dass einige Unterscheidungen verloren gehen (z. B. „ Apple “, das Unternehmen, oder „ Apple “, die Frucht, ist ein häufig verwendetes Beispiel).

Wir rufen hierfür die Funktion `lower()` für jedes Wort auf.



```python
# convert to lower case
## note4me: when nicht alles in kleingeschrieben dann bleibt beispielsweise das I nach dem lemmatizen und stemmen mit drinnen...
tokenized_word = [w.lower() for w in tokenized_word]
```

#### 5. Stoppwörter
**Stoppwörter** werden als Rauschen im Text betrachtet. Wörter wie *is, am, are, this, a, an, the* beispielsweise.

Für das Entfernen von Stopwords müssen wir in NLTK erst eine Liste von Stopwords erstellen und diese Liste von Tokens dann aus dem Text herausfiltern.

1. Liste von Stoppwörtern erstellen: 


```python
from nltk.corpus import stopwords
stop_words=set(stopwords.words("english"))
print(stop_words)
```

    {'my', 'during', 've', 'was', 'each', 'for', 'do', "mightn't", 'aren', 'd', "that'll", 'being', 'by', 'out', 'been', 'you', 'we', 'ours', 'the', 'mustn', "don't", 'shan', "she's", 'when', 'herself', 'where', 'such', 'wouldn', "isn't", 'couldn', "won't", 's', 'his', 'am', 'with', 'are', 'o', 'up', 'her', 'won', 'shouldn', "didn't", 'again', 'below', 'hadn', 'has', 'ma', 'hasn', 'that', 'further', 'weren', 'y', "wouldn't", "weren't", 'on', "you'll", 'if', 'above', 'as', 'both', 'it', 'ain', 'into', 'here', "needn't", 'll', 'there', 'any', 'to', 'all', 'same', "doesn't", 'at', 'i', 'your', 'after', 'more', 'had', 'about', 'down', 'some', 'very', 're', 'and', 'yours', 'yourself', 'hers', 'why', 'just', 'those', 'so', 'can', 'isn', "it's", 'be', 'few', 'under', 'should', "you'd", "couldn't", 'who', 'off', 'not', 'our', 'does', 'while', 'of', 'doing', 'him', 'these', "hadn't", "hasn't", 't', 'needn', 'other', 'own', 'now', 'they', "shouldn't", 'or', 'she', 'himself', 'an', 'then', "should've", 'm', 'mightn', 'did', 'in', 'me', 'which', 'having', 'from', 'ourselves', 'between', 'have', 'will', 'myself', 'them', 'this', 'most', 'he', "you're", 'were', 'yourselves', 'itself', 'over', 'their', 'what', 'but', 'because', 'once', 'whom', 'haven', 'through', "aren't", 'too', 'doesn', "mustn't", 'only', 'how', 'is', 'no', "haven't", 'a', 'before', 'than', 'against', "wasn't", 'themselves', 'wasn', 'didn', 'its', 'until', 'don', "shan't", 'nor', "you've", 'theirs'}


2. Stoppwörter herausfiltern: 


```python
filtered_sent=[]

for w in tokenized_word:
    if w not in stop_words:
        filtered_sent.append(w)

print("Tokenized Sentence:",tokenized_word, "\n")
print("Filterd Sentence:",filtered_sent)
```

    Tokenized Sentence: ['i', 'am', 'very', 'hungry', 'when', 'i', 'drink', 'i', 'need', 'to', 'leave', 'it', 'when', 'i', 'have', 'it', 'held', 'they', 'will', 'be', 'white', 'with', 'which', 'they', 'know', 'they', 'see', 'that', 'darker', 'makes', 'it', 'be', 'a', 'color', 'white', 'for', 'me', 'white', 'is', 'not', 'shown', 'when', 'i', 'am', 'dark', 'indeed', 'with', 'red', 'despair', 'who', 'comes', 'who', 'has', 'to', 'care', 'that', 'they', 'will', 'let', 'me', 'a', 'little', 'lie', 'like', 'now', 'i', 'like', 'to', 'lie', 'i', 'like', 'to', 'live', 'i', 'like', 'to', 'die', 'i', 'like', 'to', 'lie', 'and', 'live', 'and', 'die', 'and', 'live', 'and', 'die', 'and', 'by', 'and', 'by', 'i', 'like', 'to', 'live', 'and', 'die', 'and', 'by', 'and', 'by', 'they', 'need', 'to', 'sew', 'the', 'difference', 'is', 'that', 'sewing', 'makes', 'it', 'bleed', 'and', 'such', 'with', 'them', 'in', 'all', 'the', 'way', 'of', 'seed', 'and', 'seeding', 'and', 'repine', 'and', 'they', 'will', 'which', 'is', 'mine', 'and', 'not', 'all', 'mine', 'who', 'can', 'be', 'thought', 'curious', 'of', 'this', 'of', 'all', 'of', 'that', 'made', 'it', 'and', 'come', 'lead', 'it', 'and', 'done', 'weigh', 'it', 'and', 'mourn', 'and', 'sit', 'upon', 'it', 'know', 'it', 'for', 'ripeness', 'without', 'deserting', 'all', 'of', 'it', 'of', 'which', 'without', 'which', 'it', 'has', 'not', 'been', 'born', 'oh', 'no', 'not', 'to', 'be', 'thirsty', 'with', 'the', 'thirst', 'of', 'hunger', 'not', 'alone', 'to', 'know', 'that', 'they', 'plainly', 'and', 'ate', 'or', 'wishes', 'any', 'little', 'one', 'will', 'kill', 'himself', 'for', 'milk'] 
    
    Filterd Sentence: ['hungry', 'drink', 'need', 'leave', 'held', 'white', 'know', 'see', 'darker', 'makes', 'color', 'white', 'white', 'shown', 'dark', 'indeed', 'red', 'despair', 'comes', 'care', 'let', 'little', 'lie', 'like', 'like', 'lie', 'like', 'live', 'like', 'die', 'like', 'lie', 'live', 'die', 'live', 'die', 'like', 'live', 'die', 'need', 'sew', 'difference', 'sewing', 'makes', 'bleed', 'way', 'seed', 'seeding', 'repine', 'mine', 'mine', 'thought', 'curious', 'made', 'come', 'lead', 'done', 'weigh', 'mourn', 'sit', 'upon', 'know', 'ripeness', 'without', 'deserting', 'without', 'born', 'oh', 'thirsty', 'thirst', 'hunger', 'alone', 'know', 'plainly', 'ate', 'wishes', 'little', 'one', 'kill', 'milk']


#### 6.1 Stemming
Eine weitere wichtige Methode zur Textvorbereitung ist das *Stemming*, d.h. wir wenden auf ihn einen Prozess der linguistischen Normalisierung, bzw. eine Lexika-Normierung an. Wir reduzieren ableitungsbedingte Formen eines Wortes auf eine gemeinsames Wurzelwort und/oder oder hacken die abgeleiteten Affixe ab.

Die Lexikon-Normierung berücksichtigt eine andere Art von *Rauschen* im Text. Zum Beispiel, `Verbindung, verbunden, verbinden` wird reduziert auf ein gemeinsames Wort `verbinden`.


```python
from nltk.stem import PorterStemmer

ps = PorterStemmer()
stemmed_words=[]

for w in filtered_sent:
    stemmed_words.append(ps.stem(w))

#print("Filtered Sentence:",filtered_sent)
print("Stemmed Sentence:",stemmed_words)

```

    Stemmed Sentence: ['hungri', 'drink', 'need', 'leav', 'held', 'white', 'know', 'see', 'darker', 'make', 'color', 'white', 'white', 'shown', 'dark', 'inde', 'red', 'despair', 'come', 'care', 'let', 'littl', 'lie', 'like', 'like', 'lie', 'like', 'live', 'like', 'die', 'like', 'lie', 'live', 'die', 'live', 'die', 'like', 'live', 'die', 'need', 'sew', 'differ', 'sew', 'make', 'bleed', 'way', 'seed', 'seed', 'repin', 'mine', 'mine', 'thought', 'curiou', 'made', 'come', 'lead', 'done', 'weigh', 'mourn', 'sit', 'upon', 'know', 'ripe', 'without', 'desert', 'without', 'born', 'oh', 'thirsti', 'thirst', 'hunger', 'alon', 'know', 'plainli', 'ate', 'wish', 'littl', 'one', 'kill', 'milk']


#### 6.2 Lemmatisierung
Eine effektivere und auch gängigere Reduktionsmethode ist die *Lemmatisierung*. Sie reduziert Wörter auf ihr Ausgangswort, das sprachlich korrekte Lemma. Das Wort *besser* beispielsweise hat *gut* als Lemma. das bedeutet, dass Lemmas im Gegensatz zum Prozess des Stemmings, den Wortkontext bereits in sich tragen:


```python
from nltk.stem.wordnet import WordNetLemmatizer

#ps = PorterStemmer()
lem = WordNetLemmatizer()
lemmatized_words=[]

for w in filtered_sent:
    lemmatized_words.append(lem.lemmatize(w))

#print("Filtered Sentence:",filtered_sent)
print("Lemmatized Sentence:",lemmatized_words)
```

    Lemmatized Sentence: ['hungry', 'drink', 'need', 'leave', 'held', 'white', 'know', 'see', 'darker', 'make', 'color', 'white', 'white', 'shown', 'dark', 'indeed', 'red', 'despair', 'come', 'care', 'let', 'little', 'lie', 'like', 'like', 'lie', 'like', 'live', 'like', 'die', 'like', 'lie', 'live', 'die', 'live', 'die', 'like', 'live', 'die', 'need', 'sew', 'difference', 'sewing', 'make', 'bleed', 'way', 'seed', 'seeding', 'repine', 'mine', 'mine', 'thought', 'curious', 'made', 'come', 'lead', 'done', 'weigh', 'mourn', 'sit', 'upon', 'know', 'ripeness', 'without', 'deserting', 'without', 'born', 'oh', 'thirsty', 'thirst', 'hunger', 'alone', 'know', 'plainly', 'ate', 'wish', 'little', 'one', 'kill', 'milk']


#### 7. POS-Tagging
dies ist nun also unser Text, den wir in den Word2Vec Algorithmus einlesen können um Bedeutungen in Form von Vektoren zu generieren.

Erinnern wir uns an die Beschreibung von Gertrude Stein, wenn sie beginnt über Verben, Subjektiven, Nomen etc. zu sprechen. Auch im NLP ist diese grammatikalische Klassifizierung nötig. Wir bestimmen in unserem Beispielstext die jeweilige grammatikalische Gruppe nach der *Penn Treebank-Stadandards Tabelle* mittels dem Verfahren des *Part-of-Speech(POS)-Tagging, welches nach Beziehungen innerhalb des Satzes sucht und ihm einen entsprechenden `Tag` zuweist. In der gängigen [Penn Treebank-Stadandards Tabelle](https://www.ling.upenn.edu/courses/Fall_2003/ling001/penn_treebank_pos.html) (Link) steht beispielsweise *VB* für die Verb-Basisform oder *NN* für ein Substantiv.

Wir legen die anfänglichen *tokens* in den POS-Tagger: 


```python
nltk.pos_tag(tokenized_word)
```




    [('i', 'NN'),  ('am', 'VBP'),  ('very', 'RB'),  ('hungry', 'JJ'),  ('when', 'WRB'),  ('i', 'NN'),  ('drink', 'VBP'),  ('i', 'NNS'),  ('need', 'VBP'),  ('to', 'TO'),  ('leave', 'VB'),  ('it', 'PRP'),  ('when', 'WRB'),  ('i', 'NN'),  ('have', 'VBP'),  ('it', 'PRP'),  ('held', 'VBD'),  ('they', 'PRP'),  ('will', 'MD'),  ('be', 'VB'),  ('white', 'JJ'),  ('with', 'IN'),  ('which', 'WDT'),  ('they', 'PRP'),  ('know', 'VBP'),  ('they', 'PRP'),  ('see', 'VBP'),  ('that', 'IN'),  ('darker', 'NN'),  ('makes', 'VBZ'),  ('it', 'PRP'),  ('be', 'VB'),  ('a', 'DT'),  ('color', 'NN'),  ('white', 'JJ'),  ('for', 'IN'),  ('me', 'PRP'),  ('white', 'JJ'),  ('is', 'VBZ'),  ('not', 'RB'),  ('shown', 'VBN'),  ('when', 'WRB'),  ('i', 'NN'),  ('am', 'VBP'),  ('dark', 'JJ'),  ('indeed', 'RB'),  ('with', 'IN'),  ('red', 'JJ'),  ('despair', 'NN'),  ('who', 'WP'),  ('comes', 'VBZ'),  ('who', 'WP'),  ('has', 'VBZ'),  ('to', 'TO'),  ('care', 'VB'),  ('that', 'IN'),  ('they', 'PRP'),  ('will', 'MD'),  ('let', 'VB'),  ('me', 'PRP'),  ('a', 'DT'),  ('little', 'JJ'),  ('lie', 'NN'),  ('like', 'IN'),  ('now', 'RB'),  ('i', 'VBP'),  ('like', 'IN'),  ('to', 'TO'),  ('lie', 'VB'),  ('i', 'NN'),  ('like', 'IN'),  ('to', 'TO'),  ('live', 'VB'),  ('i', 'NN'),  ('like', 'IN'),  ('to', 'TO'),  ('die', 'VB'),  ('i', 'NNS'),  ('like', 'IN'),  ('to', 'TO'),  ('lie', 'VB'),  ('and', 'CC'),  ('live', 'VB'),  ('and', 'CC'),  ('die', 'VB'),  ('and', 'CC'),  ('live', 'VB'),  ('and', 'CC'),  ('die', 'VB'),  ('and', 'CC'),  ('by', 'IN'),  ('and', 'CC'),  ('by', 'IN'),  ('i', 'NNS'),  ('like', 'IN'),  ('to', 'TO'),  ('live', 'VB'),  ('and', 'CC'),  ('die', 'VB'),  ('and', 'CC'),  ('by', 'IN'),  ('and', 'CC'),  ('by', 'IN'),  ('they', 'PRP'),  ('need', 'VBP'),  ('to', 'TO'),  ('sew', 'VB'),  ('the', 'DT'),  ('difference', 'NN'),  ('is', 'VBZ'),  ('that', 'IN'),  ('sewing', 'VBG'),  ('makes', 'VBZ'),  ('it', 'PRP'),  ('bleed', 'VB'),  ('and', 'CC'),  ('such', 'JJ'),  ('with', 'IN'),  ('them', 'PRP'),  ('in', 'IN'),  ('all', 'PDT'),  ('the', 'DT'),  ('way', 'NN'),  ('of', 'IN'),  ('seed', 'NN'),  ('and', 'CC'),  ('seeding', 'NN'),  ('and', 'CC'),  ('repine', 'NN'),  ('and', 'CC'),  ('they', 'PRP'),  ('will', 'MD'),  ('which', 'WDT'),  ('is', 'VBZ'),  ('mine', 'NN'),  ('and', 'CC'),  ('not', 'RB'),  ('all', 'DT'),  ('mine', 'NN'),  ('who', 'WP'),  ('can', 'MD'),  ('be', 'VB'),  ('thought', 'VBN'),  ('curious', 'JJ'),  ('of', 'IN'),  ('this', 'DT'),  ('of', 'IN'),  ('all', 'DT'),  ('of', 'IN'),  ('that', 'DT'),  ('made', 'VBD'),  ('it', 'PRP'),  ('and', 'CC'),  ('come', 'JJ'),  ('lead', 'NN'),  ('it', 'PRP'),  ('and', 'CC'),  ('done', 'VBN'),  ('weigh', 'VBP'),  ('it', 'PRP'),  ('and', 'CC'),  ('mourn', 'VB'),  ('and', 'CC'),  ('sit', 'VB'),  ('upon', 'IN'),  ('it', 'PRP'),  ('know', 'VBP'),  ('it', 'PRP'),  ('for', 'IN'),  ('ripeness', 'NN'),  ('without', 'IN'),  ('deserting', 'VBG'),  ('all', 'DT'),  ('of', 'IN'),  ('it', 'PRP'),  ('of', 'IN'),  ('which', 'WDT'),  ('without', 'IN'),  ('which', 'WDT'),  ('it', 'PRP'),  ('has', 'VBZ'),  ('not', 'RB'),  ('been', 'VBN'),  ('born', 'VBN'),  ('oh', 'IN'),  ('no', 'DT'),  ('not', 'RB'),  ('to', 'TO'),  ('be', 'VB'),  ('thirsty', 'JJ'),  ('with', 'IN'),  ('the', 'DT'),  ('thirst', 'NN'),  ('of', 'IN'),  ('hunger', 'NN'),  ('not', 'RB'),  ('alone', 'RB'),  ('to', 'TO'),  ('know', 'VB'),  ('that', 'IN'),  ('they', 'PRP'),  ('plainly', 'RB'),  ('and', 'CC'),  ('ate', 'VB'),  ('or', 'CC'),  ('wishes', 'VB'),  ('any', 'DT'),  ('little', 'JJ'),  ('one', 'CD'),  ('will', 'MD'),  ('kill', 'VB'),  ('himself', 'PRP'),  ('for', 'IN'),  ('milk', 'NN')]



möchten wir über einen *Tag* genauere Informationen so gelangen wir an diese über die verschiedenen Tagsets in NLTK:


```python
#substantive...:
nltk.help.upenn_tagset('NN')
```

    NN: noun, common, singular or mass
        common-carrier cabbage knuckle-duster Casino afghan shed thermostat
        investment slide humour falloff slick wind hyena override subhumanity
        machinist ...


see: http://www.nltk.org/book/ch05.html

### Substantive NN
Substantive beziehen sich im Allgemeinen auf Personen, Orte, Dinge oder Konzepte, z. B. woman, Scotland, book, intelligence. Substantive können nach Determinanten und Adjektiven erscheinen und können das Subjekt oder Objekt des Verbs sein, wie in 2.2 gezeigt .

Syntaktische Muster mit einigen Substantiven:

|     Word     |             After a determiner              |               Subject of the verb                |
| :----------: | :-----------------------------------------: | :----------------------------------------------: |
|    woman     |      the woman who I saw yesterday ...      |                the woman sat down                |
|   Scotland   |   the Scotland I remember as a child ...    |         Scotland has five million people         |
|     book     |       the book I bought yesterday ...       | this book recounts the colonization of Australia |
| intelligence | the intelligence displayed by the child ... |    Mary's intelligence impressed her teachers    |



Wir untersuchen nun einen getaggten Text, um festzustellen, welche Wortarten vor einem Substantiv vorkommen, wobei die häufigsten zuerst vorkommen. Zunächst erstellen wir eine Liste von Bigrams, deren Mitglieder selbst Wort-Tag-Paare sind. Dann konstruieren wir einen FreqDist aus den Tag-Teilen der Bigrams.


```python
word_tag_pairs = nltk.bigrams(brown_news_tagged)
noun_preceders = [a[1] for (a, b) in word_tag_pairs if b[1] == 'NOUN']
fdist = nltk.FreqDist(noun_preceders)
[tag for (tag, _) in fdist.most_common()]

['NOUN', 'DET', 'ADJ', 'ADP', '.', 'VERB', 'CONJ', 'NUM', 'ADV', 'PRT', 'PRON', 'X']
```


    -----------------------------------------------------------
    
    NameError                 Traceback (most recent call last)
    
    <ipython-input-26-e95f7bd7ee52> in <module>
    ----> 1 word_tag_pairs = nltk.bigrams(brown_news_tagged)
          2 noun_preceders = [a[1] for (a, b) in word_tag_pairs if b[1] == 'NOUN']
          3 fdist = nltk.FreqDist(noun_preceders)
          4 [tag for (tag, _) in fdist.most_common()]
          5 


    NameError: name 'brown_news_tagged' is not defined


#### naja... so geht es dann halt weiter... zu worteinbettungen und letzten endes zur grafischen darstellung der bedeutungsvektoren in word2vec...
