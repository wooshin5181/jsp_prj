<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../common/jsp/external_file.jsp"/>
<style type="text/css">
 #container{ min-height: 600px; margin-top: 30px; margin-left: 20px}
</style>

</head>
<body>
<header data-bs-theme="dark">
<jsp:include page="../common/jsp/header.jsp"/>
</header>
<main>
<div id="container">
 <script src="https://unpkg.com/vue@3"></script> <!-- Vue 3 CDN -->
<div id="app">
    <h1>현재 Vue 버전: {{ vueVersion }}</h1>
  </div>

  <script>
    const app = Vue.createApp({
      data() {
        return {
          vueVersion: Vue.version
        };
      }
    });

    app.mount('#app');
  </script>
</div>
</main>
<footer class="text-body-secondary py-5">
<jsp:include page="../common/jsp/footer.jsp"/>
</footer>


</body>
</html>