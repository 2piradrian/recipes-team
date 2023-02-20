const mongoose = require('mongoose')

const recipeSchema = new mongoose.Schema(
  {
    recipeId: {
      type: mongoose.Types.ObjectId
    },
    title: {
      type: String,
      required: true
    },
    ingredients: {
      type: String,
      required: true
    },
    instructions: {
      type: String,
      required: true
    },
    description: {
      type: String,
      required: true
    },
  },
  {
    versionKey: false,
    timestamps: true
  }
)

module.exports = mongoose.model('recipe', recipeSchema)
