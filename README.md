[![DOI](https://zenodo.org/badge/574682278.svg)](https://zenodo.org/badge/latestdoi/574682278)

# editioncrafter-data

Data and metadata for an edition created with EditionCrafter, a publication tool for digital critical editions under development by the [Making and Knowing Project](https://makingandknowing.org/) (M&K), [Performant Software Solutions](https://www.performantsoftware.com/), and a number of case-study collaborators. EditionCrafter, under development (2022-2024), is designed to be an open-source, customizable publishing tool that will allow users to deploy their own texts, data, and commentary as low-maintenance digital critical editions. It will enable the creation of static sites that rely on basic well-established technologies and workflows to address issues of longevity, maintenance, sustainability, and cost. For more about this work, see the NSF award announcement: [Crafting an Open Source Digital Publication Tool for the History of Science](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2218218&HistoricalAwards=false).

This project builds upon the publication of *[Secrets of Craft and Nature. A Digital Critical Edition of BnF Ms. Fr. 640](https://edition640.makingandknowing.org/#/)* by the Making and Knowing Project. The underlying software developed for *Secrets of Craft and Nature* will serve as the starting point for EditionCrafter. 

## editioncrafter-data repository

This repository is a template repository for users who plan to use EditionCrafter to create their editions. It contains the basic structure and organization of the files needed as input for the creation of the "folios view" element: the side-by-side viewing panes of the text, where users can choose between versions of the text including facsimile images, transcribed text, and translated text. All associated metadata is also to be housed in this repository.

<img src="https://raw.githubusercontent.com/cu-mkp/edition-webpages/master/images/howtouse-dualpane.png" alt="how-to-use-dualpane" width="500">

> Example of the "folios view," with side-by-side viewing panes of [fol. 4r](https://edition640.makingandknowing.org/#/folios/4r/f/4r/tl) of BnF Ms. Fr. 640 in *Secrets of Craft and Nature*.


## How-tos

Because this repository may be used by beginners, a number of helpful how-tos have been included:
- [Introduction to Git and Github](how-tos/intro-to-github.md)
- [Naming Protocols](how-tos/naming-protocols.md)
- [Setting up Github to Work Locally & General Workflow](github-local-setup-and-workflow.md)
- [Command Line Intro and Helpful Commands](how-tos/command-line.md)
- [Project Setup Overview](how-tos/project-setup.md) - reference for project developers

## Repository Structure

This repository has two main areas: 
1. [data/](data/) directory - all text files associated with an edition's source material (i.e., transcriptions and translations)
2. [metadata/](metadata/) directory - all metadata (data about data) associated with an edition

This is based upon the model used for the creation of *Secrets of Craft and Nature*. M&K's repository for BnF Ms. Fr. 640’s data is [cu-mkp/m-k-manuscript-data](https://github.com/cu-mkp/m-k-manuscript-data) and the “read me” file (scroll down below the file and directory listings on the repo's homepage) describes the repo's structure and how M&K has already worked with Github for *Secrets of Craft and Nature*.
