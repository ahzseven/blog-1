<template>
<div id="app" class="docs scotchified">
    <nav class="main mb-6">
        <div class="container-lg d-flex flex-justify-between pl-3">
            <div>
                <router-link :to="'/list'" class="brand">
                    <span class="h1"> 青枫浦 Lite</span>
                </router-link>
            </div>
            <div>
                <router-link :to="'/about'" class="other" style="margin-right: 10px">
                    <span class="h5">关于我们</span>
                </router-link>
                <router-link :to="'/about'" class="other" style="margin-right: 10px">
                    <span class="h5">Online Judge</span>
                </router-link>
                <router-link :to="'/about'" class="other" style="margin-right: 10px">
                    <span class="h5">Online Judge</span>
                </router-link>
            </div>
        </div>
    </nav>
    <section id="top">
        <router-view>
        </router-view>
    </section>
    <footer class="main container-lg">
        <p>This is A light style blog base github api, open source on <a href="https://github.com/rozbo/blog">Github</a> by
            <a href="https://github.com/rozbo">rozbo</a></p>
    </footer>
</div>
</template>
<script>
import "primer-base/index.scss";
import "primer-layout/index.scss";
import "primer-utilities/index.scss";
import "../style/nav.scss";
import "../style/footer.scss";
export default {
    name: 'app',
    data: function() {
        return {
            subtitle: '青枫浦 Lite',
        }
    }
}
</script>
