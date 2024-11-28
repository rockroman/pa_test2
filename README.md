## Project Overview
This project demonstrates how predictive analytics can optimize agricultural operations. The focus is on addressing a fictitious scenario where Farmy Foods faces powdery mildew issues in their cherry plantations, a key product in their portfolio. The project aims to minimize revenue loss from poor-quality produce and streamline the monitoring process, which is currently manual and unsustainable.

## Dataset Content

The dataset, sourced from [Kaggle](https://www.kaggle.com/codeinstitute/cherry-leaves) contains 4,208 images of cherry leaves categorized as healthy or infected with powdery mildew, a fungal disease affecting many plants. 

## Business Requirements

The cherry plantation crop from Farmy & Foods is facing a challenge where their cherry plantations have been presenting powdery mildew. Currently, the process is manual verification if a given cherry tree contains powdery mildew. An employee spends around 30 minutes in each tree, taking a few samples of tree leaves and verifying visually if the leaf tree is healthy or has powdery mildew. If there is powdery mildew, the employee applies a specific compound to kill the fungus. The time spent applying this compound is 1 minute. The company has thousands of cherry trees located on multiple farms across the country. As a result, this manual process is not scalable due to the time spent in the manual process inspection.

To save time in this process, the IT team suggested an ML system that detects instantly, using a leaf tree image, if it is healthy or has powdery mildew. A similar manual process is in place for other crops for detecting pests, and if this initiative is successful, there is a realistic chance to replicate this project for all other crops. The dataset is a collection of cherry leaf images provided by Farmy & Foods, taken from their crops.

The goal is to develop an ML-based solution to address powdery mildew in cherry plantations by:
1) Differentiating visually between healthy and infected cherry leaves.
2) Predicting if a cherry leaf is healthy or infected based on an image.
3) Creating a dashboard for user interaction, rather than relying on API endpoints.

This initiative is scalable and could extend to other crops, enhancing operational efficiency and market quality.

# Outcomes Required
- The project aims to:
- Provide a visual study differentiating healthy and infected leaves.
- Achieve a model prediction accuracy of at least 97%.

## Hypothesis and how to validate?
Hypothesis: Powdery mildew manifests visibly through signs like shriveling, white discoloration, or spotting on leaves.

Validation Steps:
- Use the dataset to train a binary classification model.
- Conduct image analysis to confirm visual differences.
- Evaluate the model using metrics like accuracy, precision, recall, and F1 score, aiming for >97% accuracy.
- If classes (helathy vs. infected) are imbalanced we will apply StratifiedK-fold cross-validation to ensure each fold has a proportional representation of both classes.

Dataset Preparation:

Compile a labeled dataset of cherry tree leaves, categorized into "Healthy" and "Infected" classes.
Ensure the dataset is diverse, representing various lighting conditions, angles, and leaf conditions. If the dataset is too small create extra images.

Model Training and Testing:
Train a neural network model on the dataset using a supervised learning approach.
Split the dataset into training, validation, and test sets (e.g., 70%, 20%, 10%).

Evaluation Metrics:
Use precision, recall, F1 score, and accuracy to measure the model's performance on the test set.
Data Augmentation: To ensure robust data augmentation techniques will be applied during training. Examples include random rotations, flips, brightness adjustments, and zooms to simulate real-world variations and increase model generalizability. Apply a confusion matrix to analyze false positives and false negatives.

Visual Inspection:
Validate predictions by visually inspecting misclassified images to identify patterns or potential dataset biases.

Cross-Validation:
Perform k-fold cross-validation to ensure robustness and generalizability of the model.

Hypothesis Support:
If the model achieves high accuracy (e.g., >97%) in distinguishing healthy and infected leaves, the hypothesis is supported.
If accuracy is low, investigate feature extraction, dataset quality, or other confounding variables.

## The rationale to map the business requirements to the Data Visualisations and ML tasks

### Business Requirement 1 ### Visual Differentiation
- Generate visualizations comparing average healthy and infected leaves.
- Create montages to highlight class differences.


### Business Requirement 2 ### Classification
- Develop a neural network model capable of distinguishing between healthy and infected leaves.
- Target accuracy: ≥97% for effective real-world deployment.
- Performance validation through k-fold cross-validation and confusion matrix analysis, identifying false positives/negatives to fine-tune the model.


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
1) Integration of Weather Data:
Utilize platforms like AgWeatherNet to correlate weather conditions with powdery mildew outbreaks, enabling predictive interventions, as these outbreaks tend to occur on new season buds and leaves (following rainfall) and on the mature fruit prior to harvest.

2) Mobile and IoT Solutions:
Deploy lightweight versions of the model on mobile apps or IoT devices for in-field detection, reducing latency and reliance on centralized processing.

3) Dataset Expansion:
Extend the dataset to include other crops like apples and peaches, enabling broader applications across Farmy Foods' operations.
