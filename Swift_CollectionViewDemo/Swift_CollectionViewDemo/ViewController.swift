//
//  ViewController.swift
//  Swift_CollectionViewDemo
//
//  Created by Apple on 23/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    var arrDicData = [[String:Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate=self
    collectionView.dataSource=self
    
        arrDicData.append(["title":"Leh Ladakh","Desc":"A land like no other with superabundance of attractions to visit","img":"LADAKH.jpg"])
        
        arrDicData.append(["title":"Goa - Beaches, Sunsets ","Desc":"Goa is the epitome of tourism in India with one of the best beaches, food and nightlife.","img":"GOA.jpg"])
        arrDicData.append(["title":"Munnar, Kerala - Tea Gardens, Lakes","Desc":"The idyllic hill station Munnar - famous for its tea estates, exotic lush greenery and craggy peaks.","img":"MUNNAR.jpg"])
        
        arrDicData.append(["title":"Taj Mahal","Desc":"Home to one of the 7 wonders of the world, the Taj Mahal.","img":"AGRA.jpg"])
        arrDicData.append(["title":"Andaman & Nicobar Islands ","Desc":"Andaman and Nicobar one of the most perfect choices for an enjoyable, laid-back holiday where you can go on long treks.","img":"ANDAMAN.jpg"])
        
        arrDicData.append(["title":"Darjeeling, West Bengal - Queen of The Himalayas","Desc":"Jaw-dropping locales, mesmerising sunrises, the untouched beauty of the hills, the old-world charm of the past.","img":"DARJEELING.jpg"])
        arrDicData.append(["title":"Manali -  Himachal Pradesh","Desc":"Nestled in between the snow-capped slopes of the Pir Panjal and the Dhauladhar ranges, Manali is one of the most popular hill stations in the country.","img":"MANALI.jpg"])
        
        arrDicData.append(["title":"Ooty - Tamil Nadu","Desc":"The Blue Mountains have always been shrouded in mysticism, and Ooty is no exception to that.","img":"OOTY.jpg"])
        arrDicData.append(["title":"Shimla, Himachal Pradesh ","Desc":"Probably the most popular hill station in northern India, Shimla is the capital city of Himachal Pradesh famous for its Mall road.","img":"SHIMLA.jpg"])
        arrDicData.append(["title":"Gangtok, Sikkim - The Gateway to Sikkim","Desc":"Extremely alluring, pleasantly boisterous and wreathed in clouds - Gangtok, the capital city of the Sikkim can also give you a spectacular view .","img":"GANGTOK.jpg"])
        
        arrDicData.append(["title":" New Delhi, NCR - The city of cities ","Desc":"From historical monuments to crowded shopping malls, from Mughal gardens to Delhi University campus, the capital city has multiple personalities making it The good, the bad and the ugly.","img":"DELHI.jpg"])
        
        arrDicData.append(["title":"Udaipur, Rajasthan - The city of Lakes","Desc":"Udaipur, also known as the City of Lakes, is the crown jewel of the state of Rajasthan.","img":"UDAIPUR.jpg"])
        
        arrDicData.append(["title":"Dalhousie, Himachal Pradesh - Little Switzerland of India ","Desc":"The tiny tinsel town Dalhousie tucked away in the lap of Himachal Pradesh is a piece of paradise for all the travellers. ","img":"DALHOUSIE.jpg"])
        arrDicData.append(["title":"Coorg, Karnataka - The Scotland of India ","Desc":"Located amidst imposing mountains in Karnataka with a perpetually misty landscape, Coorg is the place to be for all nature lovers. ","img":"COORG.jpg"])
        arrDicData.append(["title":"Kanha National Park, Madhya Pradesh - The land of Jungle Book ","Desc":"A delightful town situated in the district of Mandla, Kanha National park is the haven of an exceptionally wide variety of wild animals. ","img":"KANHA.jpg"])
        arrDicData.append(["title":"Kodaikanal, Tamil Nadu - The Princess of Hill Stations","Desc":"Located in the state of Tamil Nadu, Kodaikanal is one of the most famous honeymoon destinations in India.","img":"KODAIKANAL.jpg"])
        arrDicData.append(["title":"Mussoorie, Uttarakhand - The queen of hill-stations ","Desc":"Mussoorie is the place you should be heading to. Nestled amidst the foothills of the Garhwal Himalayan ranges, Mussoorie, also known as Queen of The Hills.","img":"MUSSOORIE.jpg"])
        arrDicData.append(["title":"Mcleodganj, Himachal Pradesh - Land of His Holiness the Dalai Lama","Desc":"Mcleodganj is a hill station near Dharamshala, popular among trekkers. Its culture is a beautiful blend of Tibetan with some British influence.","img":"MCLEODGANJ.jpg"])
        arrDicData.append(["title":"Pondicherry - The French Riviera of the East","Desc":"Pondicherry, also known as Puducherry and commonly referred as just Pondy, is one of the seven Union Territories of India.","img":"PONDICHERRY.jpg"])
        arrDicData.append(["title":"Vaishno Devi, Jammu & Kashmir - The Holy Caves ","Desc":"Located in Trikuta hills, 13 km from Katra at the height of 1560 m above sea level with bright clouds and thinning air.","img":"VAISHNO-DEVI.jpg"])
        arrDicData.append(["title":"Alleppey, Kerala - Backwaters, Beaches and Lagoons - Venice of the East","Desc":"Extremely famous for its beautiful backwaters, the city of Alleppey in Kerala is also known for its beaches, temples and traditional boat races. This popular tourist destination also has some very well reputed Ayurvedic spas and wellness centres.","img":"ALLEPPEY.jpg"])
        
        arrDicData.append(["title":"Tirupati, Andhra Pradesh - Andhra's temple town","Desc":"The very name Tirupati is enough to evoke strong spiritual feelings, and while the name ?God's Abode? indeed does justice to the place, Tirupati has quite a few other tourist attractions as well that make it a city worth visiting. ","img":"TIRUPATI.jpg"])
        arrDicData.append(["title":"Nainital, Uttarakhand - Misty lakes and mountains ","Desc":"One of the most beautiful tourist destinations in Uttarakhand, Nainital, which is nestled amidst the Kumaon Hills. ","img":"NAINITAL.jpg"])
        
        arrDicData.append(["title":"Mount Abu, Rajasthan - A beautiful hill station in Rajasthan ","Desc":"The only hill station of Rajasthan, its cool atmosphere and lush green surroundings make it a major tourist spot within the state.","img":"MOUNT-ABU.jpg"])
        
        arrDicData.append(["title":"Bangalore, Karnataka - Garden city of India","Desc":"Having evolved gradually from being the Garden City to the Silicon Valley of India, Bengaluru is the third largest and one of the most livable cities in India.","img":"BANGALORE.jpg"])

    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrDicData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        var img:UIImageView=cell.viewWithTag(101) as! UIImageView
        var placeName:UILabel=cell.viewWithTag(102) as! UILabel
        img.image=UIImage.init(named: arrDicData[indexPath.row]["img"] as! String)
            placeName.text=arrDicData[indexPath.row]["title"] as! String

        return cell
    }
}

