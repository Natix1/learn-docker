from rich.console import Console
from rich.text import Text

console = Console()

rainbow_text = Text.from_markup("[rainbow]Hello from rainbowdockerized python!!!![/rainbow]")

console.print(rainbow_text)
