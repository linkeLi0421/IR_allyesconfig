; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8192/mt8192-afe-clk.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8192/mt8192-afe-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt8192_mck_div = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mt8192_afe_private = type { ptr, ptr, ptr, ptr, i32, i32, [44 x i8], [44 x ptr], i32, [4 x i32], [4 x i32], i32, i32, i32, i32, [11 x i32] }

@mt8192_set_audio_int_bus_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s clk_set_parent %s-%s fail %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mt8192_set_audio_int_bus_parent\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt8192/mt8192-afe-clk.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8192_set_audio_int_bus_parent._entry_ptr = internal global ptr @mt8192_set_audio_int_bus_parent._entry, section ".printk_index", align 4
@aud_clks = internal constant { [43 x ptr], [52 x i8] } { [43 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100], [52 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 209, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8192_afe_enable_clock\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr = internal global ptr @mt8192_afe_enable_clock._entry, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s clk_prepare_enable %s fail %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.10 = internal global ptr @mt8192_afe_enable_clock._entry.8, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.12 = internal global ptr @mt8192_afe_enable_clock._entry.11, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.14 = internal global ptr @mt8192_afe_enable_clock._entry.13, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.16 = internal global ptr @mt8192_afe_enable_clock._entry.15, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.18 = internal global ptr @mt8192_afe_enable_clock._entry.17, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.20 = internal global ptr @mt8192_afe_enable_clock._entry.19, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.22 = internal global ptr @mt8192_afe_enable_clock._entry.21, section ".printk_index", align 4
@mt8192_afe_enable_clock._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_afe_enable_clock._entry_ptr.24 = internal global ptr @mt8192_afe_enable_clock._entry.23, section ".printk_index", align 4
@mt8192_afe_disable_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.25, ptr @.str.2, i32 279, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt8192_afe_disable_clock\00", [39 x i8] zeroinitializer }, align 32
@mt8192_afe_disable_clock._entry_ptr = internal global ptr @mt8192_afe_disable_clock._entry, section ".printk_index", align 4
@mt8192_apll1_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.26, ptr @.str.2, i32 300, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt8192_apll1_enable\00", [44 x i8] zeroinitializer }, align 32
@mt8192_apll1_enable._entry_ptr = internal global ptr @mt8192_apll1_enable._entry, section ".printk_index", align 4
@mt8192_apll1_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.26, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_apll1_enable._entry_ptr.28 = internal global ptr @mt8192_apll1_enable._entry.27, section ".printk_index", align 4
@mt8192_apll2_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.29, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt8192_apll2_enable\00", [44 x i8] zeroinitializer }, align 32
@mt8192_apll2_enable._entry_ptr = internal global ptr @mt8192_apll2_enable._entry, section ".printk_index", align 4
@mt8192_apll2_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.29, ptr @.str.2, i32 357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_apll2_enable._entry_ptr.31 = internal global ptr @mt8192_apll2_enable._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"APLL1\00", [26 x i8] zeroinitializer }, align 32
@mck_div = internal constant { [11 x %struct.mt8192_mck_div], [124 x i8] } { [11 x %struct.mt8192_mck_div] [%struct.mt8192_mck_div { i32 21, i32 31, i32 800, i32 1, i32 808, i32 255, i32 255, i32 0, i32 800, i32 65536, i32 16 }, %struct.mt8192_mck_div { i32 22, i32 32, i32 800, i32 2, i32 808, i32 65280, i32 255, i32 8, i32 800, i32 131072, i32 17 }, %struct.mt8192_mck_div { i32 23, i32 33, i32 800, i32 4, i32 808, i32 16711680, i32 255, i32 16, i32 800, i32 262144, i32 18 }, %struct.mt8192_mck_div { i32 24, i32 34, i32 800, i32 8, i32 808, i32 -16777216, i32 255, i32 24, i32 800, i32 524288, i32 19 }, %struct.mt8192_mck_div { i32 25, i32 35, i32 800, i32 16, i32 820, i32 255, i32 255, i32 0, i32 800, i32 1048576, i32 20 }, %struct.mt8192_mck_div { i32 -1, i32 36, i32 800, i32 32, i32 808, i32 65280, i32 255, i32 8, i32 0, i32 0, i32 0 }, %struct.mt8192_mck_div { i32 26, i32 37, i32 800, i32 64, i32 820, i32 16711680, i32 255, i32 16, i32 800, i32 2097152, i32 21 }, %struct.mt8192_mck_div { i32 27, i32 38, i32 800, i32 128, i32 820, i32 -16777216, i32 255, i32 24, i32 800, i32 4194304, i32 22 }, %struct.mt8192_mck_div { i32 28, i32 39, i32 800, i32 256, i32 824, i32 255, i32 255, i32 0, i32 800, i32 8388608, i32 23 }, %struct.mt8192_mck_div { i32 29, i32 40, i32 800, i32 512, i32 824, i32 255, i32 255, i32 8, i32 800, i32 16777216, i32 24 }, %struct.mt8192_mck_div { i32 30, i32 41, i32 800, i32 1024, i32 824, i32 255, i32 255, i32 16, i32 800, i32 33554432, i32 25 }], [124 x i8] zeroinitializer }, align 32
@mt8192_mck_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 581, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(), clk_prepare_enable %s fail %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8192_mck_enable\00", [46 x i8] zeroinitializer }, align 32
@mt8192_mck_enable._entry_ptr = internal global ptr @mt8192_mck_enable._entry, section ".printk_index", align 4
@mt8192_mck_enable._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(), clk_set_parent %s-%s fail %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mt8192_mck_enable._entry_ptr.37 = internal global ptr @mt8192_mck_enable._entry.35, section ".printk_index", align 4
@mt8192_mck_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 598, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8192_mck_enable._entry_ptr.39 = internal global ptr @mt8192_mck_enable._entry.38, section ".printk_index", align 4
@mt8192_mck_enable._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.2, i32 605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(), clk_set_rate %s, rate %d, fail %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mt8192_mck_enable._entry_ptr.42 = internal global ptr @mt8192_mck_enable._entry.40, section ".printk_index", align 4
@mt8192_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 639, ptr @.str.45, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s devm_clk_get %s fail, ret %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8192_init_clock\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt8192_init_clock._entry_ptr = internal global ptr @mt8192_init_clock._entry, section ".printk_index", align 4
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,apmixedsys\00", [44 x i8] zeroinitializer }, align 32
@mt8192_init_clock._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.2, i32 648, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s() Cannot find apmixedsys controller: %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@mt8192_init_clock._entry_ptr.49 = internal global ptr @mt8192_init_clock._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,topckgen\00", [46 x i8] zeroinitializer }, align 32
@mt8192_init_clock._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s() Cannot find topckgen controller: %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@mt8192_init_clock._entry_ptr.53 = internal global ptr @mt8192_init_clock._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,infracfg\00", [46 x i8] zeroinitializer }, align 32
@mt8192_init_clock._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.2, i32 664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s() Cannot find infracfg: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@mt8192_init_clock._entry_ptr.57 = internal global ptr @mt8192_init_clock._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aud_afe_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aud_tml_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_apll22m_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_apll24m_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aud_apll1_tuner_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aud_apll2_tuner_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aud_nle\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_infra_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_infra_26m_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_mux_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_mux_audio_int\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"top_mainpll_d4_d4\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_mux_aud_1\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll1_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_mux_aud_2\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll2_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"top_mux_aud_eng1\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll1_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"top_mux_aud_eng2\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll2_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_mux_audio_h\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s0_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s1_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s2_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s3_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s4_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s5_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s6_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s7_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s8_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s9_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div0\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div1\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div2\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div3\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div4\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_divb\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div5\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div6\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div7\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div8\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div9\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_clk26m_clk\00", [17 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.101, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apll1_mux_setting\00", [46 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr = internal global ptr @apll1_mux_setting._entry, section ".printk_index", align 4
@apll1_mux_setting._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.101, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.103 = internal global ptr @apll1_mux_setting._entry.102, section ".printk_index", align 4
@apll1_mux_setting._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.101, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.105 = internal global ptr @apll1_mux_setting._entry.104, section ".printk_index", align 4
@apll1_mux_setting._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.101, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.107 = internal global ptr @apll1_mux_setting._entry.106, section ".printk_index", align 4
@apll1_mux_setting._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.101, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.109 = internal global ptr @apll1_mux_setting._entry.108, section ".printk_index", align 4
@apll1_mux_setting._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.101, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.111 = internal global ptr @apll1_mux_setting._entry.110, section ".printk_index", align 4
@apll2_mux_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.112, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apll2_mux_setting\00", [46 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr = internal global ptr @apll2_mux_setting._entry, section ".printk_index", align 4
@apll2_mux_setting._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.112, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.114 = internal global ptr @apll2_mux_setting._entry.113, section ".printk_index", align 4
@apll2_mux_setting._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.112, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.116 = internal global ptr @apll2_mux_setting._entry.115, section ".printk_index", align 4
@apll2_mux_setting._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.112, ptr @.str.2, i32 175, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.118 = internal global ptr @apll2_mux_setting._entry.117, section ".printk_index", align 4
@apll2_mux_setting._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.112, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.120 = internal global ptr @apll2_mux_setting._entry.119, section ".printk_index", align 4
@apll2_mux_setting._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.112, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.122 = internal global ptr @apll2_mux_setting._entry.121, section ".printk_index", align 4
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 72, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [9 x i8] c"aud_clks\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 17, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 209, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 213, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 220, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 227, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 234, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 242, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 249, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 258, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 266, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 279, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 299, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 306, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 349, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 356, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 401, i32 19 }
@___asan_gen_.210 = private unnamed_addr constant [8 x i8] c"mck_div\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 423, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 580, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 587, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 597, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 603, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 637, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 645, i32 15 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 647, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 653, i32 13 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 655, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 661, i32 13 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 663, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 18, i32 14 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 19, i32 14 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 20, i32 18 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 21, i32 18 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 22, i32 22 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 23, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 24, i32 14 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 25, i32 26 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 26, i32 26 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 27, i32 20 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 28, i32 26 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 29, i32 28 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 30, i32 24 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 31, i32 23 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 32, i32 24 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 33, i32 23 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 34, i32 27 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 35, i32 23 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 36, i32 27 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 37, i32 23 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 38, i32 26 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 39, i32 25 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 40, i32 25 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 41, i32 25 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 42, i32 25 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 43, i32 25 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 44, i32 25 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 45, i32 25 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 46, i32 25 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 47, i32 25 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 48, i32 25 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 49, i32 26 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 50, i32 26 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 51, i32 26 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 52, i32 26 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 53, i32 26 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 54, i32 26 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 55, i32 26 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 56, i32 26 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 57, i32 26 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 58, i32 26 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 59, i32 26 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 60, i32 17 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 88, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 95, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 104, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 111, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 120, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 130, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 150, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 157, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 166, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 173, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 182, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.445 = private constant [46 x i8] c"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 192, i32 4 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @apll1_mux_setting._entry, ptr @apll1_mux_setting._entry.102, ptr @apll1_mux_setting._entry.104, ptr @apll1_mux_setting._entry.106, ptr @apll1_mux_setting._entry.108, ptr @apll1_mux_setting._entry.110, ptr @apll1_mux_setting._entry_ptr, ptr @apll1_mux_setting._entry_ptr.103, ptr @apll1_mux_setting._entry_ptr.105, ptr @apll1_mux_setting._entry_ptr.107, ptr @apll1_mux_setting._entry_ptr.109, ptr @apll1_mux_setting._entry_ptr.111, ptr @apll2_mux_setting._entry, ptr @apll2_mux_setting._entry.113, ptr @apll2_mux_setting._entry.115, ptr @apll2_mux_setting._entry.117, ptr @apll2_mux_setting._entry.119, ptr @apll2_mux_setting._entry.121, ptr @apll2_mux_setting._entry_ptr, ptr @apll2_mux_setting._entry_ptr.114, ptr @apll2_mux_setting._entry_ptr.116, ptr @apll2_mux_setting._entry_ptr.118, ptr @apll2_mux_setting._entry_ptr.120, ptr @apll2_mux_setting._entry_ptr.122, ptr @mt8192_afe_disable_clock._entry, ptr @mt8192_afe_disable_clock._entry_ptr, ptr @mt8192_afe_enable_clock._entry, ptr @mt8192_afe_enable_clock._entry.11, ptr @mt8192_afe_enable_clock._entry.13, ptr @mt8192_afe_enable_clock._entry.15, ptr @mt8192_afe_enable_clock._entry.17, ptr @mt8192_afe_enable_clock._entry.19, ptr @mt8192_afe_enable_clock._entry.21, ptr @mt8192_afe_enable_clock._entry.23, ptr @mt8192_afe_enable_clock._entry.8, ptr @mt8192_afe_enable_clock._entry_ptr, ptr @mt8192_afe_enable_clock._entry_ptr.10, ptr @mt8192_afe_enable_clock._entry_ptr.12, ptr @mt8192_afe_enable_clock._entry_ptr.14, ptr @mt8192_afe_enable_clock._entry_ptr.16, ptr @mt8192_afe_enable_clock._entry_ptr.18, ptr @mt8192_afe_enable_clock._entry_ptr.20, ptr @mt8192_afe_enable_clock._entry_ptr.22, ptr @mt8192_afe_enable_clock._entry_ptr.24, ptr @mt8192_apll1_enable._entry, ptr @mt8192_apll1_enable._entry.27, ptr @mt8192_apll1_enable._entry_ptr, ptr @mt8192_apll1_enable._entry_ptr.28, ptr @mt8192_apll2_enable._entry, ptr @mt8192_apll2_enable._entry.30, ptr @mt8192_apll2_enable._entry_ptr, ptr @mt8192_apll2_enable._entry_ptr.31, ptr @mt8192_init_clock._entry, ptr @mt8192_init_clock._entry.47, ptr @mt8192_init_clock._entry.51, ptr @mt8192_init_clock._entry.55, ptr @mt8192_init_clock._entry_ptr, ptr @mt8192_init_clock._entry_ptr.49, ptr @mt8192_init_clock._entry_ptr.53, ptr @mt8192_init_clock._entry_ptr.57, ptr @mt8192_mck_enable._entry, ptr @mt8192_mck_enable._entry.35, ptr @mt8192_mck_enable._entry.38, ptr @mt8192_mck_enable._entry.40, ptr @mt8192_mck_enable._entry_ptr, ptr @mt8192_mck_enable._entry_ptr.37, ptr @mt8192_mck_enable._entry_ptr.39, ptr @mt8192_mck_enable._entry_ptr.42, ptr @mt8192_set_audio_int_bus_parent._entry, ptr @mt8192_set_audio_int_bus_parent._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @aud_clks, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @mck_div, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.112], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_set_audio_int_bus_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_clks to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_enable_clock._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_disable_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_apll1_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_apll1_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_apll2_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_apll2_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck_div to i32), i32 484, i32 608, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mck_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mck_enable._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mck_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mck_enable._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_init_clock._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_init_clock._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_init_clock._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_set_audio_int_bus_parent(ptr nocapture noundef readonly %afe, i32 noundef %clk_id) local_unnamed_addr #0 align 64 {
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
  %arrayidx = getelementptr ptr, ptr %3, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %clk_id
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %call = tail call i32 @clk_set_parent(ptr noundef %5, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %arrayidx3 = getelementptr [43 x ptr], ptr @aud_clks, i32 0, i32 %clk_id
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, ptr noundef %11, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_afe_enable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end3

do.end3:                                          ; preds = %if.then3.i, %entry.do.end3_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end3_crit_edge ]
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.65, i32 noundef %retval.0.i.ph) #9
  br label %EXIT

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx6 = getelementptr ptr, ptr %11, i32 8
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %call.i111 = tail call i32 @clk_prepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i112, label %if.end.i115, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

