const express = require('express');
const { createRecipe, getAllRecipes } = require('../Controllers/RecipeController');
const router = express.Router();

router
  .post('/', createRecipe)
  .get('/', getAllRecipes)



module.exports = router;