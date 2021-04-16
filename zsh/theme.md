# Zsh Theme

## require
```shell
autoload -U colors && colors
```

## set text color

| command | description |
| - | - |
| $fg[&lt;color&gt;] | font color is &lt;color&gt; |
| $fg_no_bold[&lt;color&gt;] |  font color is &lt;color&gt; and font style is no bold |
| $fg_bold[&lt;color&gt;] | font color is &lt;color&gt; and font style is bold |
| %K{&lt;color&gt;}[&lt;text&gt;]%k | &lt;text&gt; background color is &lt;color&gt; |
| $reset_color | default color |

## color
| color | value |
| - | - |
| black | black,0 |
| red | red,1 |
| green | green,2 |
| yellow | yellow,3 |
| blue | blue,4 |
| magenta | magenta,5 |
| cyan | cyan,6 |
| white | white,7 |