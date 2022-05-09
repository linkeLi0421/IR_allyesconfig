; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mt2701_afe_private = type { ptr, [9 x ptr], ptr, [2 x i8], ptr }
%struct.mt2701_soc_variants = type { i8, i32 }
%struct.mt2701_i2s_path = type { i32, [2 x i32], [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr }

@mt2701_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to get %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2701_init_clock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry_ptr = internal global ptr @mt2701_init_clock._entry, section ".printk_index", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s%d_src_sel\00", [18 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 47, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry_ptr.7 = internal global ptr @mt2701_init_clock._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s%d_src_div\00", [18 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry_ptr.10 = internal global ptr @mt2701_init_clock._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s%d_mclk_en\00", [18 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry_ptr.13 = internal global ptr @mt2701_init_clock._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2so%d_hop_ck\00", [18 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry_ptr.16 = internal global ptr @mt2701_init_clock._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2si%d_hop_ck\00", [18 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry_ptr.19 = internal global ptr @mt2701_init_clock._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asrc%d_out_ck\00", [18 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt2701_init_clock._entry_ptr.22 = internal global ptr @mt2701_init_clock._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_mrgif_pd\00", [17 x i8] zeroinitializer }, align 32
@mt2701_afe_enable_i2s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable ASRC clock %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2701_afe_enable_i2s\00", [42 x i8] zeroinitializer }, align 32
@mt2701_afe_enable_i2s._entry_ptr = internal global ptr @mt2701_afe_enable_i2s._entry, section ".printk_index", align 4
@mt2701_afe_enable_i2s._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable I2S clock %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt2701_afe_enable_i2s._entry_ptr.28 = internal global ptr @mt2701_afe_enable_i2s._entry.26, section ".printk_index", align 4
@mt2701_afe_enable_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable audio system %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt2701_afe_enable_clock\00", [40 x i8] zeroinitializer }, align 32
@mt2701_afe_enable_clock._entry_ptr = internal global ptr @mt2701_afe_enable_clock._entry, section ".printk_index", align 4
@mt2701_mclk_configuration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set mclk source\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt2701_mclk_configuration\00", [38 x i8] zeroinitializer }, align 32
@mt2701_mclk_configuration._entry_ptr = internal global ptr @mt2701_mclk_configuration._entry, section ".printk_index", align 4
@mt2701_mclk_configuration._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set mclk divider %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt2701_mclk_configuration._entry_ptr.35 = internal global ptr @mt2701_mclk_configuration._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_sys_audio_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"top_audio_mux1_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"top_audio_mux2_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"top_audio_a1sys_hp\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"top_audio_a2sys_hp\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_afe_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_afe_conn_pd\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_a1sys_pd\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_a2sys_pd\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 33, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 44, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 47, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 51, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 54, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 58, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 61, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 65, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 68, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 73, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 76, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 81, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 84, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 90, i32 46 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 109, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 115, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 240, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 286, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 293, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 14, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 15, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 16, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 17, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 18, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 19, i32 24 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 20, i32 29 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 21, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [53 x i8] c"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 22, i32 26 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @mt2701_afe_enable_clock._entry, ptr @mt2701_afe_enable_clock._entry_ptr, ptr @mt2701_afe_enable_i2s._entry, ptr @mt2701_afe_enable_i2s._entry.26, ptr @mt2701_afe_enable_i2s._entry_ptr, ptr @mt2701_afe_enable_i2s._entry_ptr.28, ptr @mt2701_init_clock._entry, ptr @mt2701_init_clock._entry.12, ptr @mt2701_init_clock._entry.15, ptr @mt2701_init_clock._entry.18, ptr @mt2701_init_clock._entry.21, ptr @mt2701_init_clock._entry.6, ptr @mt2701_init_clock._entry.9, ptr @mt2701_init_clock._entry_ptr, ptr @mt2701_init_clock._entry_ptr.10, ptr @mt2701_init_clock._entry_ptr.13, ptr @mt2701_init_clock._entry_ptr.16, ptr @mt2701_init_clock._entry_ptr.19, ptr @mt2701_init_clock._entry_ptr.22, ptr @mt2701_init_clock._entry_ptr.7, ptr @mt2701_mclk_configuration._entry, ptr @mt2701_mclk_configuration._entry.33, ptr @mt2701_mclk_configuration._entry_ptr, ptr @mt2701_mclk_configuration._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_init_clock._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_init_clock._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_init_clock._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_init_clock._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_init_clock._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_init_clock._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_enable_i2s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_enable_i2s._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_enable_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mclk_configuration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mclk_configuration._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt2701_init_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.36) #6
  %arrayidx1 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %arrayidx1, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %for.cond

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond:                                         ; preds = %entry
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.1 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.37) #6
  %arrayidx1.1 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.1, ptr %arrayidx1.1, align 4
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.2 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.38) #6
  %arrayidx1.2 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.2, ptr %arrayidx1.2, align 4
  %cmp.i.2 = icmp ugt ptr %call.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.cond.1.do.end_crit_edge, label %for.cond.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.3 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.39) #6
  %arrayidx1.3 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.3, ptr %arrayidx1.3, align 4
  %cmp.i.3 = icmp ugt ptr %call.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.cond.2.do.end_crit_edge, label %for.cond.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.4 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.40) #6
  %arrayidx1.4 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.4, ptr %arrayidx1.4, align 4
  %cmp.i.4 = icmp ugt ptr %call.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.cond.3.do.end_crit_edge, label %for.cond.4

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.4:                                       ; preds = %for.cond.3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.5 = tail call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull @.str.41) #6
  %arrayidx1.5 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.5, ptr %arrayidx1.5, align 4
  %cmp.i.5 = icmp ugt ptr %call.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.cond.4.do.end_crit_edge, label %for.cond.5

