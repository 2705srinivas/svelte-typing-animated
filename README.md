# svelte-typing-animated

Svelte component to animate typing of a text

### Installation 🔧

```bash
yarn add svelte-typing-animated
```

or

```bash
npm install svelte-typing-animated
```

### Usage ⌨️

```javascript
<script>
	import TypingAnimated from 'typing-animated';
</script>

<TypingAnimated text=[{word: "Hi There", direction:'type&delete'}, {word: 'I am Srinivas', direction: 'type'}] delay={100}/>
```

Component params,

1. texts - Array of Objects that you want to render with typing animation.
2. delay - delay in milli seconds between each letter typing animation.
3. word_complete_delay - delay in milli seconds after each word is typed
4. num_loops - Number of loops for texts
5. repeat_n_words - On the final loops, repeat the first n elements in texts
6. blink time - time in milli seconds between each blink of the blinker
7. blinker_iter_count - Number of times that the blinker blinks

**Note** - Any text wrapped inside `<reverse></reverse>` will be typed and then removed. Try the code snippet given above to see that effect.

⌨️ with ❤️ by [Srinivas] 😊
