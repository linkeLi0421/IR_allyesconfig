; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_adr = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 8448, i32 8448, i32 8452, i32 8452, i32 8456, i32 8456, i32 8460, i32 8460, i32 8464, i32 8464, i32 8468, i32 8468, i32 8472, i32 8472, i32 8476, i32 8476, i32 8480, i32 8480, i32 8484, i32 8484, i32 8488, i32 8488, i32 8492, i32 8492, i32 8496, i32 8496, i32 8500, i32 8500, i32 8504, i32 8504, i32 8508, i32 8508], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_msk = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_shift = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_adr = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 8448, i32 8448, i32 8452, i32 8452, i32 8456, i32 8456, i32 8460, i32 8460, i32 8464, i32 8464, i32 8468, i32 8468, i32 8472, i32 8472, i32 8476, i32 8476, i32 8480, i32 8480, i32 8484, i32 8484, i32 8488, i32 8488, i32 8492, i32 8492, i32 8496, i32 8496, i32 8500, i32 8500, i32 8504, i32 8504, i32 8508, i32 8508], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_msk = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608, i32 -2147483648, i32 8388608], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_shift = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23, i32 31, i32 23], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_rx_set.itr_imr_rxr_adr = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 8448, i32 8448, i32 8452, i32 8452, i32 8456, i32 8456, i32 8460, i32 8460, i32 8464, i32 8464, i32 8468, i32 8468, i32 8472, i32 8472, i32 8476, i32 8476, i32 8480, i32 8480, i32 8484, i32 8484, i32 8488, i32 8488, i32 8492, i32 8492, i32 8496, i32 8496, i32 8500, i32 8500, i32 8504, i32 8504, i32 8508, i32 8508], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_rx_set.itr_imr_rxr_msk = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31, i32 7936, i32 31], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_rx_set.itr_imr_rxr_shift = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_tx_set.itr_imr_txt_adr = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 8448, i32 8448, i32 8452, i32 8452, i32 8456, i32 8456, i32 8460, i32 8460, i32 8464, i32 8464, i32 8468, i32 8468, i32 8472, i32 8472, i32 8476, i32 8476, i32 8480, i32 8480, i32 8484, i32 8484, i32 8488, i32 8488, i32 8492, i32 8492, i32 8496, i32 8496, i32 8500, i32 8500, i32 8504, i32 8504, i32 8508, i32 8508], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_tx_set.itr_imr_txt_msk = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616, i32 520093696, i32 2031616], [32 x i8] zeroinitializer }, align 32
@hw_atl_itr_irq_map_tx_set.itr_imr_txt_shift = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16, i32 24, i32 16], [32 x i8] zeroinitializer }, align 32
@hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_adr = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 21700, i32 21700, i32 21700, i32 21700, i32 21700, i32 21700, i32 21700, i32 21700], [32 x i8] zeroinitializer }, align 32
@hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_msk = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 7, i32 112, i32 1792, i32 28672, i32 458752, i32 7340032, i32 117440512, i32 1879048192], [32 x i8] zeroinitializer }, align 32
@hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_shft = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28], [32 x i8] zeroinitializer }, align 32
@hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_adr = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 21920, i32 21920, i32 21920, i32 21920, i32 21920, i32 21920, i32 21920, i32 21920, i32 21924, i32 21924, i32 21924, i32 21924, i32 21924, i32 21924, i32 21924, i32 21924, i32 21928, i32 21928, i32 21928, i32 21928, i32 21928, i32 21928, i32 21928, i32 21928, i32 21932, i32 21932, i32 21932, i32 21932, i32 21932, i32 21932, i32 21932, i32 21932], [32 x i8] zeroinitializer }, align 32
@hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_msk = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 48, i32 768, i32 12288, i32 196608, i32 3145728, i32 50331648, i32 805306368, i32 3, i32 48, i32 768, i32 12288, i32 196608, i32 3145728, i32 50331648, i32 805306368, i32 3, i32 48, i32 768, i32 12288, i32 196608, i32 3145728, i32 50331648, i32 805306368, i32 3, i32 48, i32 768, i32 12288, i32 196608, i32 3145728, i32 50331648, i32 805306368], [32 x i8] zeroinitializer }, align 32
@hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_shift = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"itr_imr_rxren_adr\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 136, i32 13 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"itr_imr_rxren_msk\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 148, i32 13 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"itr_imr_rxren_shift\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 160, i32 13 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"itr_imr_txten_adr\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 177, i32 13 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"itr_imr_txten_msk\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 189, i32 13 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"itr_imr_txten_shift\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 201, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"itr_imr_rxr_adr\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 217, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"itr_imr_rxr_msk\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 229, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"itr_imr_rxr_shift\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 241, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"itr_imr_txt_adr\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 257, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"itr_imr_txt_msk\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 269, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"itr_imr_txt_shift\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 281, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"rpf_rpb_rx_tc_upt_adr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 805, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"rpf_rpb_rx_tc_upt_msk\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 811, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"rpf_rpb_rx_tc_upt_shft\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 817, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"rpo_lro_ldes_max_adr\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1167, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"rpo_lro_ldes_max_msk\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1179, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"rpo_lro_ldes_max_shift\00", align 1
@___asan_gen_.53 = private constant [62 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1191, i32 13 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_adr, ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_msk, ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_shift, ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_adr, ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_msk, ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_shift, ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_adr, ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_msk, ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_shift, ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_adr, ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_msk, ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_shift, ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_adr, ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_msk, ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_shft, ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_adr, ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_msk, ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_shift], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_adr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_msk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_adr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_msk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_adr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_msk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_adr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_msk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_adr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_msk to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_shft to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_adr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_msk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_ts_reset_set(ptr noundef %aq_hw, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 12544, i32 noundef 4, i32 noundef 2, i32 noundef %val) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_ts_power_down_set(ptr noundef %aq_hw, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 12544, i32 noundef 1, i32 noundef 0, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_ts_power_down_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 12544, i32 noundef 1, i32 noundef 0) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_ts_ready_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 12576, i32 noundef -2147483648, i32 noundef 31) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_ts_ready_latch_high_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 12576, i32 noundef 1073741824, i32 noundef 30) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_ts_data_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 12576, i32 noundef 4095, i32 noundef 0) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %aq_hw, i32 noundef %glb_cpu_sem, i32 noundef %semaphore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %semaphore, 2
  %add = add i32 %mul, 928
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %glb_cpu_sem) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_reg_glb_cpu_sem_get(ptr noundef %aq_hw, i32 noundef %semaphore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %semaphore, 2
  %add = add i32 %mul, 928
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef %add) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_glb_glb_reg_res_dis_set(ptr noundef %aq_hw, i32 noundef %glb_reg_res_dis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 0, i32 noundef 16384, i32 noundef 14, i32 noundef %glb_reg_res_dis) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_glb_soft_res_set(ptr noundef %aq_hw, i32 noundef %soft_res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 0, i32 noundef 32768, i32 noundef 15, i32 noundef %soft_res) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_glb_soft_res_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 0, i32 noundef 32768, i32 noundef 15) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_reg_glb_mif_id_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 28) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 26648) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hw_atl_stats_rx_dma_good_octet_counter_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @aq_hw_read_reg64(ptr noundef %aq_hw, i32 noundef 26632) #2
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @aq_hw_read_reg64(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hw_atl_stats_rx_dma_good_pkt_counter_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @aq_hw_read_reg64(ptr noundef %aq_hw, i32 noundef 26624) #2
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hw_atl_stats_tx_dma_good_octet_counter_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @aq_hw_read_reg64(ptr noundef %aq_hw, i32 noundef 34824) #2
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hw_atl_stats_tx_dma_good_pkt_counter_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @aq_hw_read_reg64(ptr noundef %aq_hw, i32 noundef 34816) #2
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_auto_masklsw_set(ptr noundef %aq_hw, i32 noundef %irq_auto_masklsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 8336, i32 noundef %irq_auto_masklsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_map_en_rx_set(ptr noundef %aq_hw, i32 noundef %irq_map_en_rx, i32 noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_adr, i32 0, i32 %rx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_msk, i32 0, i32 %rx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_shift, i32 0, i32 %rx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %irq_map_en_rx) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_map_en_tx_set(ptr noundef %aq_hw, i32 noundef %irq_map_en_tx, i32 noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_adr, i32 0, i32 %tx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_msk, i32 0, i32 %tx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_shift, i32 0, i32 %tx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %irq_map_en_tx) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_map_rx_set(ptr noundef %aq_hw, i32 noundef %irq_map_rx, i32 noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_adr, i32 0, i32 %rx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_msk, i32 0, i32 %rx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_shift, i32 0, i32 %rx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %irq_map_rx) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_map_tx_set(ptr noundef %aq_hw, i32 noundef %irq_map_tx, i32 noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_adr, i32 0, i32 %tx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_msk, i32 0, i32 %tx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [32 x i32], ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_shift, i32 0, i32 %tx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %irq_map_tx) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_msk_clearlsw_set(ptr noundef %aq_hw, i32 noundef %irq_msk_clearlsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 8304, i32 noundef %irq_msk_clearlsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_msk_setlsw_set(ptr noundef %aq_hw, i32 noundef %irq_msk_setlsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 8288, i32 noundef %irq_msk_setlsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_reg_res_dis_set(ptr noundef %aq_hw, i32 noundef %irq_reg_res_dis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 8960, i32 noundef 536870912, i32 noundef 29, i32 noundef %irq_reg_res_dis) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_irq_status_clearlsw_set(ptr noundef %aq_hw, i32 noundef %irq_status_clearlsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 8272, i32 noundef %irq_status_clearlsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_itr_irq_statuslsw_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 8192) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_itr_res_irq_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 8960, i32 noundef -2147483648, i32 noundef 31) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_res_irq_set(ptr noundef %aq_hw, i32 noundef %res_irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 8960, i32 noundef -2147483648, i32 noundef 31, i32 noundef %res_irq) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_rsc_en_set(ptr noundef %aq_hw, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 8704, i32 noundef %enable) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_itr_rsc_delay_set(ptr noundef %aq_hw, i32 noundef %delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 8708, i32 noundef 15, i32 noundef 0, i32 noundef %delay) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_cpu_id_set(ptr noundef %aq_hw, i32 noundef %cpuid, i32 noundef %dca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dca, 2
  %add = add i32 %mul, 24832
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 255, i32 noundef 0, i32 noundef %cpuid) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_dca_en_set(ptr noundef %aq_hw, i32 noundef %rx_dca_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 24960, i32 noundef -2147483648, i32 noundef 31, i32 noundef %rx_dca_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_dca_mode_set(ptr noundef %aq_hw, i32 noundef %rx_dca_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 24960, i32 noundef 15, i32 noundef 0, i32 noundef %rx_dca_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_data_buff_size_set(ptr noundef %aq_hw, i32 noundef %rx_desc_data_buff_size, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23320
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 31, i32 noundef 0, i32 noundef %rx_desc_data_buff_size) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_dca_en_set(ptr noundef %aq_hw, i32 noundef %rx_desc_dca_en, i32 noundef %dca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dca, 2
  %add = add i32 %mul, 24832
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %rx_desc_dca_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_en_set(ptr noundef %aq_hw, i32 noundef %rx_desc_en, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23304
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %rx_desc_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_head_buff_size_set(ptr noundef %aq_hw, i32 noundef %rx_desc_head_buff_size, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23320
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 7936, i32 noundef 8, i32 noundef %rx_desc_head_buff_size) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_head_splitting_set(ptr noundef %aq_hw, i32 noundef %rx_desc_head_splitting, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23304
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 268435456, i32 noundef 28, i32 noundef %rx_desc_head_splitting) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rdm_rx_desc_head_ptr_get(ptr noundef %aq_hw, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23308
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 8191, i32 noundef 0) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_len_set(ptr noundef %aq_hw, i32 noundef %rx_desc_len, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23304
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 8184, i32 noundef 3, i32 noundef %rx_desc_len) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_res_set(ptr noundef %aq_hw, i32 noundef %rx_desc_res, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23304
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 33554432, i32 noundef 25, i32 noundef %rx_desc_res) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %aq_hw, i32 noundef %rx_desc_wr_wb_irq_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 23088, i32 noundef 4, i32 noundef 2, i32 noundef %rx_desc_wr_wb_irq_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_head_dca_en_set(ptr noundef %aq_hw, i32 noundef %rx_head_dca_en, i32 noundef %dca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dca, 2
  %add = add i32 %mul, 24832
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 1073741824, i32 noundef 30, i32 noundef %rx_head_dca_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_pld_dca_en_set(ptr noundef %aq_hw, i32 noundef %rx_pld_dca_en, i32 noundef %dca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dca, 2
  %add = add i32 %mul, 24832
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 536870912, i32 noundef 29, i32 noundef %rx_pld_dca_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rdm_intr_moder_en_set(ptr noundef %aq_hw, i32 noundef %rdm_intr_moder_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 23088, i32 noundef 8, i32 noundef 3, i32 noundef %rdm_intr_moder_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_gen_irq_map_set(ptr noundef %aq_hw, i32 noundef %gen_intr_map, i32 noundef %regidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %regidx, 2
  %add = add i32 %mul, 8576
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %gen_intr_map) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_reg_gen_irq_status_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 8612) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_irq_glb_ctl_set(ptr noundef %aq_hw, i32 noundef %intr_glb_ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 8960, i32 noundef %intr_glb_ctl) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_irq_thr_set(ptr noundef %aq_hw, i32 noundef %intr_thr, i32 noundef %throttle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %throttle, 2
  %add = add i32 %mul, 10240
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %intr_thr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_dma_desc_base_addresslswset(ptr noundef %aq_hw, i32 noundef %rx_dma_desc_base_addrlsw, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23296
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %rx_dma_desc_base_addrlsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_dma_desc_base_addressmswset(ptr noundef %aq_hw, i32 noundef %rx_dma_desc_base_addrmsw, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23300
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %rx_dma_desc_base_addrmsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_reg_rx_dma_desc_status_get(ptr noundef %aq_hw, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23316
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef %add) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_dma_desc_tail_ptr_set(ptr noundef %aq_hw, i32 noundef %rx_dma_desc_tail_ptr, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23312
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %rx_dma_desc_tail_ptr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_flr_mcst_flr_msk_set(ptr noundef %aq_hw, i32 noundef %rx_flr_mcst_flr_msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 21104, i32 noundef %rx_flr_mcst_flr_msk) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_flr_mcst_flr_set(ptr noundef %aq_hw, i32 noundef %rx_flr_mcst_flr, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21072
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %rx_flr_mcst_flr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_flr_rss_control1set(ptr noundef %aq_hw, i32 noundef %rx_flr_rss_control1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 21696, i32 noundef %rx_flr_rss_control1) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_flr_control2_set(ptr noundef %aq_hw, i32 noundef %rx_filter_control2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 20740, i32 noundef %rx_filter_control2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_rx_intr_moder_ctrl_set(ptr noundef %aq_hw, i32 noundef %rx_intr_moderation_ctl, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue, 2
  %add = add i32 %mul, 23104
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %rx_intr_moderation_ctl) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_tx_dma_debug_ctl_set(ptr noundef %aq_hw, i32 noundef %tx_dma_debug_ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 35104, i32 noundef %tx_dma_debug_ctl) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_tx_dma_desc_base_addresslswset(ptr noundef %aq_hw, i32 noundef %tx_dma_desc_base_addrlsw, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 6
  %add = add i32 %mul, 31744
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %tx_dma_desc_base_addrlsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_tx_dma_desc_base_addressmswset(ptr noundef %aq_hw, i32 noundef %tx_dma_desc_base_addrmsw, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 6
  %add = add i32 %mul, 31748
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %tx_dma_desc_base_addrmsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_tx_dma_desc_tail_ptr_set(ptr noundef %aq_hw, i32 noundef %tx_dma_desc_tail_ptr, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 6
  %add = add i32 %mul, 31760
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %tx_dma_desc_tail_ptr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_tx_intr_moder_ctrl_set(ptr noundef %aq_hw, i32 noundef %tx_intr_moderation_ctl, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue, 2
  %add = add i32 %mul, 35200
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %tx_intr_moderation_ctl) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_dma_sys_lbk_set(ptr noundef %aq_hw, i32 noundef %dma_sys_lbk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20480, i32 noundef 64, i32 noundef 6, i32 noundef %dma_sys_lbk) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_dma_net_lbk_set(ptr noundef %aq_hw, i32 noundef %dma_net_lbk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20480, i32 noundef 16, i32 noundef 4, i32 noundef %dma_net_lbk) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_rpf_rx_traf_class_mode_set(ptr noundef %aq_hw, i32 noundef %rx_traf_class_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 22272, i32 noundef 256, i32 noundef 8, i32 noundef %rx_traf_class_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rpb_rpf_rx_traf_class_mode_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 22272, i32 noundef 256, i32 noundef 8) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_rx_buff_en_set(ptr noundef %aq_hw, i32 noundef %rx_buff_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 22272, i32 noundef 1, i32 noundef 0, i32 noundef %rx_buff_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(ptr noundef %aq_hw, i32 noundef %rx_buff_hi_threshold_per_tc, i32 noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %buffer, 4
  %add = add i32 %mul, 22292
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 1073676288, i32 noundef 16, i32 noundef %rx_buff_hi_threshold_per_tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(ptr noundef %aq_hw, i32 noundef %rx_buff_lo_threshold_per_tc, i32 noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %buffer, 4
  %add = add i32 %mul, 22292
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 16383, i32 noundef 0, i32 noundef %rx_buff_lo_threshold_per_tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_rx_flow_ctl_mode_set(ptr noundef %aq_hw, i32 noundef %rx_flow_ctl_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 22272, i32 noundef 48, i32 noundef 4, i32 noundef %rx_flow_ctl_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rdm_rx_dma_desc_cache_init_tgl(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 23040, i32 noundef -1, i32 noundef 0) #2
  %xor = xor i32 %call, 1
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 23040, i32 noundef -1, i32 noundef 0, i32 noundef %xor) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rdm_rx_dma_desc_cache_init_done_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 23056, i32 noundef 1, i32 noundef 0) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(ptr noundef %aq_hw, i32 noundef %rx_pkt_buff_size_per_tc, i32 noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %buffer, 4
  %add = add i32 %mul, 22288
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 511, i32 noundef 0, i32 noundef %rx_pkt_buff_size_per_tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpb_rx_xoff_en_per_tc_set(ptr noundef %aq_hw, i32 noundef %rx_xoff_en_per_tc, i32 noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %buffer, 4
  %add = add i32 %mul, 22292
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %rx_xoff_en_per_tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2broadcast_count_threshold_set(ptr noundef %aq_hw, i32 noundef %l2broadcast_count_threshold) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20736, i32 noundef -65536, i32 noundef 16, i32 noundef %l2broadcast_count_threshold) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2broadcast_en_set(ptr noundef %aq_hw, i32 noundef %l2broadcast_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20736, i32 noundef 1, i32 noundef 0, i32 noundef %l2broadcast_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2broadcast_flr_act_set(ptr noundef %aq_hw, i32 noundef %l2broadcast_flr_act) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20736, i32 noundef 28672, i32 noundef 12, i32 noundef %l2broadcast_flr_act) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2multicast_flr_en_set(ptr noundef %aq_hw, i32 noundef %l2multicast_flr_en, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21072
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %l2multicast_flr_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rpfl2promiscuous_mode_en_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 20736, i32 noundef 8, i32 noundef 3) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2promiscuous_mode_en_set(ptr noundef %aq_hw, i32 noundef %l2promiscuous_mode_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20736, i32 noundef 8, i32 noundef 3, i32 noundef %l2promiscuous_mode_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2unicast_flr_act_set(ptr noundef %aq_hw, i32 noundef %l2unicast_flr_act, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 3
  %add = add i32 %mul, 20756
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 458752, i32 noundef 16, i32 noundef %l2unicast_flr_act) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %aq_hw, i32 noundef %l2unicast_flr_en, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 3
  %add = add i32 %mul, 20756
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %l2unicast_flr_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef %aq_hw, i32 noundef %l2unicast_dest_addresslsw, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 3
  %add = add i32 %mul, 20752
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %l2unicast_dest_addresslsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef %aq_hw, i32 noundef %l2unicast_dest_addressmsw, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 3
  %add = add i32 %mul, 20756
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 65535, i32 noundef 0, i32 noundef %l2unicast_dest_addressmsw) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl2_accept_all_mc_packets_set(ptr noundef %aq_hw, i32 noundef %l2_accept_all_mc_packets) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21104, i32 noundef 16384, i32 noundef 14, i32 noundef %l2_accept_all_mc_packets) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %aq_hw, i32 noundef %user_priority, i32 noundef %tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x i32], ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_adr, i32 0, i32 %user_priority
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [8 x i32], ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_msk, i32 0, i32 %user_priority
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [8 x i32], ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_shft, i32 0, i32 %user_priority
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_rss_key_addr_set(ptr noundef %aq_hw, i32 noundef %rss_key_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21712, i32 noundef 31, i32 noundef 0, i32 noundef %rss_key_addr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_rss_key_wr_data_set(ptr noundef %aq_hw, i32 noundef %rss_key_wr_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 21716, i32 noundef %rss_key_wr_data) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 21712, i32 noundef 32, i32 noundef 5) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_rss_key_wr_en_set(ptr noundef %aq_hw, i32 noundef %rss_key_wr_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21712, i32 noundef 32, i32 noundef 5, i32 noundef %rss_key_wr_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_rss_redir_tbl_addr_set(ptr noundef %aq_hw, i32 noundef %rss_redir_tbl_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21728, i32 noundef 15, i32 noundef 0, i32 noundef %rss_redir_tbl_addr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_rss_redir_tbl_wr_data_set(ptr noundef %aq_hw, i32 noundef %rss_redir_tbl_wr_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21732, i32 noundef 65535, i32 noundef 0, i32 noundef %rss_redir_tbl_wr_data) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 21728, i32 noundef 16, i32 noundef 4) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_rss_redir_wr_en_set(ptr noundef %aq_hw, i32 noundef %rss_redir_wr_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21728, i32 noundef 16, i32 noundef 4, i32 noundef %rss_redir_wr_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_tpo_to_rpf_sys_lbk_set(ptr noundef %aq_hw, i32 noundef %tpo_to_rpf_sys_lbk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20480, i32 noundef 256, i32 noundef 8, i32 noundef %tpo_to_rpf_sys_lbk) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_inner_etht_set(ptr noundef %aq_hw, i32 noundef %vlan_inner_etht) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21124, i32 noundef 65535, i32 noundef 0, i32 noundef %vlan_inner_etht) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_outer_etht_set(ptr noundef %aq_hw, i32 noundef %vlan_outer_etht) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21124, i32 noundef -65536, i32 noundef 16, i32 noundef %vlan_outer_etht) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %aq_hw, i32 noundef %vlan_prom_mode_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21120, i32 noundef 2, i32 noundef 1, i32 noundef %vlan_prom_mode_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rpf_vlan_prom_mode_en_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 21120, i32 noundef 2, i32 noundef 1) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_accept_untagged_packets_set(ptr noundef %aq_hw, i32 noundef %vlan_acc_untagged_packets) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21120, i32 noundef 4, i32 noundef 2, i32 noundef %vlan_acc_untagged_packets) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_untagged_act_set(ptr noundef %aq_hw, i32 noundef %vlan_untagged_act) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21120, i32 noundef 56, i32 noundef 3, i32 noundef %vlan_untagged_act) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_flr_en_set(ptr noundef %aq_hw, i32 noundef %vlan_flr_en, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21136
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %vlan_flr_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_flr_act_set(ptr noundef %aq_hw, i32 noundef %vlan_flr_act, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21136
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 458752, i32 noundef 16, i32 noundef %vlan_flr_act) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_id_flr_set(ptr noundef %aq_hw, i32 noundef %vlan_id_flr, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21136
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 4095, i32 noundef 0, i32 noundef %vlan_id_flr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_rxq_en_flr_set(ptr noundef %aq_hw, i32 noundef %vlan_rxq_en, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21136
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 268435456, i32 noundef 28, i32 noundef %vlan_rxq_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_vlan_rxq_flr_set(ptr noundef %aq_hw, i32 noundef %vlan_rxq, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21136
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 32505856, i32 noundef 20, i32 noundef %vlan_rxq) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_flr_en_set(ptr noundef %aq_hw, i32 noundef %etht_flr_en, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %etht_flr_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_user_priority_en_set(ptr noundef %aq_hw, i32 noundef %etht_user_priority_en, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 1073741824, i32 noundef 30, i32 noundef %etht_user_priority_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_rx_queue_en_set(ptr noundef %aq_hw, i32 noundef %etht_rx_queue_en, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 536870912, i32 noundef 29, i32 noundef %etht_rx_queue_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_user_priority_set(ptr noundef %aq_hw, i32 noundef %etht_user_priority, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 469762048, i32 noundef 26, i32 noundef %etht_user_priority) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_rx_queue_set(ptr noundef %aq_hw, i32 noundef %etht_rx_queue, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 32505856, i32 noundef 20, i32 noundef %etht_rx_queue) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_mgt_queue_set(ptr noundef %aq_hw, i32 noundef %etht_mgt_queue, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 524288, i32 noundef 19, i32 noundef %etht_mgt_queue) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_flr_act_set(ptr noundef %aq_hw, i32 noundef %etht_flr_act, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 458752, i32 noundef 16, i32 noundef %etht_flr_act) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_etht_flr_set(ptr noundef %aq_hw, i32 noundef %etht_flr, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21248
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 65535, i32 noundef 0, i32 noundef %etht_flr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_l4_spd_set(ptr noundef %aq_hw, i32 noundef %val, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21504
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 65535, i32 noundef 0, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpf_l4_dpd_set(ptr noundef %aq_hw, i32 noundef %val, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 21536
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 65535, i32 noundef 0, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_ipv4header_crc_offload_en_set(ptr noundef %aq_hw, i32 noundef %ipv4header_crc_offload_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21888, i32 noundef 2, i32 noundef 1, i32 noundef %ipv4header_crc_offload_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_rx_desc_vlan_stripping_set(ptr noundef %aq_hw, i32 noundef %rx_desc_vlan_stripping, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 5
  %add = add i32 %mul, 23304
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 536870912, i32 noundef 29, i32 noundef %rx_desc_vlan_stripping) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_outer_vlan_tag_mode_set(ptr noundef %context, i32 noundef %outervlantagmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %context, i32 noundef 21888, i32 noundef 4, i32 noundef 2, i32 noundef %outervlantagmode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_rpo_outer_vlan_tag_mode_get(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %context, i32 noundef 21888, i32 noundef 4, i32 noundef 2) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_tcp_udp_crc_offload_en_set(ptr noundef %aq_hw, i32 noundef %tcp_udp_crc_offload_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21888, i32 noundef 1, i32 noundef 0, i32 noundef %tcp_udp_crc_offload_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_en_set(ptr noundef %aq_hw, i32 noundef %lro_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 21904, i32 noundef %lro_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_patch_optimization_en_set(ptr noundef %aq_hw, i32 noundef %lro_patch_optimization_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21908, i32 noundef 32768, i32 noundef 15, i32 noundef %lro_patch_optimization_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_qsessions_lim_set(ptr noundef %aq_hw, i32 noundef %lro_qsessions_lim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21908, i32 noundef 12288, i32 noundef 12, i32 noundef %lro_qsessions_lim) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_total_desc_lim_set(ptr noundef %aq_hw, i32 noundef %lro_total_desc_lim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21908, i32 noundef 96, i32 noundef 5, i32 noundef %lro_total_desc_lim) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_min_pay_of_first_pkt_set(ptr noundef %aq_hw, i32 noundef %lro_min_pld_of_first_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 21908, i32 noundef 31, i32 noundef 0, i32 noundef %lro_min_pld_of_first_pkt) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_pkt_lim_set(ptr noundef %aq_hw, i32 noundef %lro_pkt_lim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 21912, i32 noundef %lro_pkt_lim) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_max_num_of_descriptors_set(ptr noundef %aq_hw, i32 noundef %lro_max_number_of_descriptors, i32 noundef %lro) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x i32], ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_adr, i32 0, i32 %lro
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [32 x i32], ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_msk, i32 0, i32 %lro
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [32 x i32], ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_shift, i32 0, i32 %lro
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %lro_max_number_of_descriptors) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_time_base_divider_set(ptr noundef %aq_hw, i32 noundef %lro_time_base_divider) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 22048, i32 noundef -1048576, i32 noundef 20, i32 noundef %lro_time_base_divider) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_inactive_interval_set(ptr noundef %aq_hw, i32 noundef %lro_inactive_interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 22048, i32 noundef 1047552, i32 noundef 10, i32 noundef %lro_inactive_interval) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpo_lro_max_coalescing_interval_set(ptr noundef %aq_hw, i32 noundef %lro_max_coal_interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 22048, i32 noundef 1023, i32 noundef 0, i32 noundef %lro_max_coal_interval) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rx_rx_reg_res_dis_set(ptr noundef %aq_hw, i32 noundef %rx_reg_res_dis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 20480, i32 noundef 536870912, i32 noundef 29, i32 noundef %rx_reg_res_dis) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_cpu_id_set(ptr noundef %aq_hw, i32 noundef %cpuid, i32 noundef %dca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dca, 2
  %add = add i32 %mul, 33792
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 255, i32 noundef 0, i32 noundef %cpuid) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_large_send_offload_en_set(ptr noundef %aq_hw, i32 noundef %large_send_offload_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 30736, i32 noundef %large_send_offload_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tx_dca_en_set(ptr noundef %aq_hw, i32 noundef %tx_dca_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 33920, i32 noundef -2147483648, i32 noundef 31, i32 noundef %tx_dca_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tx_dca_mode_set(ptr noundef %aq_hw, i32 noundef %tx_dca_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 33920, i32 noundef 15, i32 noundef 0, i32 noundef %tx_dca_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tx_desc_dca_en_set(ptr noundef %aq_hw, i32 noundef %tx_desc_dca_en, i32 noundef %dca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dca, 2
  %add = add i32 %mul, 33792
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %tx_desc_dca_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tx_desc_en_set(ptr noundef %aq_hw, i32 noundef %tx_desc_en, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 6
  %add = add i32 %mul, 31752
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %tx_desc_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_tdm_tx_desc_head_ptr_get(ptr noundef %aq_hw, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 6
  %add = add i32 %mul, 31756
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 8191, i32 noundef 0) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tx_desc_len_set(ptr noundef %aq_hw, i32 noundef %tx_desc_len, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 6
  %add = add i32 %mul, 31752
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 8184, i32 noundef 3, i32 noundef %tx_desc_len) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %aq_hw, i32 noundef %tx_desc_wr_wb_irq_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 31552, i32 noundef 2, i32 noundef 1, i32 noundef %tx_desc_wr_wb_irq_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tx_desc_wr_wb_threshold_set(ptr noundef %aq_hw, i32 noundef %tx_desc_wr_wb_threshold, i32 noundef %descriptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %descriptor, 6
  %add = add i32 %mul, 31768
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 32512, i32 noundef 8, i32 noundef %tx_desc_wr_wb_threshold) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tdm_tdm_intr_moder_en_set(ptr noundef %aq_hw, i32 noundef %tdm_irq_moderation_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 31552, i32 noundef 16, i32 noundef 4, i32 noundef %tdm_irq_moderation_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(ptr noundef %aq_hw, i32 noundef %lso_tcp_flag_of_first_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30752, i32 noundef 4095, i32 noundef 0, i32 noundef %lso_tcp_flag_of_first_pkt) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(ptr noundef %aq_hw, i32 noundef %lso_tcp_flag_of_last_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30756, i32 noundef 4095, i32 noundef 0, i32 noundef %lso_tcp_flag_of_last_pkt) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(ptr noundef %aq_hw, i32 noundef %lso_tcp_flag_of_middle_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30752, i32 noundef 268369920, i32 noundef 16, i32 noundef %lso_tcp_flag_of_middle_pkt) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_buff_en_set(ptr noundef %aq_hw, i32 noundef %tx_buff_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 1, i32 noundef 0, i32 noundef %tx_buff_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_tpb_tps_tx_tc_mode_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 256, i32 noundef 8) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tps_tx_tc_mode_set(ptr noundef %aq_hw, i32 noundef %tx_traf_class_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 256, i32 noundef 8, i32 noundef %tx_traf_class_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(ptr noundef %aq_hw, i32 noundef %tx_buff_hi_threshold_per_tc, i32 noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %buffer, 4
  %add = add i32 %mul, 30996
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 536805376, i32 noundef 16, i32 noundef %tx_buff_hi_threshold_per_tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(ptr noundef %aq_hw, i32 noundef %tx_buff_lo_threshold_per_tc, i32 noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %buffer, 4
  %add = add i32 %mul, 30996
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 8191, i32 noundef 0, i32 noundef %tx_buff_lo_threshold_per_tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_dma_sys_lbk_en_set(ptr noundef %aq_hw, i32 noundef %tx_dma_sys_lbk_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 28672, i32 noundef 64, i32 noundef 6, i32 noundef %tx_dma_sys_lbk_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_dma_net_lbk_en_set(ptr noundef %aq_hw, i32 noundef %tx_dma_net_lbk_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 28672, i32 noundef 16, i32 noundef 4, i32 noundef %tx_dma_net_lbk_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_tx_clk_gate_en_set(ptr noundef %aq_hw, i32 noundef %tx_clk_gate_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 16, i32 noundef 4, i32 noundef %tx_clk_gate_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(ptr noundef %aq_hw, i32 noundef %tx_pkt_buff_size_per_tc, i32 noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %buffer, 4
  %add = add i32 %mul, 30992
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 255, i32 noundef 0, i32 noundef %tx_pkt_buff_size_per_tc) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpb_tx_path_scp_ins_en_set(ptr noundef %aq_hw, i32 noundef %tx_path_scp_ins_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 4, i32 noundef 2, i32 noundef %tx_path_scp_ins_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpo_ipv4header_crc_offload_en_set(ptr noundef %aq_hw, i32 noundef %ipv4header_crc_offload_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30720, i32 noundef 2, i32 noundef 1, i32 noundef %ipv4header_crc_offload_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpo_tcp_udp_crc_offload_en_set(ptr noundef %aq_hw, i32 noundef %tcp_udp_crc_offload_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30720, i32 noundef 1, i32 noundef 0, i32 noundef %tcp_udp_crc_offload_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tpo_tx_pkt_sys_lbk_en_set(ptr noundef %aq_hw, i32 noundef %tx_pkt_sys_lbk_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 28672, i32 noundef 128, i32 noundef 7, i32 noundef %tx_pkt_sys_lbk_en) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef %aq_hw, i32 noundef %tx_pkt_shed_data_arb_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 28928, i32 noundef 1, i32 noundef 0, i32 noundef %tx_pkt_shed_data_arb_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(ptr noundef %aq_hw, i32 noundef %curr_time_res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 29456, i32 noundef -2147483648, i32 noundef 31, i32 noundef %curr_time_res) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(ptr noundef %aq_hw, i32 noundef %tx_pkt_shed_desc_rate_lim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 29456, i32 noundef 2047, i32 noundef 0, i32 noundef %tx_pkt_shed_desc_rate_lim) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(ptr noundef %aq_hw, i32 noundef %arb_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 29184, i32 noundef 3, i32 noundef 0, i32 noundef %arb_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(ptr noundef %aq_hw, i32 noundef %tc, i32 noundef %max_credit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %tc, 2
  %add = add i32 %mul, 29200
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 268369920, i32 noundef 16, i32 noundef %max_credit) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(ptr noundef %aq_hw, i32 noundef %tc, i32 noundef %weight) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %tc, 2
  %add = add i32 %mul, 29200
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 511, i32 noundef 0, i32 noundef %weight) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(ptr noundef %aq_hw, i32 noundef %arb_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 29440, i32 noundef 1, i32 noundef 0, i32 noundef %arb_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef %aq_hw, i32 noundef %tc, i32 noundef %max_credit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %tc, 2
  %add = add i32 %mul, 28944
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 268369920, i32 noundef 16, i32 noundef %max_credit) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef %aq_hw, i32 noundef %tc, i32 noundef %weight) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %tc, 2
  %add = add i32 %mul, 28944
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 511, i32 noundef 0, i32 noundef %weight) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_desc_rate_mode_set(ptr noundef %aq_hw, i32 noundef %rate_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 30976, i32 noundef 128, i32 noundef 7, i32 noundef %rate_mode) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_desc_rate_en_set(ptr noundef %aq_hw, i32 noundef %desc, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %desc, 4
  %add = add i32 %mul, 29704
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef -2147483648, i32 noundef 31, i32 noundef %enable) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_desc_rate_x_set(ptr noundef %aq_hw, i32 noundef %desc, i32 noundef %rate_int) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %desc, 4
  %add = add i32 %mul, 29704
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 67043328, i32 noundef 16, i32 noundef %rate_int) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tps_tx_desc_rate_y_set(ptr noundef %aq_hw, i32 noundef %desc, i32 noundef %rate_frac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %desc, 4
  %add = add i32 %mul, 29704
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 16383, i32 noundef 0, i32 noundef %rate_frac) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_tx_tx_reg_res_dis_set(ptr noundef %aq_hw, i32 noundef %tx_reg_res_dis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 28672, i32 noundef 536870912, i32 noundef 29, i32 noundef %tx_reg_res_dis) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_msm_reg_access_status_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 17408, i32 noundef 4096, i32 noundef 12) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_msm_reg_addr_for_indirect_addr_set(ptr noundef %aq_hw, i32 noundef %reg_addr_for_indirect_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 17408, i32 noundef 255, i32 noundef 0, i32 noundef %reg_addr_for_indirect_addr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_msm_reg_rd_strobe_set(ptr noundef %aq_hw, i32 noundef %reg_rd_strobe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 17408, i32 noundef 512, i32 noundef 9, i32 noundef %reg_rd_strobe) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_msm_reg_rd_data_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 17416) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_msm_reg_wr_data_set(ptr noundef %aq_hw, i32 noundef %reg_wr_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 17412, i32 noundef %reg_wr_data) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_msm_reg_wr_strobe_set(ptr noundef %aq_hw, i32 noundef %reg_wr_strobe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 17408, i32 noundef 256, i32 noundef 8, i32 noundef %reg_wr_strobe) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_pci_pci_reg_res_dis_set(ptr noundef %aq_hw, i32 noundef %pci_reg_res_dis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 4096, i32 noundef 536870912, i32 noundef 29, i32 noundef %pci_reg_res_dis) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_reg_glb_cpu_scratch_scp_set(ptr noundef %aq_hw, i32 noundef %glb_cpu_scratch_scp, i32 noundef %scratch_scp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %scratch_scp, 2
  %add = add i32 %mul, 768
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %glb_cpu_scratch_scp) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_pcs_ptp_clock_read_enable(ptr noundef %aq_hw, i32 noundef %ptp_clock_read_enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 17960, i32 noundef 16, i32 noundef 4, i32 noundef %ptp_clock_read_enable) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_pcs_ptp_clock_get(ptr noundef %aq_hw, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 2
  %add = add i32 %mul, 18688
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef %add) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_mcp_up_force_intr_set(ptr noundef %aq_hw, i32 noundef %up_force_intr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef 1028, i32 noundef 2, i32 noundef 1, i32 noundef %up_force_intr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv4_dest_addr_clear(ptr noundef %aq_hw, i8 noundef zeroext %location) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 21456
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv4_src_addr_clear(ptr noundef %aq_hw, i8 noundef zeroext %location) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 21424
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %aq_hw, i8 noundef zeroext %location) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 21376
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv6_dest_addr_clear(ptr noundef %aq_hw, i8 noundef zeroext %location) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add1 = add nuw nsw i32 %mul, 21456
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1, i32 noundef 0) #2
  %add.1 = shl nuw nsw i32 %conv, 2
  %add1.1 = add nuw nsw i32 %add.1, 21460
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.1, i32 noundef 0) #2
  %add.2 = shl nuw nsw i32 %conv, 2
  %add1.2 = add nuw nsw i32 %add.2, 21464
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.2, i32 noundef 0) #2
  %add.3 = shl nuw nsw i32 %conv, 2
  %add1.3 = add nuw nsw i32 %add.3, 21468
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.3, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv6_src_addr_clear(ptr noundef %aq_hw, i8 noundef zeroext %location) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add1 = add nuw nsw i32 %mul, 21424
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1, i32 noundef 0) #2
  %add.1 = shl nuw nsw i32 %conv, 2
  %add1.1 = add nuw nsw i32 %add.1, 21428
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.1, i32 noundef 0) #2
  %add.2 = shl nuw nsw i32 %conv, 2
  %add1.2 = add nuw nsw i32 %add.2, 21432
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.2, i32 noundef 0) #2
  %add.3 = shl nuw nsw i32 %conv, 2
  %add1.3 = add nuw nsw i32 %add.3, 21436
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.3, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv4_dest_addr_set(ptr noundef %aq_hw, i8 noundef zeroext %location, i32 noundef %ipv4_dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 21456
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %ipv4_dest) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv4_src_addr_set(ptr noundef %aq_hw, i8 noundef zeroext %location, i32 noundef %ipv4_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 21424
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %ipv4_src) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_cmd_set(ptr noundef %aq_hw, i8 noundef zeroext %location, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 21376
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add, i32 noundef %cmd) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv6_src_addr_set(ptr noundef %aq_hw, i8 noundef zeroext %location, ptr nocapture noundef readonly %ipv6_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add1 = add nuw nsw i32 %mul, 21424
  %arrayidx = getelementptr i32, ptr %ipv6_src, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1, i32 noundef %1) #2
  %add.1 = shl nuw nsw i32 %conv, 2
  %add1.1 = add nuw nsw i32 %add.1, 21428
  %arrayidx.1 = getelementptr i32, ptr %ipv6_src, i32 2
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.1, i32 noundef %3) #2
  %add.2 = shl nuw nsw i32 %conv, 2
  %add1.2 = add nuw nsw i32 %add.2, 21432
  %arrayidx.2 = getelementptr i32, ptr %ipv6_src, i32 1
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.2, i32 noundef %5) #2
  %add.3 = shl nuw nsw i32 %conv, 2
  %add1.3 = add nuw nsw i32 %add.3, 21436
  %6 = ptrtoint ptr %ipv6_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipv6_src, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.3, i32 noundef %7) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_rpfl3l4_ipv6_dest_addr_set(ptr noundef %aq_hw, i8 noundef zeroext %location, ptr nocapture noundef readonly %ipv6_dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %location to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add1 = add nuw nsw i32 %mul, 21456
  %arrayidx = getelementptr i32, ptr %ipv6_dest, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1, i32 noundef %1) #2
  %add.1 = shl nuw nsw i32 %conv, 2
  %add1.1 = add nuw nsw i32 %add.1, 21460
  %arrayidx.1 = getelementptr i32, ptr %ipv6_dest, i32 2
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.1, i32 noundef %3) #2
  %add.2 = shl nuw nsw i32 %conv, 2
  %add1.2 = add nuw nsw i32 %add.2, 21464
  %arrayidx.2 = getelementptr i32, ptr %ipv6_dest, i32 1
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.2, i32 noundef %5) #2
  %add.3 = shl nuw nsw i32 %conv, 2
  %add1.3 = add nuw nsw i32 %add.3, 21468
  %6 = ptrtoint ptr %ipv6_dest to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipv6_dest, align 4
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef %add1.3, i32 noundef %7) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_sem_ram_get(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 936) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_sem_mdio_get(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 928) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_sem_reset1_get(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 940) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_sem_reset2_get(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 944) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_scrpad_get(ptr noundef %aq_hw, i32 noundef %scratch_scp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %scratch_scp, 2
  %add = add i32 %mul, 768
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef %add) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_scrpad12_get(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 812) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_scrpad25_get(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 864) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_glb_mdio_iface1_set(ptr noundef %aq_hw, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 640, i32 noundef %value) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_glb_mdio_iface1_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 640) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_glb_mdio_iface2_set(ptr noundef %aq_hw, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 644, i32 noundef %value) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_glb_mdio_iface2_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 644) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_glb_mdio_iface3_set(ptr noundef %aq_hw, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 648, i32 noundef %value) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_glb_mdio_iface3_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 648) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_glb_mdio_iface4_set(ptr noundef %aq_hw, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 652, i32 noundef %value) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_glb_mdio_iface4_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 652) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_glb_mdio_iface5_set(ptr noundef %aq_hw, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aq_hw_write_reg(ptr noundef %aq_hw, i32 noundef 656, i32 noundef %value) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_glb_mdio_iface5_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %aq_hw, i32 noundef 656) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_mdio_busy_get(ptr noundef %aq_hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef 644, i32 noundef -2147483648, i32 noundef 31) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_adr, !1, !"itr_imr_rxren_adr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 136, i32 13}
!2 = !{ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_msk, !3, !"itr_imr_rxren_msk", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 148, i32 13}
!4 = !{ptr @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_shift, !5, !"itr_imr_rxren_shift", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 160, i32 13}
!6 = !{ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_adr, !7, !"itr_imr_txten_adr", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 177, i32 13}
!8 = !{ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_msk, !9, !"itr_imr_txten_msk", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 189, i32 13}
!10 = !{ptr @hw_atl_itr_irq_map_en_tx_set.itr_imr_txten_shift, !11, !"itr_imr_txten_shift", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 201, i32 13}
!12 = !{ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_adr, !13, !"itr_imr_rxr_adr", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 217, i32 13}
!14 = !{ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_msk, !15, !"itr_imr_rxr_msk", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 229, i32 13}
!16 = !{ptr @hw_atl_itr_irq_map_rx_set.itr_imr_rxr_shift, !17, !"itr_imr_rxr_shift", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 241, i32 13}
!18 = !{ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_adr, !19, !"itr_imr_txt_adr", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 257, i32 13}
!20 = !{ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_msk, !21, !"itr_imr_txt_msk", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 269, i32 13}
!22 = !{ptr @hw_atl_itr_irq_map_tx_set.itr_imr_txt_shift, !23, !"itr_imr_txt_shift", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 281, i32 13}
!24 = !{ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_adr, !25, !"rpf_rpb_rx_tc_upt_adr", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 805, i32 13}
!26 = !{ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_msk, !27, !"rpf_rpb_rx_tc_upt_msk", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 811, i32 13}
!28 = !{ptr @hw_atl_rpf_rpb_user_priority_tc_map_set.rpf_rpb_rx_tc_upt_shft, !29, !"rpf_rpb_rx_tc_upt_shft", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 817, i32 13}
!30 = !{ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_adr, !31, !"rpo_lro_ldes_max_adr", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 1167, i32 13}
!32 = !{ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_msk, !33, !"rpo_lro_ldes_max_msk", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 1179, i32 13}
!34 = !{ptr @hw_atl_rpo_lro_max_num_of_descriptors_set.rpo_lro_ldes_max_shift, !35, !"rpo_lro_ldes_max_shift", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_llh.c", i32 1191, i32 13}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
