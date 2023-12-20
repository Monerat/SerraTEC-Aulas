import React from "react";
import { View, Image, Text } from "react-native";
import { styles } from "./styles";


interface itemProps {
    id: number;
    titulo: string;
    tituloGame: string;
    imagemBanner: string;
    dataPost: string;
}

interface CardVideoProps {
    item: itemProps;
}

export const CardVideo = ({ item }: CardVideoProps) => {
    const { titulo, tituloGame, imagemBanner, dataPost } = item;
    return (
        <View style={styles.videoCard}>
            <Image style={styles.imagemBanner} source={{uri:(imagemBanner)}}></Image>
            <View style={styles.tituloBanner}>
                <Text style={styles.tituloGame}>{tituloGame}</Text>
                <Text style={styles.titulo}>{titulo}</Text>
                <Text style={styles.dataPost}>{dataPost}</Text>
            </View>
        </View>
    )
}