if.end.i115:                                      ; preds = %if.end
  %call1.i113 = tail call i32 @clk_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool2.not.i114 = icmp eq i32 %call1.i113, 0
  br i1 %tobool2.not.i114, label %if.end14, label %if.then3.i116

if.then3.i116:                                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then3.i116, %if.end.do.end12_crit_edge
  %retval.0.i117.ph = phi i32 [ %call1.i113, %if.then3.i116 ], [ %call.i111, %if.end.do.end12_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i117.ph) #9
  br label %EXIT

if.end14:                                         ; preds = %if.end.i115
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr ptr, ptr %17, i32 9
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %call.i119 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.end.i123, label %if.end14.do.end22_crit_edge

if.end14.do.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i123:                                      ; preds = %if.end14
  %call1.i121 = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %tobool2.not.i122 = icmp eq i32 %call1.i121, 0
  br i1 %tobool2.not.i122, label %if.end24, label %if.then3.i124

if.then3.i124:                                    ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i124, %if.end14.do.end22_crit_edge
  %retval.0.i125.ph = phi i32 [ %call1.i121, %if.then3.i124 ], [ %call.i119, %if.end14.do.end22_crit_edge ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.67, i32 noundef %retval.0.i125.ph) #9
  br label %EXIT

if.end24:                                         ; preds = %if.end.i123
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx26 = getelementptr ptr, ptr %23, i32 9
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr ptr, ptr %23, i32 42
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call i32 @clk_set_parent(ptr noundef %25, ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.100, i32 noundef %call29) #9
  br label %EXIT

