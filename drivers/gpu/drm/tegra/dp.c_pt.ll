; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_dp_link_caps = type { i8, i8, i8, i8, i8 }
%struct.drm_dp_link = type { i8, i32, i32, %struct.drm_dp_link_caps, %struct.anon, i8, i32, i32, [8 x i32], i32, ptr, ptr, %struct.drm_dp_link_train }
%struct.anon = type { i32, i32 }
%struct.drm_dp_link_train = type { %struct.drm_dp_link_train_set, %struct.drm_dp_link_train_set, i32, i8, i8 }
%struct.drm_dp_link_train_set = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_dp_link_ops = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported eDP version: %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@drm_dp_edp_revisions = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\11\12\13\14", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AUX interval %u out of range (max. 4)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to configure DP link: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"using %u lanes at %u kHz (%lu/%lu kbps)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fast link training failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"training parameters not available\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fast link training not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"full link training failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fast-training link: %u lane%s at %u MHz\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read link status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clock recovery failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"channel equalization failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to apply link training: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set training parameters: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set post-cursor: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set training pattern: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to disable link training: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"full-training link: %u lane%s at %u MHz\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock recovery failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"clock recovery failed, downgrading link\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clock recovery succeeded\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"channel equalization failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"channel equalization failed, downgrading link\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"channel equalization succeeded\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to recover clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to equalize channel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"clock recovery lost while equalizing channel\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 162000, i64 270000, i64 540000]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 162000, i64 270000, i64 540000]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 199, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"drm_dp_edp_revisions\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 13, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 219, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 340, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 415, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 860, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 865, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 868, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 873, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 784, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 817, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 822, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 827, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 476, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 491, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 505, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 518, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 720, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 728, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 740, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 745, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 754, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 758, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 763, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 772, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 622, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 681, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [30 x i8] c"../drivers/gpu/drm/tegra/dp.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 654, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @drm_dp_edp_revisions, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_edp_revisions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @drm_dp_link_caps_copy(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src, align 1, !range !71
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %dest, align 1
  %tps3_supported = getelementptr inbounds %struct.drm_dp_link_caps, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %tps3_supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tps3_supported, align 1, !range !71
  %tps3_supported3 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %dest, i32 0, i32 1
  %5 = ptrtoint ptr %tps3_supported3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tps3_supported3, align 1
  %fast_training = getelementptr inbounds %struct.drm_dp_link_caps, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %fast_training to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fast_training, align 1, !range !71
  %fast_training6 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %dest, i32 0, i32 2
  %8 = ptrtoint ptr %fast_training6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %fast_training6, align 1
  %channel_coding = getelementptr inbounds %struct.drm_dp_link_caps, ptr %src, i32 0, i32 3
  %9 = ptrtoint ptr %channel_coding to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel_coding, align 1, !range !71
  %channel_coding9 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %dest, i32 0, i32 3
  %11 = ptrtoint ptr %channel_coding9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %channel_coding9, align 1
  %alternate_scrambler_reset = getelementptr inbounds %struct.drm_dp_link_caps, ptr %src, i32 0, i32 4
  %12 = ptrtoint ptr %alternate_scrambler_reset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %alternate_scrambler_reset, align 1, !range !71
  %alternate_scrambler_reset12 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %dest, i32 0, i32 4
  %14 = ptrtoint ptr %alternate_scrambler_reset12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %alternate_scrambler_reset12, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_add_rate(ptr nocapture noundef %link, i32 noundef %rate) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rates = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 9
  %0 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rates, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.for.body_crit_edge [
    i32 8, label %entry.cleanup_crit_edge
    i32 0, label %entry.for.end_crit_edge
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pivot.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %pivot.049
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp3.not = icmp ult i32 %4, %rate
  br i1 %cmp3.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %pivot.049, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pivot.0.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %pivot.049, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pivot.0.lcssa, i32 %1)
  %cmp7.not = icmp eq i32 %pivot.0.lcssa, %1
  br i1 %cmp7.not, label %for.end.if.end12_crit_edge, label %land.lhs.true

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %for.end
  %arrayidx9 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %pivot.0.lcssa
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp10 = icmp eq i32 %6, %rate
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %for.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pivot.0.lcssa)
  %cmp1551 = icmp ugt i32 %1, %pivot.0.lcssa
  br i1 %cmp1551, label %if.end12.for.body16_crit_edge, label %if.end12.for.end22_crit_edge

if.end12.for.end22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

if.end12.for.body16_crit_edge:                    ; preds = %if.end12
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.end12.for.body16_crit_edge
  %i.052 = phi i32 [ %sub, %for.body16.for.body16_crit_edge ], [ %1, %if.end12.for.body16_crit_edge ]
  %sub = add i32 %i.052, -1
  %arrayidx18 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %sub
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %i.052
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx20, align 4
  %cmp15 = icmp ugt i32 %sub, %pivot.0.lcssa
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end22_crit_edge

for.body16.for.end22_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.end22:                                        ; preds = %for.body16.for.end22_crit_edge, %if.end12.for.end22_crit_edge, %for.inc.for.end22_crit_edge
  %pivot.0.lcssa5659 = phi i32 [ %pivot.0.lcssa, %if.end12.for.end22_crit_edge ], [ %pivot.0.lcssa, %for.body16.for.end22_crit_edge ], [ %1, %for.inc.for.end22_crit_edge ]
  %arrayidx24 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %pivot.0.lcssa5659
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rate, ptr %arrayidx24, align 4
  %11 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_rates, align 4
  %inc26 = add i32 %12, 1
  store i32 %inc26, ptr %num_rates, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end22 ], [ -28, %entry.cleanup_crit_edge ], [ -17, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_remove_rate(ptr nocapture noundef %link, i32 noundef %rate) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rates = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 9
  %0 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27.not = icmp eq i32 %1, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %i.028
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp1 = icmp eq i32 %3, %rate
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.028, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %1)
  %cmp3 = icmp eq i32 %i.0.lcssa, %1
  br i1 %cmp3, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %dec = add i32 %1, -1
  %4 = ptrtoint ptr %num_rates to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %num_rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %dec)
  %cmp832 = icmp ult i32 %i.0.lcssa, %dec
  br i1 %cmp832, label %if.end5.while.body_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end5.while.body_crit_edge
  %i.133 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ %i.0.lcssa, %if.end5.while.body_crit_edge ]
  %add = add nuw i32 %i.133, 1
  %arrayidx10 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %add
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %i.133
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx12, align 4
  %8 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rates, align 4
  %cmp8 = icmp ult i32 %add, %9
  br i1 %cmp8, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_link_update_rates(ptr nocapture noundef %link) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rates = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 9
  %0 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31.not = icmp eq i32 %1, 0
  br i1 %cmp31.not, label %entry.for.cond7.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.cond7.preheader_crit_edge ], [ %count.1, %for.inc.for.cond7.preheader_crit_edge ]
  %2 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %3)
  %cmp934 = icmp ult i32 %count.0.lcssa, %3
  br i1 %cmp934, label %for.cond7.preheader.for.body10_crit_edge, label %for.cond7.preheader.for.end15_crit_edge

for.cond7.preheader.for.end15_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end15

for.cond7.preheader.for.body10_crit_edge:         ; preds = %for.cond7.preheader
  br label %for.body10

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %count.033 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.032 = phi i32 [ %inc6, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %i.032
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %count.033, 1
  %arrayidx5 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %count.033
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.then ], [ %count.033, %for.body.for.inc_crit_edge ]
  %inc6 = add nuw i32 %i.032, 1
  %7 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_rates, align 4
  %cmp = icmp ult i32 %inc6, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond7.preheader_crit_edge

for.inc.for.cond7.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond7.preheader.for.body10_crit_edge
  %i.135 = phi i32 [ %inc14, %for.body10.for.body10_crit_edge ], [ %count.0.lcssa, %for.cond7.preheader.for.body10_crit_edge ]
  %arrayidx12 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %i.135
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx12, align 4
  %inc14 = add nuw i32 %i.135, 1
  %10 = ptrtoint ptr %num_rates to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_rates, align 4
  %cmp9 = icmp ult i32 %inc14, %11
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end15_crit_edge

for.body10.for.end15_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end15

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.end15:                                        ; preds = %for.body10.for.end15_crit_edge, %for.cond7.preheader.for.end15_crit_edge
  %12 = ptrtoint ptr %num_rates to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %count.0.lcssa, ptr %num_rates, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_probe(ptr noundef %aux, ptr noundef %link) local_unnamed_addr #3 align 64 {
