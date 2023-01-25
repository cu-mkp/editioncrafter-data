[![DOI](https://zenodo.org/badge/574682278.svg)](https://zenodo.org/badge/latestdoi/574682278)

# editioncrafter-data

Data and metadata for an edition created with EditionCrafter, a publication tool for digital critical editions under development by the [Making and Knowing Project](https://makingandknowing.org/), [Performant Software Solutions](https://www.performantsoftware.com/), and a number of case-study collaborators. EditionCrafter, under development (2022-2024), is designed to be an open-source, customizable publishing tool that will allow users to deploy their own texts, data, and commentary as low-maintenance digital critical editions. It will enable the creation of static sites that rely on basic well-established technologies and workflows to address issues of longevity, maintenance, sustainability, and cost. For more about this work, see the NSF award announcement: [Crafting an Open Source Digital Publication Tool for the History of Science](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2218218&HistoricalAwards=false).

This project builds upon the publication of *[Secrets of Craft and Nature. A Digital Critical Edition of BnF Ms. Fr. 640](https://edition640.makingandknowing.org/#/)* by the Making and Knowing Project. The underlying software developed for *Secrets of Craft and Nature* will serve as the starting point for EditionCrafter. 

## editioncrafter-data repository

This repository is a template repository for users who plan to use EditionCrafter to create their editions. It contains the basic structure and organization of the files needed as input for the creation of the "folios view" element: the side-by-side viewing panes of the text, where users can choose between versions of the text including facsimile images, transcribed text, and translated text. All associated metadata is also to be housed in this repository.

## How-tos

Because this repository may be used by beginners, a number of helpful how-tos have been included:
- [Introduction to Git and Github](how-tos/intro-to-github.md)
- [Github installation and working in the command line]()
- [Github Workflow]()
- [Command Line Intro and Helpful Commands](how-tos/command-line.md)
- [Naming Protocols](how-tos/naming-protocols.md)
- [Project Setup Overview](how-tos/project-setup.md) - reference for project developers

## Repository Structure

This repository has two main areas: 
1. [data/](data/) directory - all text files associated with an edition's source material (i.e., transcriptions and translations)
2. [metadata/](metadata/) directory - all metadata (data about data) associated with an edition

TO ADD:
notes about issue tracker
link back to M&K manuscript-data repo