if.end36:                                         ; preds = %if.end24
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx38 = getelementptr ptr, ptr %31, i32 10
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx38, align 4
  %call.i127 = tail call i32 @clk_prepare(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %if.end.i131, label %if.end36.do.end44_crit_edge

if.end36.do.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.end.i131:                                      ; preds = %if.end36
  %call1.i129 = tail call i32 @clk_enable(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %tobool2.not.i130 = icmp eq i32 %call1.i129, 0
  br i1 %tobool2.not.i130, label %if.end46, label %if.then3.i132

if.then3.i132:                                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %33) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then3.i132, %if.end36.do.end44_crit_edge
  %retval.0.i133.ph = phi i32 [ %call1.i129, %if.then3.i132 ], [ %call.i127, %if.end36.do.end44_crit_edge ]
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.68, i32 noundef %retval.0.i133.ph) #9
  br label %EXIT

if.end46:                                         ; preds = %if.end.i131
  %36 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_priv, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %arrayidx.i = getelementptr ptr, ptr %39, i32 10
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %39, i32 42
  %42 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx2.i, align 4
  %call.i135 = tail call i32 @clk_set_parent(ptr noundef %41, ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i136 = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i136, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.100, i32 noundef %call.i135) #9
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.100, i32 noundef %call.i135) #9
  br label %EXIT

