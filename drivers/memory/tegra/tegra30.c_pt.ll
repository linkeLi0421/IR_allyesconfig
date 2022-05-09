; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra30.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra30.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_mc_client = type { i32, ptr, %union.anon, i32, %struct.anon }
%union.anon = type { i32 }
%struct.anon = type { %struct.anon.0, %struct.anon.1, %struct.anon.2 }
%struct.anon.0 = type { i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32 }
%struct.anon.2 = type { i32, i32 }
%struct.tegra_smmu_soc = type { ptr, i32, ptr, i32, ptr, i32, i8, i8, i32, i32 }
%struct.tegra_mc_reset_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_reset = type { ptr, i32, i32, i32, i32, i32 }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.tegra_mc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.tegra_smmu_swgroup = type { ptr, i32, i32 }
%struct.tegra_smmu_group_soc = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.icc_node_data = type { ptr, i32 }

@tegra30_mc_clients = internal constant { [66 x %struct.tegra_mc_client], [768 x i8] } { [66 x %struct.tegra_mc_client] [%struct.tegra_mc_client { i32 0, ptr @.str, %union.anon zeroinitializer, i32 32, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 844, i32 0, i32 255, i32 0 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 1, ptr @.str.1, %union.anon { i32 1 }, i32 2048, %struct.anon { %struct.anon.0 { i32 552, i32 1 }, %struct.anon.1 { i32 744, i32 0, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 2, ptr @.str.2, %union.anon { i32 2 }, i32 2048, %struct.anon { %struct.anon.0 { i32 552, i32 2 }, %struct.anon.1 { i32 756, i32 0, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 3, ptr @.str.3, %union.anon { i32 1 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 3 }, %struct.anon.1 { i32 744, i32 16, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 4, ptr @.str.4, %union.anon { i32 2 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 4 }, %struct.anon.1 { i32 756, i32 16, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 5, ptr @.str.5, %union.anon { i32 1 }, i32 2048, %struct.anon { %struct.anon.0 { i32 552, i32 5 }, %struct.anon.1 { i32 748, i32 0, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 6, ptr @.str.6, %union.anon { i32 2 }, i32 2048, %struct.anon { %struct.anon.0 { i32 552, i32 6 }, %struct.anon.1 { i32 760, i32 0, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 7, ptr @.str.7, %union.anon { i32 1 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 7 }, %struct.anon.1 { i32 748, i32 16, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 8, ptr @.str.8, %union.anon { i32 2 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 8 }, %struct.anon.1 { i32 760, i32 16, i32 255, i32 78 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 9, ptr @.str.9, %union.anon { i32 3 }, i32 128, %struct.anon { %struct.anon.0 { i32 552, i32 9 }, %struct.anon.1 { i32 768, i32 0, i32 255, i32 23 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 10, ptr @.str.10, %union.anon { i32 4 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 10 }, %struct.anon.1 { i32 776, i32 0, i32 255, i32 9 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 11, ptr @.str.11, %union.anon { i32 4 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 11 }, %struct.anon.1 { i32 776, i32 16, i32 255, i32 9 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 12, ptr @.str.12, %union.anon { i32 5 }, i32 128, %struct.anon { %struct.anon.0 { i32 552, i32 12 }, %struct.anon.1 { i32 808, i32 0, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 13, ptr @.str.13, %union.anon { i32 6 }, i32 128, %struct.anon { %struct.anon.0 { i32 552, i32 13 }, %struct.anon.1 { i32 868, i32 0, i32 255, i32 44 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 14, ptr @.str.14, %union.anon { i32 7 }, i32 512, %struct.anon { %struct.anon.0 { i32 552, i32 14 }, %struct.anon.1 { i32 736, i32 0, i32 255, i32 16 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 15, ptr @.str.15, %union.anon { i32 8 }, i32 32, %struct.anon { %struct.anon.0 { i32 552, i32 15 }, %struct.anon.1 { i32 740, i32 0, i32 255, i32 4 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 16, ptr @.str.16, %union.anon { i32 1 }, i32 32, %struct.anon { %struct.anon.0 { i32 552, i32 16 }, %struct.anon.1 { i32 752, i32 0, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 17, ptr @.str.17, %union.anon { i32 2 }, i32 32, %struct.anon { %struct.anon.0 { i32 552, i32 17 }, %struct.anon.1 { i32 764, i32 0, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 18, ptr @.str.18, %union.anon { i32 9 }, i32 768, %struct.anon { %struct.anon.0 { i32 552, i32 18 }, %struct.anon.1 { i32 820, i32 0, i32 255, i32 10 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 19, ptr @.str.19, %union.anon { i32 10 }, i32 768, %struct.anon { %struct.anon.0 { i32 552, i32 19 }, %struct.anon.1 { i32 828, i32 0, i32 255, i32 10 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 20, ptr @.str.20, %union.anon { i32 4 }, i32 768, %struct.anon { %struct.anon.0 { i32 552, i32 20 }, %struct.anon.1 { i32 780, i32 0, i32 255, i32 10 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 21, ptr @.str.21, %union.anon { i32 11 }, i32 256, %struct.anon { %struct.anon.0 { i32 552, i32 21 }, %struct.anon.1 { i32 792, i32 0, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 22, ptr @.str.22, %union.anon { i32 12 }, i32 256, %struct.anon { %struct.anon.0 { i32 552, i32 22 }, %struct.anon.1 { i32 784, i32 0, i32 255, i32 5 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 23, ptr @.str.23, %union.anon { i32 12 }, i32 128, %struct.anon { %struct.anon.0 { i32 552, i32 23 }, %struct.anon.1 { i32 784, i32 16, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 24, ptr @.str.24, %union.anon { i32 9 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 24 }, %struct.anon.1 { i32 820, i32 16, i32 255, i32 19 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 25, ptr @.str.25, %union.anon { i32 10 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 25 }, %struct.anon.1 { i32 828, i32 16, i32 255, i32 19 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 26, ptr @.str.26, %union.anon { i32 5 }, i32 32, %struct.anon { %struct.anon.0 { i32 552, i32 26 }, %struct.anon.1 { i32 808, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 27, ptr @.str.27, %union.anon { i32 5 }, i32 1024, %struct.anon { %struct.anon.0 { i32 552, i32 27 }, %struct.anon.1 { i32 812, i32 0, i32 255, i32 66 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 28, ptr @.str.28, %union.anon { i32 5 }, i32 128, %struct.anon { %struct.anon.0 { i32 552, i32 28 }, %struct.anon.1 { i32 812, i32 16, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 29, ptr @.str.29, %union.anon { i32 13 }, i32 32, %struct.anon { %struct.anon.0 { i32 552, i32 29 }, %struct.anon.1 { i32 836, i32 0, i32 255, i32 16 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 30, ptr @.str.30, %union.anon { i32 13 }, i32 128, %struct.anon { %struct.anon.0 { i32 552, i32 30 }, %struct.anon.1 { i32 836, i32 16, i32 255, i32 18 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 31, ptr @.str.31, %union.anon { i32 14 }, i32 512, %struct.anon { %struct.anon.0 { i32 552, i32 31 }, %struct.anon.1 { i32 848, i32 0, i32 255, i32 51 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 32, ptr @.str.32, %union.anon { i32 9 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 0 }, %struct.anon.1 { i32 824, i32 0, i32 255, i32 19 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 33, ptr @.str.33, %union.anon { i32 10 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 1 }, %struct.anon.1 { i32 832, i32 0, i32 255, i32 19 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 34, ptr @.str.34, %union.anon { i32 15 }, i32 128, %struct.anon { %struct.anon.0 { i32 556, i32 2 }, %struct.anon.1 { i32 852, i32 0, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 35, ptr @.str.35, %union.anon { i32 15 }, i32 64, %struct.anon { %struct.anon.0 { i32 556, i32 3 }, %struct.anon.1 { i32 852, i32 16, i32 255, i32 208 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 36, ptr @.str.36, %union.anon { i32 15 }, i32 256, %struct.anon { %struct.anon.0 { i32 556, i32 4 }, %struct.anon.1 { i32 856, i32 0, i32 255, i32 42 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 37, ptr @.str.37, %union.anon { i32 15 }, i32 256, %struct.anon { %struct.anon.0 { i32 556, i32 5 }, %struct.anon.1 { i32 856, i32 16, i32 255, i32 116 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 38, ptr @.str.38, %union.anon { i32 16 }, i32 224, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 804, i32 0, i32 255, i32 4 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 39, ptr @.str.39, %union.anon { i32 17 }, i32 224, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 800, i32 0, i32 255, i32 4 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 40, ptr @.str.40, %union.anon { i32 3 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 8 }, %struct.anon.1 { i32 768, i32 16, i32 255, i32 108 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 41, ptr @.str.41, %union.anon { i32 3 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 9 }, %struct.anon.1 { i32 772, i32 0, i32 255, i32 108 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 42, ptr @.str.42, %union.anon { i32 3 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 10 }, %struct.anon.1 { i32 772, i32 16, i32 255, i32 108 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 43, ptr @.str.43, %union.anon { i32 5 }, i32 128, %struct.anon { %struct.anon.0 { i32 556, i32 11 }, %struct.anon.1 { i32 816, i32 0, i32 255, i32 19 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 44, ptr @.str.44, %union.anon { i32 6 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 12 }, %struct.anon.1 { i32 868, i32 16, i32 255, i32 18 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 45, ptr @.str.45, %union.anon { i32 6 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 13 }, %struct.anon.1 { i32 872, i32 0, i32 255, i32 178 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 46, ptr @.str.46, %union.anon { i32 6 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 14 }, %struct.anon.1 { i32 872, i32 16, i32 255, i32 178 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 47, ptr @.str.47, %union.anon { i32 6 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 15 }, %struct.anon.1 { i32 876, i32 0, i32 255, i32 18 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 48, ptr @.str.48, %union.anon { i32 4 }, i32 2048, %struct.anon { %struct.anon.0 { i32 556, i32 16 }, %struct.anon.1 { i32 780, i32 16, i32 255, i32 9 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 49, ptr @.str.49, %union.anon { i32 7 }, i32 512, %struct.anon { %struct.anon.0 { i32 556, i32 17 }, %struct.anon.1 { i32 736, i32 16, i32 255, i32 12 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 50, ptr @.str.50, %union.anon { i32 8 }, i32 32, %struct.anon { %struct.anon.0 { i32 556, i32 18 }, %struct.anon.1 { i32 740, i32 16, i32 255, i32 14 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 51, ptr @.str.51, %union.anon { i32 9 }, i32 768, %struct.anon { %struct.anon.0 { i32 556, i32 19 }, %struct.anon.1 { i32 824, i32 16, i32 255, i32 10 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 52, ptr @.str.52, %union.anon { i32 10 }, i32 768, %struct.anon { %struct.anon.0 { i32 556, i32 20 }, %struct.anon.1 { i32 832, i32 16, i32 255, i32 10 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 53, ptr @.str.53, %union.anon { i32 11 }, i32 256, %struct.anon { %struct.anon.0 { i32 556, i32 21 }, %struct.anon.1 { i32 792, i32 16, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 54, ptr @.str.54, %union.anon { i32 12 }, i32 512, %struct.anon { %struct.anon.0 { i32 556, i32 22 }, %struct.anon.1 { i32 788, i32 0, i32 255, i32 16 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 55, ptr @.str.55, %union.anon { i32 18 }, i32 1024, %struct.anon { %struct.anon.0 { i32 556, i32 23 }, %struct.anon.1 { i32 796, i32 0, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 56, ptr @.str.56, %union.anon { i32 16 }, i32 384, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 804, i32 16, i32 255, i32 14 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 57, ptr @.str.57, %union.anon { i32 17 }, i32 384, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 800, i32 16, i32 255, i32 14 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 58, ptr @.str.58, %union.anon { i32 5 }, i32 128, %struct.anon { %struct.anon.0 { i32 556, i32 26 }, %struct.anon.1 { i32 816, i32 16, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 59, ptr @.str.59, %union.anon { i32 13 }, i32 32, %struct.anon { %struct.anon.0 { i32 556, i32 27 }, %struct.anon.1 { i32 840, i32 0, i32 255, i32 16 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 60, ptr @.str.60, %union.anon { i32 13 }, i32 64, %struct.anon { %struct.anon.0 { i32 556, i32 28 }, %struct.anon.1 { i32 840, i32 16, i32 255, i32 6 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 61, ptr @.str.61, %union.anon { i32 14 }, i32 512, %struct.anon { %struct.anon.0 { i32 556, i32 29 }, %struct.anon.1 { i32 848, i32 16, i32 255, i32 51 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 62, ptr @.str.62, %union.anon { i32 15 }, i32 64, %struct.anon { %struct.anon.0 { i32 556, i32 30 }, %struct.anon.1 { i32 860, i32 0, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 63, ptr @.str.63, %union.anon { i32 15 }, i32 256, %struct.anon { %struct.anon.0 { i32 556, i32 31 }, %struct.anon.1 { i32 860, i32 16, i32 255, i32 255 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 64, ptr @.str.64, %union.anon { i32 15 }, i32 32, %struct.anon { %struct.anon.0 { i32 560, i32 0 }, %struct.anon.1 { i32 864, i32 0, i32 255, i32 66 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 65, ptr @.str.65, %union.anon { i32 15 }, i32 256, %struct.anon { %struct.anon.0 { i32 560, i32 1 }, %struct.anon.1 { i32 864, i32 16, i32 255, i32 42 }, %struct.anon.2 zeroinitializer } }], [768 x i8] zeroinitializer }, align 32
@tegra30_mc_emem_regs = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 144, i32 148, i32 152, i32 156, i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 184, i32 188, i32 192, i32 196, i32 208, i32 212, i32 216, i32 224], [56 x i8] zeroinitializer }, align 32
@tegra30_smmu_soc = internal constant { %struct.tegra_smmu_soc, [60 x i8] } { %struct.tegra_smmu_soc { ptr @tegra30_mc_clients, i32 66, ptr @tegra30_swgroups, i32 16, ptr @tegra30_groups, i32 1, i8 0, i8 0, i32 16, i32 4 }, [60 x i8] zeroinitializer }, align 32
@tegra_mc_reset_ops_common = external dso_local constant %struct.tegra_mc_reset_ops, align 4
@tegra30_mc_resets = internal constant { [18 x %struct.tegra_mc_reset], [112 x i8] } { [18 x %struct.tegra_mc_reset] [%struct.tegra_mc_reset { ptr @.str.83, i32 0, i32 512, i32 516, i32 0, i32 0 }, %struct.tegra_mc_reset { ptr @.str.84, i32 1, i32 512, i32 516, i32 0, i32 1 }, %struct.tegra_mc_reset { ptr @.str.85, i32 2, i32 512, i32 516, i32 0, i32 2 }, %struct.tegra_mc_reset { ptr @.str.86, i32 3, i32 512, i32 516, i32 0, i32 3 }, %struct.tegra_mc_reset { ptr @.str.87, i32 4, i32 512, i32 516, i32 0, i32 4 }, %struct.tegra_mc_reset { ptr @.str.88, i32 5, i32 512, i32 516, i32 0, i32 5 }, %struct.tegra_mc_reset { ptr @.str.89, i32 6, i32 512, i32 516, i32 0, i32 6 }, %struct.tegra_mc_reset { ptr @.str.90, i32 7, i32 512, i32 516, i32 0, i32 7 }, %struct.tegra_mc_reset { ptr @.str.91, i32 8, i32 512, i32 516, i32 0, i32 8 }, %struct.tegra_mc_reset { ptr @.str.92, i32 9, i32 512, i32 516, i32 0, i32 9 }, %struct.tegra_mc_reset { ptr @.str.93, i32 10, i32 512, i32 516, i32 0, i32 10 }, %struct.tegra_mc_reset { ptr @.str.94, i32 11, i32 512, i32 516, i32 0, i32 11 }, %struct.tegra_mc_reset { ptr @.str.95, i32 12, i32 512, i32 516, i32 0, i32 12 }, %struct.tegra_mc_reset { ptr @.str.96, i32 13, i32 512, i32 516, i32 0, i32 13 }, %struct.tegra_mc_reset { ptr @.str.97, i32 14, i32 512, i32 516, i32 0, i32 14 }, %struct.tegra_mc_reset { ptr @.str.98, i32 15, i32 512, i32 516, i32 0, i32 15 }, %struct.tegra_mc_reset { ptr @.str.99, i32 16, i32 512, i32 516, i32 0, i32 16 }, %struct.tegra_mc_reset { ptr @.str.100, i32 17, i32 512, i32 516, i32 0, i32 17 }], [112 x i8] zeroinitializer }, align 32
@tegra30_mc_icc_ops = internal constant { %struct.tegra_mc_icc_ops, [20 x i8] } { %struct.tegra_mc_icc_ops { ptr @tegra30_mc_icc_set, ptr @tegra30_mc_icc_aggreate, ptr @tegra30_mc_of_icc_xlate_extended }, [20 x i8] zeroinitializer }, align 32
@tegra30_mc_ops = external dso_local constant %struct.tegra_mc_ops, align 4
@tegra30_mc_soc = dso_local constant { %struct.tegra_mc_soc, [40 x i8] } { %struct.tegra_mc_soc { ptr @tegra30_mc_clients, i32 66, ptr @tegra30_mc_emem_regs, i32 18, i32 32, i32 16, i8 127, ptr @tegra30_smmu_soc, i32 1344, ptr @tegra_mc_reset_ops_common, ptr @tegra30_mc_resets, i32 18, ptr @tegra30_mc_icc_ops, ptr @tegra30_mc_ops }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptcr\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display0a\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display0ab\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display0b\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display0bb\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display0c\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display0cb\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"display1b\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"display1bb\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eppup\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2pr\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2sr\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpeunifbr\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"viruv\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"afir\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avpcarm7r\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"displayhc\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"displayhcb\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fdcdrd\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fdcdrd2\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2dr\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdar\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host1xdmar\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host1xr\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"idxsrd\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"idxsrd2\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpe_ipred\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpeamemrd\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpecsrd\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbdmar\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbslvr\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"satar\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"texsrd\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"texsrd2\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdebsevr\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdember\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdemcer\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdetper\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpcorelpr\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpcorer\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eppu\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eppv\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eppy\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpeunifbw\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"viwsb\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"viwu\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"viwv\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"viwy\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g2dw\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"afiw\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avpcarm7w\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fdcdwr\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fdcdwr2\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdaw\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"host1xw\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ispw\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpcorelpw\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpcorew\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpecswr\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbdmaw\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppcsahbslvw\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sataw\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdebsevw\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdedbgw\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdembew\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdetpmw\00", [24 x i8] zeroinitializer }, align 32
@tegra30_swgroups = internal constant { [16 x %struct.tegra_smmu_swgroup], [32 x i8] } { [16 x %struct.tegra_smmu_swgroup] [%struct.tegra_smmu_swgroup { ptr @.str.66, i32 1, i32 576 }, %struct.tegra_smmu_swgroup { ptr @.str.67, i32 2, i32 580 }, %struct.tegra_smmu_swgroup { ptr @.str.68, i32 3, i32 584 }, %struct.tegra_smmu_swgroup { ptr @.str.69, i32 4, i32 588 }, %struct.tegra_smmu_swgroup { ptr @.str.70, i32 5, i32 612 }, %struct.tegra_smmu_swgroup { ptr @.str.71, i32 6, i32 640 }, %struct.tegra_smmu_swgroup { ptr @.str.72, i32 7, i32 568 }, %struct.tegra_smmu_swgroup { ptr @.str.73, i32 8, i32 572 }, %struct.tegra_smmu_swgroup { ptr @.str.74, i32 9, i32 616 }, %struct.tegra_smmu_swgroup { ptr @.str.75, i32 10, i32 620 }, %struct.tegra_smmu_swgroup { ptr @.str.76, i32 11, i32 596 }, %struct.tegra_smmu_swgroup { ptr @.str.77, i32 12, i32 592 }, %struct.tegra_smmu_swgroup { ptr @.str.78, i32 13, i32 624 }, %struct.tegra_smmu_swgroup { ptr @.str.79, i32 14, i32 632 }, %struct.tegra_smmu_swgroup { ptr @.str.80, i32 15, i32 636 }, %struct.tegra_smmu_swgroup { ptr @.str.81, i32 18, i32 600 }], [32 x i8] zeroinitializer }, align 32
@tegra30_groups = internal constant { [1 x %struct.tegra_smmu_group_soc], [20 x i8] } { [1 x %struct.tegra_smmu_group_soc] [%struct.tegra_smmu_group_soc { ptr @.str.82, ptr @tegra30_group_drm, i32 5 }], [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dc\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dcb\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"epp\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"g2\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpe\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vi\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afi\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avpc\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"nv\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nv2\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hc\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ppcs\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vde\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"drm\00", [28 x i8] zeroinitializer }, align 32
@tegra30_group_drm = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 4, i32 9, i32 10], [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AFI\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVPC\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DC\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCB\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EPP\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2D\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HC\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDA\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISP\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MPCORE\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MPCORELP\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MPE\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3D\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3D2\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PPCS\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SATA\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDE\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VI\00", [29 x i8] zeroinitializer }, align 32
@tegra30_mc_of_icc_xlate_extended._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.103, i32 1376, ptr @.str.104, ptr @.str.105 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid ICC client ID %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra30_mc_of_icc_xlate_extended\00", [63 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/memory/tegra/tegra30.c\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra30_mc_of_icc_xlate_extended._entry_ptr = internal global ptr @tegra30_mc_of_icc_xlate_extended._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 6, i64 17]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"tegra30_mc_clients\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 35, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"tegra30_mc_emem_regs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 14, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"tegra30_smmu_soc\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1176, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"tegra30_mc_resets\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1198, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"tegra30_mc_icc_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1381, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"tegra30_mc_soc\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1387, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 38, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 51, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 68, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 85, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 102, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 119, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 136, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 153, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 170, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 187, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 204, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 221, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 238, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 255, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 272, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 289, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 306, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 323, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 340, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 357, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 374, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 391, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 408, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 425, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 442, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 459, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 476, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 493, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 510, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 527, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 544, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 561, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 578, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 595, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 612, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 629, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 646, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 663, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 680, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 693, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 706, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 723, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 740, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 757, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 774, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 791, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 808, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 825, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 842, i32 11 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 859, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 876, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 893, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 910, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 927, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 944, i32 11 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 961, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 978, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 991, i32 11 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1004, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1021, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1038, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1055, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1072, i32 11 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1089, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1106, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1123, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"tegra30_swgroups\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1141, i32 40 }
@___asan_gen_.326 = private unnamed_addr constant [15 x i8] c"tegra30_groups\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1168, i32 42 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1142, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1143, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1144, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1145, i32 12 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1146, i32 12 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1147, i32 12 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1148, i32 12 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1149, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1150, i32 12 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1151, i32 12 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1152, i32 12 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1153, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1154, i32 12 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1155, i32 12 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1156, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1157, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1170, i32 11 }
@___asan_gen_.380 = private unnamed_addr constant [18 x i8] c"tegra30_group_drm\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1160, i32 27 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1199, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1200, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1201, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1202, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1203, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1204, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1205, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1206, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1207, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1208, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1209, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1210, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1211, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1212, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1213, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1214, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1215, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1216, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.453 = private constant [34 x i8] c"../drivers/memory/tegra/tegra30.c\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1376, i32 2 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @tegra30_mc_of_icc_xlate_extended._entry, ptr @tegra30_mc_of_icc_xlate_extended._entry_ptr, ptr @tegra30_mc_clients, ptr @tegra30_mc_emem_regs, ptr @tegra30_smmu_soc, ptr @tegra30_mc_resets, ptr @tegra30_mc_icc_ops, ptr @tegra30_mc_soc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @tegra30_swgroups, ptr @tegra30_groups, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @tegra30_group_drm, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_clients to i32), i32 3168, i32 3936, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_emem_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_smmu_soc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_resets to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_icc_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_soc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_swgroups to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_group_drm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_mc_of_icc_xlate_extended._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_mc_icc_set(ptr noundef readonly %src, ptr noundef readnone %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %provider = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 4
  %0 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %provider, align 4
  %soc = getelementptr i8, ptr %1, i32 -60
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src, align 4
  %cmp = icmp eq ptr %src, %dst
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end186

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end186:                                        ; preds = %entry
  %peak_bw = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 11
  %8 = ptrtoint ptr %peak_bw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peak_bw, align 4
  %conv = zext i32 %9 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #8, !srcloc !237
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %10, i32 0) #8, !srcloc !238
  %asmresult10.i = extractvalue { i64, i32 } %11, 0
  %div166274 = lshr i64 %asmresult10.i, 18
  %extract.t275 = trunc i64 %div166274 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t275)
  %tobool.not.i = icmp eq i32 %extract.t275, 0
  br i1 %tobool.not.i, label %if.end186.if.end.i_crit_edge, label %if.then.i

if.end186.if.end.i_crit_edge:                     ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_size1.i = getelementptr %struct.tegra_mc_client, ptr %5, i32 %7, i32 3
  %12 = ptrtoint ptr %fifo_size1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_size1.i, align 4
  %mul.i = mul i32 %13, 1000
  %div.i = udiv i32 %mul.i, %extract.t275
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end186.if.end.i_crit_edge
  %arb_nsec.0.i = phi i32 [ %div.i, %if.then.i ], [ -1, %if.end186.if.end.i_crit_edge ]
  %14 = getelementptr %struct.tegra_mc_client, ptr %5, i32 %7, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %sw.default.i [
    i32 17, label %if.end.i.cleanup_crit_edge
    i32 0, label %if.end.i.cleanup_crit_edge276
    i32 1, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %if.end.i.sw.epilog.i_crit_edge277
    i32 6, label %sw.bb3.i
  ]

if.end.i.sw.epilog.i_crit_edge277:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.cleanup_crit_edge276:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb3.i, %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge277
  %arb_tolerance_compensation_div.0.i = phi i32 [ 1, %sw.default.i ], [ 1, %sw.bb3.i ], [ 2, %if.end.i.sw.epilog.i_crit_edge ], [ 2, %if.end.i.sw.epilog.i_crit_edge277 ]
  %arb_tolerance_compensation_nsec.0.i = phi i32 [ 150, %sw.default.i ], [ 1050, %sw.bb3.i ], [ 1050, %if.end.i.sw.epilog.i_crit_edge ], [ 1050, %if.end.i.sw.epilog.i_crit_edge277 ]
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %arb_nsec.0.i, i32 %arb_tolerance_compensation_nsec.0.i) #5
  %div7.i = udiv i32 %18, %arb_tolerance_compensation_div.0.i
  %tick.i = getelementptr i8, ptr %1, i32 -56
  %19 = ptrtoint ptr %tick.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tick.i, align 4
  %div8.i = udiv i32 %div7.i, %20
  %la.i = getelementptr %struct.tegra_mc_client, ptr %5, i32 %7, i32 4, i32 1
  %mask.i = getelementptr %struct.tegra_mc_client, ptr %5, i32 %7, i32 4, i32 1, i32 2
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask.i, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %div8.i, i32 %22) #5
  %24 = ptrtoint ptr %la.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %la.i, align 4
  %regs.i.i = getelementptr i8, ptr %1, i32 -72
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !239
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %30 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr %struct.tegra_mc_client, ptr %5, i32 %7, i32 4, i32 1, i32 1
  %32 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %31, %33
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %29, %neg.i
  %shl20.i = shl i32 %23, %33
  %or.i = or i32 %and.i, %shl20.i
  %34 = ptrtoint ptr %la.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %la.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %38, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %36) #5, !srcloc !240
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge276, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_mc_icc_aggreate(ptr nocapture noundef readnone %node, i32 noundef %tag, i32 noundef %avg_bw, i32 noundef %peak_bw, ptr nocapture noundef %agg_avg, ptr nocapture noundef %agg_peak) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %tag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %peak_bw to i64
  %mul.i = mul nuw nsw i64 %conv, 400
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i32 0) #8, !srcloc !241
  %asmresult.i.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #8, !srcloc !238
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906880, i64 %asmresult10.i.i)
  %cmp184.i = icmp ult i64 %asmresult10.i.i, 274877906880
  %val.addr.0.i = lshr i64 %asmresult10.i.i, 6
  %extract.t.i = trunc i64 %val.addr.0.i to i32
  %cond189.off0.i = select i1 %cmp184.i, i32 %extract.t.i, i32 -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %peak_bw.addr.0 = phi i32 [ %cond189.off0.i, %if.then ], [ %peak_bw, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %agg_avg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agg_avg, align 4
  %add = add i32 %3, %avg_bw
  store i32 %add, ptr %agg_avg, align 4
  %4 = ptrtoint ptr %agg_peak to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agg_peak, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %peak_bw.addr.0)
  %7 = ptrtoint ptr %agg_peak to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %agg_peak, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra30_mc_of_icc_xlate_extended(ptr nocapture noundef readonly %spec, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 -84
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %nodes = getelementptr i8, ptr %data, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %nodes, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.cond16.preheader, label %for.body

for.cond16.preheader:                             ; preds = %for.cond
  %soc17 = getelementptr i8, ptr %data, i32 -60
  %3 = ptrtoint ptr %soc17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc17, align 4
  %num_clients = getelementptr inbounds %struct.tegra_mc_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_clients to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_clients, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1854.not = icmp eq i32 %6, 0
  br i1 %cmp1854.not, label %for.cond16.preheader.do.end_crit_edge, label %for.body19.lr.ph

for.cond16.preheader.do.end_crit_edge:            ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %for.body19

for.body:                                         ; preds = %for.cond
  %node.0 = getelementptr i8, ptr %.pn, i32 -20
  %9 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node.0, align 4
  %cmp3.not = icmp eq i32 %10, %1
  br i1 %cmp3.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %node.0.le = getelementptr i8, ptr %.pn, i32 -20
  %soc = getelementptr i8, ptr %data, i32 -60
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %node.0.le, ptr %call7.i.i, align 8
  %17 = getelementptr %struct.tegra_mc_client, ptr %15, i32 %1, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %19, label %sw.default [
    i32 1, label %if.end7.sw.bb_crit_edge
    i32 2, label %if.end7.sw.bb_crit_edge59
    i32 0, label %if.end7.sw.bb_crit_edge60
    i32 6, label %if.end7.sw.bb_crit_edge61
  ]

if.end7.sw.bb_crit_edge61:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge60:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge59:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge59, %if.end7.sw.bb_crit_edge60, %if.end7.sw.bb_crit_edge61
  %tag = getelementptr inbounds %struct.icc_node_data, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %tag, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %tag10 = getelementptr inbounds %struct.icc_node_data, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %tag10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tag10, align 4
  br label %cleanup

for.cond16:                                       ; preds = %for.body19
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond16.do.end_crit_edge, label %for.cond16.for.body19_crit_edge

for.cond16.for.body19_crit_edge:                  ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

for.cond16.do.end_crit_edge:                      ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body19:                                       ; preds = %for.cond16.for.body19_crit_edge, %for.body19.lr.ph
  %i.055 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc, %for.cond16.for.body19_crit_edge ]
  %arrayidx22 = getelementptr %struct.tegra_mc_client, ptr %8, i32 %i.055
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %1)
  %cmp24 = icmp eq i32 %24, %1
  br i1 %cmp24, label %for.body19.cleanup_crit_edge, label %for.cond16

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.cond16.do.end_crit_edge, %for.cond16.preheader.do.end_crit_edge
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.101, i32 noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body19.cleanup_crit_edge, %sw.default, %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call7.i.i, %sw.default ], [ %call7.i.i, %sw.bb ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %for.body19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !223, !224, !225, !226, !227}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @tegra30_mc_soc, !1, !"tegra30_mc_soc", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra30.c", i32 1387, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/memory/tegra/tegra30.c", i32 38, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/memory/tegra/tegra30.c", i32 51, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/memory/tegra/tegra30.c", i32 68, i32 11}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/memory/tegra/tegra30.c", i32 85, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/tegra/tegra30.c", i32 102, i32 11}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/tegra/tegra30.c", i32 119, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/tegra/tegra30.c", i32 136, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/tegra/tegra30.c", i32 153, i32 11}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/tegra/tegra30.c", i32 170, i32 11}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/tegra/tegra30.c", i32 187, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/tegra/tegra30.c", i32 204, i32 11}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/memory/tegra/tegra30.c", i32 221, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/tegra/tegra30.c", i32 238, i32 11}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/tegra/tegra30.c", i32 255, i32 11}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/tegra/tegra30.c", i32 272, i32 11}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/tegra/tegra30.c", i32 289, i32 11}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/tegra/tegra30.c", i32 306, i32 11}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/tegra/tegra30.c", i32 323, i32 11}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/tegra/tegra30.c", i32 340, i32 11}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/tegra/tegra30.c", i32 357, i32 11}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memory/tegra/tegra30.c", i32 374, i32 11}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memory/tegra/tegra30.c", i32 391, i32 11}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memory/tegra/tegra30.c", i32 408, i32 11}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/tegra/tegra30.c", i32 425, i32 11}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memory/tegra/tegra30.c", i32 442, i32 11}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/tegra/tegra30.c", i32 459, i32 11}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/tegra/tegra30.c", i32 476, i32 11}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memory/tegra/tegra30.c", i32 493, i32 11}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/tegra/tegra30.c", i32 510, i32 11}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/tegra/tegra30.c", i32 527, i32 11}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/tegra/tegra30.c", i32 544, i32 11}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memory/tegra/tegra30.c", i32 561, i32 11}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/memory/tegra/tegra30.c", i32 578, i32 11}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/tegra/tegra30.c", i32 595, i32 11}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/tegra/tegra30.c", i32 612, i32 11}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/tegra/tegra30.c", i32 629, i32 11}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memory/tegra/tegra30.c", i32 646, i32 11}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/tegra/tegra30.c", i32 663, i32 11}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memory/tegra/tegra30.c", i32 680, i32 11}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memory/tegra/tegra30.c", i32 693, i32 11}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memory/tegra/tegra30.c", i32 706, i32 11}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memory/tegra/tegra30.c", i32 723, i32 11}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memory/tegra/tegra30.c", i32 740, i32 11}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/tegra/tegra30.c", i32 757, i32 11}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/memory/tegra/tegra30.c", i32 774, i32 11}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memory/tegra/tegra30.c", i32 791, i32 11}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/memory/tegra/tegra30.c", i32 808, i32 11}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memory/tegra/tegra30.c", i32 825, i32 11}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/memory/tegra/tegra30.c", i32 842, i32 11}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/memory/tegra/tegra30.c", i32 859, i32 11}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/memory/tegra/tegra30.c", i32 876, i32 11}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/memory/tegra/tegra30.c", i32 893, i32 11}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/memory/tegra/tegra30.c", i32 910, i32 11}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/memory/tegra/tegra30.c", i32 927, i32 11}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/memory/tegra/tegra30.c", i32 944, i32 11}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/memory/tegra/tegra30.c", i32 961, i32 11}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/memory/tegra/tegra30.c", i32 978, i32 11}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memory/tegra/tegra30.c", i32 991, i32 11}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/memory/tegra/tegra30.c", i32 1004, i32 11}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/memory/tegra/tegra30.c", i32 1021, i32 11}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memory/tegra/tegra30.c", i32 1038, i32 11}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/memory/tegra/tegra30.c", i32 1055, i32 11}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/memory/tegra/tegra30.c", i32 1072, i32 11}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/memory/tegra/tegra30.c", i32 1089, i32 11}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/memory/tegra/tegra30.c", i32 1106, i32 11}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/memory/tegra/tegra30.c", i32 1123, i32 11}
!134 = !{ptr @tegra30_mc_clients, !135, !"tegra30_mc_clients", i1 false, i1 false}
!135 = !{!"../drivers/memory/tegra/tegra30.c", i32 35, i32 37}
!136 = !{ptr @tegra30_mc_emem_regs, !137, !"tegra30_mc_emem_regs", i1 false, i1 false}
!137 = !{!"../drivers/memory/tegra/tegra30.c", i32 14, i32 28}
!138 = !{ptr @tegra30_smmu_soc, !139, !"tegra30_smmu_soc", i1 false, i1 false}
!139 = !{!"../drivers/memory/tegra/tegra30.c", i32 1176, i32 36}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/memory/tegra/tegra30.c", i32 1142, i32 12}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/memory/tegra/tegra30.c", i32 1143, i32 12}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/memory/tegra/tegra30.c", i32 1144, i32 12}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/memory/tegra/tegra30.c", i32 1145, i32 12}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/memory/tegra/tegra30.c", i32 1146, i32 12}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/memory/tegra/tegra30.c", i32 1147, i32 12}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/memory/tegra/tegra30.c", i32 1148, i32 12}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/memory/tegra/tegra30.c", i32 1149, i32 12}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/memory/tegra/tegra30.c", i32 1150, i32 12}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/memory/tegra/tegra30.c", i32 1151, i32 12}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/memory/tegra/tegra30.c", i32 1152, i32 12}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/memory/tegra/tegra30.c", i32 1153, i32 12}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/memory/tegra/tegra30.c", i32 1154, i32 12}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/memory/tegra/tegra30.c", i32 1155, i32 12}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/memory/tegra/tegra30.c", i32 1156, i32 12}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/memory/tegra/tegra30.c", i32 1157, i32 12}
!172 = !{ptr @tegra30_swgroups, !173, !"tegra30_swgroups", i1 false, i1 false}
!173 = !{!"../drivers/memory/tegra/tegra30.c", i32 1141, i32 40}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/memory/tegra/tegra30.c", i32 1170, i32 11}
!176 = !{ptr @tegra30_groups, !177, !"tegra30_groups", i1 false, i1 false}
!177 = !{!"../drivers/memory/tegra/tegra30.c", i32 1168, i32 42}
!178 = !{ptr @tegra30_group_drm, !179, !"tegra30_group_drm", i1 false, i1 false}
!179 = !{!"../drivers/memory/tegra/tegra30.c", i32 1160, i32 27}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/memory/tegra/tegra30.c", i32 1199, i32 2}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/memory/tegra/tegra30.c", i32 1200, i32 2}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/memory/tegra/tegra30.c", i32 1201, i32 2}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/memory/tegra/tegra30.c", i32 1202, i32 2}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/memory/tegra/tegra30.c", i32 1203, i32 2}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/memory/tegra/tegra30.c", i32 1204, i32 2}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/memory/tegra/tegra30.c", i32 1205, i32 2}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/memory/tegra/tegra30.c", i32 1206, i32 2}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/memory/tegra/tegra30.c", i32 1207, i32 2}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/memory/tegra/tegra30.c", i32 1208, i32 2}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/memory/tegra/tegra30.c", i32 1209, i32 2}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/memory/tegra/tegra30.c", i32 1210, i32 2}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/memory/tegra/tegra30.c", i32 1211, i32 2}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/memory/tegra/tegra30.c", i32 1212, i32 2}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/memory/tegra/tegra30.c", i32 1213, i32 2}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/memory/tegra/tegra30.c", i32 1214, i32 2}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/memory/tegra/tegra30.c", i32 1215, i32 2}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/memory/tegra/tegra30.c", i32 1216, i32 2}
!216 = !{ptr @tegra30_mc_resets, !217, !"tegra30_mc_resets", i1 false, i1 false}
!217 = !{!"../drivers/memory/tegra/tegra30.c", i32 1198, i32 36}
!218 = !{ptr @tegra30_mc_icc_ops, !219, !"tegra30_mc_icc_ops", i1 false, i1 false}
!219 = !{!"../drivers/memory/tegra/tegra30.c", i32 1381, i32 38}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/memory/tegra/tegra30.c", i32 1376, i32 2}
!222 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @tegra30_mc_of_icc_xlate_extended._entry, !221, !"_entry", i1 false, i1 false}
!227 = !{ptr @tegra30_mc_of_icc_xlate_extended._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{i64 1420802, i64 1420829}
!238 = !{i64 1421497, i64 1421524, i64 1421557, i64 1421578, i64 1421605, i64 1421631}
!239 = !{i64 5368875}
!240 = !{i64 5368457}
!241 = !{i64 1421089, i64 1421116, i64 1421138, i64 1421166}
