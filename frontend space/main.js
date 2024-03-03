const ApiURL = "http://localhost:3005/api/universcards"

fetch(ApiURL)
.then((respuesta)=>respuesta.json())
.then((result)=>displayRecipies(result))
.catch((err)=>{console.error(err)})

function displayRecipies(arr) {
    let cardHTML = ''
    let containerCards = document.getElementById("cards")

    arr.forEach(element => {
        cardHTML += `
        <div class="card_sp" style="width: 100%; border: 10px solid white"  onClick="displayDetails(${element.id})">
                  <img style="width: 100%" style="height: 100%" src=${element.ImagenURL}>
                </div>
                <div class="content">
                  <a class="header" style="text-aling: center;">${element.title}</a>
                  <div class="meta">
                    <div class="date">${element.data_created}</div>
                  </div>
                </div>
        `
    });

    containerCards.innerHTML = cardHTML;
}

function displayDetails(id) {
  
  let urlDetail = "http://localhost:3005/api/universdetails/" + id
  let strHTML = ""

   fetch(urlDetail)
  .then((respuesta)=>respuesta.json())
  .then((result)=> {

    let containerDetail = document.getElementById("space-details")

    strHTML = `<h2 style="text-align: center; color: white; font-size: 5rem;">${result.title}</h2>
    <img src=${result.ImagenURL}>
    <p style="font-size: 3rem; color: white; text-align: center;">${result.center}</p>
    <p style="font-size: 3rem; color: white; text-align: center;">${result.data_created}</p>
    <p style="font-size: 3rem; color: white; text-align: center;">${result.photographer}</p>
    <p style="font-size: 3rem; color: white; text-align: center;">${result.description}</p>
    `

    containerDetail.innerHTML = strHTML
  })
  .catch((err)=>{console.error(err)})
}