if.end54:                                         ; preds = %if.end46
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %arrayidx56 = getelementptr ptr, ptr %49, i32 20
  %50 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx56, align 4
  %arrayidx58 = getelementptr ptr, ptr %49, i32 15
  %52 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx58, align 4
  %call59 = tail call i32 @clk_set_parent(ptr noundef %51, ptr noundef %53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.73, i32 noundef %call59) #9
  br label %EXIT

if.end66:                                         ; preds = %if.end54
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %call.i138 = tail call i32 @clk_prepare(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i139, label %if.end.i142, label %if.end66.do.end74_crit_edge

if.end66.do.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

if.end.i142:                                      ; preds = %if.end66
  %call1.i140 = tail call i32 @clk_enable(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140)
  %tobool2.not.i141 = icmp eq i32 %call1.i140, 0
  br i1 %tobool2.not.i141, label %if.end.i142.EXIT_crit_edge, label %if.then3.i143

if.end.i142.EXIT_crit_edge:                       ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %EXIT

if.then3.i143:                                    ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %59) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then3.i143, %if.end66.do.end74_crit_edge
  %retval.0.i144.ph = phi i32 [ %call1.i140, %if.then3.i143 ], [ %call.i138, %if.end66.do.end74_crit_edge ]
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.58, i32 noundef %retval.0.i144.ph) #9
  br label %EXIT

