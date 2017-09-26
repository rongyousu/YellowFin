for seed in 2 1
do
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/YF_seed_${seed} --opt_method="YF" --seed=${seed}
done

for seed in 2 1 3
do
#  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/YF_seed_${seed} --opt_method="YF" --seed=${seed}
  
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/Adam_0.001_seed_${seed} --opt_method="Adam" --learning_rate=0.001 --seed=${seed}
  sleep 1m 
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/Adam_0.005_seed_${seed} --opt_method="Adam" --learning_rate=0.005 --seed=${seed}
  sleep 1m
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/Adam_0.01_seed_${seed} --opt_method="Adam" --learning_rate=0.01 --seed=${seed}
  sleep 1m 
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/Adam_0.0005_seed_${seed} --opt_method="Adam" --learning_rate=0.0005 --seed=${seed}
  sleep 1m
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/Adam_0.0001_seed_${seed} --opt_method="Adam" --learning_rate=0.0001 --seed=${seed}
  
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/MOM_SGD_1.0_seed_${seed} --opt_method="momSGD" --learning_rate=1.0 --seed=${seed}
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/MOM_SGD_5.0_seed_${seed} --opt_method="momSGD" --learning_rate=5.0 --seed=${seed}
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/MOM_SGD_0.5_seed_${seed} --opt_method="momSGD" --learning_rate=0.5 --seed=${seed}
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/MOM_SGD_0.1_seed_${seed} --opt_method="momSGD" --learning_rate=0.1 --seed=${seed}
  mkdir -p models/wsj && python train.py --data_path=wsj --model_path=models/wsj/model --log_dir=./results/MOM_SGD_0.05_seed_${seed} --opt_method="momSGD" --learning_rate=0.05 --seed=${seed}
  
done
