
// on formate la bulle.
document.write('<div id="bulle" class="infos_bulle"><div class="infos_bulle_haut"></div><div id="bulle_bas" class="infos_bulle_bas"></div></div>');
// on met à jour la position de la bulle.
document.onmousemove = move_bulle;

var i=false; // La variable i nous dit si la bulle est visible ou non

function ElementId(id)
{
  return document.getElementById(id);
}

function move_bulle(e) // Fonction de suivi de la souris 
{
  if(i){
    if(navigator.appName!="Microsoft Internet Explorer"){
      ElementId("bulle").style.left = (-15)+e.pageX+"px";
      ElementId("bulle").style.top = 15+e.pageY+"px";
    }else{
      ElementId("bulle").style.left = (-15)+event.x+document.documentElement.scrollLeft+"px";
      ElementId("bulle").style.top = 15+event.y+document.documentElement.scrollTop+"px";
    }
  }
}

function open_bulle(content)
{
  if(i==false){
    ElementId("bulle").style.visibility = "visible"; // Si la bulle est cachée on la rend visible.
    ElementId("bulle_bas").innerHTML = content; // on copie le contenu dans la bulle
    i=true;
	move_bulle(ElementId("bulle")); // positionnement initial 
  }
}

function close_bulle()
{
  if(i==true){
    ElementId("bulle").style.visibility = "hidden"; // Si la bulle est visible on la cache
    i=false;
  }
}

/****************************
*	ouverture d'une popup	*
****************************/
function NewWindow(url,hauteur,largeur) {
	var winl = (screen.width - largeur) / 2;
	var wint = (screen.height - hauteur) / 2;
	date_t = new Date;
	time = date_t.getTime();
	winprops = 'height='+hauteur+',width='+largeur+',top='+wint+',left='+winl+',scrollbars=1,resizable'
	win = window.open(url, time, winprops)
	}
