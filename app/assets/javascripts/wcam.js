var flag = false;

function take_photo() {
  Webcam.snap(function(data_uri) {

    // hidrata a div com a imagem
    document.querySelector('#result').innerHTML = '<img src="' + data_uri + '" />';
    // seta o input para a imagem
    document.querySelector('#visitor_avatar').value = data_uri;

    // troca as divs
    if (flag) {
        tirar.style.display = 'block';
        alterar.style.display = 'none';
    } else {
        tirar.style.display = 'none';
        alterar.style.display = 'block';
    }

    flag = !flag;
  });
}

window.setTimeout(function tout() {

  var tirar = document.querySelector('#tirar');
  var alterar = document.querySelector('#alterar');

  Webcam.attach('#camera');
  alterar.style.display = 'none';
  
}, 1000);