EXIT:                                             ; preds = %do.end74, %if.end.i142.EXIT_crit_edge, %do.end64, %do.end52, %do.end44, %do.end34, %do.end22, %do.end12, %do.end3
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end3 ], [ %retval.0.i117.ph, %do.end12 ], [ %retval.0.i125.ph, %do.end22 ], [ %call29, %do.end34 ], [ %retval.0.i133.ph, %do.end44 ], [ %call.i135, %do.end52 ], [ %call59, %do.end64 ], [ %retval.0.i144.ph, %do.end74 ], [ 0, %if.end.i142.EXIT_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt8192_afe_disable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.25) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %11, i32 42
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %call.i = tail call i32 @clk_set_parent(ptr noundef %13, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.mt8192_set_audio_int_bus_parent.exit_crit_edge, label %do.end.i

entry.mt8192_set_audio_int_bus_parent.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt8192_set_audio_int_bus_parent.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.100, i32 noundef %call.i) #9
  br label %mt8192_set_audio_int_bus_parent.exit

mt8192_set_audio_int_bus_parent.exit:             ; preds = %do.end.i, %entry.mt8192_set_audio_int_bus_parent.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr ptr, ptr %19, i32 10
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %23, i32 9
  %24 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx6 = getelementptr ptr, ptr %27, i32 8
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx6, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx8 = getelementptr ptr, ptr %31, i32 7
  %32 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx8, align 4
  tail call void @clk_disable(ptr noundef %33) #6
  tail call void @clk_unprepare(ptr noundef %33) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_apll1_enable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  tail call fastcc void @apll1_mux_setting(ptr noundef %afe, i1 noundef zeroext true)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.60, i32 noundef %retval.0.i.ph) #9
  br label %EXIT

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %call.i28 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i32, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i32:                                       ; preds = %if.end
  %call1.i30 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool2.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool2.not.i31, label %if.end11, label %if.then3.i33

if.then3.i33:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i33, %if.end.do.end9_crit_edge
  %retval.0.i34.ph = phi i32 [ %call1.i30, %if.then3.i33 ], [ %call.i28, %if.end.do.end9_crit_edge ]
  %dev10 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i34.ph) #9
  br label %EXIT

if.end11:                                         ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 1008, i32 noundef 65527, i32 noundef 2098, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1008, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3536, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %EXIT

EXIT:                                             ; preds = %if.end11, %do.end9, %do.end
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i34.ph, %do.end9 ], [ 0, %if.end11 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apll1_mux_setting(ptr nocapture noundef readonly %afe, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
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
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %3, i32 12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.70, i32 noundef %retval.0.i.ph) #9
  br label %EXIT

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %9, i32 12
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr ptr, ptr %9, i32 13
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 @clk_set_parent(ptr noundef %11, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev13 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call7) #9
  br label %EXIT

if.end14:                                         ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr ptr, ptr %17, i32 16
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %call.i1 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i5, label %if.end14.do.end22_crit_edge

if.end14.do.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i5:                                        ; preds = %if.end14
  %call1.i3 = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool2.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool2.not.i4, label %if.end24, label %if.then3.i6

if.then3.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i6, %if.end14.do.end22_crit_edge
  %retval.0.i7.ph = phi i32 [ %call1.i3, %if.then3.i6 ], [ %call.i1, %if.end14.do.end22_crit_edge ]
  %dev23 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.74, i32 noundef %retval.0.i7.ph) #9
  br label %EXIT

if.end24:                                         ; preds = %if.end.i5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx26 = getelementptr ptr, ptr %23, i32 16
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr ptr, ptr %23, i32 17
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call i32 @clk_set_parent(ptr noundef %25, ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end24.EXIT_crit_edge, label %do.end34

if.end24.EXIT_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %EXIT

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %call29) #9
  br label %EXIT

if.else:                                          ; preds = %entry
  %arrayidx38 = getelementptr ptr, ptr %3, i32 16
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr ptr, ptr %3, i32 42
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call i32 @clk_set_parent(ptr noundef %31, ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %34 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.100, i32 noundef %call41) #9
  br label %EXIT

if.end48:                                         ; preds = %if.else
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx50 = getelementptr ptr, ptr %37, i32 16
  %38 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx50, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %arrayidx52 = getelementptr ptr, ptr %41, i32 12
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr ptr, ptr %41, i32 42
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx54, align 4
  %call55 = tail call i32 @clk_set_parent(ptr noundef %43, ptr noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %46 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.100, i32 noundef %call55) #9
  br label %EXIT

if.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %arrayidx64 = getelementptr ptr, ptr %49, i32 12
  %50 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx64, align 4
  tail call void @clk_disable(ptr noundef %51) #6
  tail call void @clk_unprepare(ptr noundef %51) #6
  br label %EXIT

EXIT:                                             ; preds = %if.end62, %do.end60, %do.end46, %do.end34, %if.end24.EXIT_crit_edge, %do.end22, %do.end12, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt8192_apll1_disable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3536, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1008, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  tail call fastcc void @apll1_mux_setting(ptr noundef %afe, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_apll2_enable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  tail call fastcc void @apll2_mux_setting(ptr noundef %afe, i1 noundef zeroext true)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i.ph) #9
  br label %EXIT

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %call.i28 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i32, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i32:                                       ; preds = %if.end
  %call1.i30 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool2.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool2.not.i31, label %if.end11, label %if.then3.i33

