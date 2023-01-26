<script>
    import {onMount, onDestroy} from 'svelte'
  import Theme from './style/Theme.svelte';
  import { fetchNui } from './utils/fetchNui';
  import { debugData } from './utils/debugData';

  let visible = false
  let CONFIG = {}
  // dev section
  debugData([{action: 'SHOW',data: true}],0)
  debugData([{action: 'PLAYSOUND',data: true}],1000)

  let innerWidth = window.innerWidth
  $:{
    document.body.style.zoom = ((innerWidth / 1920) * 100) / 100
  }

  function playSound(){
    let audio = new Audio('./img/stomachfx.mp3')
    audio.volume = 0.5
    audio.play()
  }

  onDestroy(() =>  window.removeEventListener('message', window.listener));
  onMount(() => {
    window.listener = window.addEventListener('message', (e) => {
      const MSG = e.data;
      switch (MSG.action) {
        case 'SHOW':
          visible = MSG.data
          if (window.invokeNative){
            if (Object.keys(CONFIG).length === 0 && CONFIG.constructor === Object){
          }
          }
        break
        case 'PLAYSOUND':
          if (visible) {
            playSound()
          }
        break
        case 'SET_CONFIG':
          CONFIG = MSG.data
        break
      }
    });
  });
</script>

<Theme />
<svelte:window bind:innerWidth/>

<main class:hidden={!visible} class:dev_bg={!window.invokeNative} class="absolute w-full h-full overflow-hidden" >
  <div class="relative flex items-center justify-center w-full h-full" >
    <div class="ml-[200px] mt-[-200px] text-6xl font-bold text-black relative">
      <img class="absolute animate-ping opacity-50 w-[96px] h-[96px]" src="./img/hungryicon.png" alt="">
      <img class="w-[96px] h-[96px]" src="./img/hungryicon.png" alt="">
    </div>
  </div>
</main>

<style lang="postcss">
  .dev_bg {
    background-image: url(../img/bg-fivem-dev.png);
    background-repeat: no-repeat;
    background-size: cover;
  }
</style>
