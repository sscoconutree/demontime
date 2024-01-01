def ascii_to_unicode(input_str):
    unicode_values = [ord(char) + 10 for char in input_str]
    unicode_str = ", ".join(str(value) for value in unicode_values)
    return unicode_str

# Example usage:
ascii_input = input("Enter ASCII characters: ")
unicode_output = ascii_to_unicode(ascii_input)
print(f"Unicode representation +10: {unicode_output}")