//
//  FactProvider.swift
//  funFacts
//
//  Created by yueh on 2019/6/22.
//  Copyright © 2019 yueh. All rights reserved.
//
import GameKit
struct FactProvider {
    let facts = ["Loremipsumdolorsitamet,consecteturadipiscingelit.Maecenastempus.", "Contrarytopopularbelief,LoremIpsumisnotsimplyrandomtext.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ",  "lookeduponeofthemoreobscureLatinwords,consectetur",  "from a Lorem Ipsum passage, and going through the cites of the word", "Thisbookisatreatiseonthetheoryofethics,verypopularduringthe.", "ThefirstlineofLoremIpsum,Loremipsumdolorsitamet.", "ThestandardchunkofLoremIpsumusedsincethe1500sisreproduced.", "TherearemanyvariationsofpassagesofLoremIpsumavailable.", "but the majority have suffered alteration in some form"]

    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[randomNumber]
    }
}