for.cond.4.do.end_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.6 = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef nonnull @.str.42) #6
  %arrayidx1.6 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.6, ptr %arrayidx1.6, align 4
  %cmp.i.6 = icmp ugt ptr %call.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.cond.5.do.end_crit_edge, label %for.cond.6

for.cond.5.do.end_crit_edge:                      ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.6:                                       ; preds = %for.cond.5
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.7 = tail call ptr @devm_clk_get(ptr noundef %24, ptr noundef nonnull @.str.43) #6
  %arrayidx1.7 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.7, ptr %arrayidx1.7, align 4
  %cmp.i.7 = icmp ugt ptr %call.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7, label %for.cond.6.do.end_crit_edge, label %for.cond.7

for.cond.6.do.end_crit_edge:                      ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.7:                                       ; preds = %for.cond.6
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.8 = tail call ptr @devm_clk_get(ptr noundef %27, ptr noundef nonnull @.str.44) #6
  %arrayidx1.8 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 8
  %28 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.8, ptr %arrayidx1.8, align 4
  %cmp.i.8 = icmp ugt ptr %call.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.8, label %for.cond.7.do.end_crit_edge, label %for.cond.8

for.cond.7.do.end_crit_edge:                      ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.8:                                       ; preds = %for.cond.7
  %soc = getelementptr inbounds %struct.mt2701_afe_private, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc, align 4
  %i2s_num214 = getelementptr inbounds %struct.mt2701_soc_variants, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %i2s_num214 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i2s_num214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp11215 = icmp sgt i32 %32, 0
  br i1 %cmp11215, label %for.cond.8.for.body12_crit_edge, label %for.cond.8.for.end113_crit_edge

for.cond.8.for.end113_crit_edge:                  ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end113

for.cond.8.for.body12_crit_edge:                  ; preds = %for.cond.8
  br label %for.body12