entry:
  %dpcd = alloca [15 x i8], align 1
  %value = alloca i8, align 1
  %supported_rates = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %dpcd) #7
  %0 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 1
  %1 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 2
  %2 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 3
  %3 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 6
  %4 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 13
  %5 = getelementptr inbounds [15 x i8], ptr %dpcd, i32 0, i32 14
  %6 = call ptr @memset(ptr %dpcd, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #7
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %value, align 1, !annotation !72
  %tobool.not.i = icmp eq ptr %link, null
  br i1 %tobool.not.i, label %entry.drm_dp_link_reset.exit_crit_edge, label %if.end.i

entry.drm_dp_link_reset.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %link, align 4
  %max_rate.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 1
  %aux_rd_interval.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 4
  %9 = ptrtoint ptr %aux_rd_interval.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %aux_rd_interval.i, align 4
  %ce.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %ce.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ce.i, align 4
  %edp.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 5
  %11 = ptrtoint ptr %edp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %edp.i, align 4
  %rate.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %12 = call ptr @memset(ptr %max_rate.i, i32 0, i32 13)
  %13 = call ptr @memset(ptr %rate.i, i32 0, i32 44)
  br label %drm_dp_link_reset.exit

drm_dp_link_reset.exit:                           ; preds = %if.end.i, %entry.drm_dp_link_reset.exit_crit_edge
  %call = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 0, ptr noundef nonnull %dpcd, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %drm_dp_link_reset.exit.cleanup85_crit_edge, label %if.end

drm_dp_link_reset.exit.cleanup85_crit_edge:       ; preds = %drm_dp_link_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.end:                                           ; preds = %drm_dp_link_reset.exit
  %14 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dpcd, align 1
  %16 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %link, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %call.i = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %18) #7
  %max_rate = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 1
  %19 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %max_rate, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %22 = and i8 %21, 31
  %conv = zext i8 %22 to i32
  %max_lanes = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 2
  %23 = ptrtoint ptr %max_lanes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %max_lanes, align 4
  %24 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dpcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %25)
  %cmp.i = icmp ugt i8 %25, 16
  br i1 %cmp.i, label %drm_dp_enhanced_frame_cap.exit, label %if.end.drm_dp_fast_training_cap.exit_crit_edge

if.end.drm_dp_fast_training_cap.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_fast_training_cap.exit

drm_dp_enhanced_frame_cap.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %.lobit = lshr i8 %21, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %25)
  %cmp.i123 = icmp ne i8 %25, 17
  %26 = and i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i125 = icmp ne i8 %26, 0
  %.ph = select i1 %cmp.i123, i1 %tobool.i125, i1 false
  %frombool10141 = zext i1 %.ph to i8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %29 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i129 = icmp ne i8 %29, 0
  br label %drm_dp_fast_training_cap.exit

drm_dp_fast_training_cap.exit:                    ; preds = %drm_dp_enhanced_frame_cap.exit, %if.end.drm_dp_fast_training_cap.exit_crit_edge
  %.sink152 = phi i8 [ %.lobit, %drm_dp_enhanced_frame_cap.exit ], [ 0, %if.end.drm_dp_fast_training_cap.exit_crit_edge ]
  %.sink = phi i8 [ %frombool10141, %drm_dp_enhanced_frame_cap.exit ], [ 0, %if.end.drm_dp_fast_training_cap.exit_crit_edge ]
  %30 = phi i1 [ %tobool.i129, %drm_dp_enhanced_frame_cap.exit ], [ false, %if.end.drm_dp_fast_training_cap.exit_crit_edge ]
  %31 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink152, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %33, align 1
  %fast_training = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 2
  %frombool14 = zext i1 %30 to i8
  %35 = ptrtoint ptr %fast_training to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool14, ptr %fast_training, align 2
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %3, align 1
  %38 = and i8 %37, 1
  %channel_coding = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %channel_coding to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %channel_coding, align 1
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %4, align 1
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i134.not = icmp eq i8 %42, 0
  br i1 %tobool.i134.not, label %drm_dp_fast_training_cap.exit.if.end35_crit_edge, label %if.then21

drm_dp_fast_training_cap.exit.if.end35_crit_edge: ; preds = %drm_dp_fast_training_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then21:                                        ; preds = %drm_dp_fast_training_cap.exit
  %alternate_scrambler_reset = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %alternate_scrambler_reset to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %alternate_scrambler_reset, align 4
  %call.i135 = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 1792, ptr noundef nonnull %value, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp24 = icmp slt i32 %call.i135, 0
  br i1 %cmp24, label %if.then21.cleanup85_crit_edge, label %if.end27

if.then21.cleanup85_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.end27:                                         ; preds = %if.then21
  %44 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %value, align 1
  %conv28 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %45)
  %cmp29 = icmp ugt i8 %45, 3
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %conv28) #7
  br label %if.end35

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33 = getelementptr [4 x i8], ptr @drm_dp_edp_revisions, i32 0, i32 %conv28
  %46 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx33, align 1
  %edp = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 5
  %48 = ptrtoint ptr %edp to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %edp, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31, %drm_dp_fast_training_cap.exit.if.end35_crit_edge
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %5, align 1
  %51 = and i8 %50, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp38 = icmp ugt i8 %51, 4
  br i1 %cmp38, label %if.end41.thread, label %if.end41

if.end41.thread:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %and = zext i8 %51 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %and) #7
  br label %lor.lhs.false

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp42 = icmp eq i8 %51, 0
  br i1 %cmp42, label %if.then52.critedge, label %if.end41.lor.lhs.false_crit_edge

if.end41.lor.lhs.false_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end41.lor.lhs.false_crit_edge, %if.end41.thread
  %52 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %53)
  %cmp46 = icmp ugt i8 %53, 19
  br i1 %cmp46, label %if.end54.critedge, label %lor.lhs.false.if.end54_crit_edge

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then52.critedge:                               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %aux_rd_interval.c121 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 4
  %54 = ptrtoint ptr %aux_rd_interval.c121 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 100, ptr %aux_rd_interval.c121, align 4
  %ce = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %ce to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 400, ptr %ce, align 4
  br label %if.end54

if.end54.critedge:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %aux_rd_interval.c = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 4
  %56 = ptrtoint ptr %aux_rd_interval.c to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 100, ptr %aux_rd_interval.c, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end54.critedge, %if.then52.critedge, %lor.lhs.false.if.end54_crit_edge
  %57 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_rate, align 4
  %rate = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %59 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rate, align 4
  %60 = ptrtoint ptr %max_lanes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_lanes, align 4
  %lanes = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %62 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %lanes, align 4
  %edp57 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 5
  %63 = ptrtoint ptr %edp57 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %edp57, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %64)
  %cmp59 = icmp ugt i8 %64, 19
  br i1 %cmp59, label %if.then61, label %if.end54.cleanup85_crit_edge

if.end54.cleanup85_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.then61:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %supported_rates) #7
  %65 = call ptr @memset(ptr %supported_rates, i32 255, i32 16)
  %call64 = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 16, ptr noundef nonnull %supported_rates, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %cleanup85.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then61
  %num_rates.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %drm_dp_link_add_rate.exit.for.body_crit_edge, %for.cond.preheader
  %i.0146 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %drm_dp_link_add_rate.exit.for.body_crit_edge ]
  %mul71 = shl nuw nsw i32 %i.0146, 1
  %add = or i32 %mul71, 1
  %arrayidx72 = getelementptr [16 x i8], ptr %supported_rates, i32 0, i32 %add
  %66 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %67 to i32
  %shl = shl nuw nsw i32 %conv73, 8
  %arrayidx76 = getelementptr [16 x i8], ptr %supported_rates, i32 0, i32 %mul71
  %68 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %69 to i32
  %or = or i32 %shl, %conv77
  %mul80 = mul nuw nsw i32 %or, 200
  %70 = ptrtoint ptr %num_rates.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_rates.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %71, label %for.body.for.body.i_crit_edge [
    i32 8, label %for.body.drm_dp_link_add_rate.exit_crit_edge
    i32 0, label %for.body.for.end.i_crit_edge
  ]

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.drm_dp_link_add_rate.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_add_rate.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %pivot.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i136 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %pivot.049.i
  %73 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %mul80)
  %cmp3.not.i = icmp ult i32 %74, %mul80
  br i1 %cmp3.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %pivot.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %71
  br i1 %exitcond.not.i, label %for.inc.i.for.end22.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end22.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %pivot.0.lcssa.i = phi i32 [ %71, %for.body.for.end.i_crit_edge ], [ %pivot.049.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pivot.0.lcssa.i, i32 %71)
  %cmp7.not.i = icmp eq i32 %pivot.0.lcssa.i, %71
  br i1 %cmp7.not.i, label %for.end.i.if.end12.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end12.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %arrayidx9.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %pivot.0.lcssa.i
  %75 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %mul80)
  %cmp10.i = icmp eq i32 %76, %mul80
  br i1 %cmp10.i, label %land.lhs.true.i.drm_dp_link_add_rate.exit_crit_edge, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i.drm_dp_link_add_rate.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_add_rate.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %for.end.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %pivot.0.lcssa.i)
  %cmp1551.i = icmp ugt i32 %71, %pivot.0.lcssa.i
  br i1 %cmp1551.i, label %if.end12.i.for.body16.i_crit_edge, label %if.end12.i.for.end22.i_crit_edge

if.end12.i.for.end22.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22.i

