// const initialJson = [
//   {
//     "id": "root",
//     "type": "column",
//     "children": ["text1", "btn1", "btn2", "btn3"],
//   },
//   {"id": "text1", "type": "text", "value": "Where do you want to go?"},
//   {
//     "id": "btn1",
//     "type": "button",
//     "text": "Show Paris 🇫🇷",
//     "action": {
//       "event": {"name": "showParis"},
//     },
//   },
//   {
//     "id": "btn2",
//     "type": "button",
//     "text": "Tokyo 🇯🇵",
//     "action": {
//       "event": {"name": "showTokyo"},
//     },
//   },
//   {
//     "id": "btn3",
//     "type": "button",
//     "text": "New York 🇺🇸",
//     "action": {
//       "event": {"name": "showNY"},
//     },
//   },
// ];
const initialJson = [
  {
    "id": "root",
    "type": "column",
    "children": ["text1", "card1", "card2", "card3"],
  },
  {"id": "text1", "type": "text", "value": "Where do you want to go?"},

  {
    "id": "card1",
    "type": "card",
    "title": "Paris 🇫🇷",
    "image": "https://picsum.photos/200?1",
    "action": {
      "event": {"name": "showParis"},
    },
  },
  {
    "id": "card2",
    "type": "card",
    "title": "Tokyo 🇯🇵",
    "image": "https://picsum.photos/200?2",
    "action": {
      "event": {"name": "showTokyo"},
    },
  },
  {
    "id": "card3",
    "type": "card",
    "title": "New York 🇺🇸",
    "image": "https://picsum.photos/200?3",
    "action": {
      "event": {"name": "showNY"},
    },
  },
];
const parisJson = [
  {
    "id": "root",
    "type": "column",
    "children": ["text2"],
  },
  {"id": "text2", "type": "text", "value": "Welcome to Paris 🇫🇷"},
];

const tokyoJson = [
  {
    "id": "root",
    "type": "column",
    "children": ["text3"],
  },
  {"id": "text3", "type": "text", "value": "Welcome to Tokyo 🇯🇵"},
];

const nyJson = [
  {
    "id": "root",
    "type": "column",
    "children": ["text4"],
  },
  {"id": "text4", "type": "text", "value": "Welcome to New York 🇺🇸"},
];
