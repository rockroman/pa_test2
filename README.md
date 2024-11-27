## Project Overview
This project showcases how predictive analytics can be applied in an agricultural setting. 
For this project, a fictitious user story was created whereby Farmy Foods has a powdery mildew issue with their the cherry plantation crop- one of the finest products in their portfolio. The company is concerned about loss in revenue through supplying the market with a poor quality product and also realises that the monitoring of crops by employees for powdery mildew is not scalable.

## Dataset Content

The dataset is sourced from [Kaggle](https://www.kaggle.com/codeinstitute/cherry-leaves). It contains 4,208 images of cherry leaves taken from the client's crop fields. The images show healthy cherry leaves and cherry leaves that have powdery mildew, a fungal disease that affects many plant species. 

## Business Requirements

The cherry plantation crop from Farmy & Foods is facing a challenge where their cherry plantations have been presenting powdery mildew. Currently, the process is manual verification if a given cherry tree contains powdery mildew. An employee spends around 30 minutes in each tree, taking a few samples of tree leaves and verifying visually if the leaf tree is healthy or has powdery mildew. If there is powdery mildew, the employee applies a specific compound to kill the fungus. The time spent applying this compound is 1 minute. The company has thousands of cherry trees located on multiple farms across the country. As a result, this manual process is not scalable due to the time spent in the manual process inspection.

To save time in this process, the IT team suggested an ML system that detects instantly, using a leaf tree image, if it is healthy or has powdery mildew. A similar manual process is in place for other crops for detecting pests, and if this initiative is successful, there is a realistic chance to replicate this project for all other crops. The dataset is a collection of cherry leaf images provided by Farmy & Foods, taken from their crops.

- 1 - The client is interested in conducting a study to visually differentiate a healthy cherry leaf from one with powdery mildew.
- 2 - The client is interested in predicting if a cherry leaf is healthy or contains powdery mildew.
- 3 - The client requires a dashboard as opposed to an API endpoint.

# Outcomes Required
The client is looking for a successful outcome this would be:
	- A study showing how to visually differentiate a cherry leaf that is healthy from one that contains powdery mildew.
    - The capability to predict if a cherry leaf is healthy or contains powdery mildew.
	- We agreed with the client a degree of 97% accuracy.
# Wider benefits of the project
	- Supplying the market with high quality cherries.
	- The client will save money on the staff time to check for powdery mildew identification and be able to effectively target compromised plants with specific compounds where necessary.

## Hypothesis and how to validate?
We suspect powdery mildew on the leaves of cherry trees have clear signs of infection, typically a leaf that may be shrivelled with white discolouration and/or spotting.
	- An average image study can help to investigate it.

Dataset Preparation:

Compile a labeled dataset of cherry tree leaves, categorized into "Healthy" and "Infected" classes.
Ensure the dataset is diverse, representing various lighting conditions, angles, and leaf conditions. If the dataset is too small create extra images.

Model Training and Testing:
Train a neural network model on the dataset using a supervised learning approach.
Split the dataset into training, validation, and test sets (e.g., 70%, 20%, 10%).

Evaluation Metrics:
Use precision, recall, F1 score, and accuracy to measure the model's performance on the test set.
Apply a confusion matrix to analyze false positives and false negatives.

Visual Inspection:
Validate predictions by visually inspecting misclassified images to identify patterns or potential dataset biases.

Cross-Validation:
Perform k-fold cross-validation to ensure robustness and generalizability of the model.

Hypothesis Support:
If the model achieves high accuracy (e.g., >97%) in distinguishing healthy and infected leaves, the hypothesis is supported.
If accuracy is low, investigate feature extraction, dataset quality, or other confounding variables.

## The rationale to map the business requirements to the Data Visualisations and ML tasks

### Business Requirement 1 ### Data Visualization
	- Analyze and display the average images and variability (mean and standard deviation) for each class (healthy or powdery mildew)
	- Display the differences between average healthy and average powdery mildew infected cherry leaf.
    - Create an image montage for each, 'healthy' and 'unhealthy' leaves.

### Business Requirement 2 ### Classification
	- Deliver an ML system that is capable of predicting whether a cherry leaf is healthy or contains powdery mildew to a 97% accuracy rate.
	- The case for a Neural Network to map the relationships between the features and the labels.
	- We want to build a binary classifier and generate reports.
	- Perform k-fold cross-validation to ensure robustness and generalizability of the model.


## ML Business Case

* We want a ML model to predict if a leaf is infected with powdery mildew or not, based on historical image data. It is a supervised model, a 2-class, single-label, classification model. The data would align with a binary classifier, indicating whether a particular cherry leaf is healthy or contains powdery mildew.
- The model input is a cherry leaf image and the model output is a prediction of whether the cherry leaf is healthy or contains powdery mildew.

Heuristics: 
The current way to diagnose requires experienced staff and lengthly inspection times across orchards to distinguish healthy or infected leaves. This process is not scalable.

* The training data to fit the model came from Kaggle. This dataset contains 4,208 images. We have extracted all images from this dataset and added to this with synthetic data.

## Dashboard Design (Streamlit App User Interface)

### Page 1: Project Summary
* Quick project summary
	* General Information
		* What is Powdery mildew and how does it present itself in cherry tree leaves.
		* Usually identification of infected leaves is a manual process conducted by the employee of the orchard.
		* Stats on numbers of trees infected.
	* Project Dataset
		* The available dataset contains 4k images of leaves.
	* Link to addition information
	* Business requirements
		*  The client is interested in ...
		*  The client is interested to know...

### Page 2: Leaf Visualiser
* It will answer business requirement 1
	* Checkbox 1 - Difference between average and variability image
	* Checkbox 2 - Differences between average mildew and average healthy leaves
	* Checkbox 3 - Image Montage

### Page 3: Mildew Detector
* Business requirement 2 information - "The client is interested to tell whether a leaf is infected with powdery mildew or not.
* Link to download a set of mildew infected and healthy leaf images for live prediction.
* User Interface with a file uploader widget. The user should upload multiple leaf images. It will display the image and a prediction statement, indicating if the leaf is infected or not with mildew and the probability associated with this statement. 
* Table with image name and prediction results.
* Download button to download table.

### Page 4: Project Hypothesis and Validation
* Bloack for each project hypothesis, describe the conclusion and how you validated.

### Page 5: ML Performance Metrics
* Label Frequencies for Train, Validation and Test Sets
* Model History - Accuracy and Losses
* Model evaluation result

## Unfixed Bugs

- You will need to mention unfixed bugs and why they were unfixed. This section should include shortcomings of the frameworks or technologies used. Although time can be a significant variable for consideration, paucity of time and difficulty understanding implementation is not a valid reason to leave bugs unfixed.

## Deployment

### Heroku

- The App live link is: `https://YOUR_APP_NAME.herokuapp.com/`
- Set the runtime.txt Python version to a [Heroku-20](https://devcenter.heroku.com/articles/python-support#supported-runtimes) stack currently supported version.
- The project was deployed to Heroku using the following steps.

1. Log in to Heroku and create an App
2. At the Deploy tab, select GitHub as the deployment method.
3. Select your repository name and click Search. Once it is found, click Connect.
4. Select the branch you want to deploy, then click Deploy Branch.
5. The deployment process should happen smoothly if all deployment files are fully functional. Click the button Open App on the top of the page to access your App.
6. If the slug size is too large, then add large files not required for the app to the .slugignore file.

## Main Data Analysis and Machine Learning Libraries

- Here, you should list the libraries used in the project and provide an example(s) of how you used these libraries.
- It should be noted that the client provided the data under an NDA (non-disclosure agreement), therefore the data should only be shared with professionals that are officially involved in the project. To comply with this the data has been added to the git.ignore file.

## Credits

- In this section, you need to reference where you got your content, media and from where you got extra help. It is common practice to use code from other repositories and tutorials. However, it is necessary to be very specific about these sources to avoid plagiarism.
- You can break the credits section up into Content and Media, depending on what you have included in your project.

### Content

- The text for the Home page was taken from Wikipedia Article A.
- Instructions on how to implement form validation on the Sign-Up page were taken from [Specific YouTube Tutorial](https://www.youtube.com/).
- The icons in the footer were taken from [Font Awesome](https://fontawesome.com/).

### Media

- The photos used on the home and sign-up page are from This Open-Source site.
- The images used for the gallery page were taken from this other open-source site.

## Acknowledgements (optional)

- Thank the people who provided support throughout this project.

## Future Plans
If this model was part of a larger app with weather data to allow the client to predict when the likelihood of an outbreak could occur, this would add value to the app. Eg: https://www.onsetcomp.com/partners/AWN : AgWeatherNet (AWN) is a valuable resource that supports agriculture in Washington State by providing weather data and decision-support tools to support production, efficiency, and profitability while also promoting environmental sustainability. AWN plays a crucial role in helping farmers, gardeners, researchers, and policymakers make informed decisions related to weather and agriculture.