do.end:                                           ; preds = %for.cond.7.do.end_crit_edge, %for.cond.6.do.end_crit_edge, %for.cond.5.do.end_crit_edge, %for.cond.4.do.end_crit_edge, %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %.lcssa = phi ptr [ @.str.36, %entry.do.end_crit_edge ], [ @.str.37, %for.cond.do.end_crit_edge ], [ @.str.38, %for.cond.1.do.end_crit_edge ], [ @.str.39, %for.cond.2.do.end_crit_edge ], [ @.str.40, %for.cond.3.do.end_crit_edge ], [ @.str.41, %for.cond.4.do.end_crit_edge ], [ @.str.42, %for.cond.5.do.end_crit_edge ], [ @.str.43, %for.cond.6.do.end_crit_edge ], [ @.str.44, %for.cond.7.do.end_crit_edge ]
  %arrayidx1.lcssa = phi ptr [ %arrayidx1, %entry.do.end_crit_edge ], [ %arrayidx1.1, %for.cond.do.end_crit_edge ], [ %arrayidx1.2, %for.cond.1.do.end_crit_edge ], [ %arrayidx1.3, %for.cond.2.do.end_crit_edge ], [ %arrayidx1.4, %for.cond.3.do.end_crit_edge ], [ %arrayidx1.5, %for.cond.4.do.end_crit_edge ], [ %arrayidx1.6, %for.cond.5.do.end_crit_edge ], [ %arrayidx1.7, %for.cond.6.do.end_crit_edge ], [ %arrayidx1.8, %for.cond.7.do.end_crit_edge ]
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull %.lcssa) #9
  %35 = ptrtoint ptr %arrayidx1.lcssa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx1.lcssa, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup126

for.body12:                                       ; preds = %for.inc111.for.body12_crit_edge, %for.cond.8.for.body12_crit_edge
  %i.1216 = phi i32 [ %inc112, %for.inc111.for.body12_crit_edge ], [ 0, %for.cond.8.for.body12_crit_edge ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %name) #6
  %40 = call ptr @memset(ptr %name, i32 255, i32 13)
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 13, ptr noundef nonnull @.str.5, i32 noundef %i.1216)
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call18 = call ptr @devm_clk_get(ptr noundef %42, ptr noundef nonnull %name) #6
  %sel_ck = getelementptr %struct.mt2701_i2s_path, ptr %39, i32 %i.1216, i32 5
  %43 = ptrtoint ptr %sel_ck to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call18, ptr %sel_ck, align 4
  %cmp.i184 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %do.end24, label %if.end29

do.end24:                                         ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef nonnull %name) #9
  %46 = ptrtoint ptr %sel_ck to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sel_ck, align 4
  br label %cleanup.thread

if.end29:                                         ; preds = %for.body12
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 13, ptr noundef nonnull @.str.8, i32 noundef %i.1216)
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %call34 = call ptr @devm_clk_get(ptr noundef %49, ptr noundef nonnull %name) #6
  %div_ck = getelementptr %struct.mt2701_i2s_path, ptr %39, i32 %i.1216, i32 6
  %50 = ptrtoint ptr %div_ck to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call34, ptr %div_ck, align 4
  %cmp.i185 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %do.end40, label %if.end45

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef nonnull %name) #9
  %53 = ptrtoint ptr %div_ck to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %div_ck, align 4
  br label %cleanup.thread

if.end45:                                         ; preds = %if.end29
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 13, ptr noundef nonnull @.str.11, i32 noundef %i.1216)
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %call50 = call ptr @devm_clk_get(ptr noundef %56, ptr noundef nonnull %name) #6
  %mclk_ck = getelementptr %struct.mt2701_i2s_path, ptr %39, i32 %i.1216, i32 7
  %57 = ptrtoint ptr %mclk_ck to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call50, ptr %mclk_ck, align 4
  %cmp.i186 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %do.end56, label %if.end61

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str, ptr noundef nonnull %name) #9
  %60 = ptrtoint ptr %mclk_ck to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mclk_ck, align 4
  br label %cleanup.thread

if.end61:                                         ; preds = %if.end45
  %call63 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 13, ptr noundef nonnull @.str.14, i32 noundef %i.1216)
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %call66 = call ptr @devm_clk_get(ptr noundef %63, ptr noundef nonnull %name) #6
  %cmp.i187 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str, ptr noundef nonnull %name) #9
  br label %cleanup.thread

if.end75:                                         ; preds = %if.end61
  %hop_ck = getelementptr %struct.mt2701_i2s_path, ptr %39, i32 %i.1216, i32 4
  %66 = ptrtoint ptr %hop_ck to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call66, ptr %hop_ck, align 4
  %call78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 13, ptr noundef nonnull @.str.17, i32 noundef %i.1216)
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %call81 = call ptr @devm_clk_get(ptr noundef %68, ptr noundef nonnull %name) #6
  %cmp.i188 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %do.end86, label %if.end90

