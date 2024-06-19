import 'package:crazy_places/classes/points/historical_point.dart';
import 'package:flutter/material.dart';

List<HistoricalPoint> historicalPoints = [
  HistoricalPoint(
    lat: 43.7230,
    lang: 10.3966,
    icon: const Icon(
      Icons.history_edu,
      color: Colors.brown,
      size: 50,
    ),
    name: "Krzywa Wieża w Pizie",
    description:
        "Krzywa Wieża w Pizie, znana również jako La Torre Pendente di Pisa, to charakterystyczna dzwonnica katedry w Pizie, we Włoszech. Zbudowana między XII a XIV wiekiem, wieża słynie z wyraźnego nachylenia spowodowanego osiadaniem gruntu. Ma wysokość około 56 metrów i liczy osiem kondygnacji, w tym dzwonnicę na szczycie. Krzywa Wieża w Pizie jest jednym z najbardziej rozpoznawalnych zabytków na świecie i stanowi popularną atrakcję turystyczną.",
    musicPath: "italy.mp3",
  ),
  HistoricalPoint(
    lat: 48.8584,
    lang: 2.2945,
    icon: const Icon(
      Icons.history_edu,
      color: Colors.brown,
      size: 50,
    ),
    name: "Wieża Eiffla",
    description:
        "Wieża Eiffla, znana również jako La Tour Eiffel, to ikoniczna żelazna wieża znajdująca się w Paryżu, we Francji. Zbudowana w latach 1887-1889 przez Gustave'a Eiffela z okazji Wystawy Światowej, wieża osiąga wysokość 324 metrów, co czyni ją jednym z najwyższych budynków w Paryżu. Konstrukcja składa się z trzech poziomów dostępnych dla zwiedzających, z restauracjami i platformami widokowymi oferującymi spektakularne widoki na miasto. Wieża Eiffla jest jednym z najbardziej rozpoznawalnych zabytków na świecie i stanowi symbol Paryża oraz Francji.",
    musicPath: "france.mp3",
  ),
  HistoricalPoint(
    lat: 40.748058,
    lang: -73.985300,
    icon: const Icon(
      Icons.history_edu,
      color: Colors.brown,
      size: 50,
    ),
    name: "Empire State Building",
    description:
        "Empire State Building to charakterystyczny wieżowiec w Nowym Jorku, w Stanach Zjednoczonych, będący jednym z najbardziej znanych symboli tego miasta. Zbudowany w latach 1930-1931, wieżowiec przez długi czas pozostawał najwyższym budynkiem na świecie. Jego wysokość wynosi 381 metrów (wliczając antenę), a liczba kondygnacji sięga 102. Empire State Building słynie z charakterystycznego art deco stylu architektonicznego oraz panoramicznych widoków z tarasu widokowego na 86. piętrze. Jest to ikoniczna część panoramy Nowego Jorku i jedna z najczęściej odwiedzanych atrakcji turystycznych w mieście.",
    musicPath: "york.mp3",
  ),
  HistoricalPoint(
    lat: 30.328078,
    lang: 35.443864,
    icon: const Icon(
      Icons.history_edu,
      color: Colors.brown,
      size: 50,
    ),
    name: "Petra",
    description:
        "Petra to starożytne miasto w Jordanii, znane z unikalnych budowli wyrzeźbionych w skałach piaskowca. Znajduje się w wąskiej dolinie otoczonej przez góry i dostępna jest poprzez wąski wąwóz o nazwie Siq. Miasto zostało założone przez Nabatejczyków około 312 roku p.n.e. i było ważnym punktem na szlaku handlowym między Arabią, Egiptem i Syrią. Jego najbardziej znaną budowlą jest Al-Khazneh, czyli Skarbiec, który wyróżnia się klasycznymi kolumnami i fasadą rzeźbioną w skałach. Petra jest uznawana za jedno z największych archeologicznych cudów świata i jest wpisana na listę światowego dziedzictwa UNESCO. To miejsce przyciąga turystów z całego świata, zachwycając ich bogatą historią i niezwykłą architekturą.",
    musicPath: "petra.mp3",
  ),
];