if.end12.i.for.body16.i_crit_edge:                ; preds = %if.end12.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %if.end12.i.for.body16.i_crit_edge
  %i.052.i = phi i32 [ %sub.i, %for.body16.i.for.body16.i_crit_edge ], [ %71, %if.end12.i.for.body16.i_crit_edge ]
  %sub.i = add i32 %i.052.i, -1
  %arrayidx18.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %sub.i
  %77 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %i.052.i
  %79 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx20.i, align 4
  %cmp15.i = icmp ugt i32 %sub.i, %pivot.0.lcssa.i
  br i1 %cmp15.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.for.end22.i_crit_edge

for.body16.i.for.end22.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22.i

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16.i

for.end22.i:                                      ; preds = %for.body16.i.for.end22.i_crit_edge, %if.end12.i.for.end22.i_crit_edge, %for.inc.i.for.end22.i_crit_edge
  %pivot.0.lcssa5659.i = phi i32 [ %pivot.0.lcssa.i, %if.end12.i.for.end22.i_crit_edge ], [ %pivot.0.lcssa.i, %for.body16.i.for.end22.i_crit_edge ], [ %71, %for.inc.i.for.end22.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 8, i32 %pivot.0.lcssa5659.i
  %80 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul80, ptr %arrayidx24.i, align 4
  %81 = ptrtoint ptr %num_rates.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_rates.i, align 4
  %inc26.i = add i32 %82, 1
  store i32 %inc26.i, ptr %num_rates.i, align 4
  br label %drm_dp_link_add_rate.exit

drm_dp_link_add_rate.exit:                        ; preds = %for.end22.i, %land.lhs.true.i.drm_dp_link_add_rate.exit_crit_edge, %for.body.drm_dp_link_add_rate.exit_crit_edge
  %inc = add nuw nsw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %cleanup, label %drm_dp_link_add_rate.exit.for.body_crit_edge

drm_dp_link_add_rate.exit.for.body_crit_edge:     ; preds = %drm_dp_link_add_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %drm_dp_link_add_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %supported_rates) #7
  br label %cleanup85

cleanup85.critedge:                               ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %supported_rates) #7
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup85.critedge, %cleanup, %if.end54.cleanup85_crit_edge, %if.then21.cleanup85_crit_edge, %drm_dp_link_reset.exit.cleanup85_crit_edge
  %retval.1 = phi i32 [ %call, %drm_dp_link_reset.exit.cleanup85_crit_edge ], [ %call.i135, %if.then21.cleanup85_crit_edge ], [ %call64, %cleanup85.critedge ], [ 0, %cleanup ], [ 0, %if.end54.cleanup85_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #7
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %dpcd) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_power_up(ptr noundef %aux, ptr nocapture noundef readonly %link) local_unnamed_addr #3 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !72
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %2)
  %cmp = icmp ult i8 %2, 17
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 1
  %5 = and i8 %4, -4
  %6 = or i8 %5, 1
  store i8 %6, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %7 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %value.addr.i, align 1
  %call.i20 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp11 = icmp slt i32 %call.i20, 0
  br i1 %cmp11, label %if.end5.cleanup_crit_edge, label %if.end14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i20, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_power_down(ptr noundef %aux, ptr nocapture noundef readonly %link) local_unnamed_addr #3 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !72
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %2)
  %cmp = icmp ult i8 %2, 17
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 1
  %5 = and i8 %4, -4
  %6 = or i8 %5, 2
  store i8 %6, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %7 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %value.addr.i, align 1
  %call.i20 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  %8 = call i32 @llvm.smin.i32(i32 %call.i20, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %8, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_configure(ptr noundef %aux, ptr noundef %link) local_unnamed_addr #3 align 64 {
entry:
  %value.addr.i59 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  %values = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %values) #7
  %0 = getelementptr inbounds [2 x i8], ptr %values, i32 0, i32 1
  %ops = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 10
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %configure = getelementptr inbounds %struct.drm_dp_link_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %configure, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %4(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call) #7
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %rate = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 4
  %call7 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %6) #7
  %7 = ptrtoint ptr %values to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call7, ptr %values, align 1
  %lanes = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lanes, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %0, align 1
  %caps = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %caps, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %if.then10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = or i8 %conv, -128
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13, ptr %0, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %call15 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 256, ptr noundef nonnull %values, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %channel_coding = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %channel_coding to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel_coding, align 1, !range !71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %16 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 264, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %if.end19.cleanup_crit_edge, label %if.end28

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %alternate_scrambler_reset = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %alternate_scrambler_reset to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %alternate_scrambler_reset, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool30.not = icmp eq i8 %18, 0
  br i1 %tobool30.not, label %if.end28.if.end37_crit_edge, label %if.then31

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i59)
  %19 = ptrtoint ptr %value.addr.i59 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %value.addr.i59, align 1
  %call.i60 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 266, ptr noundef nonnull %value.addr.i59, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp33 = icmp slt i32 %call.i60, 0
  br i1 %cmp33, label %if.then31.cleanup_crit_edge, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then31.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %call, %if.then5 ], [ 0, %if.end37 ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call.i, %if.end19.cleanup_crit_edge ], [ %call.i60, %if.then31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %values) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_choose(ptr nocapture noundef %link, ptr nocapture noundef readonly %mode, ptr nocapture noundef readonly %info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rate = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 1
  %0 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rate, align 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %bpc = getelementptr inbounds %struct.drm_display_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bpc, align 8
  %mul = mul i32 %3, 3
  %mul1 = mul i32 %mul, %5
  %max_lanes = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 2
  %6 = ptrtoint ptr %max_lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %entry.cleanup_crit_edge, label %for.cond3.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond3.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %1)
  %cmp7.not = icmp ult i32 %1, 162000
  br i1 %cmp7.not, label %for.cond3.preheader.cleanup_crit_edge, label %for.body9

for.cond3.preheader.cleanup_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond3:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %1)
  %cmp7.not.1 = icmp ult i32 %1, 270000
  br i1 %cmp7.not.1, label %for.cond3.for.inc21_crit_edge, label %for.body9.1

for.cond3.for.inc21_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21

for.body9.1:                                      ; preds = %for.cond3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160000, i32 %mul1)
  %cmp15.not.1 = icmp ugt i32 %mul1, 2160000
  br i1 %cmp15.not.1, label %for.cond3.1, label %for.body9.1.if.then_crit_edge

for.body9.1.if.then_crit_edge:                    ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.1:                                      ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %1)
  %cmp7.not.2 = icmp ult i32 %1, 540000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4320000, i32 %mul1)
  %cmp15.not.2 = icmp ugt i32 %mul1, 4320000
  %or.cond = select i1 %cmp7.not.2, i1 true, i1 %cmp15.not.2
  br i1 %or.cond, label %for.cond3.1.for.inc21_crit_edge, label %for.cond3.1.if.then_crit_edge

for.cond3.1.if.then_crit_edge:                    ; preds = %for.cond3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.1.for.inc21_crit_edge:                  ; preds = %for.cond3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21

for.body9:                                        ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296000, i32 %mul1)
  %cmp15.not = icmp ugt i32 %mul1, 1296000
  br i1 %cmp15.not, label %for.cond3, label %for.body9.if.then_crit_edge

for.body9.if.then_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.cond3.1.2.if.then_crit_edge, %for.body9.1.2.if.then_crit_edge, %for.body9.258.if.then_crit_edge, %for.cond3.1.1.if.then_crit_edge, %for.body9.1.1.if.then_crit_edge, %for.body9.152.critedge.if.then_crit_edge, %for.body9.if.then_crit_edge, %for.cond3.1.if.then_crit_edge, %for.body9.1.if.then_crit_edge
  %.lcssa47 = phi i32 [ 1, %for.body9.if.then_crit_edge ], [ 1, %for.body9.1.if.then_crit_edge ], [ 2, %for.body9.152.critedge.if.then_crit_edge ], [ 2, %for.body9.1.1.if.then_crit_edge ], [ 4, %for.body9.258.if.then_crit_edge ], [ 4, %for.body9.1.2.if.then_crit_edge ], [ 1, %for.cond3.1.if.then_crit_edge ], [ 2, %for.cond3.1.1.if.then_crit_edge ], [ 4, %for.cond3.1.2.if.then_crit_edge ]
  %.lcssa46 = phi i32 [ 162000, %for.body9.if.then_crit_edge ], [ 270000, %for.body9.1.if.then_crit_edge ], [ 162000, %for.body9.152.critedge.if.then_crit_edge ], [ 270000, %for.body9.1.1.if.then_crit_edge ], [ 162000, %for.body9.258.if.then_crit_edge ], [ 270000, %for.body9.1.2.if.then_crit_edge ], [ 540000, %for.cond3.1.if.then_crit_edge ], [ 540000, %for.cond3.1.1.if.then_crit_edge ], [ 540000, %for.cond3.1.2.if.then_crit_edge ]
  %div.lcssa = phi i32 [ 1296000, %for.body9.if.then_crit_edge ], [ 2160000, %for.body9.1.if.then_crit_edge ], [ 2592000, %for.body9.152.critedge.if.then_crit_edge ], [ 4320000, %for.body9.1.1.if.then_crit_edge ], [ 5184000, %for.body9.258.if.then_crit_edge ], [ 8640000, %for.body9.1.2.if.then_crit_edge ], [ 4320000, %for.cond3.1.if.then_crit_edge ], [ 8640000, %for.cond3.1.1.if.then_crit_edge ], [ 17280000, %for.cond3.1.2.if.then_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %.lcssa47, i32 noundef %.lcssa46, i32 noundef %mul1, i32 noundef %div.lcssa) #7
  %lanes = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.lcssa47, ptr %lanes, align 4
  %rate20 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %9 = ptrtoint ptr %rate20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.lcssa46, ptr %rate20, align 4
  br label %cleanup