do.end86:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str, ptr noundef nonnull %name) #9
  br label %cleanup.thread

if.end90:                                         ; preds = %if.end75
  %arrayidx92 = getelementptr %struct.mt2701_i2s_path, ptr %39, i32 %i.1216, i32 4, i32 1
  %71 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call81, ptr %arrayidx92, align 4
  %call94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 13, ptr noundef nonnull @.str.20, i32 noundef %i.1216)
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %call97 = call ptr @devm_clk_get(ptr noundef %73, ptr noundef nonnull %name) #6
  %asrco_ck = getelementptr %struct.mt2701_i2s_path, ptr %39, i32 %i.1216, i32 8
  %74 = ptrtoint ptr %asrco_ck to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call97, ptr %asrco_ck, align 4
  %cmp.i189 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %do.end103, label %for.inc111

do.end103:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str, ptr noundef nonnull %name) #9
  %77 = ptrtoint ptr %asrco_ck to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %asrco_ck, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end103, %do.end86, %do.end71, %do.end56, %do.end40, %do.end24
  %retval.1.ph.in = phi ptr [ %78, %do.end103 ], [ %call81, %do.end86 ], [ %call66, %do.end71 ], [ %61, %do.end56 ], [ %54, %do.end40 ], [ %47, %do.end24 ]
  %retval.1.ph = ptrtoint ptr %retval.1.ph.in to i32
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %name) #6
  br label %cleanup126

for.inc111:                                       ; preds = %if.end90
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %name) #6
  %inc112 = add nuw nsw i32 %i.1216, 1
  %79 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %soc, align 4
  %i2s_num = getelementptr inbounds %struct.mt2701_soc_variants, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %i2s_num to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i2s_num, align 4
  %cmp11 = icmp slt i32 %inc112, %82
  br i1 %cmp11, label %for.inc111.for.body12_crit_edge, label %for.inc111.for.end113_crit_edge

for.inc111.for.end113_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end113

for.inc111.for.body12_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

for.end113:                                       ; preds = %for.inc111.for.end113_crit_edge, %for.cond.8.for.end113_crit_edge
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %call115 = call ptr @devm_clk_get(ptr noundef %84, ptr noundef nonnull @.str.23) #6
  %mrgif_ck = getelementptr inbounds %struct.mt2701_afe_private, ptr %1, i32 0, i32 2
  %85 = ptrtoint ptr %mrgif_ck to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call115, ptr %mrgif_ck, align 4
  %cmp.i190 = icmp ugt ptr %call115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then118, label %for.end113.cleanup126_crit_edge

for.end113.cleanup126_crit_edge:                  ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup126

if.then118:                                       ; preds = %for.end113
  %cmp121 = icmp eq ptr %call115, inttoptr (i32 -517 to ptr)
  br i1 %cmp121, label %if.then118.cleanup126_crit_edge, label %if.end123

if.then118.cleanup126_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup126

if.end123:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %mrgif_ck to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %mrgif_ck, align 4
  br label %cleanup126

