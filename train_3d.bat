nnUNetv2_train 4 3d_fullres 0
nnUNetv2_train 4 3d_fullres 1
nnUNetv2_train 4 3d_fullres 2
nnUNetv2_train 4 3d_fullres 3
nnUNetv2_train 4 3d_fullres 4

***Run inference like this:***

nnUNetv2_predict -d Dataset004_Hippocampus -i dataset\nnUNet_raw\Dataset004_Hippocampus\imagesTs -o predict\Dataset004_Hippocampus\3d_fullres -f  0 1 2 3 4 -tr nnUNetTrainer -c 3d_fullres -p nnUNetPlans

***Once inference is completed, run postprocessing like this:***

nnUNetv2_apply_postprocessing -i predict\Dataset004_Hippocampus\3d_fullres -o predict\Dataset004_Hippocampus\3d_fullres_postprocessing -pp_pkl_file D:/nnUNet/dataset/nnUnet_results\Dataset004_Hippocampus\nnUNetTrainer__nnUNetPlans__3d_fullres\crossval_results_folds_0_1_2_3_4\postprocessing.pkl -np 8 -plans_json D:/nnUNet/dataset/nnUnet_results\Dataset004_Hippocampus\nnUNetTrainer__nnUNetPlans__3d_fullres\crossval_results_folds_0_1_2_3_4\plans.json