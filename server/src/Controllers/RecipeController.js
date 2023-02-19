const RecipeModel = require("../Models/RecipeModel");

const createRecipe = async (req, res) => {
  const { title, ingredients, instructions, description } = req.body;
  if(!title ||!ingredients ||!instructions ||!description) {
    res.status(400).send({ message: "Please fill all fields" });
  } else {
    const recipe = {
      title: title,
      ingredients: ingredients,
      instructions: instructions,
      description: description
    }
    const data = await RecipeModel.create(recipe);
    res.status(201).send({ message: "Recipe created successfully", data: data });
  }
}

const getAllRecipes = async (req, res) => {
  const data = await RecipeModel.find();
  return res.status(200).send({ message: "Recipes fetched successfully", data: data })
}



module.exports = { createRecipe, getAllRecipes }