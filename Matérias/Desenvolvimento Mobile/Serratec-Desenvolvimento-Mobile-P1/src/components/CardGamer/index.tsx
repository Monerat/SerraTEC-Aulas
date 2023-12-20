import React from "react";
import { View, Image, Text } from "react-native";
import { styles } from "./styles";


interface itemProps {
    id: number;
    titulo: string;
    preco: string;
    imagemBanner: string;
}

interface CardGamerProps {
    item: itemProps;
}

export const CardGamer = ({ item }: CardGamerProps) => {
    const { titulo, preco, imagemBanner } = item;
    return (
        <View style={[styles.gamerCard, styles.shadowProp]}>
            <Image style={styles.imagemBanner} source={{uri:(imagemBanner)}}></Image>
            <View style={styles.tituloBanner}>
                <Text style={styles.tituloText}>{titulo}</Text>
                <Text style={styles.tituloPreco}>{preco}</Text>
            </View>
        </View>
    )
}