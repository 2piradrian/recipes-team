const RecipeModel = require("../Models/RecipeModel");
const mongoose = require("mongoose");

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
    RecipeModel.create(recipe, (err, data) => {
      if(err) {
        res.status(500).send({ message: err });
        return
      }
      res.status(201).send({ message: "Recipe created successfully", data: data });
      return
    });
  }
}

const getAllRecipes = async (req, res) => {
  const data = await RecipeModel.find();
  return res.status(200).send({ message: "Recipes fetched successfully", data: data })
}

const getOneRecipes = async (req, res) => {
  const { id } = req.params;
  if(!mongoose.Types.ObjectId.isValid(id)) {  
    res.status(400).send({ message: "Please provide a valid id" });
  }
  RecipeModel.findById(id, (err, data) => {
    if(err) {
      res.status(500).send({ message: "Error while fetching recipe" });
      return
    }
    if(!data) {
      res.status(404).send({ message: "Recipe not found" });
    }
    res.status(200).send({ message: "Recipe fetched successfully"});
  })
}

const deleteRecipe = async (req, res) => {
  const { id } = req.params;
  if(!mongoose.Types.ObjectId.isValid(id)) {
    res.status(400).send({ message: "Please provide a valid id" });
  }
  RecipeModel.findByIdAndDelete(id, (err, data) => {
    if(err) {
      res.status(500).send({ message: err.message });
      return
    }
    if(!data) {
      res.status(404).send({ message: "Recipe not found" });
      return
    }
    res.status(200).send({ message: "Recipe deleted successfully", data: data});
  })
}



module.exports = { createRecipe, getAllRecipes, deleteRecipe, getOneRecipes };