if.then3.i33:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i33, %if.end.do.end9_crit_edge
  %retval.0.i34.ph = phi i32 [ %call1.i30, %if.then3.i33 ], [ %call.i28, %if.end.do.end9_crit_edge ]
  %dev10 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i34.ph) #9
  br label %EXIT

if.end11:                                         ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 1012, i32 noundef 65527, i32 noundef 1588, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1012, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3536, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %EXIT

EXIT:                                             ; preds = %if.end11, %do.end9, %do.end
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i34.ph, %do.end9 ], [ 0, %if.end11 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apll2_mux_setting(ptr nocapture noundef readonly %afe, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
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
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %3, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.72, i32 noundef %retval.0.i.ph) #9
  br label %EXIT

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %9, i32 14
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr ptr, ptr %9, i32 15
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 @clk_set_parent(ptr noundef %11, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev13 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %call7) #9
  br label %EXIT

if.end14:                                         ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr ptr, ptr %17, i32 18
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %call.i1 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i5, label %if.end14.do.end22_crit_edge

if.end14.do.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i5:                                        ; preds = %if.end14
  %call1.i3 = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool2.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool2.not.i4, label %if.end24, label %if.then3.i6

if.then3.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i6, %if.end14.do.end22_crit_edge
  %retval.0.i7.ph = phi i32 [ %call1.i3, %if.then3.i6 ], [ %call.i1, %if.end14.do.end22_crit_edge ]
  %dev23 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i7.ph) #9
  br label %EXIT

if.end24:                                         ; preds = %if.end.i5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx26 = getelementptr ptr, ptr %23, i32 18
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr ptr, ptr %23, i32 19
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call i32 @clk_set_parent(ptr noundef %25, ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end24.EXIT_crit_edge, label %do.end34

if.end24.EXIT_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %EXIT

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %call29) #9
  br label %EXIT

if.else:                                          ; preds = %entry
  %arrayidx38 = getelementptr ptr, ptr %3, i32 18
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr ptr, ptr %3, i32 42
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call i32 @clk_set_parent(ptr noundef %31, ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %34 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.100, i32 noundef %call41) #9
  br label %EXIT

if.end48:                                         ; preds = %if.else
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx50 = getelementptr ptr, ptr %37, i32 18
  %38 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx50, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %arrayidx52 = getelementptr ptr, ptr %41, i32 14
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr ptr, ptr %41, i32 42
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx54, align 4
  %call55 = tail call i32 @clk_set_parent(ptr noundef %43, ptr noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %46 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.100, i32 noundef %call55) #9
  br label %EXIT

if.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %arrayidx64 = getelementptr ptr, ptr %49, i32 14
  %50 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx64, align 4
  tail call void @clk_disable(ptr noundef %51) #6
  tail call void @clk_unprepare(ptr noundef %51) #6
  br label %EXIT

