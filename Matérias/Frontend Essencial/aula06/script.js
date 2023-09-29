
const timeOut = setTimeout(function() {
    window.alert("Parei meu setInterval")
    clearInterval(interval)
}, 5000)



const interval = setInterval(function() {
    console.log("Fui chamado pelo setInterval")
}, 1000)

// clearInterval()
// clearTimeout()
timeOut()
interval()