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

<TypingAnimated text="<reverse>Hi There!</reverse>I am Srinivas" delay={100}/>
```

Component params,
1. text - String that you want to render with typing animation.
2. delay - delay in milli seconds between each letter typing animation.

**Note** - Any text wrapped inside ```<reverse></reverse>``` will be typed and then removed. Try the code snippet given above to see that effect.

⌨️ with ❤️ by [Srinivas] 😊