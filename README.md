# posture_rec_zcu
achieved CNN(specific yolo)network baes on xilinx zcu102.
对yolo进行了算法简化，简化为7层的cnn网络，用Xilinx的Zynq UltraScale+ ZU3EG对算法进行了加速，其中reshape，cnn，bn，active通过PL进行加速，全连接层在PS侧实现.
