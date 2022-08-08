<script>
  import { onMount } from "svelte";
  export let texts = [];
  export let delay = 60;
  export let word_complete_delay = 1000;
  export let num_loops = 1;
  export let repeat_n_words = 0;
  export let blink_time = 1000;
  export let blinker_iter_count = "infinite";

  let state = "";

  const createRepeatArray = () => {
    texts = texts.slice(0, repeat_n_words);
    texts[texts.length - 1].direction = "type";
    console.log(texts);
  };

  const animateType = () => {
    let typing_delay = 100;

    for (let loop = 0; loop < num_loops; loop++) {
      if (num_loops != 1 && repeat_n_words != 0 && loop === num_loops - 1) {
        createRepeatArray();
      }

      texts.forEach(({ direction, word }) => {
        for (let i = 0; i < word.length; i++) {
          setTimeout(() => {
            state = state + word[i];
          }, typing_delay);
          typing_delay = typing_delay + delay;
        }
        if (direction === "type&delete") {
          for (let i = 0; i < word.length; i++) {
            if (i === 0) {
              setTimeout(() => {
                state = state.substr(0, state.length - 1);
              }, typing_delay + word_complete_delay);
              typing_delay = typing_delay + delay + word_complete_delay;
            } else {
              setTimeout(() => {
                state = state.substr(0, state.length - 1);
              }, typing_delay);
              typing_delay = typing_delay + delay;
            }
          }
        }
      });
    }
  };

  onMount(() => {
    animateType();
  });
</script>

<span class="typing-animated"
  >{state}<span
    class="blinker"
    style="animation-duration: {blink_time}ms; animation-iteration-count: {blinker_iter_count}"
    >|</span
  ></span
>

<style>
  .blinker {
    animation: blinking;
    opacity: 0;
  }
  @keyframes blinking {
    0% {
      opacity: 0;
    }
    49% {
      opacity: 0;
    }
    50% {
      opacity: 1;
    }
    100% {
      opacity: 1;
    }
  }
</style>
