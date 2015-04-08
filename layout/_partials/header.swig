<h1 class="site-meta">
  <span class="logo-line-before"><i></i></span>
  <a href="{{ config.root }}" class="brand">
      <span class="logo">
        <i class="icon-logo"></i>
      </span>
      <span class="site-title">{{ config.title }}</span>
  </a>
  <span class="logo-line-after"><i></i></span>
</h1>

{% if theme.menu %}
  <ul id="menu" class="menu">
    {% if config.swiftype_key %}
    <!--增加swiftype搜索功能-->
    <form class="menu-item menu-item-{{ itemName }}">
      <input type="text" id="st-search-input" class="st-search-input" style="width:80px;"  />
    </form>
    {% set swiftype_key = config.swiftype_key %}
    <!--增加swiftype搜索功能end-->
    {% elseif config.tinysou_Key%}
    {% set engineKey = config.tinysou_Key %}
    <!--增加“tinysou”站内搜索功能start-->
    <form class="menu-item" ><input type="text" id="ts-search-input" class="menu-search-input"></form>
	 <!--增加“微搜索”站内搜索功能end-->
	 {% endif %}
     {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
      <li class="menu-item menu-item-{{ itemName }}">
        <a href="{{ url_for(path) }}">
          <i class="menu-item-icon icon-{{ itemName }}"></i> <br />
          {{ __('menu.' + itemName) }}
        </a>
      </li>
    {% endfor %}
  <!--增加high一下-->
  <li class="menu-item menu-item-{{ itemName }}">
    <a title="" href='javascript:(function() {
  function c() {
    var e = document.createElement("link");
    e.setAttribute("type", "text/css");
    e.setAttribute("rel", "stylesheet");
    e.setAttribute("href", f);
    e.setAttribute("class", l);
    document.body.appendChild(e)
  }
 
  function h() {
    var e = document.getElementsByClassName(l);
    for (var t = 0; t < e.length; t++) {
      document.body.removeChild(e[t])
    }
  }
 
  function p() {
    var e = document.createElement("div");
    e.setAttribute("class", a);
    document.body.appendChild(e);
    setTimeout(function() {
      document.body.removeChild(e)
    }, 100)
  }
 
  function d(e) {
    return {
      height : e.offsetHeight,
      width : e.offsetWidth
    }
  }
 
  function v(i) {
    var s = d(i);
    return s.height > e && s.height < n && s.width > t && s.width < r
  }
 
  function m(e) {
    var t = e;
    var n = 0;
    while (!!t) {
      n += t.offsetTop;
      t = t.offsetParent
    }
    return n
  }
 
  function g() {
    var e = document.documentElement;
    if (!!window.innerWidth) {
      return window.innerHeight
    } else if (e && !isNaN(e.clientHeight)) {
      return e.clientHeight
    }
    return 0
  }
 
  function y() {
    if (window.pageYOffset) {
      return window.pageYOffset
    }
    return Math.max(document.documentElement.scrollTop, document.body.scrollTop)
  }
 
  function E(e) {
    var t = m(e);
    return t >= w && t <= b + w
  }
 
  function S() {
    var e = document.createElement("audio");
    e.setAttribute("class", l);
    e.src = i;
    e.loop = false;
    e.addEventListener("canplay", function() {
      setTimeout(function() {
        x(k)
      }, 500);
      setTimeout(function() {
        N();
        p();
        for (var e = 0; e < O.length; e++) {
          T(O[e])
        }
      }, 15500)
    }, true);
    e.addEventListener("ended", function() {
      N();
      h()
    }, true);
    e.innerHTML = " <p>你的浏览器不想让你High起来~.</p> <p>";
    document.body.appendChild(e);
    e.play()
  }
 
  function x(e) {
    e.className += " " + s + " " + o
  }
 
  function T(e) {
    e.className += " " + s + " " + u[Math.floor(Math.random() * u.length)]
  }
 
  function N() {
    var e = document.getElementsByClassName(s);
    var t = new RegExp("\\b" + s + "\\b");
    for (var n = 0; n < e.length; ) {
      e[n].className = e[n].className.replace(t, "")
    }
  }
 
  var e = 30;
  var t = 30;
  var n = 350;
  var r = 350;
  
  var i = "//7xiewb.com1.z0.glb.clouddn.com/imageharlem-shake.mp3";
  var s = "mw-harlem_shake_me";
  var o = "im_first";
  var u = ["im_drunk", "im_baked", "im_trippin", "im_blown"];
  var a = "mw-strobe_light";
  
  var f = "//7xiewb.com1.z0.glb.clouddn.com/imageharlem-shake-style.css";
  var l = "mw_added_css";
  var b = g();
  var w = y();
  var C = document.getElementsByTagName("*");
  var k = null;
  for (var L = 0; L < C.length; L++) {
    var A = C[L];
    if (v(A)) {
      if (E(A)) {
        k = A;
        break
      }
    }
  }
  if (A === null) {
    console.warn("Could not find a node of the right size. Please try a different page.");
    return
  }
  c();
  S();
  var O = [];
  for (var L = 0; L < C.length; L++) {
    var A = C[L];
    if (v(A)) {
      O.push(A)
    }
  }
})()    '>High一下</a>
  </li>

  </ul>
{% endif %}
