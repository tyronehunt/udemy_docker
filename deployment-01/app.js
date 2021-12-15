const path = require('path');

const express = require('express');

const app = express();

app.use(express.static('public'));

app.get('/', (req, res) => {
  const filePath = path.join(__dirname, 'views', 'welcome.html');
  res.sendFile(filePath);
});

const port = process.env.PORT || 80; 
app.listen(port, () => {
  console.log(`helloworld: listening on port ${port}`);
});
