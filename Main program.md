## Description of main runner code

 - In this project, apart from the conventional circular boundary method in which K-NN is performed, different approaches like triangular boundary and further, variable-triangular boundary, are used and their performance is compared.
 - The user may input the value of 'k' or leave it to the program to start with an initial value of k.
 - The data is randomized before the procedure is started.
 - Euclidean distance is used as the distance metric to find and compare the distance of neighbors.
 - **findtriangle():** Constructs and returns an imaginary triangular boundary (equilateral triangle to maximize covered area) around a data point.
 - **isinside():**  Finds out whether or not the required number of neighbors lie inside the formed triangle for examining the majority class among them; there maybe some cases in which the neighbors lie inside the circumcircle of the triangle formed only, and not the triangle - in which there may be ambiguous assignment of class labels.
 - **newclass():** Assigns class labels to the data points according to the algorithm (assigns -5 in case of ambiguity).
 




