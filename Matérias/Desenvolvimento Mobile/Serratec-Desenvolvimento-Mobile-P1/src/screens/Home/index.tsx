import React, { useState } from "react";
import { Text, TextInput, View, FlatList, Image} from 'react-native';
import { styles } from "./styles";
import profileImg from '../../assets/images/ProfileImg.png';
import carouselImg from '../../assets/images/MW3.png';
import { Search, MoreVertical, ChevronDown } from "react-native-feather";
import { CardGamer } from '../../components/CardGamer';


export const Home = () => {
  const [search, setSearch] = useState('');
  const [listaGames, setListaGames] = useState<any[]>([
    {
      id: 1,
      titulo: "Counter Strike 2",
      preco: "Gratuito",
      imagemBanner: 'https://img-cdn.hltv.org/gallerypicture/eNFRc95--El3YT3fdEaXib.png?ixlib=java-2.1.0&w=1200&s=b368b07d32f397c599025770fe16bdc3'
    },
    {
      id: 2,
      titulo: "Baldur's Gate 3",
      preco: "R$ 199,99",
      imagemBanner: 'https://items.gog.com/BG3/BG3.png'
    },
    {
      id: 3,
      titulo: "EA SPORTS FC™ 24",
      preco: "R$ 359,00",
      imagemBanner: 'https://stuff.co.za/wp-content/uploads/2023/10/EA-FC-24-Header.png'
    },
  ])


  return (
    <View style={styles.background}>
      <View style={styles.header}>
        <View style={styles.topHeader}>
          <View style={styles.search}>
            <TextInput
                
                placeholder='STEAM' placeholderTextColor="#202228"
                onChangeText={(value) => { setSearch(value) }}
                value={search} />
            <Search stroke="#cfd4d8" width={24} height={24}></Search>
          </View>
          <View style={styles.topHeaderDot}>
            <MoreVertical stroke="#c1c5c9" width={24} height={24}></MoreVertical>
          </View>
          
          <Image source={profileImg} style={styles.profilePic} />
        </View>
        <View style={styles.menuHeader}>
          <View style={styles.menuView}>
            <Text style={styles.menu}>MENU</Text>
            <ChevronDown stroke="#4a5055" width={20} height={20}></ChevronDown>
          </View>
          <View>
            <Text style={styles.listaDesejos}>LISTA DE DESEJOS</Text>
          </View>
          <View style={styles.carteiraView}>
            <Text style={styles.carteira}>CARTEIRA</Text>
            <Text style={styles.carteiraValue}>(R$ 58.45)</Text>
          </View>
        </View>
      </View>
      <View style={styles.carousel}>
        <Image style={styles.carouselImg} source={carouselImg}></Image>
      </View>
      <View style={styles.destaquesRecomendados}>
        <Text style={styles.destaqueTitulo}>DESTAQUES E RECOMENDADOS</Text>
        <View style={styles.gamerCardBanner}>
          <FlatList
            data={listaGames}
            horizontal={true}
            renderItem={({ item }) => {
              return <CardGamer item={item}/>
            }
          }
          />
        </View>
      </View>
      <View style={styles.goldenJoyBanner}>
        <Image style={styles.imageGoldenJoy} source={{uri:'https://i.ytimg.com/vi/KagVXPs_nA8/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAzosYy3JWXxOguQa0p-nYeod8idg'}} />
      </View>
    </View>
  );
};