for.inc21:                                        ; preds = %for.cond3.1.for.inc21_crit_edge, %for.cond3.for.inc21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.not.1 = icmp ult i32 %7, 2
  br i1 %cmp2.not.1, label %for.inc21.cleanup_crit_edge, label %for.body9.152.critedge

for.inc21.cleanup_crit_edge:                      ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body9.152.critedge:                           ; preds = %for.inc21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2592000, i32 %mul1)
  %cmp15.not.151 = icmp ugt i32 %mul1, 2592000
  br i1 %cmp15.not.151, label %for.cond3.153, label %for.body9.152.critedge.if.then_crit_edge

for.body9.152.critedge.if.then_crit_edge:         ; preds = %for.body9.152.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.153:                                    ; preds = %for.body9.152.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %1)
  %cmp7.not.1.1 = icmp ult i32 %1, 270000
  br i1 %cmp7.not.1.1, label %for.cond3.153.for.inc21.1_crit_edge, label %for.body9.1.1

for.cond3.153.for.inc21.1_crit_edge:              ; preds = %for.cond3.153
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.1

for.body9.1.1:                                    ; preds = %for.cond3.153
  call void @__sanitizer_cov_trace_const_cmp4(i32 4320000, i32 %mul1)
  %cmp15.not.1.1 = icmp ugt i32 %mul1, 4320000
  br i1 %cmp15.not.1.1, label %for.cond3.1.1, label %for.body9.1.1.if.then_crit_edge

for.body9.1.1.if.then_crit_edge:                  ; preds = %for.body9.1.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.1.1:                                    ; preds = %for.body9.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %1)
  %cmp7.not.2.1 = icmp ult i32 %1, 540000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8640000, i32 %mul1)
  %cmp15.not.2.1 = icmp ugt i32 %mul1, 8640000
  %or.cond61 = select i1 %cmp7.not.2.1, i1 true, i1 %cmp15.not.2.1
  br i1 %or.cond61, label %for.cond3.1.1.for.inc21.1_crit_edge, label %for.cond3.1.1.if.then_crit_edge

for.cond3.1.1.if.then_crit_edge:                  ; preds = %for.cond3.1.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.1.1.for.inc21.1_crit_edge:              ; preds = %for.cond3.1.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.cond3.1.1.for.inc21.1_crit_edge, %for.cond3.153.for.inc21.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp2.not.2.old = icmp ult i32 %7, 4
  %brmerge = select i1 %cmp2.not.2.old, i1 true, i1 %cmp7.not
  br i1 %brmerge, label %for.inc21.1.cleanup_crit_edge, label %for.body9.258

for.inc21.1.cleanup_crit_edge:                    ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body9.258:                                    ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5184000, i32 %mul1)
  %cmp15.not.257 = icmp ugt i32 %mul1, 5184000
  br i1 %cmp15.not.257, label %for.cond3.259, label %for.body9.258.if.then_crit_edge

for.body9.258.if.then_crit_edge:                  ; preds = %for.body9.258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.259:                                    ; preds = %for.body9.258
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %1)
  %cmp7.not.1.2 = icmp ult i32 %1, 270000
  br i1 %cmp7.not.1.2, label %for.cond3.259.cleanup_crit_edge, label %for.body9.1.2

for.cond3.259.cleanup_crit_edge:                  ; preds = %for.cond3.259
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body9.1.2:                                    ; preds = %for.cond3.259
  call void @__sanitizer_cov_trace_const_cmp4(i32 8640000, i32 %mul1)
  %cmp15.not.1.2 = icmp ugt i32 %mul1, 8640000
  br i1 %cmp15.not.1.2, label %for.cond3.1.2, label %for.body9.1.2.if.then_crit_edge

for.body9.1.2.if.then_crit_edge:                  ; preds = %for.body9.1.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.1.2:                                    ; preds = %for.body9.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %1)
  %cmp7.not.2.2 = icmp ult i32 %1, 540000
  call void @__sanitizer_cov_trace_const_cmp4(i32 17280000, i32 %mul1)
  %cmp15.not.2.2 = icmp ugt i32 %mul1, 17280000
  %or.cond63 = select i1 %cmp7.not.2.2, i1 true, i1 %cmp15.not.2.2
  br i1 %or.cond63, label %for.cond3.1.2.cleanup_crit_edge, label %for.cond3.1.2.if.then_crit_edge

for.cond3.1.2.if.then_crit_edge:                  ; preds = %for.cond3.1.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.1.2.cleanup_crit_edge:                  ; preds = %for.cond3.1.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.cond3.1.2.cleanup_crit_edge, %for.cond3.259.cleanup_crit_edge, %for.inc21.1.cleanup_crit_edge, %for.inc21.cleanup_crit_edge, %if.then, %for.cond3.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -34, %for.cond3.259.cleanup_crit_edge ], [ -34, %for.cond3.1.2.cleanup_crit_edge ], [ -34, %for.inc21.1.cleanup_crit_edge ], [ -34, %for.inc21.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ], [ -34, %for.cond3.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @drm_dp_link_train_init(ptr nocapture noundef writeonly %train) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %train, i32 0, i32 102)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_train(ptr noundef %link) local_unnamed_addr #3 align 64 {
entry:
  %status.i.i46.i = alloca [6 x i8], align 1
  %status.i.i.i = alloca [6 x i8], align 1
  %status.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %train = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12
  %0 = call ptr @memset(ptr %train, i32 0, i32 102)
  %fast_training = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %fast_training to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fast_training, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %clock_recovered.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %clock_recovered.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %clock_recovered.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.if.else5_crit_edge, label %drm_dp_link_train_valid.exit

if.then.if.else5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else5

drm_dp_link_train_valid.exit:                     ; preds = %if.then
  %channel_equalized.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 4
  %5 = ptrtoint ptr %channel_equalized.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel_equalized.i, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.i.not = icmp eq i8 %6, 0
  br i1 %tobool1.i.not, label %drm_dp_link_train_valid.exit.if.else5_crit_edge, label %if.then2

drm_dp_link_train_valid.exit.if.else5_crit_edge:  ; preds = %drm_dp_link_train_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else5

if.then2:                                         ; preds = %drm_dp_link_train_valid.exit
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %status.i) #7
  %lanes.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %7 = call ptr @memset(ptr %status.i, i32 255, i32 6)
  %8 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp ugt i32 %9, 1
  %cond.i = select i1 %cmp.i, ptr @.str.9, ptr @.str.10
  %rate.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %10 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate.i, align 4
  %div.i = udiv i32 %11, 100
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %9, ptr noundef nonnull %cond.i, i32 noundef %div.i) #7
  %aux.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 11
  %12 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aux.i, align 4
  %call.i = tail call i32 @drm_dp_link_configure(ptr noundef %13, ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %drm_dp_link_train_fast.exit.thread, label %if.end.i

drm_dp_link_train_fast.exit.thread:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i) #7
  br label %if.then4

if.end.i:                                         ; preds = %if.then2
  %pattern.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %pattern.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %pattern.i, align 4
  %call3.i = tail call fastcc i32 @drm_dp_link_apply_training(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.out.i_crit_edge, label %if.end6.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #7
  %tps3_supported.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %tps3_supported.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tps3_supported.i, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i21 = icmp eq i8 %16, 0
  %..i = select i1 %tobool.not.i21, i32 2, i32 3
  %17 = ptrtoint ptr %pattern.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %..i, ptr %pattern.i, align 4
  %call13.i = tail call fastcc i32 @drm_dp_link_apply_training(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end6.i.out.i_crit_edge, label %if.end16.i

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end16.i:                                       ; preds = %if.end6.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #7
  %18 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aux.i, align 4
  %call18.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %19, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %call18.i) #7
  br label %out.i

if.end21.i:                                       ; preds = %if.end16.i
  %20 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lanes.i, align 4
  %call24.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %status.i, i32 noundef %21) #7
  br i1 %call24.i, label %if.end21.i.if.end26.i_crit_edge, label %if.then25.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end26.i_crit_edge
  %err.0.i = phi i32 [ %call18.i, %if.end21.i.if.end26.i_crit_edge ], [ -5, %if.then25.i ]
  %22 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lanes.i, align 4
  %call29.i = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %status.i, i32 noundef %23) #7
  br i1 %call29.i, label %if.end26.i.out.i_crit_edge, label %if.then30.i

