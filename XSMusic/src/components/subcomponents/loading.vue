<template>
    <div :style="loading" class="loading">
        <span>没有更多了 ヾ(✿ﾟ▽ﾟ)ノ</span>
    </div>
</template>
<script>
export default {
    props:["loading"]
}
</script>

<style scoped>
    .loading{
        width: 100vw;
        height: 30px;
        margin-bottom:0px;
        font-size: 13px;
        text-align: center;
        line-height: 20px;
        color:#666;
    }
</style>