EXIT:                                             ; preds = %if.end62, %do.end60, %do.end46, %do.end34, %if.end24.EXIT_crit_edge, %do.end22, %do.end12, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt8192_apll2_disable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3536, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1012, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  tail call fastcc void @apll2_mux_setting(ptr noundef %afe, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt8192_get_apll_rate(ptr nocapture noundef readnone %afe, i32 noundef %apll) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %apll)
  %cmp = icmp eq i32 %apll, 0
  %cond = select i1 %cmp, i32 180633600, i32 196608000
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt8192_get_apll_by_rate(ptr nocapture readnone %afe, i32 noundef %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = srem i32 %rate, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt8192_get_apll_by_name(ptr nocapture noundef readnone %afe, ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_mck_enable(ptr nocapture noundef readonly %afe, i32 noundef %mck_id, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %rem.i = srem i32 %rate, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i.not = icmp eq i32 %rem.i, 0
  %cond = select i1 %cmp.i.not, i32 14, i32 12
  %arrayidx = getelementptr [11 x %struct.mt8192_mck_div], ptr @mck_div, i32 0, i32 %mck_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %div_clk_id3 = getelementptr [11 x %struct.mt8192_mck_div], ptr @mck_div, i32 0, i32 %mck_id, i32 1
  %4 = ptrtoint ptr %div_clk_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_clk_id3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp4 = icmp sgt i32 %3, -1
  br i1 %cmp4, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx5 = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %arrayidx8 = getelementptr [43 x ptr], ptr @aud_clks, i32 0, i32 %3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef %13, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx10 = getelementptr ptr, ptr %15, i32 %3
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr ptr, ptr %15, i32 %cond
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12, align 4
  %call13 = tail call i32 @clk_set_parent(ptr noundef %17, ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.if.end23_crit_edge, label %do.end18

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev19 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %20 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19, align 4
  %arrayidx20 = getelementptr [43 x ptr], ptr @aud_clks, i32 0, i32 %3
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr [43 x ptr], ptr @aud_clks, i32 0, i32 %cond
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef %23, ptr noundef %25, i32 noundef %call13) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx25 = getelementptr ptr, ptr %27, i32 %5
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx25, align 4
  %call.i82 = tail call i32 @clk_prepare(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not.i83 = icmp eq i32 %call.i82, 0
  br i1 %tobool.not.i83, label %if.end.i86, label %if.end23.do.end31_crit_edge

if.end23.do.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

if.end.i86:                                       ; preds = %if.end23
  %call1.i84 = tail call i32 @clk_enable(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool2.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool2.not.i85, label %if.end34, label %if.then3.i87

if.then3.i87:                                     ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then3.i87, %if.end23.do.end31_crit_edge
  %retval.0.i88.ph = phi i32 [ %call1.i84, %if.then3.i87 ], [ %call.i82, %if.end23.do.end31_crit_edge ]
  %dev32 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %30 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev32, align 4
  %arrayidx33 = getelementptr [43 x ptr], ptr @aud_clks, i32 0, i32 %5
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef %33, i32 noundef %retval.0.i88.ph) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end.i86
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %arrayidx36 = getelementptr ptr, ptr %35, i32 %5
  %36 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx36, align 4
  %call37 = tail call i32 @clk_set_rate(ptr noundef %37, i32 noundef %rate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %do.end42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %dev43 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %38 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev43, align 4
  %arrayidx44 = getelementptr [43 x ptr], ptr @aud_clks, i32 0, i32 %5
  %40 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, ptr noundef %41, i32 noundef %rate, i32 noundef %call37) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end34.cleanup_crit_edge, %do.end31, %do.end18, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call13, %do.end18 ], [ %retval.0.i88.ph, %do.end31 ], [ %call37, %do.end42 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt8192_mck_disable(ptr nocapture noundef readonly %afe, i32 noundef %mck_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr [11 x %struct.mt8192_mck_div], ptr @mck_div, i32 0, i32 %mck_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %div_clk_id3 = getelementptr [11 x %struct.mt8192_mck_div], ptr @mck_div, i32 0, i32 %mck_id, i32 1
  %4 = ptrtoint ptr %div_clk_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_clk_id3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx6 = getelementptr ptr, ptr %11, i32 %3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_init_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
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
  %of_node1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node1, align 8
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 172, i32 noundef 3520) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %1, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [43 x ptr], ptr @aud_clks, i32 0, i32 %i.097
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef %10) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %arrayidx7 = getelementptr ptr, ptr %12, i32 %i.097
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %arrayidx7, align 4
  %14 = load ptr, ptr %1, align 4
  %arrayidx9 = getelementptr ptr, ptr %14, i32 %i.097
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx9, align 4
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %16 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef %10, i32 noundef %19) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %arrayidx18 = getelementptr ptr, ptr %21, i32 %i.097
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call20 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.46) #6
  %apmixedsys = getelementptr inbounds %struct.mt8192_afe_private, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %apmixedsys to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call20, ptr %apmixedsys, align 4
  %cmp.i94 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %for.end.cleanup.sink.split_crit_edge, label %if.end32

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end32:                                         ; preds = %for.end
  %call33 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.50) #6
  %topckgen = getelementptr inbounds %struct.mt8192_afe_private, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %topckgen to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call33, ptr %topckgen, align 4
  %cmp.i95 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.end32.cleanup.sink.split_crit_edge, label %if.end45

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end45:                                         ; preds = %if.end32
  %call46 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.54) #6
  %infracfg = getelementptr inbounds %struct.mt8192_afe_private, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %infracfg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call46, ptr %infracfg, align 4
  %cmp.i96 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.end45.cleanup.sink.split_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45.cleanup.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end45.cleanup.sink.split_crit_edge, %if.end32.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %call46.sink = phi ptr [ %call20, %for.end.cleanup.sink.split_crit_edge ], [ %call33, %if.end32.cleanup.sink.split_crit_edge ], [ %call46, %if.end45.cleanup.sink.split_crit_edge ]
  %.str.56.sink = phi ptr [ @.str.48, %for.end.cleanup.sink.split_crit_edge ], [ @.str.52, %if.end32.cleanup.sink.split_crit_edge ], [ @.str.56, %if.end45.cleanup.sink.split_crit_edge ]
  %infracfg.sink = phi ptr [ %apmixedsys, %for.end.cleanup.sink.split_crit_edge ], [ %topckgen, %if.end32.cleanup.sink.split_crit_edge ], [ %infracfg, %if.end45.cleanup.sink.split_crit_edge ]
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %call46.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %.str.56.sink, ptr noundef nonnull @.str.44, i32 noundef %28) #9
  %29 = ptrtoint ptr %infracfg.sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %infracfg.sink, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %31, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 72, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt8192_set_audio_int_bus_parent._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt8192_set_audio_int_bus_parent._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 209, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mt8192_afe_enable_clock._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mt8192_afe_enable_clock._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 213, i32 3}
