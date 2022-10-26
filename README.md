# PredictHaplo_method2

Pipeline to retrieve haplotypes with method 2 as decribed in thesis Daphne van Ginneken. This method uses sample consensus sequences, error corrected reads and certain scripts from the HaploHIV pipeline (Copyright (C) 2019  Gijs Schroeder, Terry Huisman, Kobus Bosman, Monique Nijhuis, Rob de Boer, Aridaman Pandit). With method 2, samples from the same replicate are provided with the same reference sequence for PredictHaplo[^1], this reference sequence is the consensus of both sample consensus sequences.


[^1] Prabhakharan S, Rey M, Zagordi O, et al. HIV Haplotype Inference Using a Propagating Dirichlet Process Mixture Model. IEEE/ACM. 2014;11(1):182-191. doi: 10.1109/TCBB.2013.145
