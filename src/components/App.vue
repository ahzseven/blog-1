<template>
<div id="app" class="docs scotchified">
    <nav class="main mb-6">
        <div class="container-lg d-flex flex-justify-between pl-3">
            <router-link :to="'/list'" class="brand">
            <img :src="brand">
                <span class="h1">IT创新</span>
            </router-link>
        </div>
    </nav>
    <section id="top">
        <router-view>
        </router-view>
    </section>
    <footer class="main container-lg">
        <p>This is A light style blog based on Vue with Github api</p>
            <p>Edit address <a href="https://github.com/7326/blog/issues">issues</a></p>
    </footer>
</div>
</template>
<script>
import "primer-base/index.scss";
import "primer-layout/index.scss";
import "primer-utilities/index.scss";
import "../style/main.scss";
import "../style/nav.scss";
import "../style/footer.scss";
import * as brand from "../assets/svg/brand.svg";
export default {
  name: "app",
  data: function() {
    return {
      subtitle: "IT创新",
      brand: brand
    };
  }
};
</script>
