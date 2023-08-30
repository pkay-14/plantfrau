
// const sideNavWrapper = document.getElementById("nav-wrapper");
function openNav() {
    sideNav = document.getElementById("sidenav");
    navFooter = document.getElementById("nav-footer");
    mainBody = document.getElementById("page-body");
    sideNav.classList.add("active")
    sideNav.style.width = "80%";
    navFooter.style.width = "100%";
    mainBody.style.overflow = "hidden"
  }
  function closeNav() {
      sideNav = document.getElementById("sidenav");
      navFooter = document.getElementById("nav-footer");
      mainBody = document.getElementById("page-body");
      if (sideNav.classList.contains("active") ){
          sideNav.style.width = "0";
          sideNav.classList.remove("active")
          mainBody.style.overflowY = "visible"
      }
  }