#import('../../../dart/dart-sdk/pkg/unittest/unittest.dart');
#import('../lib/sprintf.dart');

var _expected = {
  '': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' ': {
    '%': [throws, throws, throws, throws, throws],
    'E': [' 123.0', '-123.0', ' 0'],
    'F': [' 123.0', '-123.0', ' 0'],
    'G': [' 123.0', '-123.0', ' 0'],
    'X': [' 7B', '-7B', ' 0'],
    'd': [' 123', '-123', ' 0'],
    'e': [' 123.0', '-123.0', ' 0'],
    'f': [' 123.0', '-123.0', ' 0'],
    'g': [' 123.0', '-123.0', ' 0'],
    'o': [' 173', '-173', ' 0'],
    's': ['', 'Hello World'],
    'x': [' 7b', '-7b', ' 0']},
  ' #': {
    '%': [throws, throws, throws, throws, throws],
    'E': [' 123.0', '-123.0', ' 0'],
    'F': [' 123.0', '-123.0', ' 0'],
    'G': [' 123.0', '-123.0', ' 0'],
    'X': [' 0X7B', '-0X7B', ' 0X0'],
    'd': [' 123', '-123', ' 0'],
    'e': [' 123.0', '-123.0', ' 0'],
    'f': [' 123.0', '-123.0', ' 0'],
    'g': [' 123.0', '-123.0', ' 0'],
    'o': [' 0173', '-0173', ' 0'],
    's': ['', 'Hello World'],
    'x': [' 0x7b', '-0x7b', ' 0x0']},
  ' #0': {
    '%': [throws, throws, throws, throws, throws],
    'E': [' 123.0', '-123.0', ' 0'],
    'F': [' 123.0', '-123.0', ' 0'],
    'G': [' 123.0', '-123.0', ' 0'],
    'X': [' 0X7B', '-0X7B', ' 0X0'],
    'd': [' 123', '-123', ' 0'],
    'e': [' 123.0', '-123.0', ' 0'],
    'f': [' 123.0', '-123.0', ' 0'],
    'g': [' 123.0', '-123.0', ' 0'],
    'o': [' 0173', '-0173', ' 0'],
    's': ['', 'Hello World'],
    'x': [' 0x7b', '-0x7b', ' 0x0']},
  ' #06': {
    '%': [throws, throws, throws, throws, throws],
    'E': [' 123.0', '-123.0', '0000.0'],
    'F': [' 123.0', '-123.0', '0000.0'],
    'G': [' 123.0', '-123.0', '0000.0'],
    'X': [' 0X07B', '-0X07B', '0X0000'],
    'd': [' 00123', '-00123', ' 00000'],
    'e': [' 123.0', '-123.0', '0000.0'],
    'f': [' 123.0', '-123.0', '0000.0'],
    'g': [' 123.0', '-123.0', '0000.0'],
    'o': [' 00173', '-00173', '000000'],
    's': ['      ', 'Hello World'],
    'x': [' 0x07b', '-0x07b', '0x0000']},
  ' #6': {
    '%': [throws, throws, throws, throws, throws],
    'E': [' 123.0', '-123.0', ' 0'],
    'F': [' 123.0', '-123.0', ' 0'],
    'G': [' 123.0', '-123.0', ' 0'],
    'X': [' 7B', '-7B', ' 0'],
    'd': [' 123', '-123', ' 0'],
    'e': [' 123.0', '-123.0', ' 0'],
    'f': [' 123.0', '-123.0', ' 0'],
    'g': [' 123.0', '-123.0', ' 0'],
    'o': [' 173', '-173', ' 0'],
    's': ['      ', 'Hello World'],
    'x': [' 7b', '-7b', ' 0']},
  ' +': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['+123.0', '-123.0', ' 0'],
    'F': ['+123.0', '-123.0', ' 0'],
    'G': ['+123.0', '-123.0', ' 0'],
    'X': ['+7B', '-7B', ' 0'],
    'd': ['+123', '-123', ' 0'],
    'e': ['+123.0', '-123.0', ' 0'],
    'f': ['+123.0', '-123.0', ' 0'],
    'g': ['+123.0', '-123.0', ' 0'],
    'o': ['+173', '-173', ' 0'],
    's': ['', 'Hello World'],
    'x': ['+7b', '-7b', ' 0']},
  ' +#': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' +#0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' +#06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' +#6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' +0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' +06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' +6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -#': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -#0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -#06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -#6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -+': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -+#': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -+#0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -+#6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -+0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -+06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -+6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' -6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' 0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' 06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  ' 6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '#': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '#0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '#06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '#6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+#': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+#0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+#06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+#6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '+6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-#': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-#0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-#06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-#6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+#': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+#0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+#06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+#6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-+6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '-6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '0': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '06': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']},
  '6': {
    '%': [throws, throws, throws, throws, throws],
    'E': ['123.0', '-123.0', '0'],
    'F': ['123.0', '-123.0', '0'],
    'G': ['123.0', '-123.0', '0'],
    'X': ['7B', '-7B', '0'],
    'd': ['123', '-123', '0'],
    'e': ['123.0', '-123.0', '0'],
    'f': ['123.0', '-123.0', '0'],
    'g': ['123.0', '-123.0', '0'],
    'o': ['173', '-173', '0'],
    's': ['', 'Hello World'],
    'x': ['7b', '-7b', '0']
   }
};

var _test_suite_input = {
  '%': [1,-1,'a','asdf', 123],
  'E': [123.0, -123.0, 0],
  'F': [123.0, -123.0, 0],
  'G': [123.0, -123.0, 0],
  'X': [123,-123, 0],
  'd': [123, -123, 0],
  'e': [123.0, -123.0, 0],
  'f': [123.0, -123.0, 0],
  'g': [123.0, -123.0, 0],
  'o': [123, -123, 0],
  's': ['', 'Hello World'],
  'x': [123, -123, 0]
};

main() {
  _expected.forEach((prefix, type_map) {
    group('%${prefix} Tests', 
        () {
          type_map.forEach((type, expected_array) {
            var fmt = "%${prefix}${type}";
            var input_array = _test_suite_input[type];
            assert(input_array.length == expected_array.length);
            for (var i = 0; i < input_array.length - 1; i++) {
              var input = input_array[i];
              var expected = expected_array[i];
              
              test("\"${fmt}\".format(${input}) == \"${expected}\"",
                () => expect(sprintf(fmt, [input]), expected)    
              );
            }
          
          }); // type_map
        }
    );// group
  }); // _expected
  
}