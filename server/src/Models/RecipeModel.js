const mongoose = require('mongoose')

const recipeSchema = new mongoose.Schema(
  {
    recipeId: {
      type: mongoose.Types.ObjectId
    },
    title: {
      type: String,
      required: true,
      trim: true,
    },
    ingredients: {
      type: Array,
      required: true,
      trim: true,
    },
    instructions: {
      type: Array,
      required: true,
      trim: true
    },
    description: {
      type: String,
      required: true,
      trim: true
    },
  },
  {
    versionKey: false,
    timestamps: true
  }
)

recipeSchema.index({title: 1}, {unique: true})

module.exports = mongoose.model('recipe', recipeSchema)
