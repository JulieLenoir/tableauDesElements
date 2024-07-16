radioactif = document.querySelectorAll('.radioactif')

element = document.querySelectorAll('.element')

radioelement = []

for (let i = 0; i < radioactif.length; i++) {
    ouiounon = radioactif[i].innerText;
    radioelement.push(ouiounon);
}

for (let j = 0; j < element.length; j++) {
    element[j].addEventListener('mouseover', function () {
        if (radioelement[j] == '1') {
            for (let k = 0; k < radioelement.length; k++) {
                if (radioelement[k] === '1') {
                    element[k].style.filter = 'sepia(100%) drop-shadow(0px 0px 10px yellow )'
                }
            }
        }
    })
    element[j].addEventListener('mouseout', function () {
        for (let k = 0; k < radioelement.length; k++) {
            if (radioelement[k] == '1' || radioelement[k] == '0') {
                element[k].style.filter = ''
            }
        }
    }
    )
}