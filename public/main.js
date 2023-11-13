const btns = document.querySelectorAll('.btn')

function setUp(){
    loadEventListeners()
}

function loadEventListeners(){
    btns.forEach((btn) => {
        addListenerToBtn(btn)
    })
}

function addListenerToBtn(btn) {
    btn.addEventListener('click', () => {
        handleClick(btn.id)
    })
}

async function handleClick(id){
    const res = await fetch(`http://localhost:3000/api/${id}`)
    const data = await res.json()
    console.log(data)
}

setUp()