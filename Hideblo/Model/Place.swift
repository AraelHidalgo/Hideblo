//
//  Place.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 02/04/25.
//


import SwiftUI

enum PlaceViewType: View {
    case sumidero
    case palenque
    case tonina
    case sdelascasas
    case simacotorras
    case yaxchilan
    case chamula
    case zinacantan
    case bonampak
    

    @ViewBuilder
    var body: some View {
        switch self {
        case .sumidero:
            MapCanonSumidero()
        case .palenque:
            //PalenqueMapView()
            MapCanonSumidero()
        case .tonina:
            //ToninaMapView()
            MapCanonSumidero()
        case .sdelascasas:
            //Asdkdk
            MapCanonSumidero()
        case .simacotorras:
            MapCanonSumidero()
        case .yaxchilan:
            MapCanonSumidero()
        case .chamula:
            MapCanonSumidero()
        case .zinacantan:
            MapCanonSumidero()
        case .bonampak:
            MapCanonSumidero()
        }
    }
}
enum PersonajeTipo: View {
    case hombreBase
    case hombreTrajeBlanco
    case mujerBase
    case mujerTrajeBlanco
    

    @ViewBuilder
    var body: some View {
        switch self {
        case .hombreBase:
            HombreBase()
        case .hombreTrajeBlanco:
            HombreTrajeBlanco()
        case .mujerBase:
            MujerBase()
        case .mujerTrajeBlanco:
            MujerTrajeBlanco()
        }
    }
}


struct Place: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var location: String
    var history: String
    var thumbnail: String
    var color: Color
    var viewType: PlaceViewType
    var historyComplete: String
    var personaje: PersonajeTipo
}

let places: [Place] = [
    .init(
        name: "San Juan Chamula",
        location: "Los Altos de Chiapas",
        history: "Comunidad tzotzil conocida por sus tradiciones sincréticas y su emblemática iglesia donde se realizan rituales únicos.",
        thumbnail: "chamula",
        color: .blue.opacity(0.8),
        viewType: .chamula,
        historyComplete: "En la iglesia de San Juan Bautista se practica un ritual donde convergen creencias prehispánicas y católicas. Las paredes han sido testigos de ceremonias de sanación que incorporan elementos naturales y espirituales. Los ancianos de la comunidad mencionan la existencia de un manuscrito oculto que detalla cómo durante la época colonial, los chamulas resistieron la evangelización completa mediante un pacto que...",
        personaje: .mujerTrajeBlanco
    ),

    .init(
        name: "Zinacantán",
        location: "Los Altos de Chiapas",
        history: "Centro ceremonial tzotzil famoso por sus textiles coloridos y tradiciones florales que se remontan a la época prehispánica.",
        thumbnail: "zinacantan",
        color: .purple.opacity(0.8),
        viewType: .zinacantan,
        historyComplete: "Los zinacantecos son maestros tejedores que plasman su cosmovisión en cada hilo. Las mujeres guardan celosamente técnicas ancestrales de teñido natural que se creían perdidas. Se rumorea que existe un telar sagrado, escondido en una cueva cercana, donde se tejió un manto que predice acontecimientos importantes. Quienes han intentado encontrarlo han regresado desorientados, asegurando haber visto símbolos brillantes que...",
        personaje: .hombreTrajeBlanco
    ),

    .init(
        name: "Bonampak",
        location: "Selva Lacandona, Chiapas",
        history: "Sitio arqueológico maya famoso por sus murales excepcionalmente conservados que muestran aspectos de la vida real maya.",
        thumbnail: "bonampak",
        color: .red.opacity(0.8),
        viewType: .bonampak,
        historyComplete: "Los murales de Bonampak revelaron al mundo la verdadera naturaleza de la civilización maya, desafiando ideas previas sobre su carácter pacífico. Sin embargo, hay paneles que permanecen sin descifrar completamente. Un grupo de lacandones, descendientes directos de los mayas, mantienen la tradición oral de que los murales contienen un código que, al ser interpretado correctamente, revelará la ubicación de una ciudad perdida donde...",
        personaje: .mujerTrajeBlanco
    ),

    .init(
        name: "Yaxchilán",
        location: "Selva Lacandona, Chiapas",
        history: "Ciudad maya construida a orillas del río Usumacinta, famosa por sus dinteles tallados que narran la historia de sus gobernantes.",
        thumbnail: "yaxchilan",
        color: .yellow.opacity(0.8),
        viewType: .yaxchilan,
        historyComplete: "El acceso principal a Yaxchilán era a través del río, simbolizando el paso al inframundo. Los lacandones consideran este sitio como un portal entre dimensiones. Los dinteles tallados muestran ceremonias donde los gobernantes parecen comunicarse con ancestros y deidades a través de rituales de sangre. Existen inscripciones que hacen referencia a un evento astronómico que ocurre cada 52 años, cuando ciertas estrellas se alinean sobre el Edificio 33. Los pocos que han permanecido en el sitio durante este fenómeno reportan sonidos inexplicables y...",
        personaje: .hombreTrajeBlanco
    ),

    .init(
        name: "Toniná",
        location: "Ocosingo, Chiapas",
        history: "Ciudad maya estratégica que rivalizo con Palenque, conocida por su imponente acrópolis y sus esculturas de prisioneros.",
        thumbnail: "tonina",
        color: .orange.opacity(0.8),
        viewType: .tonina,
        historyComplete: "La estructura piramidal de Toniná, con sus siete plataformas, representa los niveles del inframundo maya. Los descendientes tzeltales guardan historias sobre rituales celebrados en cámaras subterráneas aún no exploradas por arqueólogos. Durante el solsticio de invierno, cuando los primeros rayos del sol tocan la cima de la acrópolis, se produce un efecto óptico que proyecta la sombra de un jaguar sobre una pared específica. Según los ancianos, esta sombra señala la entrada a un pasaje que conduce a...",
        personaje: .mujerTrajeBlanco
    )
]