if.end26.i.out.i_crit_edge:                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %out.i

out.i:                                            ; preds = %if.then30.i, %if.end26.i.out.i_crit_edge, %if.then20.i, %if.end6.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %err.1.i = phi i32 [ %call3.i, %if.end.i.out.i_crit_edge ], [ %call13.i, %if.end6.i.out.i_crit_edge ], [ %call18.i, %if.then20.i ], [ %err.0.i, %if.end26.i.out.i_crit_edge ], [ -5, %if.then30.i ]
  %24 = ptrtoint ptr %pattern.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %pattern.i, align 4
  %call.i.i = call fastcc i32 @drm_dp_link_apply_training(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %out.i.drm_dp_link_train_fast.exit_crit_edge

out.i.drm_dp_link_train_fast.exit_crit_edge:      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_fast.exit

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call.i.i) #7
  br label %drm_dp_link_train_fast.exit

drm_dp_link_train_fast.exit:                      ; preds = %if.then.i.i, %out.i.drm_dp_link_train_fast.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp = icmp slt i32 %err.1.i, 0
  br i1 %cmp, label %drm_dp_link_train_fast.exit.if.then4_crit_edge, label %drm_dp_link_train_fast.exit.cleanup_crit_edge

drm_dp_link_train_fast.exit.cleanup_crit_edge:    ; preds = %drm_dp_link_train_fast.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

drm_dp_link_train_fast.exit.if.then4_crit_edge:   ; preds = %drm_dp_link_train_fast.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %drm_dp_link_train_fast.exit.if.then4_crit_edge, %drm_dp_link_train_fast.exit.thread
  %retval.0.i42 = phi i32 [ %call.i, %drm_dp_link_train_fast.exit.thread ], [ %err.1.i, %drm_dp_link_train_fast.exit.if.then4_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i42) #7
  br label %if.end8

if.else5:                                         ; preds = %drm_dp_link_train_valid.exit.if.else5_crit_edge, %if.then.if.else5_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #7
  br label %if.end8

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.else5, %if.then4
  %lanes.i22 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %rate.i23 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %25 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lanes.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp142.i = icmp ugt i32 %26, 1
  %cond143.i = select i1 %cmp142.i, ptr @.str.9, ptr @.str.10
  %27 = ptrtoint ptr %rate.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate.i23, align 4
  %div144.i = udiv i32 %28, 100
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %26, ptr noundef nonnull %cond143.i, i32 noundef %div144.i) #7
  %aux.i24 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 11
  %29 = ptrtoint ptr %aux.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aux.i24, align 4
  %call145.i = call i32 @drm_dp_link_configure(ptr noundef %30, ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %cmp2146.i = icmp slt i32 %call145.i, 0
  br i1 %cmp2146.i, label %if.end8.drm_dp_link_train_full.exit.thread_crit_edge, label %if.end.lr.ph.i

if.end8.drm_dp_link_train_full.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_full.exit.thread

if.end.lr.ph.i:                                   ; preds = %if.end8
  %pattern.i.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 2
  %ce.i.i.i.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 4, i32 1
  %aux_rd_interval.i.i.i.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 4
  %adjust1.i.i.i.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 1
  %clock_recovered.i.i.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 3
  %tps3_supported.i.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 1
  %channel_equalized.i.i.i = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 4
  br label %if.end.i26

drm_dp_link_train_full.exit.thread:               ; preds = %retry.backedge.i.drm_dp_link_train_full.exit.thread_crit_edge, %if.end8.drm_dp_link_train_full.exit.thread_crit_edge
  %call.lcssa.i = phi i32 [ %call145.i, %if.end8.drm_dp_link_train_full.exit.thread_crit_edge ], [ %call.i32, %retry.backedge.i.drm_dp_link_train_full.exit.thread_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call.lcssa.i) #7
  br label %if.then11

if.end.i26:                                       ; preds = %retry.backedge.i.if.end.i26_crit_edge, %if.end.lr.ph.i
  %31 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %pattern.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end4.i.i.for.body.i.i_crit_edge, %if.end.i26
  %repeat.016.i.i = phi i32 [ 1, %if.end.i26 ], [ %inc.i.i, %if.end4.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %status.i.i.i) #7
  %32 = call ptr @memset(ptr %status.i.i.i, i32 255, i32 6)
  %call.i.i.i = call fastcc i32 @drm_dp_link_apply_training(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.if.then5.i_crit_edge, label %if.end.i.i.i

for.body.i.i.if.then5.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %33 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pattern.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %34, label %if.end.i.i.i.drm_dp_link_train_wait.exit.i.i.i_crit_edge [
    i32 1, label %if.end.i.i.i.sw.epilog.i.i.i.i_crit_edge
    i32 2, label %if.end.i.i.i.sw.bb1.i.i.i.i_crit_edge
    i32 3, label %if.end.i.i.i.sw.bb1.i.i.i.i_crit_edge135
  ]

if.end.i.i.i.sw.bb1.i.i.i.i_crit_edge135:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i.i.i

if.end.i.i.i.sw.bb1.i.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i.i.i

if.end.i.i.i.sw.epilog.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i

if.end.i.i.i.drm_dp_link_train_wait.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_wait.exit.i.i.i

sw.bb1.i.i.i.i:                                   ; preds = %if.end.i.i.i.sw.bb1.i.i.i.i_crit_edge, %if.end.i.i.i.sw.bb1.i.i.i.i_crit_edge135
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.bb1.i.i.i.i, %if.end.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %min.0.in.i.i.i.i = phi ptr [ %ce.i.i.i.i, %sw.bb1.i.i.i.i ], [ %aux_rd_interval.i.i.i.i, %if.end.i.i.i.sw.epilog.i.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %min.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %min.0.i.i.i.i = load i32, ptr %min.0.in.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min.0.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %min.0.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %sw.epilog.i.i.i.i.drm_dp_link_train_wait.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

sw.epilog.i.i.i.i.drm_dp_link_train_wait.exit.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_wait.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.i.i = shl i32 %min.0.i.i.i.i, 1
  call void @usleep_range_state(i32 noundef %min.0.i.i.i.i, i32 noundef %mul.i.i.i.i, i32 noundef 2) #7
  br label %drm_dp_link_train_wait.exit.i.i.i

drm_dp_link_train_wait.exit.i.i.i:                ; preds = %if.then.i.i.i.i, %sw.epilog.i.i.i.i.drm_dp_link_train_wait.exit.i.i.i_crit_edge, %if.end.i.i.i.drm_dp_link_train_wait.exit.i.i.i_crit_edge
  %37 = ptrtoint ptr %aux.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aux.i24, align 4
  %call1.i.i.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %38, ptr noundef nonnull %status.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %drm_dp_link_train_wait.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %call1.i.i.i) #7
  br label %if.then5.i

if.end4.i.i.i:                                    ; preds = %drm_dp_link_train_wait.exit.i.i.i
  %39 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lanes.i22, align 4
  %call6.i.i.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %status.i.i.i, i32 noundef %40) #7
  br i1 %call6.i.i.i, label %if.end.thread.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  %41 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lanes.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp21.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp21.not.i.i.i.i, label %if.then7.i.i.i.if.end.i.i_crit_edge, label %if.then7.i.i.i.for.body.i.i.i.i_crit_edge

if.then7.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.then7.i.i.i
  br label %for.body.i.i.i.i

if.then7.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then7.i.i.i.for.body.i.i.i.i_crit_edge
  %i.022.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.then7.i.i.i.for.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %status.i.i.i, i32 noundef %i.022.i.i.i.i) #7
  %conv.i.i.i.i = zext i8 %call.i.i.i.i to i32
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr %adjust1.i.i.i.i, i32 0, i32 %i.022.i.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %call2.i.i.i.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %status.i.i.i, i32 noundef %i.022.i.i.i.i) #7
  %44 = lshr i8 %call2.i.i.i.i, 3
  %45 = zext i8 %44 to i32
  %arrayidx5.i.i.i.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 1, i32 1, i32 %i.022.i.i.i.i
  %46 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx5.i.i.i.i, align 4
  %call6.i.i.i.i = call zeroext i8 @drm_dp_get_adjust_request_post_cursor(ptr noundef nonnull %status.i.i.i, i32 noundef %i.022.i.i.i.i) #7
  %conv7.i.i.i.i = zext i8 %call6.i.i.i.i to i32
  %arrayidx8.i.i.i.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 1, i32 2, i32 %i.022.i.i.i.i
  %47 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv7.i.i.i.i, ptr %arrayidx8.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw i32 %i.022.i.i.i.i, 1
  %48 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lanes.i22, align 4
  %cmp.i.i.i.i = icmp ult i32 %inc.i.i.i.i, %49
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.body.i.i.i.i.if.end.i.i_crit_edge

for.body.i.i.i.i.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

if.end.thread.i.i:                                ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %clock_recovered.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %clock_recovered.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i.i.i) #7
  br label %if.end12.i

