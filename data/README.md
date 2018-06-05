Contains 5 different data sets for classification using the algorithm. [Visit the source](https://archive.ics.uci.edu/ml/index.php)

## **Data set descriptions**

**1. Iris**

 - **Data set information**
 This is perhaps the best known database to be found in the pattern recognition literature. Fisher's paper is a classic in the field and is referenced frequently to this day. (See Duda & Hart, for example.) The data set contains 3 classes of 50 instances each, where each class refers to a type of iris plant. One class is linearly separable from the other 2; the latter are NOT linearly separable from each other. Predicted attribute: class of iris plant. This is an exceedingly simple domain. This data differs from the data presented in Fishers article (identified by Steve Chadwick,  spchadwick  '@'  espeedaz.net  ). The 35th sample should be: 4.9,3.1,1.5,0.2,"Iris-setosa" where the error is in the fourth feature. The 38th sample: 4.9,3.6,1.4,0.1,"Iris-setosa" where the errors are in the second and third features.
 - **Attribute information**
	1. sepal length in cm  
	2. sepal width in cm  
	3. petal length in cm  
	4. petal width in cm  
	5. class:  
	-- Iris Setosa  
	-- Iris Versicolour  
	-- Iris Virginica

 
   [Link to complete information](https://archive.ics.uci.edu/ml/datasets/Iris)
 
**2.Bank note authentication**
 - **Data set information**
 Data were extracted from images that were taken from genuine and forged banknote-like specimens. For digitization, an industrial camera usually used for print inspection was used. The final images have 400x 400 pixels. Due to the object lens and distance to the investigated object gray-scale pictures with a resolution of about 660 dpi were gained. Wavelet Transform tool were used to extract features from images.
 - **Attribute information**
	1. variance of Wavelet Transformed image (continuous)  
	2. skewness of Wavelet Transformed image (continuous)  
	3. curtosis of Wavelet Transformed image (continuous)  
	4. entropy of image (continuous)  
	5. class (integer)
	
	[Link to complete information](https://archive.ics.uci.edu/ml/datasets/banknote+authentication#)

**3. Fertility**

 - **Data set information**
100 volunteers provide a semen sample analyzed according to    the WHO 2010 criteria. Sperm concentration are related to socio-demographic data, environmental factors, health status, and life habits

 - **Attribute information**
	 1. Season in which the analysis was performed. 1) winter, 2) spring, 3) Summer, 4) fall. (-1, -0.33, 0.33, 1)  
	  
	2. Age at the time of analysis. 18-36 (0, 1)  
	  
	3. Childish diseases (ie , chicken pox, measles, mumps, polio) 1) yes, 2) no. (0, 1)  
	  
	4. Accident or serious trauma 1) yes, 2) no. (0, 1)  
	  
	5. Surgical intervention 1) yes, 2) no. (0, 1)  
	  
	6. High fevers in the last year 1) less than three months ago, 2) more than three months ago, 3) no. (-1, 0, 1)  
	  
	7. Frequency of alcohol consumption 1) several times a day, 2) every day, 3) several times a week, 4) once a week, 5) hardly ever or never (0, 1)  
	  
	8. Smoking habit 1) never, 2) occasional 3) daily. (-1, 0, 1)  
	  
	9. Number of hours spent sitting per day ene-16 (0, 1)  
	  
	10. Output: Diagnosis normal (N), altered (O)

	[Link to complete information](https://archive.ics.uci.edu/ml/datasets/Fertility#)

**4. Liver**

 - **Data set information**
 The first 5 variables are all blood tests which are thought to be sensitive to liver disorders that might arise from excessive alcohol consumption. Each line in the dataset constitutes the record of a single male individual. Important note: The 7th field (selector) has been widely misinterpreted in the past as a dependent variable representing presence or absence of a liver disorder. This is incorrect [1]. The 7th field was created by BUPA researchers as a train/test selector. It is not suitable as a dependent variable for classification. The dataset does not contain any variable representing presence or absence of a liver disorder. Researchers who wish to use this dataset as a classification benchmark should follow the method used in experiments by the donor (Forsyth & Rada, 1986, Machine learning: applications in expert systems and information retrieval) and others (e.g. Turney, 1995, Cost-sensitive classification: Empirical evaluation of a hybrid genetic decision tree induction algorithm), who used the 6th field (drinks), after dichotomising, as a dependent variable for classification. Because of widespread misinterpretation in the past, researchers should take care to state their method clearly.

 - **Attribute information**
	1. mcv mean corpuscular volume  
	2. alkphos alkaline phosphotase  
	3. sgpt alanine aminotransferase  
	4. sgot aspartate aminotransferase  
	5. gammagt gamma-glutamyl transpeptidase  
	6. drinks number of half-pint equivalents of alcoholic beverages drunk per day  
	7. selector field created by the BUPA researchers to split the data into train/test sets

	[Link to complete information](https://archive.ics.uci.edu/ml/datasets/liver+disorders)

**5. Seeds**

 

 - **Data set information**
The examined group comprised kernels belonging to three different varieties of wheat: Kama, Rosa and Canadian, 70 elements each, randomly selected for the experiment. High quality visualization of the internal kernel structure was detected using a soft X-ray technique. It is non-destructive and considerably cheaper than other more sophisticated imaging techniques like scanning microscopy or laser technology. The images were recorded on 13x18 cm X-ray KODAK plates. Studies were conducted using combine harvested wheat grain originating from experimental fields, explored at the Institute of Agrophysics of the Polish Academy of Sciences in Lublin. The data set can be used for the tasks of classification and cluster analysis.

 - **Attribute information**
 To construct the data, seven geometric parameters of wheat kernels were measured (all of these parameters were real-valued continuous):  
	1. area A,  
	2. perimeter P,  
	3. compactness C = 4*pi*A/P^2,  
	4. length of kernel,  
	5. width of kernel,  
	6. asymmetry coefficient  
	7. length of kernel groove.  

	[Link to complete information ](https://archive.ics.uci.edu/ml/datasets/seeds)