!16 = !{ptr @mt8192_afe_enable_clock._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mt8192_afe_enable_clock._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @mt8192_afe_enable_clock._entry.11, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 220, i32 3}
!20 = !{ptr @mt8192_afe_enable_clock._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @mt8192_afe_enable_clock._entry.13, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 227, i32 3}
!23 = !{ptr @mt8192_afe_enable_clock._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mt8192_afe_enable_clock._entry.15, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 234, i32 3}
!26 = !{ptr @mt8192_afe_enable_clock._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mt8192_afe_enable_clock._entry.17, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 242, i32 3}
!29 = !{ptr @mt8192_afe_enable_clock._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mt8192_afe_enable_clock._entry.19, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 249, i32 3}
!32 = !{ptr @mt8192_afe_enable_clock._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mt8192_afe_enable_clock._entry.21, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 258, i32 3}
!35 = !{ptr @mt8192_afe_enable_clock._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mt8192_afe_enable_clock._entry.23, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 266, i32 3}
!38 = !{ptr @mt8192_afe_enable_clock._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 279, i32 2}
!41 = !{ptr @mt8192_afe_disable_clock._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mt8192_afe_disable_clock._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 299, i32 3}
!45 = !{ptr @mt8192_apll1_enable._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt8192_apll1_enable._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mt8192_apll1_enable._entry.27, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 306, i32 3}
!49 = !{ptr @mt8192_apll1_enable._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 349, i32 3}
!52 = !{ptr @mt8192_apll2_enable._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mt8192_apll2_enable._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @mt8192_apll2_enable._entry.30, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 356, i32 3}
!56 = !{ptr @mt8192_apll2_enable._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 401, i32 19}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 580, i32 4}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mt8192_mck_enable._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt8192_mck_enable._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 587, i32 4}
!66 = !{ptr @mt8192_mck_enable._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mt8192_mck_enable._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mt8192_mck_enable._entry.38, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 597, i32 3}
!70 = !{ptr @mt8192_mck_enable._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 603, i32 3}
!73 = !{ptr @mt8192_mck_enable._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mt8192_mck_enable._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 637, i32 4}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mt8192_init_clock._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @mt8192_init_clock._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 645, i32 15}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 647, i32 3}
!85 = !{ptr @mt8192_init_clock._entry.47, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mt8192_init_clock._entry_ptr.49, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 653, i32 13}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 655, i32 3}
!91 = !{ptr @mt8192_init_clock._entry.51, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mt8192_init_clock._entry_ptr.53, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 661, i32 13}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 663, i32 3}
!97 = !{ptr @mt8192_init_clock._entry.55, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mt8192_init_clock._entry_ptr.57, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 18, i32 14}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 19, i32 14}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 20, i32 18}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 21, i32 18}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 22, i32 22}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 23, i32 22}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 24, i32 14}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 25, i32 26}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 26, i32 26}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 27, i32 20}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 28, i32 26}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 29, i32 28}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 30, i32 24}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 31, i32 23}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 32, i32 24}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 33, i32 23}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 34, i32 27}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 35, i32 23}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 36, i32 27}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 37, i32 23}
!139 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 38, i32 26}
!141 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 39, i32 25}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 40, i32 25}
!145 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 41, i32 25}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 42, i32 25}
!149 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 43, i32 25}
!151 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 44, i32 25}
!153 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 45, i32 25}
!155 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 46, i32 25}
!157 = !{ptr @.str.87, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 47, i32 25}
!159 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 48, i32 25}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 49, i32 26}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 50, i32 26}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 51, i32 26}
!167 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 52, i32 26}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 53, i32 26}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 54, i32 26}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 55, i32 26}
!175 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 56, i32 26}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 57, i32 26}
!179 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 58, i32 26}
!181 = !{ptr @.str.99, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 59, i32 26}
!183 = !{ptr @.str.100, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 60, i32 17}
!185 = !{ptr @aud_clks, !186, !"aud_clks", i1 false, i1 false}
!186 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 17, i32 20}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 88, i32 4}
!189 = !{ptr @apll1_mux_setting._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @apll1_mux_setting._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @apll1_mux_setting._entry.102, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 95, i32 4}
!193 = !{ptr @apll1_mux_setting._entry_ptr.103, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @apll1_mux_setting._entry.104, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 104, i32 4}
!196 = !{ptr @apll1_mux_setting._entry_ptr.105, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @apll1_mux_setting._entry.106, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 111, i32 4}
!199 = !{ptr @apll1_mux_setting._entry_ptr.107, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @apll1_mux_setting._entry.108, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 120, i32 4}
!202 = !{ptr @apll1_mux_setting._entry_ptr.109, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @apll1_mux_setting._entry.110, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 130, i32 4}
!205 = !{ptr @apll1_mux_setting._entry_ptr.111, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.112, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 150, i32 4}
!208 = !{ptr @apll2_mux_setting._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @apll2_mux_setting._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @apll2_mux_setting._entry.113, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 157, i32 4}
!212 = !{ptr @apll2_mux_setting._entry_ptr.114, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @apll2_mux_setting._entry.115, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 166, i32 4}
!215 = !{ptr @apll2_mux_setting._entry_ptr.116, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @apll2_mux_setting._entry.117, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 173, i32 4}
!218 = !{ptr @apll2_mux_setting._entry_ptr.118, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @apll2_mux_setting._entry.119, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 182, i32 4}
!221 = !{ptr @apll2_mux_setting._entry_ptr.120, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @apll2_mux_setting._entry.121, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 192, i32 4}
!224 = !{ptr @apll2_mux_setting._entry_ptr.122, !223, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @mck_div, !226, !"mck_div", i1 false, i1 false}
!226 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-clk.c", i32 423, i32 36}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