if.end.i.i:                                       ; preds = %for.body.i.i.i.i.if.end.i.i_crit_edge, %if.then7.i.i.i.if.end.i.i_crit_edge
  %51 = ptrtoint ptr %clock_recovered.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %.pr.i.i = load i8, ptr %clock_recovered.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.end12.i_crit_edge

if.end.i.i.if.end12.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call fastcc void @drm_dp_link_train_adjust(ptr noundef %train) #7
  %inc.i.i = add nuw nsw i32 %repeat.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %if.end6.i28, label %if.end4.i.i.for.body.i.i_crit_edge

if.end4.i.i.for.body.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.then5.i:                                       ; preds = %if.then3.i.i.i, %for.body.i.i.if.then5.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i.i.i, %for.body.i.i.if.then5.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i.i.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %retval.0.i.i.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %retval.0.i.i.i) #7
  br label %out.i38

if.end6.i28:                                      ; preds = %if.end4.i.i
  %52 = ptrtoint ptr %clock_recovered.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr.i = load i8, ptr %clock_recovered.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i27 = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i27, label %if.then7.i, label %if.end6.i28.if.end12.i_crit_edge

if.end6.i28.if.end12.i_crit_edge:                 ; preds = %if.end6.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end6.i28
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #7
  %53 = ptrtoint ptr %rate.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rate.i23, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %54, label %if.then7.i.retry.backedge.i_crit_edge [
    i32 162000, label %if.then7.i.out.i38_crit_edge
    i32 270000, label %if.then7.i.retry.backedge.sink.split.i_crit_edge
    i32 540000, label %sw.bb3.i.i
  ]

if.then7.i.retry.backedge.sink.split.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge.sink.split.i

if.then7.i.out.i38_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i38

if.then7.i.retry.backedge.i_crit_edge:            ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge.i

sw.bb3.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge.sink.split.i

retry.backedge.sink.split.i:                      ; preds = %sw.bb3.i85.i, %if.then19.i.retry.backedge.sink.split.i_crit_edge, %sw.bb3.i.i, %if.then7.i.retry.backedge.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 270000, %sw.bb3.i85.i ], [ 270000, %sw.bb3.i.i ], [ 162000, %if.then19.i.retry.backedge.sink.split.i_crit_edge ], [ 162000, %if.then7.i.retry.backedge.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %rate.i23 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink.i, ptr %rate.i23, align 4
  br label %retry.backedge.i

retry.backedge.i:                                 ; preds = %if.then19.i.retry.backedge.i_crit_edge, %retry.backedge.sink.split.i, %if.then7.i.retry.backedge.i_crit_edge
  %57 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lanes.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i29 = icmp ugt i32 %58, 1
  %cond.i30 = select i1 %cmp.i29, ptr @.str.9, ptr @.str.10
  %59 = ptrtoint ptr %rate.i23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rate.i23, align 4
  %div.i31 = udiv i32 %60, 100
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %58, ptr noundef nonnull %cond.i30, i32 noundef %div.i31) #7
  %61 = ptrtoint ptr %aux.i24 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %aux.i24, align 4
  %call.i32 = call i32 @drm_dp_link_configure(ptr noundef %62, ptr noundef %link) #7
  %cmp2.i33 = icmp slt i32 %call.i32, 0
  br i1 %cmp2.i33, label %retry.backedge.i.drm_dp_link_train_full.exit.thread_crit_edge, label %retry.backedge.i.if.end.i26_crit_edge

retry.backedge.i.if.end.i26_crit_edge:            ; preds = %retry.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i26

retry.backedge.i.drm_dp_link_train_full.exit.thread_crit_edge: ; preds = %retry.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_full.exit.thread

if.end12.i:                                       ; preds = %if.end6.i28.if.end12.i_crit_edge, %if.end.i.i.if.end12.i_crit_edge, %if.end.thread.i.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22) #7
  %63 = ptrtoint ptr %tps3_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tps3_supported.i.i, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i47.i = icmp eq i8 %64, 0
  %spec.select.i.i = select i1 %tobool.not.i47.i, i32 2, i32 3
  %65 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.select.i.i, ptr %pattern.i.i, align 4
  br label %for.body.i55.i

for.body.i55.i:                                   ; preds = %if.end9.i.i.for.body.i55.i_crit_edge, %if.end12.i
  %repeat.023.i.i = phi i32 [ 1, %if.end12.i ], [ %inc.i80.i, %if.end9.i.i.for.body.i55.i_crit_edge ]
  %66 = ptrtoint ptr %aux.i24 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %aux.i24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %status.i.i46.i) #7
  %68 = call ptr @memset(ptr %status.i.i46.i, i32 255, i32 6)
  %call.i.i53.i = call fastcc i32 @drm_dp_link_apply_training(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %cmp.i.i54.i = icmp slt i32 %call.i.i53.i, 0
  br i1 %cmp.i.i54.i, label %for.body.i55.i.if.then15.i_crit_edge, label %if.end.i.i56.i

for.body.i55.i.if.then15.i_crit_edge:             ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.end.i.i56.i:                                   ; preds = %for.body.i55.i
  %69 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pattern.i.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %70, label %if.end.i.i56.i.drm_dp_link_train_wait.exit.i.i64.i_crit_edge [
    i32 1, label %if.end.i.i56.i.sw.epilog.i.i.i61.i_crit_edge
    i32 2, label %if.end.i.i56.i.sw.bb1.i.i.i57.i_crit_edge
    i32 3, label %if.end.i.i56.i.sw.bb1.i.i.i57.i_crit_edge136
  ]

if.end.i.i56.i.sw.bb1.i.i.i57.i_crit_edge136:     ; preds = %if.end.i.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i.i57.i

if.end.i.i56.i.sw.bb1.i.i.i57.i_crit_edge:        ; preds = %if.end.i.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i.i57.i

if.end.i.i56.i.sw.epilog.i.i.i61.i_crit_edge:     ; preds = %if.end.i.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i61.i

if.end.i.i56.i.drm_dp_link_train_wait.exit.i.i64.i_crit_edge: ; preds = %if.end.i.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_wait.exit.i.i64.i

sw.bb1.i.i.i57.i:                                 ; preds = %if.end.i.i56.i.sw.bb1.i.i.i57.i_crit_edge, %if.end.i.i56.i.sw.bb1.i.i.i57.i_crit_edge136
  br label %sw.epilog.i.i.i61.i

sw.epilog.i.i.i61.i:                              ; preds = %sw.bb1.i.i.i57.i, %if.end.i.i56.i.sw.epilog.i.i.i61.i_crit_edge
  %min.0.in.i.i.i58.i = phi ptr [ %ce.i.i.i.i, %sw.bb1.i.i.i57.i ], [ %aux_rd_interval.i.i.i.i, %if.end.i.i56.i.sw.epilog.i.i.i61.i_crit_edge ]
  %72 = ptrtoint ptr %min.0.in.i.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %min.0.i.i.i59.i = load i32, ptr %min.0.in.i.i.i58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min.0.i.i.i59.i)
  %cmp.not.i.i.i60.i = icmp eq i32 %min.0.i.i.i59.i, 0
  br i1 %cmp.not.i.i.i60.i, label %sw.epilog.i.i.i61.i.drm_dp_link_train_wait.exit.i.i64.i_crit_edge, label %if.then.i.i.i63.i

sw.epilog.i.i.i61.i.drm_dp_link_train_wait.exit.i.i64.i_crit_edge: ; preds = %sw.epilog.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_wait.exit.i.i64.i

if.then.i.i.i63.i:                                ; preds = %sw.epilog.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.i62.i = shl i32 %min.0.i.i.i59.i, 1
  call void @usleep_range_state(i32 noundef %min.0.i.i.i59.i, i32 noundef %mul.i.i.i62.i, i32 noundef 2) #7
  br label %drm_dp_link_train_wait.exit.i.i64.i

drm_dp_link_train_wait.exit.i.i64.i:              ; preds = %if.then.i.i.i63.i, %sw.epilog.i.i.i61.i.drm_dp_link_train_wait.exit.i.i64.i_crit_edge, %if.end.i.i56.i.drm_dp_link_train_wait.exit.i.i64.i_crit_edge
  %call2.i.i.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %67, ptr noundef nonnull %status.i.i46.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %if.end5.i.i.i

if.then4.i.i.i:                                   ; preds = %drm_dp_link_train_wait.exit.i.i64.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %call2.i.i.i) #7
  br label %if.then15.i

if.end5.i.i.i:                                    ; preds = %drm_dp_link_train_wait.exit.i.i64.i
  %73 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lanes.i22, align 4
  %call7.i.i.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %status.i.i46.i, i32 noundef %74) #7
  br i1 %call7.i.i.i, label %if.end9.i.i.i, label %if.then8.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #7
  %75 = ptrtoint ptr %clock_recovered.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %clock_recovered.i.i.i, align 4
  br label %if.end5.i.i

