
let degrees;
function setPointer(ptr)
{
  document.getElementById('FarmPointer').style.transform = `rotate(${ptr}deg)`;
  degrees = ptr;

}

let id = null;
function spin(el) {
  let revsLeft = 6;
  let element = el;
  clearInterval(id);
  let stopDegree = (Math.floor(Math.random() * 360) + 1);
  id = setInterval(frame,5.5);

  function frame()  {
    if (degrees > stopDegree && revsLeft === 0) {
      clearInterval(id);
    }
    else {
      degrees = degrees + 2;
      if (degrees > 359)
      {
        degrees = 0;
        revsLeft--;
      }
      element.style.transform = `rotate(${degrees}deg)`;
    }
  }
}

document.getElementById("FarmPointer").onmousedown = function (event)
{
  // @TODO -> make a mouse click and drag handler to spin the pointer by hand.  May need to use getDegrees() after
  //          adjusting and update degrees variable to keep application in sync.
}

// not currently in use, but it could be a useful utility
function getDegrees()
{
  let el = document.getElementById("FarmPointer");
  let st = window.getComputedStyle(el, null);
  let tr = st.getPropertyValue("-webkit-transform") ||
      st.getPropertyValue("-moz-transform") ||
      st.getPropertyValue("-ms-transform") ||
      st.getPropertyValue("-o-transform") ||
      st.getPropertyValue("transform") ||
      "Either no transform set, or browser doesn't do getComputedStyle";
  let values = tr.split('(')[1].split(')')[0].split(',');
  let a = values[0]; // 0.866025
  let b = values[1]; // 0.5
  let c = values[2]; // -0.5
  let d = values[3]; // 0.866025
  return Math.round(Math.atan2(b, a) * (180 / Math.PI));
}

async function setValue(form, button) {
  button.parentNode.removeChild(button);
  form.innerHTML += "<input type = \"hidden\" name = \"startDegrees\" value=\"" + degrees + "\">";
  form.innerHTML += "<button type = submit class='button'>Play!</button>";
}
