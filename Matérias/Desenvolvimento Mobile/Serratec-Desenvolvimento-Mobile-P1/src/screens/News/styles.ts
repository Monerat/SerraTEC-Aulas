import { Platform, StyleSheet } from "react-native";

export const styles = StyleSheet.create({
    background: {
        height: '100%',
        width: '100%',
        backgroundColor: "#1F2127",
    },

    header: {
        height: '17%',
        width: '100%',
        paddingTop: Platform.OS === 'ios' ? 64 : 30 ,
    },
    
    topHeader: {
        flexDirection: "row",
        paddingLeft: "5%",
        paddingBottom: "2%",
        height: '52%',
        width: '100%',
        justifyContent:'space-around',
        alignItems: "center"
    },

    noticias:{
        color: "#c1c5c9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 16,
        marginLeft: "12%",
        marginRight: "-10%"
    },

    profilePic: {
        height: 45,
        width: 45,
        marginTop: "2%",
        marginLeft: "5%"
    },

    bottomHeader: {
        height: '48%',
        width: '100%',
        backgroundColor: "#33373f", 
        flexDirection: "row",
        justifyContent: 'space-between',
        alignItems: "center",
        paddingLeft: "2%"
    },
    bottomHeaderSel:{
        color: "#0066a1",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 12,
        borderBottomColor:'#0066a1',
        marginTop: "3%",
        paddingBottom: "2%",
        borderBottomWidth: 3
        
    },
    bottomHeaderTxt:{
        color: "#c1c5c9",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 12
    },

    numeric2BoxIcon: {
        backgroundColor: '#c1c5c9',
    },

    breve: {
        height: '24%',
        width: '100%',
        backgroundColor: "#282b31",
        flexDirection:'column',
        
    },

    breveHeader: {
        height: '20%',
        width: '100%',
        backgroundColor: "#282b31",
        justifyContent: "center",
        borderBottomColor:'#5e626a',
        borderBottomWidth: 1.5
    },

    headerTxt: {
        color: "#c1c5c9",
        letterSpacing: 3,
        fontSize: 18,
        marginLeft: "2%"
    },

    breveTituloGame: {
        height: '20%',
        width: '100%',
        justifyContent: "center"
    },

    textTituloGame: {
        color: "#b5c2cc",
        fontSize: 14,
        marginLeft: "3%"
    },

    breveTitulo: {
        height: '20%',
        width: '100%',
        justifyContent: "center"
    },

    textTitulo: {
        color: "#ffffff",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 20,
        marginLeft: "3%"
    },

    breveData: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        paddingRight: "2%",
        alignItems: "center"
    },
    breveDataTxt:{
        color: "#007bca",
        fontSize: 14,
        marginLeft: "3%"
    },
    breveFuturos: {
        height: '24%',
        width: '100%',
        justifyContent: "center",
        alignItems:'center',
        backgroundColor: "#282b31",
        flexDirection: 'row'
    },

    textBreveFuturos: {
        color: "#c1c5c9",
        fontWeight: 'bold',
        letterSpacing: 1,
        fontSize: 16,
        marginRight: "2%"
    },

    hoje: {
        height: '20%',
        width: '100%',
        backgroundColor: "#30343c",
        flexDirection:'column',
    },

    hojeHeader: {
        height: '20%',
        width: '100%',
        backgroundColor: "#2d3138",
        justifyContent: "center",
        borderBottomColor:'#5e626a',
        borderBottomWidth: 1.5
    },

    hojeTxt: {
        color: "#c1c5c9",
        letterSpacing: 3,
        fontSize: 18,
        marginLeft: "2%"
    },

    hojeNews: {
        height: '50%',
        width: '100%',
        backgroundColor: "#31363e",
        flexDirection: "row",
        alignItems: 'center',
        // paddingTop: '2%',
        paddingLeft: '4%'
    },

    hojeIcon: {

    },

    hojeTituloGame: {
        paddingLeft: '4%',
    },

    hojeTitulo: {
        color: "#ffffff",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 14,
        marginLeft: "3%",
        marginTop: "3%"
    },

    hojeReacoes: {
        height: '30%',
        width: '100%',
        flexDirection:'row',
        justifyContent: "space-evenly",
        backgroundColor: "#31363e",
        alignItems: 'flex-start',
        borderBottomColor:'#5e626a',
        borderBottomWidth: 1.5
    },

    hojeReacoesContador:{
        flexDirection:'row',
        justifyContent: "center",
        alignItems: "center",
        marginRight: "-6%"
    },

    hojeReacoesValor:{
        color: "#7b7b7b",
        fontWeight: 'bold',
        letterSpacing: 1.5,
        fontSize: 14,
        marginLeft: "3%"
    },

    moreHoriz: {
        backgroundColor: '#8c8c8c',
    },

    cardVideo: {
        height: "300%",
        width: '100%',
        flexDirection: "column",
        justifyContent:'center',
        padding: "4%",
        backgroundColor: '#2e333a',
    }
});