if.end9.i.i.i:                                    ; preds = %if.end5.i.i.i
  %76 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lanes.i22, align 4
  %call12.i.i.i = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %status.i.i46.i, i32 noundef %77) #7
  br i1 %call12.i.i.i, label %if.end5.thread.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end9.i.i.i
  %78 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lanes.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp21.not.i.i.i65.i = icmp eq i32 %79, 0
  br i1 %cmp21.not.i.i.i65.i, label %if.then13.i.i.i.if.end5.i.i_crit_edge, label %if.then13.i.i.i.for.body.i.i.i77.i_crit_edge

if.then13.i.i.i.for.body.i.i.i77.i_crit_edge:     ; preds = %if.then13.i.i.i
  br label %for.body.i.i.i77.i

if.then13.i.i.i.if.end5.i.i_crit_edge:            ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

for.body.i.i.i77.i:                               ; preds = %for.body.i.i.i77.i.for.body.i.i.i77.i_crit_edge, %if.then13.i.i.i.for.body.i.i.i77.i_crit_edge
  %i.022.i.i.i66.i = phi i32 [ %inc.i.i.i75.i, %for.body.i.i.i77.i.for.body.i.i.i77.i_crit_edge ], [ 0, %if.then13.i.i.i.for.body.i.i.i77.i_crit_edge ]
  %call.i.i.i67.i = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %status.i.i46.i, i32 noundef %i.022.i.i.i66.i) #7
  %conv.i.i.i68.i = zext i8 %call.i.i.i67.i to i32
  %arrayidx.i.i.i69.i = getelementptr [4 x i32], ptr %adjust1.i.i.i.i, i32 0, i32 %i.022.i.i.i66.i
  %80 = ptrtoint ptr %arrayidx.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i.i.i68.i, ptr %arrayidx.i.i.i69.i, align 4
  %call2.i.i.i70.i = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %status.i.i46.i, i32 noundef %i.022.i.i.i66.i) #7
  %81 = lshr i8 %call2.i.i.i70.i, 3
  %82 = zext i8 %81 to i32
  %arrayidx5.i.i.i71.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 1, i32 1, i32 %i.022.i.i.i66.i
  %83 = ptrtoint ptr %arrayidx5.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx5.i.i.i71.i, align 4
  %call6.i.i.i72.i = call zeroext i8 @drm_dp_get_adjust_request_post_cursor(ptr noundef nonnull %status.i.i46.i, i32 noundef %i.022.i.i.i66.i) #7
  %conv7.i.i.i73.i = zext i8 %call6.i.i.i72.i to i32
  %arrayidx8.i.i.i74.i = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 1, i32 2, i32 %i.022.i.i.i66.i
  %84 = ptrtoint ptr %arrayidx8.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv7.i.i.i73.i, ptr %arrayidx8.i.i.i74.i, align 4
  %inc.i.i.i75.i = add nuw i32 %i.022.i.i.i66.i, 1
  %85 = ptrtoint ptr %lanes.i22 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %lanes.i22, align 4
  %cmp.i.i.i76.i = icmp ult i32 %inc.i.i.i75.i, %86
  br i1 %cmp.i.i.i76.i, label %for.body.i.i.i77.i.for.body.i.i.i77.i_crit_edge, label %for.body.i.i.i77.i.if.end5.i.i_crit_edge

for.body.i.i.i77.i.if.end5.i.i_crit_edge:         ; preds = %for.body.i.i.i77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

for.body.i.i.i77.i.for.body.i.i.i77.i_crit_edge:  ; preds = %for.body.i.i.i77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i77.i

if.end5.thread.i.i:                               ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %channel_equalized.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %channel_equalized.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i.i46.i) #7
  br label %if.end24.i

if.end5.i.i:                                      ; preds = %for.body.i.i.i77.i.if.end5.i.i_crit_edge, %if.then13.i.i.i.if.end5.i.i_crit_edge, %if.then8.i.i.i
  %88 = ptrtoint ptr %channel_equalized.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %.pr.i79.i = load i8, ptr %channel_equalized.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i.i46.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i79.i)
  %tobool7.not.i.i = icmp eq i8 %.pr.i79.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end5.i.i.if.end24.i_crit_edge

if.end5.i.i.if.end24.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call fastcc void @drm_dp_link_train_adjust(ptr noundef %train) #7
  %inc.i80.i = add nuw nsw i32 %repeat.023.i.i, 1
  %exitcond.not.i81.i = icmp eq i32 %inc.i80.i, 5
  br i1 %exitcond.not.i81.i, label %if.end16.i34, label %if.end9.i.i.for.body.i55.i_crit_edge

if.end9.i.i.for.body.i55.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i55.i

if.then15.i:                                      ; preds = %if.then4.i.i.i, %for.body.i55.i.if.then15.i_crit_edge
  %retval.0.i.i78.i = phi i32 [ %call2.i.i.i, %if.then4.i.i.i ], [ %call.i.i53.i, %for.body.i55.i.if.then15.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %status.i.i46.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.i78.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %retval.0.i.i78.i) #7
  br label %out.i38

if.end16.i34:                                     ; preds = %if.end9.i.i
  %89 = ptrtoint ptr %channel_equalized.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %.pr100.i = load i8, ptr %channel_equalized.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr100.i)
  %tobool18.not.i = icmp eq i8 %.pr100.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end16.i34.if.end24.i_crit_edge

if.end16.i34.if.end24.i_crit_edge:                ; preds = %if.end16.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end16.i34
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #7
  %90 = ptrtoint ptr %rate.i23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rate.i23, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %91, label %if.then19.i.retry.backedge.i_crit_edge [
    i32 162000, label %if.then19.i.out.i38_crit_edge
    i32 270000, label %if.then19.i.retry.backedge.sink.split.i_crit_edge
    i32 540000, label %sw.bb3.i85.i
  ]

if.then19.i.retry.backedge.sink.split.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge.sink.split.i

if.then19.i.out.i38_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i38

if.then19.i.retry.backedge.i_crit_edge:           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge.i

sw.bb3.i85.i:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge.sink.split.i

if.end24.i:                                       ; preds = %if.end16.i34.if.end24.i_crit_edge, %if.end5.i.i.if.end24.i_crit_edge, %if.end5.thread.i.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25) #7
  br label %out.i38

out.i38:                                          ; preds = %if.end24.i, %if.then19.i.out.i38_crit_edge, %if.then15.i, %if.then7.i.out.i38_crit_edge, %if.then5.i
  %err.0.i35 = phi i32 [ %retval.0.i.i.i, %if.then5.i ], [ %retval.0.i.i78.i, %if.then15.i ], [ 0, %if.end24.i ], [ -22, %if.then7.i.out.i38_crit_edge ], [ -22, %if.then19.i.out.i38_crit_edge ]
  %93 = ptrtoint ptr %pattern.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %pattern.i.i, align 4
  %call.i.i36 = call fastcc i32 @drm_dp_link_apply_training(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i.i37 = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i.i37, label %if.then.i90.i, label %out.i38.drm_dp_link_train_full.exit_crit_edge

out.i38.drm_dp_link_train_full.exit_crit_edge:    ; preds = %out.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_link_train_full.exit

if.then.i90.i:                                    ; preds = %out.i38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call.i.i36) #7
  br label %drm_dp_link_train_full.exit

drm_dp_link_train_full.exit:                      ; preds = %if.then.i90.i, %out.i38.drm_dp_link_train_full.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i35)
  %cmp10 = icmp slt i32 %err.0.i35, 0
  br i1 %cmp10, label %drm_dp_link_train_full.exit.if.then11_crit_edge, label %drm_dp_link_train_full.exit.cleanup_crit_edge

drm_dp_link_train_full.exit.cleanup_crit_edge:    ; preds = %drm_dp_link_train_full.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

drm_dp_link_train_full.exit.if.then11_crit_edge:  ; preds = %drm_dp_link_train_full.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %drm_dp_link_train_full.exit.if.then11_crit_edge, %drm_dp_link_train_full.exit.thread
  %retval.0.i3945 = phi i32 [ %call.lcssa.i, %drm_dp_link_train_full.exit.thread ], [ %err.0.i35, %drm_dp_link_train_full.exit.if.then11_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %retval.0.i3945) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %drm_dp_link_train_full.exit.cleanup_crit_edge, %drm_dp_link_train_fast.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drm_dp_link_train_fast.exit.cleanup_crit_edge ], [ %retval.0.i3945, %if.then11 ], [ 0, %drm_dp_link_train_full.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_dp_link_apply_training(ptr noundef %link) unnamed_addr #3 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  %values = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %train = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12
  %lanes2 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %0 = ptrtoint ptr %lanes2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes2, align 4
  %aux3 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 11
  %2 = ptrtoint ptr %aux3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #7
  %4 = getelementptr inbounds [4 x i8], ptr %values, i32 0, i32 1
  %ops = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 10
  %5 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %values, align 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = tail call i32 %9(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pre_emphasis = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 0, i32 1
  %post_cursor = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6114.not = icmp eq i32 %1, 0
  br i1 %cmp6114.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %train, i32 %i.0115
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr i32, ptr %pre_emphasis, i32 %i.0115
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %shl8 = shl i32 %13, 3
  %or = or i32 %shl8, %11
  %conv = trunc i32 %or to i8
  %arrayidx9 = getelementptr [4 x i8], ptr %values, i32 0, i32 %i.0115
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx9, align 1
  %inc = add nuw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call11 = call i32 @drm_dp_dpcd_write(ptr noundef %3, i32 noundef 259, ptr noundef nonnull %values, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call11) #7
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %15 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %16)
  %cmp17 = icmp ugt i8 %16, 17
  br i1 %cmp17, label %land.lhs.true, label %if.end15.if.end46_crit_edge

if.end15.if.end46_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end15
  %rate = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %17 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %18)
  %cmp19 = icmp eq i32 %18, 540000
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then21:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %4, align 1
  %20 = ptrtoint ptr %values to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %values, align 4
  br i1 %cmp6114.not, label %if.then21.for.end38_crit_edge, label %if.then21.for.body27_crit_edge

