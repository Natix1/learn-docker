from random import randint
from rich import print
from rich.console import Console
from rich.highlighter import Highlighter

console = Console(force_terminal=True)

class RainbowHighlighter(Highlighter):
    def highlight(self, text):
        for index in range(len(text)):
            text.stylize(f"color({randint(16, 255)})", index, index + 1)

rainbow = RainbowHighlighter()

console.print(rainbow("Hello from rainbowdockerized python!"))