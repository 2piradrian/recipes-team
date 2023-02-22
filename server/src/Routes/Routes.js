const express = require('express');
const { createRecipe, getAllRecipes, deleteRecipe, getOneRecipes } = require('../Controllers/RecipeController');
const router = express.Router();

router
  .post('/', createRecipe)
  .get('/', getAllRecipes)
  .get('/:id', getOneRecipes)
  .delete('/:id', deleteRecipe)



module.exports = router;