cleanup126:                                       ; preds = %if.end123, %if.then118.cleanup126_crit_edge, %for.end113.cleanup126_crit_edge, %cleanup.thread, %do.end
  %retval.2 = phi i32 [ %37, %do.end ], [ -517, %if.then118.cleanup126_crit_edge ], [ 0, %if.end123 ], [ 0, %for.end113.cleanup126_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt2701_afe_enable_i2s(ptr nocapture noundef readonly %afe, ptr nocapture noundef readonly %i2s_path, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asrco_ck = getelementptr inbounds %struct.mt2701_i2s_path, ptr %i2s_path, i32 0, i32 8
  %0 = ptrtoint ptr %asrco_ck to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asrco_ck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %arrayidx = getelementptr %struct.mt2701_i2s_path, ptr %i2s_path, i32 0, i32 4, i32 %dir
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

if.end.i22:                                       ; preds = %if.end
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.cleanup_crit_edge, label %if.then3.i23

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i23, %if.end.do.end6_crit_edge
  %retval.0.i24.ph = phi i32 [ %call1.i20, %if.then3.i23 ], [ %call.i18, %if.end.do.end6_crit_edge ]
  %dev7 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i24.ph) #9
  %8 = ptrtoint ptr %asrco_ck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asrco_ck, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.i22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i24.ph, %do.end6 ], [ 0, %if.end.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt2701_afe_disable_i2s(ptr nocapture noundef readnone %afe, ptr nocapture noundef readonly %i2s_path, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mt2701_i2s_path, ptr %i2s_path, i32 0, i32 4, i32 %dir
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %asrco_ck = getelementptr inbounds %struct.mt2701_i2s_path, ptr %i2s_path, i32 0, i32 8
  %2 = ptrtoint ptr %asrco_ck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asrco_ck, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt2701_afe_enable_mclk(ptr nocapture noundef readonly %afe, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mclk_ck = getelementptr %struct.mt2701_i2s_path, ptr %3, i32 %id, i32 7
  %4 = ptrtoint ptr %mclk_ck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk_ck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt2701_afe_disable_mclk(ptr nocapture noundef readonly %afe, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mclk_ck = getelementptr %struct.mt2701_i2s_path, ptr %3, i32 %id, i32 7
  %4 = ptrtoint ptr %mclk_ck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk_ck, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt2701_enable_btmrg_clk(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %mrgif_ck = getelementptr inbounds %struct.mt2701_afe_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mrgif_ck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrgif_ck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt2701_disable_btmrg_clk(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %mrgif_ck = getelementptr inbounds %struct.mt2701_afe_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mrgif_ck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrgif_ck, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt2701_afe_enable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv.i, align 4
  %base_ck.i = getelementptr inbounds %struct.mt2701_afe_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base_ck.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_ck.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %arrayidx2.i = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %call.i70.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool.not.i71.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool.not.i71.i, label %if.end.i74.i, label %if.end.i.err_a1sys.i_crit_edge

if.end.i.err_a1sys.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_a1sys.i

if.end.i74.i:                                     ; preds = %if.end.i
  %call1.i72.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72.i)
  %tobool2.not.i73.i = icmp eq i32 %call1.i72.i, 0
  br i1 %tobool2.not.i73.i, label %if.end6.i, label %if.end.i74.i.err_a1sys.sink.split.i_crit_edge

if.end.i74.i.err_a1sys.sink.split.i_crit_edge:    ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_a1sys.sink.split.i

if.end6.i:                                        ; preds = %if.end.i74.i
  %arrayidx8.i = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8.i, align 4
  %call.i78.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool.not.i79.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.end.i82.i, label %if.end6.i.err_a2sys.i_crit_edge

if.end6.i.err_a2sys.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_a2sys.i

if.end.i82.i:                                     ; preds = %if.end6.i
  %call1.i80.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80.i)
  %tobool2.not.i81.i = icmp eq i32 %call1.i80.i, 0
  br i1 %tobool2.not.i81.i, label %if.end12.i, label %if.end.i82.i.err_a2sys.sink.split.i_crit_edge

if.end.i82.i.err_a2sys.sink.split.i_crit_edge:    ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_a2sys.sink.split.i

if.end12.i:                                       ; preds = %if.end.i82.i
  %arrayidx14.i = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14.i, align 4
  %call.i86.i = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool.not.i87.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool.not.i87.i, label %if.end.i90.i, label %if.end12.i.err_afe.i_crit_edge

if.end12.i.err_afe.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_afe.i

if.end.i90.i:                                     ; preds = %if.end12.i
  %call1.i88.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88.i)
  %tobool2.not.i89.i = icmp eq i32 %call1.i88.i, 0
  br i1 %tobool2.not.i89.i, label %if.end18.i, label %if.end.i90.i.err_afe.sink.split.i_crit_edge

if.end.i90.i.err_afe.sink.split.i_crit_edge:      ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_afe.sink.split.i

if.end18.i:                                       ; preds = %if.end.i90.i
  %arrayidx20.i = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx20.i, align 4
  %call21.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end18.i.err_audio_a1sys.i_crit_edge

if.end18.i.err_audio_a1sys.i_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_audio_a1sys.i

if.end24.i:                                       ; preds = %if.end18.i
  %arrayidx26.i = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx26.i, align 4
  %call27.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.err_audio_a2sys.i_crit_edge

if.end24.i.err_audio_a2sys.i_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_audio_a2sys.i

if.end30.i:                                       ; preds = %if.end24.i
  %arrayidx32.i = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx32.i, align 4
  %call33.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end, label %err_afe_conn.i

err_afe_conn.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx26.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %err_audio_a2sys.i

err_audio_a2sys.i:                                ; preds = %err_afe_conn.i, %if.end24.i.err_audio_a2sys.i_crit_edge
  %ret.0.i = phi i32 [ %call27.i, %if.end24.i.err_audio_a2sys.i_crit_edge ], [ %call33.i, %err_afe_conn.i ]
  %18 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20.i, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %err_audio_a1sys.i

err_audio_a1sys.i:                                ; preds = %err_audio_a2sys.i, %if.end18.i.err_audio_a1sys.i_crit_edge
  %ret.1.i = phi i32 [ %call21.i, %if.end18.i.err_audio_a1sys.i_crit_edge ], [ %ret.0.i, %err_audio_a2sys.i ]
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14.i, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  br label %err_afe.sink.split.i

err_afe.sink.split.i:                             ; preds = %err_audio_a1sys.i, %if.end.i90.i.err_afe.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %21, %err_audio_a1sys.i ], [ %9, %if.end.i90.i.err_afe.sink.split.i_crit_edge ]
  %ret.2.ph.i = phi i32 [ %ret.1.i, %err_audio_a1sys.i ], [ %call1.i88.i, %if.end.i90.i.err_afe.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #6
  br label %err_afe.i

err_afe.i:                                        ; preds = %err_afe.sink.split.i, %if.end12.i.err_afe.i_crit_edge
  %ret.2.i = phi i32 [ %call.i86.i, %if.end12.i.err_afe.i_crit_edge ], [ %ret.2.ph.i, %err_afe.sink.split.i ]
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  br label %err_a2sys.sink.split.i

err_a2sys.sink.split.i:                           ; preds = %err_afe.i, %if.end.i82.i.err_a2sys.sink.split.i_crit_edge
  %.sink102.i = phi ptr [ %23, %err_afe.i ], [ %7, %if.end.i82.i.err_a2sys.sink.split.i_crit_edge ]
  %ret.3.ph.i = phi i32 [ %ret.2.i, %err_afe.i ], [ %call1.i80.i, %if.end.i82.i.err_a2sys.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink102.i) #6
  br label %err_a2sys.i

err_a2sys.i:                                      ; preds = %err_a2sys.sink.split.i, %if.end6.i.err_a2sys.i_crit_edge
  %ret.3.i = phi i32 [ %call.i78.i, %if.end6.i.err_a2sys.i_crit_edge ], [ %ret.3.ph.i, %err_a2sys.sink.split.i ]
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  br label %err_a1sys.sink.split.i

err_a1sys.sink.split.i:                           ; preds = %err_a2sys.i, %if.end.i74.i.err_a1sys.sink.split.i_crit_edge
  %.sink103.i = phi ptr [ %25, %err_a2sys.i ], [ %5, %if.end.i74.i.err_a1sys.sink.split.i_crit_edge ]
  %ret.4.ph.i = phi i32 [ %ret.3.i, %err_a2sys.i ], [ %call1.i72.i, %if.end.i74.i.err_a1sys.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink103.i) #6
  br label %err_a1sys.i

err_a1sys.i:                                      ; preds = %err_a1sys.sink.split.i, %if.end.i.err_a1sys.i_crit_edge
  %ret.4.i = phi i32 [ %call.i70.i, %if.end.i.err_a1sys.i_crit_edge ], [ %ret.4.ph.i, %err_a1sys.sink.split.i ]
  %26 = ptrtoint ptr %base_ck.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_ck.i, align 4
  tail call void @clk_disable(ptr noundef %27) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %err_a1sys.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink104.i = phi ptr [ %27, %err_a1sys.i ], [ %3, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %ret.4.i, %err_a1sys.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink104.i) #6
  br label %do.end

do.end:                                           ; preds = %cleanup.sink.split.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 1536, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 4608, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 264, i32 noundef 1170) #6
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 4208, i32 noundef 4793490) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt2701_afe_disable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1536, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4608, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv.i, align 4
  %base_ck.i = getelementptr inbounds %struct.mt2701_afe_private, ptr %5, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %arrayidx2.i = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %arrayidx4.i = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %arrayidx6.i = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %arrayidx8.i = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %arrayidx10.i = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %18 = ptrtoint ptr %base_ck.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_ck.i, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt2701_mclk_configuration(ptr nocapture noundef readonly %afe, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.mt2701_i2s_path, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %rem = srem i32 98304000, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 1
  br label %if.end11

if.else:                                          ; preds = %entry
  %rem4 = srem i32 90316800, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem4)
  %tobool5.not = icmp eq i32 %rem4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr %struct.mt2701_afe_private, ptr %1, i32 0, i32 1, i32 2
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then
  %arrayidx9.sink = phi ptr [ %arrayidx9, %if.then6 ], [ %arrayidx2, %if.then ]
  %.sink.in = getelementptr %struct.mt2701_i2s_path, ptr %3, i32 %id, i32 5
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink = load ptr, ptr %.sink.in, align 4
  %7 = ptrtoint ptr %arrayidx9.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx9.sink, align 4
  %call10 = tail call i32 @clk_set_parent(ptr noundef %.sink, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end11.do.end_crit_edge, %if.else.do.end_crit_edge
  %ret.041 = phi i32 [ %call10, %if.end11.do.end_crit_edge ], [ -22, %if.else.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %div_ck = getelementptr %struct.mt2701_i2s_path, ptr %3, i32 %id, i32 6
  %11 = ptrtoint ptr %div_ck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %div_ck, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call16 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %do.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %15 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.34, i32 noundef %call16) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.041, %do.end ], [ %call16, %do.end21 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 33, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt2701_init_clock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt2701_init_clock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 44, i32 32}
!10 = !{ptr @mt2701_init_clock._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 47, i32 4}
!12 = !{ptr @mt2701_init_clock._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 51, i32 32}
!15 = !{ptr @mt2701_init_clock._entry.9, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 54, i32 4}
!17 = !{ptr @mt2701_init_clock._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 58, i32 32}
!20 = !{ptr @mt2701_init_clock._entry.12, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 61, i32 4}
!22 = !{ptr @mt2701_init_clock._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 65, i32 32}
!25 = !{ptr @mt2701_init_clock._entry.15, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 68, i32 4}
!27 = !{ptr @mt2701_init_clock._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 73, i32 32}
!30 = !{ptr @mt2701_init_clock._entry.18, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 76, i32 4}
!32 = !{ptr @mt2701_init_clock._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 81, i32 32}
!35 = !{ptr @mt2701_init_clock._entry.21, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 84, i32 4}
!37 = !{ptr @mt2701_init_clock._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 90, i32 46}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 109, i32 3}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mt2701_afe_enable_i2s._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mt2701_afe_enable_i2s._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 115, i32 3}
!47 = !{ptr @mt2701_afe_enable_i2s._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt2701_afe_enable_i2s._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 240, i32 3}
!51 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mt2701_afe_enable_clock._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mt2701_afe_enable_clock._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 286, i32 3}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mt2701_mclk_configuration._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mt2701_mclk_configuration._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 293, i32 3}
!61 = !{ptr @mt2701_mclk_configuration._entry.33, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mt2701_mclk_configuration._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 14, i32 29}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 15, i32 31}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 16, i32 31}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 17, i32 27}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 18, i32 27}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 19, i32 24}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 20, i32 29}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 21, i32 26}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 22, i32 26}
!81 = distinct !{null, !82, !"base_clks", i1 false, i1 false}
!82 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c", i32 13, i32 26}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
