import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
    
    gamerCard: {
        height: 250,
        width: 350,
        flexDirection: 'column',
        marginLeft: 10,
        elevation: 6,
        
    },

    //estava tentando adicionar sombra
    shadowProp: {
        shadowColor: '#171717',
        shadowOffset: {width: 20, height: 10},
        shadowOpacity: 0.2,
        shadowRadius: 20,
    },

    imagemBanner: {
        height: '69%',
        width: '98%',
        
    },

    tituloBanner: {
        height: '29%',
        width: '98%',
        backgroundColor: '#0c1822',
        padding:"2%"
    },

    tituloText: {
        color: "#c8c8c9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 18
    },

    tituloPreco: {
        color: "#adb2b9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 13,
        padding:"2%"
    }
});