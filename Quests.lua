local quests = {}

--WARNING 'countmax' can not exceed 255

quests.TutorialI = {
	name = "TutorialI",
	display = "Tutorial Quest",
	info = "Hello & welcome to Retro City, to start off try and harvest the bushes behind you.",
	tasktype = "Harvest",
	countmin = 0,
	countmax = 2,
	reward = {
		[1] = {
			rtype = "Money",
			data = 5
		},
		[2] = {
			rtype = "Quest",
			data = "TutorialII" --Start the second part of the tutorial
		}
	},
	requirement = {}
}

quests.TutorialII = {
	name = "TutorialII",
	display = "Tutorial Quest",
	info = "Great Job, I gave you $5 for that. Now you have to enter the yellow supermarket and sell your fruits on the right.",
	tasktype = "SellFruit", --When fruits are sold at the fruit merchant
	countmin = 0,
	countmax = 2,
	reward = {
		[1] = {
			rtype = "Money",
			data = 10
		}
		--[[[2] = {
			rtype = "Quest",
			data = "TutorialII" --Start the second part of the tutorial
		}]]--
	},
	requirement = {
		[1] = {
			rtype = "Quest",
			data = "TutorialI"
		}
	}
}

quests.FishingI = {
	name = "FishingI",
	display = "Fishing Quest I",
	info = "To prove that you can fish, you need to collect {min}/{max} of any kind of fish.",
	tasktype = "Fish",
	countmin = 0,
	countmax = 3,
	reward = {
		[1] = {
			rtype = "Money",
			data = 120
		}
	},
	requirement = {
		[1] = {
			rtype = "Item",
			data = "Fishing Rod"
		}
	}
}

quests.FishingII = {
	name = "FishingII",
	display = "Fishing Quest II",
	info = "Last time, you need to collect {min}/{max} of any kind of fish.",
	tasktype = "Fish",
	countmin = 0,
	countmax = 18,
	reward = {
		[1] = {
			rtype = "Money",
			data = 250
		}
	},
	requirement = {
		[1] = {
			rtype = "Item",
			data = "Fishing Rod"
		},
		[2] = {
			rtype = "Quest",
			data = "FishingI"
		}
	}
}

quests.FishingIII = {
	name = "FishingIII",
	display = "Fishing Quest III",
	info = "Get Tony to apply gold to your fishing rod. {min}/{max}",
	tasktype = "Fish",
	countmin = 0,
	countmax = 1,
	reward = {
		[1] = {
			rtype = "Money",
			data = 85
		}
	},
	requirement = {
		[1] = {
			rtype = "Item",
			data = "Fishing Rod"
		},
		[2] = {
			rtype = "Quest",
			data = "FishingII"
		}
	}
}

return quests
