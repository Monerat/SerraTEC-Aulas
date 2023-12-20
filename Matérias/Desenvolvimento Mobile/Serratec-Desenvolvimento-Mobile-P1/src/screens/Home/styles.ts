import { Platform, StyleSheet } from "react-native";

export const styles = StyleSheet.create({
    background: {
        height: '100%',
        width: '100%',
        backgroundColor: "#1F2127",
    },

    header: {
        height: '14.5%',
        width: '100%',
        paddingTop: Platform.OS === 'ios' ? 64 : 30
    },
    topHeader: {
        flexDirection: "row",
        paddingLeft: "5%",
        paddingBottom: "2%"
    },
    search: {
        height: 50,
        width: "70%",
        backgroundColor: '#2A2C34',
        paddingLeft: "5%",
        paddingRight: "5%",
        flexDirection: 'row',
        justifyContent: "space-between",
        alignItems: "center",
    },

    topHeaderDot: {
        height: 50,
        width: 40,
        alignItems: "center",
        justifyContent: "center"
    },
    profilePic: {
        height: 50,
        width: 50,
    },
    menuHeader: {
        height: '35%',
        width: '100%',
        flexDirection: 'row',
        justifyContent: "space-between",
        alignItems: "center",
        paddingBottom: "2.5%",
        paddingLeft: "5%",
        paddingRight: "5%",
    },
    menuView:{
        flexDirection: 'row',
        alignItems: "center"
    },
    menu: {
        color: "#c1c5c9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 12
    },
    listaDesejos: {
        color: "#c1c5c9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 12
    },
    carteiraView: {
        flexDirection: 'row',
        alignItems: "center",
        justifyContent: "center"
    },
    carteira: {
        paddingRight: "1%",
        color: "#c1c5c9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 12
    },
    carteiraValue: {
        color: "#1a9dfb",
        fontSize: 12,
        fontWeight: 'bold',
        letterSpacing: 1.5
    },
    carousel: {
        height: '35%',
        width: '100%',
        
    },
    carouselImg: {
        height: '100%',
        width: '100%',
    },
    destaquesRecomendados: {
        height: '40%',
        width: '100%',
        backgroundColor: "#1e3453",
        flexDirection: "column",
        justifyContent: 'space-evenly',
    },

    destaqueTitulo: {
        color: "#c1c5c9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 15,
        alignSelf: 'baseline',
        paddingLeft: 10
    },

    gamerCardBanner: {
        height: 250,
        width: 400,
        gap: 2
    },

    goldenJoyBanner: {
        backgroundColor: "#19293b",
    },

    imageGoldenJoy: {
        height: 250,
        width: "96%",
        marginTop: "10%",
        marginLeft: "2%",
        marginRight: "2%"
    }
});