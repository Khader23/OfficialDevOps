# -*- coding: utf-8 -*-
import unicodedata

all_emoji = "🐞" # Example of a non-ASCII character (the emoji)
columns = ["#", "Emoji", "Name"]


print ("About to create table head")
table_head = f"<thead>\n<tr><th>{'</th><th>'.join(columns)}</th></tr>\n</thead>"

table_body = "\n<tbody>\n"
for i, emoji in enumerate(all_emoji, start=1):
    emoji_name = unicodedata.name(emoji)
    emoji_data = [f"{i}.", emoji, unicodedata.name(emoji).title()]
    table_body += f"<tr><td>{'</td><td>'.join(emoji_data)}</td></tr>\n"
table_body += "</tbody>"

print(f"<table>\n{table_head}{table_body}</table>")