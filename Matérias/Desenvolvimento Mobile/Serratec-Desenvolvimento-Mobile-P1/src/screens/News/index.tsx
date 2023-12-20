import React, { useState } from "react";
import { View, Text, Image, FlatList } from "react-native";
import { styles } from "./styles";
import { ThumbsUp, MessageSquare, Bell, Search, ChevronLeft, MoreVertical } from "react-native-feather";
import profileImg from '../../assets/images/ProfileImg.png';
import { MaterialCommunityIcons, MaterialIcons,FontAwesome, FontAwesome5 } from '@expo/vector-icons';

import { CardVideo } from "../../components/CardVideo";

export const News = () => {
    const [listaNews, setListaNews] = useState<any[]>([
        {
          id: 1,
          tituloGame: "New World",
          titulo: "Character Spotlight: Eternal Frost",
          imagemBanner: 'https://i3.ytimg.com/vi/tyiQk8yr66E/maxresdefault.jpg',
          dataPost: "HÁ 7 HORAS"
        },
        {
            id: 2,
            tituloGame: "New World",
            titulo: "Character Spotlight: Eternal Frost",
            imagemBanner: 'https://img-cdn.hltv.org/gallerypicture/eNFRc95--El3YT3fdEaXib.png?ixlib=java-2.1.0&w=1200&s=b368b07d32f397c599025770fe16bdc3',
            dataPost: "HÁ 7 HORAS"
        },
        {
            id: 3,
            tituloGame: "New World",
            titulo: "Character Spotlight: Eternal Frost",
            imagemBanner: 'https://img-cdn.hltv.org/gallerypicture/eNFRc95--El3YT3fdEaXib.png?ixlib=java-2.1.0&w=1200&s=b368b07d32f397c599025770fe16bdc3',
            dataPost: "HÁ 7 HORAS"
        },
      ])
      
    return (
        <View style={styles.background} >
            <View style={styles.header}>
                <View style={styles.topHeader}>
                    <ChevronLeft stroke="#c1c5c9" width={28} height={28}></ChevronLeft>
                    <Text style={styles.noticias}>NOTÍCIAS</Text>
                    <MoreVertical stroke="#c1c5c9" width={24} height={24}></MoreVertical>
                    <Image source={profileImg} style={styles.profilePic} />
                </View>
                <View style={styles.bottomHeader}>
                    <FontAwesome name="gear" size={24} color="#c1c5c9" />
                    <Search stroke="#c1c5c9" width={20} height={20}></Search>
                    <Text style={styles.bottomHeaderSel}>PARA VOCÊ</Text>
                    <Text style={styles.bottomHeaderTxt}>EM BREVE</Text>
                    <MaterialCommunityIcons name="numeric-2-box" size={24} color="#474e59" style={styles.numeric2BoxIcon} />
                    <Text style={styles.bottomHeaderTxt}>DESTAQUES</Text>
                </View>
            </View>
            <View style={styles.breve}>
                <View style={styles.breveHeader}>
                    <Text style={styles.headerTxt}>EM BREVE</Text>
                </View>
                <View style={styles.breveTituloGame}>
                    <Text style={styles.textTituloGame}>New World</Text>
                </View>
                <View style={styles.breveTitulo}>
                    <Text style={styles.textTitulo}>Fight Turkulon for the Grand Gobbler</Text>
                </View>
                <View style={styles.breveData}>
                    <Text style={styles.breveDataTxt}>quarta-feira — 09:00</Text>
                    <Bell stroke="#007bca" fill={'#007bca'} width={32} height={32}></Bell>
                </View>
                <View style={styles.breveFuturos}>
                    <Text style={styles.textBreveFuturos}>VER TODOS OS EVENTOS FUTUROS</Text>
                    <MaterialCommunityIcons name="numeric-2-box" size={24} color="#474e59" style={styles.numeric2BoxIcon} />
                </View>
            </View>
            <View style={styles.hoje}>
                <View style={styles.hojeHeader}>
                    <Text style={styles.hojeTxt}>HOJE</Text>
                </View>
                <View style={styles.hojeNews}>
                    <View style={styles.hojeIcon}>
                        <FontAwesome5 name="tools" size={42} color="#8994a4" />
                    </View>
                    <View style={styles.hojeTituloGame}>
                        <Text style={styles.textTituloGame}>Counter-Strike 2</Text>
                        <Text style={styles.hojeTitulo}>Release Notes for 11/13/2023</Text>
                    </View>
                </View>
                <View style={styles.hojeReacoes}>
                    <View style={styles.hojeReacoesContador}>
                        <ThumbsUp stroke="#7b7b7b" fill={'#7b7b7b'} width={24} height={24}></ThumbsUp>
                        <Text style={styles.hojeReacoesValor}>29</Text>
                    </View>
                    <View style={styles.hojeReacoesContador}>
                        <MessageSquare stroke="#7b7b7b" fill={'#7b7b7b'} width={24} height={24}></MessageSquare>
                        <Text style={styles.hojeReacoesValor}>26</Text>
                    </View>
                    <MaterialIcons name="more-horiz" size={24} color="#dbdfe8" style={styles.moreHoriz} />
                </View>
            </View>
            <View style={styles.cardVideo}>
                <FlatList
                    data={listaNews}
                    renderItem={({ item }) => {
                        return <CardVideo item={item} />
                    }
                    }
                />
            </View>
        </View>
    )
}