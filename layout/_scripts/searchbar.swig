{% if config.swiftype_key %}
{% set swiftype_key = config.swiftype_key %}
<script type="text/javascript">
    (function(w,d,t,u,n,s,e){w['SwiftypeObject']=n;w[n]=w[n]||function(){
    (w[n].q=w[n].q||[]).push(arguments);};s=d.createElement(t);
    e=d.getElementsByTagName(t)[0];s.async=1;s.src=u;e.parentNode.insertBefore(s,e);
    })(window,document,'script','//s.swiftypecdn.com/install/v1/st.js','_st');

    _st('install','{{swiftype_key}}');
</script>
{% elseif config.tinysou_Key%}
{% set engineKey = config.tinysou_Key %}
<script>
		var option = {
  		engineKey: '{{engineKey}}'
		};
		(function(w,d,t,u,n,s,e){
  		s = d.createElement(t);
  		s.src = u;
  		s.async = 1;
  		w[n] = function(r){
    		w[n].opts = r;
  		};
  		e = d.getElementsByTagName(t)[0];
  		e.parentNode.insertBefore(s, e);
		})(window,document,'script','//tinysou-cdn.b0.upaiyun.com/ts.js','_ts');
		_ts(option);
</script>
{% endif %}