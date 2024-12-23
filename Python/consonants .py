def get_consonants(text):
    vowel = ['a','i','u','e','o']
    consonant = []
    try:
        for char in text:
            if char.lower() not in consonant and char.isalpha():
                consonant.append(char)
    finally:
        return consonant
