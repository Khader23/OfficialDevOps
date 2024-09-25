# favourite_arts.py

import unicodedata

all_emoji = "🐞"
columns = ["#", "Emoji", "Name"]
table_head = f"<thread>\n<tr><th>{'</th><th>' .join(columns)}</th></tr>\n<thread>"

table_body = "\n<tbody>\n"
for i, emoji in enumerate(all_emoji, start=1):
    emoji_data = [f"{i}.", emoji, unicodedata.name(emoji).title()]
    table_body += f"<tr><td>{'</td><td>'.join(emoji_data)}</td></tr>\n"
table_body += "</tbody\n>"
    
print(f"<table>\n{table_head}{table_body}</table>")