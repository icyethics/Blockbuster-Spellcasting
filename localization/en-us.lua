return {
    descriptions = {
        Back = {
            b_bbspells_spellslinger = {
                name = "Spellslinger's Deck",
                text = {
                    "First scoring card",
                    "casts a spell based",
                    "on the first three cards",
                    "in hand when a hand is played"
                }
            },
        },
        Spell = {
            spell_None_None = {
                name = "No Spell",
                text = {
                    "No spell will",
                    "be cast based",
                    "on these cards"
                }
            },
            spell_Wild_Wild = {
                name = "Wild Magic",
                text = {
                    "Cast a random spell",
                    "of Spell Level {C:legendary}#1#{}"
                }
            },
            spell_Wild_Hearts = {
                name = "Wild Hearts",
                text = {
                    "Cast a random",
                    "{C:hearts}Hearts{} spell",
                    "of Spell Level {C:legendary}#1#{}"
                }
            },
            spell_Wild_Diamonds = {
                name = "Wild Diamonds",
                text = {
                    "Cast a random",
                    "{C:diamonds}Diamonds{} spell",
                    "of Spell Level {C:legendary}#1#{}"
                }
            },
            spell_Wild_Clubs = {
                name = "Wild Clubs",
                text = {
                    "Cast a random",
                    "{C:clubs}Clubs{} spell",
                    "of Spell Level {C:legendary}#1#{}"
                }
            },
            spell_Wild_Spades = {
                name = "Wild Spades",
                text = {
                    "Cast a random",
                    "{C:spades}Spades{} spell",
                    "of Spell Level {C:legendary}#1#{}"
                }
            },

            spell_Hearts_Hearts = {
                name = "Double Hearts",
                text = {
                    "Gives {C:mult}+#1#{} Mult"
                }
            },
            spell_Hearts_Diamonds = {
                name = "Diamond Heart",
                text = {
                    "Gives {X:mult,C:white}X#1#{}"
                }
            },
            spell_Hearts_Clubs = {
                name = "Hearty Club",
                text = {
                    "Gives {C:mult}+#1#{} Mult and",
                    "{C:chips}+#2#{} Chips"
                }
            },
            spell_Hearts_Spades = {
                name = "Spade Heart",
                text = {
                    "Upgrade a random card",
                    "in hand with {C:mult}+#1#{} Mult"
                }
            },
            spell_Diamonds_Diamonds = {
                name = "Double Diamonds",
                text = {
                    "Earn {C:money}$#1#"
                }
            },
            spell_Diamonds_Clubs = {
                name = "Diamond Club",
                text = {
                    "Gives {X:chips,C:white}X#1#{}"
                }
            },
            spell_Diamonds_Spades = {
                name = "Diamond Spade",
                text = {
                    "Create a {C:attention}#1#{}",
                    "{C:inactive}(Must have room)"
                }
            },
            spell_Clubs_Spades = {
                name = "Club Spade",
                text = {
                    "Upgrade a random card",
                    "in hand with {C:chips}+#1#{} Chips"
                }
            },
            spell_Clubs_Clubs = {
                name = "Double Clubs",
                text = {
                    "Gives {C:chips}+#1#{} Chips"
                }
            },
            spell_Spades_Spades = {
                name = "Double Spades",
                text = {
                    "Lower the {C:attention}Blind",
                    "by {C:attention}#1#%"
                }
            },
            spell_EyeOfAgamoto = {
                name = "The Eye of Agamotto",
                text = {
                    "Gain {C:chips}2 Hands{}"
                }
            },
        },
    },
    misc = {
        dictionary = {
            bb_counter_tooltip = {
                "Jokers and playing cards can have",
                "only one type of counter",
                "Counters decrease by 1 when they",
                "are triggered"
            },
            bbcount_counter = "Counter",
            bb_paralysis = "Paralyzed!",
            k_spell = "Spell",

            -- Spellcasting Text
            k_bb_spellbook = "Spellbook",
            k_bb_spelltext = {
                "Spells are constructed of three ingredients: a primary suit, a secondary suit, and a power rank.",
                "A spell is Cast when a spellcaster card or joker is triggered"
            },
            k_bb_spell_power = "Spell Power",
            k_bb_power_level = "Power Level ",
            k_bb_spell_power_text = {
                "Spell Power is determined",
                "based on the rank of the",
                "third spell component",
            },
        },
    }
}