if.then21.for.body27_crit_edge:                   ; preds = %if.then21
  br label %for.body27

if.then21.for.end38_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %if.then21.for.body27_crit_edge
  %i.1117 = phi i32 [ %inc37, %for.body27.for.body27_crit_edge ], [ 0, %if.then21.for.body27_crit_edge ]
  %arrayidx28 = getelementptr i32, ptr %post_cursor, i32 %i.1117
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %and = and i32 %22, 3
  %and29 = shl i32 %i.1117, 2
  %shl30 = and i32 %and29, 4
  %shl31 = shl nuw nsw i32 %and, %shl30
  %div113 = lshr i32 %i.1117, 1
  %arrayidx32 = getelementptr [4 x i8], ptr %values, i32 0, i32 %div113
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx32, align 1
  %25 = trunc i32 %shl31 to i8
  %conv35 = or i8 %24, %25
  store i8 %conv35, ptr %arrayidx32, align 1
  %inc37 = add nuw i32 %i.1117, 1
  %exitcond118.not = icmp eq i32 %inc37, %1
  br i1 %exitcond118.not, label %for.body27.for.end38_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.body27.for.end38_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.end38:                                        ; preds = %for.body27.for.end38_crit_edge, %if.then21.for.end38_crit_edge
  %sub = add i32 %1, 1
  %div40112 = lshr i32 %sub, 1
  %call41 = call i32 @drm_dp_dpcd_write(ptr noundef %3, i32 noundef 271, ptr noundef nonnull %values, i32 noundef %div40112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %for.end38.if.end46_crit_edge

for.end38.if.end46_crit_edge:                     ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %call41) #7
  br label %cleanup

if.end46:                                         ; preds = %for.end38.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end15.if.end46_crit_edge
  %pattern48 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 2
  %26 = ptrtoint ptr %pattern48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pattern48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp49.not = icmp eq i32 %27, 0
  %spec.select = select i1 %cmp49.not, i32 0, i32 32
  %or59 = or i32 %spec.select, %27
  %conv60 = trunc i32 %or59 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %28 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv60, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %3, i32 noundef 258, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp62 = icmp slt i32 %call.i, 0
  br i1 %cmp62, label %if.then64, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end46.cleanup_crit_edge, %if.then44, %if.then14, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call11, %if.then14 ], [ %call41, %if.then44 ], [ %call.i, %if.then64 ], [ 0, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_dp_link_train_adjust(ptr nocapture noundef %train) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adjust2 = getelementptr inbounds %struct.drm_dp_link_train, ptr %train, i32 0, i32 1
  %0 = ptrtoint ptr %train to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %train, align 4
  %2 = ptrtoint ptr %adjust2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjust2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp5.not = icmp eq i32 %1, %3
  br i1 %cmp5.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %train to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %train, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [4 x i32], ptr %train, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %arrayidx4.1 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.not.1 = icmp eq i32 %6, %8
  br i1 %cmp5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr [4 x i32], ptr %train, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  %arrayidx4.2 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp5.not.2 = icmp eq i32 %11, %13
  br i1 %cmp5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr [4 x i32], ptr %train, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3, align 4
  %arrayidx4.3 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp5.not.3 = icmp eq i32 %16, %18
  br i1 %cmp5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx13 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp16.not = icmp eq i32 %21, %23
  br i1 %cmp16.not, label %for.inc.3.for.inc23_crit_edge, label %if.then17

for.inc.3.for.inc23_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23

if.then17:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx13, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %if.then17, %for.inc.3.for.inc23_crit_edge
  %arrayidx13.1 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx13.1, align 4
  %arrayidx15.1 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx15.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp16.not.1 = icmp eq i32 %26, %28
  br i1 %cmp16.not.1, label %for.inc23.for.inc23.1_crit_edge, label %if.then17.1

for.inc23.for.inc23.1_crit_edge:                  ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.1

if.then17.1:                                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx13.1, align 4
  br label %for.inc23.1

for.inc23.1:                                      ; preds = %if.then17.1, %for.inc23.for.inc23.1_crit_edge
  %arrayidx13.2 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx13.2, align 4
  %arrayidx15.2 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp16.not.2 = icmp eq i32 %31, %33
  br i1 %cmp16.not.2, label %for.inc23.1.for.inc23.2_crit_edge, label %if.then17.2

for.inc23.1.for.inc23.2_crit_edge:                ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.2

if.then17.2:                                      ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx13.2, align 4
  br label %for.inc23.2

for.inc23.2:                                      ; preds = %if.then17.2, %for.inc23.1.for.inc23.2_crit_edge
  %arrayidx13.3 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx13.3, align 4
  %arrayidx15.3 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx15.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp16.not.3 = icmp eq i32 %36, %38
  br i1 %cmp16.not.3, label %for.inc23.2.for.inc23.3_crit_edge, label %if.then17.3

for.inc23.2.for.inc23.3_crit_edge:                ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.3

if.then17.3:                                      ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx13.3, align 4
  br label %for.inc23.3

for.inc23.3:                                      ; preds = %if.then17.3, %for.inc23.2.for.inc23.3_crit_edge
  %arrayidx29 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 2, i32 0
  %40 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 2, i32 0
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp32.not = icmp eq i32 %41, %43
  br i1 %cmp32.not, label %for.inc23.3.for.inc39_crit_edge, label %if.then33

for.inc23.3.for.inc39_crit_edge:                  ; preds = %for.inc23.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.then33:                                        ; preds = %for.inc23.3
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx29, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %if.then33, %for.inc23.3.for.inc39_crit_edge
  %arrayidx29.1 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx29.1, align 4
  %arrayidx31.1 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx31.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp32.not.1 = icmp eq i32 %46, %48
  br i1 %cmp32.not.1, label %for.inc39.for.inc39.1_crit_edge, label %if.then33.1

for.inc39.for.inc39.1_crit_edge:                  ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.1

if.then33.1:                                      ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx29.1, align 4
  br label %for.inc39.1

for.inc39.1:                                      ; preds = %if.then33.1, %for.inc39.for.inc39.1_crit_edge
  %arrayidx29.2 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx29.2, align 4
  %arrayidx31.2 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 2, i32 2
  %52 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx31.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp32.not.2 = icmp eq i32 %51, %53
  br i1 %cmp32.not.2, label %for.inc39.1.for.inc39.2_crit_edge, label %if.then33.2

for.inc39.1.for.inc39.2_crit_edge:                ; preds = %for.inc39.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.2

if.then33.2:                                      ; preds = %for.inc39.1
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx29.2, align 4
  br label %for.inc39.2

for.inc39.2:                                      ; preds = %if.then33.2, %for.inc39.1.for.inc39.2_crit_edge
  %arrayidx29.3 = getelementptr %struct.drm_dp_link_train_set, ptr %train, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx29.3, align 4
  %arrayidx31.3 = getelementptr %struct.drm_dp_link_train, ptr %train, i32 0, i32 1, i32 2, i32 3
  %57 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx31.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp32.not.3 = icmp eq i32 %56, %58
  br i1 %cmp32.not.3, label %for.inc39.2.for.inc39.3_crit_edge, label %if.then33.3

for.inc39.2.for.inc39.3_crit_edge:                ; preds = %for.inc39.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39.3

if.then33.3:                                      ; preds = %for.inc39.2
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx29.3, align 4
  br label %for.inc39.3

for.inc39.3:                                      ; preds = %if.then33.3, %for.inc39.2.for.inc39.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_post_cursor(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 199, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 219, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 340, i32 4}
!6 = distinct !{null, !7, !"rates", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 392, i32 28}
!8 = distinct !{null, !9, !"lanes", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 394, i32 28}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 415, i32 5}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 860, i32 5}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 865, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 868, i32 3}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 873, i32 3}
!20 = !{ptr @drm_dp_edp_revisions, !21, !"drm_dp_edp_revisions", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 13, i32 17}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 784, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 817, i32 3}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 822, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 827, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 476, i32 3}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 491, i32 3}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 505, i32 4}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 518, i32 3}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 720, i32 3}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 728, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 740, i32 3}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 745, i32 3}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 754, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 758, i32 3}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 763, i32 3}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 772, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 622, i32 4}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 681, i32 4}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tegra/dp.c", i32 654, i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
!72 = !{!"auto-init"}
