; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.panfrost_model = type { ptr, i32, i32, i64, i64, [6 x %struct.anon.91] }
%struct.anon.91 = type { i32, i64 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.88, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.88 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_gpu.c\00", [56 x i8] zeroinitializer }, align 32
@panfrost_gpu_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpu soft reset timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panfrost_gpu_soft_reset\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panfrost_gpu_soft_reset._entry_ptr = internal global ptr @panfrost_gpu_soft_reset._entry, section ".printk_index", align 4
@panfrost_gpu_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error powering up gpu L2\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panfrost_gpu_power_on\00", [42 x i8] zeroinitializer }, align 32
@panfrost_gpu_power_on._entry_ptr = internal global ptr @panfrost_gpu_power_on._entry, section ".printk_index", align 4
@panfrost_gpu_power_on._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 337, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error powering up gpu shader\00", [35 x i8] zeroinitializer }, align 32
@panfrost_gpu_power_on._entry_ptr.9 = internal global ptr @panfrost_gpu_power_on._entry.7, section ".printk_index", align 4
@panfrost_gpu_power_on._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error powering up gpu tiler\00", [36 x i8] zeroinitializer }, align 32
@panfrost_gpu_power_on._entry_ptr.12 = internal global ptr @panfrost_gpu_power_on._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panfrost-gpu\00", [19 x i8] zeroinitializer }, align 32
@panfrost_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request gpu irq\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"panfrost_gpu_init\00", [46 x i8] zeroinitializer }, align 32
@panfrost_gpu_init._entry_ptr = internal global ptr @panfrost_gpu_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@gpu_models = internal constant { [14 x %struct.panfrost_model], [448 x i8] } { [14 x %struct.panfrost_model] [%struct.panfrost_model { ptr @.str.30, i32 1536, i32 0, i64 270557184, i64 564447363, [6 x %struct.anon.91] [%struct.anon.91 { i32 1, i64 269489020 }, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer] }, %struct.panfrost_model { ptr @.str.31, i32 1568, i32 0, i64 270558208, i64 554450944, [6 x %struct.anon.91] [%struct.anon.91 { i32 16, i64 14852096 }, %struct.anon.91 { i32 4096, i64 6291456 }, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer] }, %struct.panfrost_model { ptr @.str.32, i32 1824, i32 0, i64 271621696, i64 553992192, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.33, i32 1872, i32 0, i64 268597183, i64 604241920, [6 x %struct.anon.91] [%struct.anon.91 { i32 0, i64 39845888 }, %struct.anon.91 { i32 16, i64 39845888 }, %struct.anon.91 { i32 16, i64 33554432 }, %struct.anon.91 { i32 32, i64 39845888 }, %struct.anon.91 { i32 48, i64 33554432 }, %struct.anon.91 zeroinitializer] }, %struct.panfrost_model { ptr @.str.34, i32 2080, i32 0, i64 270431999, i64 604241920, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.35, i32 2096, i32 0, i64 270431999, i64 604241920, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.36, i32 2144, i32 0, i64 269383615, i64 604241920, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.37, i32 2176, i32 0, i64 269383615, i64 604241920, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.38, i32 24576, i32 0, i64 299792383, i64 671088640, [6 x %struct.anon.91] [%struct.anon.91 { i32 1, i64 67108864 }, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer] }, %struct.panfrost_model { ptr @.str.39, i32 24577, i32 0, i64 333346815, i64 0, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.40, i32 28672, i32 0, i64 333346815, i64 0, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.41, i32 28673, i32 0, i64 1071544319, i64 0, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.42, i32 28674, i32 0, i64 333346815, i64 0, [6 x %struct.anon.91] zeroinitializer }, %struct.panfrost_model { ptr @.str.43, i32 28675, i32 0, i64 1071544319, i64 0, [6 x %struct.anon.91] [%struct.anon.91 { i32 4096, i64 1073741824 }, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer, %struct.anon.91 zeroinitializer] }], [448 x i8] zeroinitializer }, align 32
@panfrost_gpu_init_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 301, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mali-%s id 0x%x major 0x%x minor 0x%x status 0x%x\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"panfrost_gpu_init_features\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@panfrost_gpu_init_features._entry_ptr = internal global ptr @panfrost_gpu_init_features._entry, section ".printk_index", align 4
@panfrost_gpu_init_features._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str, i32 304, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"features: %64pb, issues: %64pb\00", [33 x i8] zeroinitializer }, align 32
@panfrost_gpu_init_features._entry_ptr.23 = internal global ptr @panfrost_gpu_init_features._entry.21, section ".printk_index", align 4
@panfrost_gpu_init_features._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str, i32 313, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Features: L2:0x%08x Shader:0x%08x Tiler:0x%08x Mem:0x%0x MMU:0x%08x AS:0x%x JS:0x%x\00", [44 x i8] zeroinitializer }, align 32
@panfrost_gpu_init_features._entry_ptr.26 = internal global ptr @panfrost_gpu_init_features._entry.24, section ".printk_index", align 4
@panfrost_gpu_init_features._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str, i32 316, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"shader_present=0x%0llx l2_present=0x%0llx\00", [54 x i8] zeroinitializer }, align 32
@panfrost_gpu_init_features._entry_ptr.29 = internal global ptr @panfrost_gpu_init_features._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t600\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t620\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t720\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t760\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t820\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t830\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t860\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t880\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"g71\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"g72\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"g51\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"g76\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"g52\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"g31\00", [28 x i8] zeroinitializer }, align 32
@panfrost_gpu_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 37, ptr @.str.46, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPU Fault 0x%08x (%s) at 0x%016llx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panfrost_gpu_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@panfrost_gpu_irq_handler._entry_ptr = internal global ptr @panfrost_gpu_irq_handler._entry, section ".printk_index", align 4
@panfrost_gpu_irq_handler._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str, i32 40, ptr @.str.46, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"There were multiple GPU faults - some have not been reported\0A\00", [34 x i8] zeroinitializer }, align 32
@panfrost_gpu_irq_handler._entry_ptr.49 = internal global ptr @panfrost_gpu_irq_handler._entry.47, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2144, i64 2176, i64 24576]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 65, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 69, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 331, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 337, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 343, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 367, i32 64 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 372, i32 24 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 374, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 215, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"gpu_models\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 186, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 300, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 302, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 306, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 315, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 188, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 190, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 192, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 193, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 197, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 198, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 199, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 200, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 202, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 204, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 205, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 206, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 207, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 208, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 35, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [43 x i8] c"../drivers/gpu/drm/panfrost/panfrost_gpu.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 40, i32 4 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @panfrost_gpu_init._entry, ptr @panfrost_gpu_init._entry_ptr, ptr @panfrost_gpu_init_features._entry, ptr @panfrost_gpu_init_features._entry.21, ptr @panfrost_gpu_init_features._entry.24, ptr @panfrost_gpu_init_features._entry.27, ptr @panfrost_gpu_init_features._entry_ptr, ptr @panfrost_gpu_init_features._entry_ptr.23, ptr @panfrost_gpu_init_features._entry_ptr.26, ptr @panfrost_gpu_init_features._entry_ptr.29, ptr @panfrost_gpu_irq_handler._entry, ptr @panfrost_gpu_irq_handler._entry.47, ptr @panfrost_gpu_irq_handler._entry_ptr, ptr @panfrost_gpu_irq_handler._entry_ptr.49, ptr @panfrost_gpu_power_on._entry, ptr @panfrost_gpu_power_on._entry.10, ptr @panfrost_gpu_power_on._entry.7, ptr @panfrost_gpu_power_on._entry_ptr, ptr @panfrost_gpu_power_on._entry_ptr.12, ptr @panfrost_gpu_power_on._entry_ptr.9, ptr @panfrost_gpu_soft_reset._entry, ptr @panfrost_gpu_soft_reset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @gpu_models, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_power_on._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_power_on._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_models to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_init_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_init_features._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_init_features._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_init_features._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gpu_irq_handler._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_gpu_soft_reset(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 65536) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #4, !srcloc !101
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 66) #4
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %add.ptr2274 = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2274) #4, !srcloc !104
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and75 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool.not76 = icmp eq i32 %and75, 0
  br i1 %tobool.not76, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then38.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call27 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %if.then30, label %if.then38

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem, align 4
  %add.ptr33 = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #4, !srcloc !104
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %for.end

if.then38:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #4, !srcloc !104
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and = and i32 %17, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then38.land.lhs.true_crit_edge, label %if.then38.for.end_crit_edge

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then38.land.lhs.true_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %if.then38.for.end_crit_edge, %if.then30, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %13, %if.then30 ], [ %9, %entry.for.end_crit_edge ], [ %17, %if.then38.for.end_crit_edge ]
  %and41 = and i32 %val.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.end47, label %do.body49

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1) #7
  br label %cleanup

do.body49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !105
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem, align 4
  %add.ptr53 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 -2130246912) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %add.ptr58 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -2130246912) #4, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %do.end47
  %retval.0 = phi i32 [ -110, %do.end47 ], [ 0, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_amlogic_quirk(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  tail call void @arm_heavy_mb() #4
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 430467113) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -15785984) #4, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_power_on(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_issues.i.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 24
  %0 = ptrtoint ptr %hw_issues.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw_issues.i.i, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %hw_issues.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %hw_issues.i.i, align 4
  %5 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i134.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i134.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %quirks.0.i = phi i32 [ 65536, %if.then.i ], [ 0, %lor.lhs.false.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %hw_issues.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %hw_issues.i.i, align 4
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 64
  %10 = or i32 %9, %quirks.0.i
  %11 = load volatile i32, ptr %hw_issues.i.i, align 4
  %12 = shl i32 %11, 9
  %13 = and i32 %12, 33554432
  %14 = or i32 %10, %13
  %15 = load volatile i32, ptr %hw_issues.i.i, align 4
  %16 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i140.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i140.not.i, label %if.then11.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then11.i:                                      ; preds = %if.end.i
  %features.i.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11
  %17 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %features.i.i, align 8
  %conv.i.i = zext i16 %18 to i32
  %and.i.i = and i32 %conv.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 61455
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %conv.i.i, i32 %and2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1872, i32 %spec.select.i.i)
  %cmp.i = icmp ult i32 %spec.select.i.i, 1872
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %or14.i = or i32 %14, 262144
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2177, i32 %spec.select.i.i)
  %cmp16.i = icmp ult i32 %spec.select.i.i, 2177
  %or18.i = or i32 %14, 65536
  %spec.select128.i = select i1 %cmp16.i, i32 %or18.i, i32 %14
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then13.i, %if.end.i.if.end21.i_crit_edge
  %quirks.3.i = phi i32 [ %14, %if.end.i.if.end21.i_crit_edge ], [ %or14.i, %if.then13.i ], [ %spec.select128.i, %if.else.i ]
  %hw_features.i.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 23
  %19 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %hw_features.i.i, align 4
  %21 = lshr i32 %20, 10
  %22 = and i32 %21, 131072
  %23 = or i32 %22, %quirks.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end21.i.if.end27.i_crit_edge, label %do.body.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

do.body.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  %iomem.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %25 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 3844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #4, !srcloc !101
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.body.i, %if.end21.i.if.end27.i_crit_edge
  %iomem28.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %27 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem28.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %28, i32 3848
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #4, !srcloc !104
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  %31 = ptrtoint ptr %hw_issues.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %hw_issues.i.i, align 4
  %33 = lshr i32 %32, 26
  %34 = and i32 %33, 1
  %35 = or i32 %34, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  %37 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomem28.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %38, i32 3848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %36) #4, !srcloc !101
  %39 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iomem28.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %40, i32 3852
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #4, !srcloc !104
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %43 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %hw_features.i.i, align 4
  %45 = and i32 %44, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i152.not.i = icmp eq i32 %45, 0
  %quirks.6.v.i = select i1 %tobool.i152.not.i, i32 -251658241, i32 -520093697
  %quirks.6.i = and i32 %quirks.6.v.i, %42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %quirks.6.i) #4
  %47 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iomem28.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %48, i32 3852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %46) #4, !srcloc !101
  %features.i.i.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11
  %49 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %features.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %50)
  %tobool.not.i.i.i = icmp ult i16 %50, 4096
  %and2.i.i.i = and i16 %50, -4081
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i16 %50, i16 %and2.i.i.i
  %51 = zext i16 %spec.select.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i16 %spec.select.i.i.i, label %if.end27.i.if.end83.i_crit_edge [
    i16 2144, label %if.end27.i.land.lhs.true.i_crit_edge
    i16 2176, label %if.end27.i.land.lhs.true.i_crit_edge261
    i16 24576, label %if.end75.i
  ]

if.end27.i.land.lhs.true.i_crit_edge261:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

if.end27.i.land.lhs.true.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

if.end27.i.if.end83.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

land.lhs.true.i:                                  ; preds = %if.end27.i.land.lhs.true.i_crit_edge, %if.end27.i.land.lhs.true.i_crit_edge261
  %revision.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 1
  %52 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %53)
  %cmp61.i = icmp ugt i16 %53, 8191
  br i1 %cmp61.i, label %land.lhs.true.i.do.body78.i_crit_edge, label %land.lhs.true.i.if.end83.i_crit_edge

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

land.lhs.true.i.do.body78.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body78.i

if.end75.i:                                       ; preds = %if.end27.i
  %coherency_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 17
  %54 = ptrtoint ptr %coherency_features.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %coherency_features.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp70.i = icmp eq i32 %55, 2
  br i1 %cmp70.i, label %if.end75.i.do.body78.i_crit_edge, label %if.end75.i.if.end83.i_crit_edge

if.end75.i.if.end83.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

if.end75.i.do.body78.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body78.i

do.body78.i:                                      ; preds = %if.end75.i.do.body78.i_crit_edge, %land.lhs.true.i.do.body78.i_crit_edge
  %quirks.7174.i = phi i32 [ 12, %if.end75.i.do.body78.i_crit_edge ], [ 504, %land.lhs.true.i.do.body78.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %56 = tail call i32 @llvm.bswap.i32(i32 %quirks.7174.i) #4
  %57 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iomem28.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %58, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %56) #4, !srcloc !101
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.body78.i, %if.end75.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge, %if.end27.i.if.end83.i_crit_edge
  %comp.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 12
  %59 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %comp.i, align 8
  %vendor_quirk.i = getelementptr inbounds %struct.panfrost_compatible, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %vendor_quirk.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vendor_quirk.i, align 4
  %tobool84.not.i = icmp eq ptr %62, null
  br i1 %tobool84.not.i, label %if.end83.i.panfrost_gpu_init_quirks.exit_crit_edge, label %if.then85.i

if.end83.i.panfrost_gpu_init_quirks.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %panfrost_gpu_init_quirks.exit

if.then85.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %62(ptr noundef %pfdev) #4
  br label %panfrost_gpu_init_quirks.exit

panfrost_gpu_init_quirks.exit:                    ; preds = %if.then85.i, %if.end83.i.panfrost_gpu_init_quirks.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %l2_present = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 4
  %63 = ptrtoint ptr %l2_present to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %l2_present, align 8
  %conv = trunc i64 %64 to i32
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %66 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iomem28.i, align 4
  %add.ptr = getelementptr i8, ptr %67, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %65) #4, !srcloc !101
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 329) #4
  %68 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iomem28.i, align 4
  %add.ptr13246 = getelementptr i8, ptr %69, i32 352
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13246) #4, !srcloc !104
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %conv15247 = zext i32 %71 to i64
  %72 = ptrtoint ptr %l2_present to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %l2_present, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %conv15247)
  %cmp18248 = icmp eq i64 %73, %conv15247
  br i1 %cmp18248, label %panfrost_gpu_init_quirks.exit.for.end_crit_edge, label %panfrost_gpu_init_quirks.exit.land.lhs.true_crit_edge

panfrost_gpu_init_quirks.exit.land.lhs.true_crit_edge: ; preds = %panfrost_gpu_init_quirks.exit
  br label %land.lhs.true

panfrost_gpu_init_quirks.exit.for.end_crit_edge:  ; preds = %panfrost_gpu_init_quirks.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.lhs.true:                                    ; preds = %if.then34.land.lhs.true_crit_edge, %panfrost_gpu_init_quirks.exit.land.lhs.true_crit_edge
  %call22 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then26, label %if.then34

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iomem28.i, align 4
  %add.ptr29 = getelementptr i8, ptr %75, i32 352
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #4, !srcloc !104
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %.pre = zext i32 %77 to i64
  br label %for.end

if.then34:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %78 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iomem28.i, align 4
  %add.ptr13 = getelementptr i8, ptr %79, i32 352
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #4, !srcloc !104
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %conv15 = zext i32 %81 to i64
  %82 = ptrtoint ptr %l2_present to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %l2_present, align 8
  %cmp18 = icmp eq i64 %83, %conv15
  br i1 %cmp18, label %if.then34.for.end_crit_edge, label %if.then34.land.lhs.true_crit_edge

if.then34.land.lhs.true_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.then34.for.end_crit_edge, %if.then26, %panfrost_gpu_init_quirks.exit.for.end_crit_edge
  %conv37.pre-phi = phi i64 [ %conv15247, %panfrost_gpu_init_quirks.exit.for.end_crit_edge ], [ %.pre, %if.then26 ], [ %conv15, %if.then34.for.end_crit_edge ]
  %84 = ptrtoint ptr %l2_present to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %l2_present, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %conv37.pre-phi)
  %cmp40 = icmp eq i64 %85, %conv37.pre-phi
  br i1 %cmp40, label %for.end.do.body48_crit_edge, label %do.end46

for.end.do.body48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body48

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.5) #7
  br label %do.body48

do.body48:                                        ; preds = %do.end46, %for.end.do.body48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %shader_present = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 2
  %88 = ptrtoint ptr %shader_present to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %shader_present, align 8
  %conv52 = trunc i64 %89 to i32
  %90 = tail call i32 @llvm.bswap.i32(i32 %conv52)
  %91 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iomem28.i, align 4
  %add.ptr54 = getelementptr i8, ptr %92, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %90) #4, !srcloc !101
  %call58 = tail call i64 @ktime_get() #4
  %add.i231 = add i64 %call58, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 335) #4
  %93 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iomem28.i, align 4
  %add.ptr76249 = getelementptr i8, ptr %94, i32 320
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76249) #4, !srcloc !104
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %conv79250 = zext i32 %96 to i64
  %97 = ptrtoint ptr %shader_present to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %shader_present, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %conv79250)
  %cmp82251 = icmp eq i64 %98, %conv79250
  br i1 %cmp82251, label %do.body48.for.end104_crit_edge, label %do.body48.land.lhs.true87_crit_edge

do.body48.land.lhs.true87_crit_edge:              ; preds = %do.body48
  br label %land.lhs.true87

do.body48.for.end104_crit_edge:                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end104

land.lhs.true87:                                  ; preds = %if.then100.land.lhs.true87_crit_edge, %do.body48.land.lhs.true87_crit_edge
  %call88 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call88, i64 %add.i231)
  %cmp3.i233 = icmp sgt i64 %call88, %add.i231
  br i1 %cmp3.i233, label %if.then92, label %if.then100

if.then92:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #6
  %99 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %iomem28.i, align 4
  %add.ptr95 = getelementptr i8, ptr %100, i32 320
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #4, !srcloc !104
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %.pre259 = zext i32 %102 to i64
  br label %for.end104

if.then100:                                       ; preds = %land.lhs.true87
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %103 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iomem28.i, align 4
  %add.ptr76 = getelementptr i8, ptr %104, i32 320
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #4, !srcloc !104
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %conv79 = zext i32 %106 to i64
  %107 = ptrtoint ptr %shader_present to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %shader_present, align 8
  %cmp82 = icmp eq i64 %108, %conv79
  br i1 %cmp82, label %if.then100.for.end104_crit_edge, label %if.then100.land.lhs.true87_crit_edge

if.then100.land.lhs.true87_crit_edge:             ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true87

if.then100.for.end104_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end104

for.end104:                                       ; preds = %if.then100.for.end104_crit_edge, %if.then92, %do.body48.for.end104_crit_edge
  %conv106.pre-phi = phi i64 [ %conv79250, %do.body48.for.end104_crit_edge ], [ %.pre259, %if.then92 ], [ %conv79, %if.then100.for.end104_crit_edge ]
  %109 = ptrtoint ptr %shader_present to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %shader_present, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %110, i64 %conv106.pre-phi)
  %cmp109 = icmp eq i64 %110, %conv106.pre-phi
  br i1 %cmp109, label %for.end104.do.body119_crit_edge, label %do.end116

for.end104.do.body119_crit_edge:                  ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body119

do.end116:                                        ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #6
  %111 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.8) #7
  br label %do.body119

do.body119:                                       ; preds = %do.end116, %for.end104.do.body119_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %tiler_present = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 3
  %113 = ptrtoint ptr %tiler_present to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %tiler_present, align 8
  %conv123 = trunc i64 %114 to i32
  %115 = tail call i32 @llvm.bswap.i32(i32 %conv123)
  %116 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iomem28.i, align 4
  %add.ptr125 = getelementptr i8, ptr %117, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %115) #4, !srcloc !101
  %call129 = tail call i64 @ktime_get() #4
  %add.i236 = add i64 %call129, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 341) #4
  %118 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iomem28.i, align 4
  %add.ptr147253 = getelementptr i8, ptr %119, i32 336
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147253) #4, !srcloc !104
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %conv150254 = zext i32 %121 to i64
  %122 = ptrtoint ptr %tiler_present to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %tiler_present, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %conv150254)
  %cmp153255 = icmp eq i64 %123, %conv150254
  br i1 %cmp153255, label %do.body119.for.end175_crit_edge, label %do.body119.land.lhs.true158_crit_edge

do.body119.land.lhs.true158_crit_edge:            ; preds = %do.body119
  br label %land.lhs.true158

do.body119.for.end175_crit_edge:                  ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end175

land.lhs.true158:                                 ; preds = %if.then171.land.lhs.true158_crit_edge, %do.body119.land.lhs.true158_crit_edge
  %call159 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call159, i64 %add.i236)
  %cmp3.i238 = icmp sgt i64 %call159, %add.i236
  br i1 %cmp3.i238, label %if.then163, label %if.then171

if.then163:                                       ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #6
  %124 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %iomem28.i, align 4
  %add.ptr166 = getelementptr i8, ptr %125, i32 336
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #4, !srcloc !104
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %.pre260 = zext i32 %127 to i64
  br label %for.end175

if.then171:                                       ; preds = %land.lhs.true158
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %128 = ptrtoint ptr %iomem28.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iomem28.i, align 4
  %add.ptr147 = getelementptr i8, ptr %129, i32 336
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #4, !srcloc !104
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %conv150 = zext i32 %131 to i64
  %132 = ptrtoint ptr %tiler_present to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %tiler_present, align 8
  %cmp153 = icmp eq i64 %133, %conv150
  br i1 %cmp153, label %if.then171.for.end175_crit_edge, label %if.then171.land.lhs.true158_crit_edge

if.then171.land.lhs.true158_crit_edge:            ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true158

if.then171.for.end175_crit_edge:                  ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end175

for.end175:                                       ; preds = %if.then171.for.end175_crit_edge, %if.then163, %do.body119.for.end175_crit_edge
  %conv177.pre-phi = phi i64 [ %conv150254, %do.body119.for.end175_crit_edge ], [ %.pre260, %if.then163 ], [ %conv150, %if.then171.for.end175_crit_edge ]
  %134 = ptrtoint ptr %tiler_present to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %tiler_present, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %135, i64 %conv177.pre-phi)
  %cmp180 = icmp eq i64 %135, %conv177.pre-phi
  br i1 %cmp180, label %for.end175.if.end189_crit_edge, label %do.end187

for.end175.if.end189_crit_edge:                   ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end189

do.end187:                                        ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #6
  %136 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.11) #7
  br label %if.end189

if.end189:                                        ; preds = %do.end187, %for.end175.if.end189_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_power_off(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #4, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_gpu_init(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @panfrost_gpu_soft_reset(ptr noundef %pfdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %iomem.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !104
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %l2_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 8
  %4 = ptrtoint ptr %l2_features.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %l2_features.i, align 8
  %5 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #4, !srcloc !104
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  %core_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 9
  %9 = ptrtoint ptr %core_features.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core_features.i, align 4
  %10 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #4, !srcloc !104
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  %tiler_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 10
  %14 = ptrtoint ptr %tiler_features.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tiler_features.i, align 8
  %15 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #4, !srcloc !104
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  %mem_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 11
  %19 = ptrtoint ptr %mem_features.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mem_features.i, align 4
  %20 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #4, !srcloc !104
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  %mmu_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 12
  %24 = ptrtoint ptr %mmu_features.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mmu_features.i, align 8
  %25 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %26, i32 172
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #4, !srcloc !104
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  %thread_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 13
  %29 = ptrtoint ptr %thread_features.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %thread_features.i, align 4
  %30 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomem.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %31, i32 160
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #4, !srcloc !104
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  %max_threads.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 14
  %34 = ptrtoint ptr %max_threads.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_threads.i, align 8
  %35 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %36, i32 164
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i) #4, !srcloc !104
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  %thread_max_workgroup_sz.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 15
  %39 = ptrtoint ptr %thread_max_workgroup_sz.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %thread_max_workgroup_sz.i, align 4
  %40 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %41, i32 168
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i) #4, !srcloc !104
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  %thread_max_barrier_sz.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 16
  %44 = ptrtoint ptr %thread_max_barrier_sz.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %thread_max_barrier_sz.i, align 8
  %45 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iomem.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %46, i32 768
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #4, !srcloc !104
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  %coherency_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 17
  %49 = ptrtoint ptr %coherency_features.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %coherency_features.i, align 4
  %50 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %51, i32 76
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #4, !srcloc !104
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  %afbc_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 18
  %54 = ptrtoint ptr %afbc_features.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %afbc_features.i, align 8
  %55 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iomem.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %56, i32 176
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #4, !srcloc !104
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %arrayidx.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 19, i32 0
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx.i, align 4
  %60 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iomem.i, align 4
  %add.ptr85.1.i = getelementptr i8, ptr %61, i32 180
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.1.i) #4, !srcloc !104
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %arrayidx.1.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 19, i32 1
  %64 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx.1.i, align 4
  %65 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iomem.i, align 4
  %add.ptr85.2.i = getelementptr i8, ptr %66, i32 184
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.2.i) #4, !srcloc !104
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %arrayidx.2.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 19, i32 2
  %69 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx.2.i, align 4
  %70 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iomem.i, align 4
  %add.ptr85.3.i = getelementptr i8, ptr %71, i32 188
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.3.i) #4, !srcloc !104
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %arrayidx.3.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 19, i32 3
  %74 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx.3.i, align 4
  %features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11
  %75 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iomem.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %76, i32 24
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #4, !srcloc !104
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  %as_present.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 6
  %79 = ptrtoint ptr %as_present.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %as_present.i, align 8
  %80 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iomem.i, align 4
  %add.ptr101.i = getelementptr i8, ptr %81, i32 28
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #4, !srcloc !104
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  %js_present.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 7
  %84 = ptrtoint ptr %js_present.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %js_present.i, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4561598.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp4561598.not.i, label %if.end.for.end472.i_crit_edge, label %if.end.for.body458.i_crit_edge

if.end.for.body458.i_crit_edge:                   ; preds = %if.end
  br label %for.body458.i

if.end.for.end472.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end472.i

for.body458.i:                                    ; preds = %for.body458.i.for.body458.i_crit_edge, %if.end.for.body458.i_crit_edge
  %i.11599.i = phi i32 [ %inc471.i, %for.body458.i.for.body458.i_crit_edge ], [ 0, %if.end.for.body458.i_crit_edge ]
  %85 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iomem.i, align 4
  %mul462.i = shl i32 %i.11599.i, 2
  %add463.i = add i32 %mul462.i, 192
  %add.ptr464.i = getelementptr i8, ptr %86, i32 %add463.i
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr464.i) #4, !srcloc !104
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  %arrayidx469.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 20, i32 %i.11599.i
  %89 = ptrtoint ptr %arrayidx469.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx469.i, align 4
  %inc471.i = add nuw i32 %i.11599.i, 1
  %exitcond.not.i = icmp eq i32 %inc471.i, %call.i.i
  br i1 %exitcond.not.i, label %for.body458.i.for.end472.i_crit_edge, label %for.body458.i.for.body458.i_crit_edge

for.body458.i.for.body458.i_crit_edge:            ; preds = %for.body458.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body458.i

for.body458.i.for.end472.i_crit_edge:             ; preds = %for.body458.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end472.i

for.end472.i:                                     ; preds = %for.body458.i.for.end472.i_crit_edge, %if.end.for.end472.i_crit_edge
  %90 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iomem.i, align 4
  %add.ptr476.i = getelementptr i8, ptr %91, i32 256
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr476.i) #4, !srcloc !104
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  %conv480.i = zext i32 %93 to i64
  %shader_present.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 2
  %94 = ptrtoint ptr %shader_present.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv480.i, ptr %shader_present.i, align 8
  %95 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iomem.i, align 4
  %add.ptr485.i = getelementptr i8, ptr %96, i32 260
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr485.i) #4, !srcloc !104
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  %conv489.i = zext i32 %98 to i64
  %shl.i = shl nuw i64 %conv489.i, 32
  %99 = ptrtoint ptr %shader_present.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %shader_present.i, align 8
  %or.i = or i64 %shl.i, %100
  store i64 %or.i, ptr %shader_present.i, align 8
  %101 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %iomem.i, align 4
  %add.ptr495.i = getelementptr i8, ptr %102, i32 272
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr495.i) #4, !srcloc !104
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  %conv499.i = zext i32 %104 to i64
  %tiler_present.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 3
  %105 = ptrtoint ptr %tiler_present.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv499.i, ptr %tiler_present.i, align 8
  %106 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %iomem.i, align 4
  %add.ptr504.i = getelementptr i8, ptr %107, i32 276
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr504.i) #4, !srcloc !104
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  %conv508.i = zext i32 %109 to i64
  %shl509.i = shl nuw i64 %conv508.i, 32
  %110 = ptrtoint ptr %tiler_present.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %tiler_present.i, align 8
  %or512.i = or i64 %shl509.i, %111
  store i64 %or512.i, ptr %tiler_present.i, align 8
  %112 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iomem.i, align 4
  %add.ptr516.i = getelementptr i8, ptr %113, i32 288
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr516.i) #4, !srcloc !104
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %conv520.i = zext i32 %115 to i64
  %l2_present.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 4
  %116 = ptrtoint ptr %l2_present.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv520.i, ptr %l2_present.i, align 8
  %117 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iomem.i, align 4
  %add.ptr525.i = getelementptr i8, ptr %118, i32 292
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr525.i) #4, !srcloc !104
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  %conv529.i = zext i32 %120 to i64
  %shl530.i = shl nuw i64 %conv529.i, 32
  %121 = ptrtoint ptr %l2_present.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %l2_present.i, align 8
  %or533.i = or i64 %shl530.i, %122
  store i64 %or533.i, ptr %l2_present.i, align 8
  %call.i1573.i = tail call i32 @__sw_hweight64(i64 noundef %or533.i) #4
  %nr_core_groups.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 21
  %123 = ptrtoint ptr %nr_core_groups.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call.i1573.i, ptr %nr_core_groups.i, align 4
  %124 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %iomem.i, align 4
  %add.ptr1218.i = getelementptr i8, ptr %125, i32 3584
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1218.i) #4, !srcloc !104
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  %conv1222.i = zext i32 %127 to i64
  %stack_present.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 5
  %128 = ptrtoint ptr %stack_present.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv1222.i, ptr %stack_present.i, align 8
  %129 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iomem.i, align 4
  %add.ptr1227.i = getelementptr i8, ptr %130, i32 3588
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1227.i) #4, !srcloc !104
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  %conv1231.i = zext i32 %132 to i64
  %shl1232.i = shl nuw i64 %conv1231.i, 32
  %133 = ptrtoint ptr %stack_present.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %stack_present.i, align 8
  %or1235.i = or i64 %shl1232.i, %134
  store i64 %or1235.i, ptr %stack_present.i, align 8
  %135 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %iomem.i, align 4
  %add.ptr1239.i = getelementptr i8, ptr %136, i32 784
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1239.i) #4, !srcloc !104
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  %thread_tls_alloc.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 22
  %139 = ptrtoint ptr %thread_tls_alloc.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %thread_tls_alloc.i, align 8
  %140 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %iomem.i, align 4
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #4, !srcloc !104
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  %conv1252.i = trunc i32 %143 to i16
  %revision.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 1
  %144 = ptrtoint ptr %revision.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv1252.i, ptr %revision.i, align 2
  %shr1254.i = lshr i32 %143, 16
  %conv1255.i = trunc i32 %shr1254.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 26966, i32 %shr1254.i)
  %cmp1260.i = icmp eq i32 %shr1254.i, 26966
  %spec.select.i = select i1 %cmp1260.i, i16 1536, i16 %conv1255.i
  %145 = ptrtoint ptr %features.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %spec.select.i, ptr %features.i, align 8
  %conv1266.i = and i32 %143, 65535
  %conv.i.i.i = zext i16 %spec.select.i to i32
  %and.i.i.i = and i32 %conv.i.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and2.i.i.i = and i32 %conv.i.i.i, 61455
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %conv.i.i.i, i32 %and2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %spec.select.i.i.i)
  %tobool.not.i.i70 = icmp eq i32 %spec.select.i.i.i, 1536
  br i1 %tobool.not.i.i70, label %for.end472.i.if.end1291.i_crit_edge, label %for.end472.i.for.inc1324.i_crit_edge

for.end472.i.for.inc1324.i_crit_edge:             ; preds = %for.end472.i
  br label %for.inc1324.i

for.end472.i.if.end1291.i_crit_edge:              ; preds = %for.end472.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1291.i

for.body1287.i:                                   ; preds = %for.inc1324.i
  %id1288.i = getelementptr %struct.panfrost_model, ptr %model.01600.i71, i32 1, i32 1
  %146 = ptrtoint ptr %id1288.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %id1288.i, align 4
  %tobool.not.i.i = icmp eq i32 %spec.select.i.i.i, %147
  br i1 %tobool.not.i.i, label %for.body1287.i.if.end1291.i_crit_edge, label %for.body1287.i.for.inc1324.i_crit_edge

for.body1287.i.for.inc1324.i_crit_edge:           ; preds = %for.body1287.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc1324.i

for.body1287.i.if.end1291.i_crit_edge:            ; preds = %for.body1287.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1291.i

if.end1291.i:                                     ; preds = %for.body1287.i.if.end1291.i_crit_edge, %for.end472.i.if.end1291.i_crit_edge
  %.lcssa = phi ptr [ @.str.30, %for.end472.i.if.end1291.i_crit_edge ], [ %167, %for.body1287.i.if.end1291.i_crit_edge ]
  %model.01600.i.lcssa = phi ptr [ @gpu_models, %for.end472.i.if.end1291.i_crit_edge ], [ %incdec.ptr.i, %for.body1287.i.if.end1291.i_crit_edge ]
  %features1293.i = getelementptr inbounds %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 3
  %148 = ptrtoint ptr %features1293.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %features1293.i, align 8
  %issues.i = getelementptr inbounds %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 4
  %150 = ptrtoint ptr %issues.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %issues.i, align 8
  %or1294.i = or i64 %151, 1024
  %and1307.i = and i32 %143, 65520
  %arrayidx1299.i = getelementptr %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 5, i32 0
  %152 = ptrtoint ptr %arrayidx1299.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx1299.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %conv1266.i)
  %cmp1301.i = icmp eq i32 %153, %conv1266.i
  br i1 %cmp1301.i, label %if.end1291.i.for.end1315.thread.i_crit_edge, label %if.else.i

if.end1291.i.for.end1315.thread.i_crit_edge:      ; preds = %if.end1291.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1315.thread.i

if.else.i:                                        ; preds = %if.end1291.i
  %arrayidx1299.1.i = getelementptr %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 5, i32 1
  %154 = ptrtoint ptr %arrayidx1299.1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx1299.1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %conv1266.i)
  %cmp1301.1.i = icmp eq i32 %155, %conv1266.i
  br i1 %cmp1301.1.i, label %if.else.i.for.end1315.thread.i_crit_edge, label %if.else.1.i

if.else.i.for.end1315.thread.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1315.thread.i

if.else.1.i:                                      ; preds = %if.else.i
  %arrayidx1299.2.i = getelementptr %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 5, i32 2
  %156 = ptrtoint ptr %arrayidx1299.2.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx1299.2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %conv1266.i)
  %cmp1301.2.i = icmp eq i32 %157, %conv1266.i
  br i1 %cmp1301.2.i, label %if.else.1.i.for.end1315.thread.i_crit_edge, label %if.else.2.i

if.else.1.i.for.end1315.thread.i_crit_edge:       ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1315.thread.i

if.else.2.i:                                      ; preds = %if.else.1.i
  %arrayidx1299.3.i = getelementptr %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 5, i32 3
  %158 = ptrtoint ptr %arrayidx1299.3.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx1299.3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %conv1266.i)
  %cmp1301.3.i = icmp eq i32 %159, %conv1266.i
  br i1 %cmp1301.3.i, label %if.else.2.i.for.end1315.thread.i_crit_edge, label %if.else.3.i

if.else.2.i.for.end1315.thread.i_crit_edge:       ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1315.thread.i

if.else.3.i:                                      ; preds = %if.else.2.i
  %arrayidx1299.4.i = getelementptr %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 5, i32 4
  %160 = ptrtoint ptr %arrayidx1299.4.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx1299.4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %conv1266.i)
  %cmp1301.4.i = icmp eq i32 %161, %conv1266.i
  br i1 %cmp1301.4.i, label %if.else.3.i.for.end1315.thread.i_crit_edge, label %if.else.4.i

if.else.3.i.for.end1315.thread.i_crit_edge:       ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1315.thread.i

if.else.4.i:                                      ; preds = %if.else.3.i
  %arrayidx1299.5.i = getelementptr %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 5, i32 5
  %162 = ptrtoint ptr %arrayidx1299.5.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx1299.5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %conv1266.i)
  %cmp1301.5.i = icmp eq i32 %163, %conv1266.i
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %and1307.i)
  %cmp1308.5.i = icmp eq i32 %163, %and1307.i
  %or.cond = or i1 %cmp1301.5.i, %cmp1308.5.i
  br i1 %or.cond, label %if.else.4.i.for.end1315.thread.i_crit_edge, label %for.end1315.i

if.else.4.i.for.end1315.thread.i_crit_edge:       ; preds = %if.else.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1315.thread.i

for.end1315.thread.i:                             ; preds = %if.else.4.i.for.end1315.thread.i_crit_edge, %if.else.3.i.for.end1315.thread.i_crit_edge, %if.else.2.i.for.end1315.thread.i_crit_edge, %if.else.1.i.for.end1315.thread.i_crit_edge, %if.else.i.for.end1315.thread.i_crit_edge, %if.end1291.i.for.end1315.thread.i_crit_edge
  %best.2.ph.i = phi i32 [ 5, %if.else.4.i.for.end1315.thread.i_crit_edge ], [ 4, %if.else.3.i.for.end1315.thread.i_crit_edge ], [ 3, %if.else.2.i.for.end1315.thread.i_crit_edge ], [ 2, %if.else.1.i.for.end1315.thread.i_crit_edge ], [ 1, %if.else.i.for.end1315.thread.i_crit_edge ], [ 0, %if.end1291.i.for.end1315.thread.i_crit_edge ]
  %extract.t15881611.i = trunc i64 %149 to i32
  %extract15901612.i = lshr i64 %149, 32
  %extract.t15911613.i = trunc i64 %extract15901612.i to i32
  br label %if.then1318.i

for.end1315.i:                                    ; preds = %if.else.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %and1307.i)
  %cmp1308.4.i = icmp eq i32 %161, %and1307.i
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %and1307.i)
  %cmp1308.3.i = icmp eq i32 %159, %and1307.i
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %and1307.i)
  %cmp1308.2.i = icmp eq i32 %157, %and1307.i
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %and1307.i)
  %cmp1308.1.i = icmp eq i32 %155, %and1307.i
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %and1307.i)
  %cmp1308.i = icmp ne i32 %153, %and1307.i
  %spec.select1572.i = sext i1 %cmp1308.i to i32
  %spec.select1572.1.i = select i1 %cmp1308.1.i, i32 1, i32 %spec.select1572.i
  %spec.select1572.2.i = select i1 %cmp1308.2.i, i32 2, i32 %spec.select1572.1.i
  %spec.select1572.3.i = select i1 %cmp1308.3.i, i32 3, i32 %spec.select1572.2.i
  %spec.select1572.4.i = select i1 %cmp1308.4.i, i32 4, i32 %spec.select1572.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select1572.4.i)
  %cmp1316.i = icmp sgt i32 %spec.select1572.4.i, -1
  %extract.t.i = trunc i64 %or1294.i to i32
  %extract.i = lshr i64 %151, 32
  %extract.t1585.i = trunc i64 %extract.i to i32
  %extract.t1588.i = trunc i64 %149 to i32
  %extract1590.i = lshr i64 %149, 32
  %extract.t1591.i = trunc i64 %extract1590.i to i32
  br i1 %cmp1316.i, label %for.end1315.i.if.then1318.i_crit_edge, label %for.end1315.i.panfrost_gpu_init_features.exit_crit_edge

for.end1315.i.panfrost_gpu_init_features.exit_crit_edge: ; preds = %for.end1315.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %panfrost_gpu_init_features.exit

for.end1315.i.if.then1318.i_crit_edge:            ; preds = %for.end1315.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1318.i

if.then1318.i:                                    ; preds = %for.end1315.i.if.then1318.i_crit_edge, %for.end1315.thread.i
  %extract.t15911616.i = phi i32 [ %extract.t15911613.i, %for.end1315.thread.i ], [ %extract.t1591.i, %for.end1315.i.if.then1318.i_crit_edge ]
  %extract.t15881615.i = phi i32 [ %extract.t15881611.i, %for.end1315.thread.i ], [ %extract.t1588.i, %for.end1315.i.if.then1318.i_crit_edge ]
  %best.21614.i = phi i32 [ %best.2.ph.i, %for.end1315.thread.i ], [ %spec.select1572.4.i, %for.end1315.i.if.then1318.i_crit_edge ]
  %issues1321.i = getelementptr %struct.panfrost_model, ptr %model.01600.i.lcssa, i32 0, i32 5, i32 %best.21614.i, i32 1
  %164 = ptrtoint ptr %issues1321.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %issues1321.i, align 8
  %or1322.i = or i64 %165, %or1294.i
  %extract.t1584.i = trunc i64 %or1322.i to i32
  %extract1586.i = lshr i64 %or1322.i, 32
  %extract.t1587.i = trunc i64 %extract1586.i to i32
  br label %panfrost_gpu_init_features.exit

for.inc1324.i:                                    ; preds = %for.body1287.i.for.inc1324.i_crit_edge, %for.end472.i.for.inc1324.i_crit_edge
  %model.01600.i71 = phi ptr [ %incdec.ptr.i, %for.body1287.i.for.inc1324.i_crit_edge ], [ @gpu_models, %for.end472.i.for.inc1324.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.panfrost_model, ptr %model.01600.i71, i32 1
  %166 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %incdec.ptr.i, align 8
  %tobool1286.not.i = icmp eq ptr %167, null
  br i1 %tobool1286.not.i, label %for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge, label %for.body1287.i

for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge: ; preds = %for.inc1324.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %panfrost_gpu_init_features.exit

panfrost_gpu_init_features.exit:                  ; preds = %for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge, %if.then1318.i, %for.end1315.i.panfrost_gpu_init_features.exit_crit_edge
  %hw_issues.3.off0.i = phi i32 [ %extract.t.i, %for.end1315.i.panfrost_gpu_init_features.exit_crit_edge ], [ %extract.t1584.i, %if.then1318.i ], [ 1024, %for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge ]
  %hw_issues.3.off32.i = phi i32 [ %extract.t1585.i, %for.end1315.i.panfrost_gpu_init_features.exit_crit_edge ], [ %extract.t1587.i, %if.then1318.i ], [ 0, %for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge ]
  %hw_feat.2.off0.i = phi i32 [ %extract.t1588.i, %for.end1315.i.panfrost_gpu_init_features.exit_crit_edge ], [ %extract.t15881615.i, %if.then1318.i ], [ 0, %for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge ]
  %hw_feat.2.off32.i = phi i32 [ %extract.t1591.i, %for.end1315.i.panfrost_gpu_init_features.exit_crit_edge ], [ %extract.t15911616.i, %if.then1318.i ], [ 0, %for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge ]
  %name.2.i = phi ptr [ %.lcssa, %for.end1315.i.panfrost_gpu_init_features.exit_crit_edge ], [ %.lcssa, %if.then1318.i ], [ @.str.17, %for.inc1324.i.panfrost_gpu_init_features.exit_crit_edge ]
  %and1277.i = and i32 %143, 15
  %168 = lshr i32 %143, 4
  %and1273.i = and i32 %168, 255
  %169 = lshr i32 %conv1266.i, 12
  %hw_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 23
  %170 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %hw_feat.2.off0.i, ptr %hw_features.i, align 4
  %arrayidx2.i.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 23, i32 1
  %171 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %hw_feat.2.off32.i, ptr %arrayidx2.i.i, align 4
  %hw_issues1328.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 24
  %172 = ptrtoint ptr %hw_issues1328.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %hw_issues.3.off0.i, ptr %hw_issues1328.i, align 4
  %arrayidx2.i1577.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 24, i32 1
  %173 = ptrtoint ptr %arrayidx2.i1577.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %hw_issues.3.off32.i, ptr %arrayidx2.i1577.i, align 4
  %174 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %175, ptr noundef nonnull @.str.18, ptr noundef nonnull %name.2.i, i32 noundef %conv.i.i.i, i32 noundef %169, i32 noundef %and1273.i, i32 noundef %and1277.i) #7
  %176 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %177, ptr noundef nonnull @.str.22, ptr noundef %hw_features.i, ptr noundef %hw_issues1328.i) #7
  %178 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pfdev, align 8
  %180 = ptrtoint ptr %l2_features.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %l2_features.i, align 8
  %182 = ptrtoint ptr %core_features.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %core_features.i, align 4
  %184 = ptrtoint ptr %tiler_features.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tiler_features.i, align 8
  %186 = ptrtoint ptr %mem_features.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mem_features.i, align 4
  %188 = ptrtoint ptr %mmu_features.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %mmu_features.i, align 8
  %190 = ptrtoint ptr %as_present.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %as_present.i, align 8
  %192 = ptrtoint ptr %js_present.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %js_present.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %179, ptr noundef nonnull @.str.25, i32 noundef %181, i32 noundef %183, i32 noundef %185, i32 noundef %187, i32 noundef %189, i32 noundef %191, i32 noundef %193) #7
  %194 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pfdev, align 8
  %196 = ptrtoint ptr %shader_present.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %shader_present.i, align 8
  %198 = ptrtoint ptr %l2_present.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %l2_present.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %195, ptr noundef nonnull @.str.28, i64 noundef %197, i64 noundef %199) #7
  %200 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pfdev, align 8
  %202 = ptrtoint ptr %mmu_features.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %mmu_features.i, align 8
  %and = lshr i32 %203, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %shr)
  %cmp = icmp eq i32 %shr, 64
  br i1 %cmp, label %panfrost_gpu_init_features.exit.cond.end_crit_edge, label %do.end27

panfrost_gpu_init_features.exit.cond.end_crit_edge: ; preds = %panfrost_gpu_init_features.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

do.end27:                                         ; preds = %panfrost_gpu_init_features.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sh_prom = zext i32 %shr to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %do.end27, %panfrost_gpu_init_features.exit.cond.end_crit_edge
  %cond = phi i64 [ %sub, %do.end27 ], [ -1, %panfrost_gpu_init_features.exit.cond.end_crit_edge ]
  %call.i = tail call i32 @dma_set_mask(ptr noundef %201, i64 noundef %cond) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %cond.end.dma_set_mask_and_coherent.exit_crit_edge

cond.end.dma_set_mask_and_coherent.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %201, i64 noundef %cond) #4
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %cond.end.dma_set_mask_and_coherent.exit_crit_edge
  %204 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pfdev, align 8
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %205, i32 0, i32 22
  %206 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %207, null
  br i1 %tobool.not.i, label %dma_set_mask_and_coherent.exit.dma_set_max_seg_size.exit_crit_edge, label %if.then.i66

dma_set_mask_and_coherent.exit.dma_set_max_seg_size.exit_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_set_max_seg_size.exit

if.then.i66:                                      ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #6
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -1, ptr %207, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i66, %dma_set_mask_and_coherent.exit.dma_set_max_seg_size.exit_crit_edge
  %209 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pfdev, align 8
  %add.ptr = getelementptr i8, ptr %210, i32 -16
  %call38 = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %dma_set_max_seg_size.exit.cleanup_crit_edge, label %if.end41

dma_set_max_seg_size.exit.cleanup_crit_edge:      ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %dma_set_max_seg_size.exit
  %211 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pfdev, align 8
  %call.i67 = tail call i32 @devm_request_threaded_irq(ptr noundef %212, i32 noundef %call38, ptr noundef nonnull @panfrost_gpu_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef %pfdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool44.not = icmp eq i32 %call.i67, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %213 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @panfrost_gpu_power_on(ptr noundef %pfdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %dma_set_max_seg_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i67, %do.end48 ], [ 0, %if.end50 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %dma_set_max_seg_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_gpu_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !104
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !104
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.if.end41_crit_edge, label %if.then10

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then10:                                        ; preds = %if.end
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #4, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  %11 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomem, align 4
  %add.ptr21 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #4, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %14 = zext i32 %10 to i64
  %15 = zext i32 %13 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %and26 = and i32 %7, 255
  %call27 = tail call ptr @panfrost_exception_name(i32 noundef %and26) #4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.44, i32 noundef %7, ptr noundef %call27, i64 noundef %18) #7
  %and28 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then10.do.body36_crit_edge, label %do.end33

if.then10.do.body36_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36

do.end33:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.48) #7
  br label %do.body36

do.body36:                                        ; preds = %do.end33, %if.then10.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem, align 4
  %add.ptr40 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #4, !srcloc !101
  br label %if.end41

if.end41:                                         ; preds = %do.body36, %if.end.if.end41_crit_edge
  %and42 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @panfrost_perfcnt_sample_done(ptr noundef %data) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  %and46 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.do.body50_crit_edge, label %if.then48

if.end45.do.body50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @panfrost_perfcnt_clean_cache_done(ptr noundef %data) #4
  br label %do.body50

do.body50:                                        ; preds = %if.then48, %if.end45.do.body50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem, align 4
  %add.ptr54 = getelementptr i8, ptr %26, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %2) #4, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.body50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body50 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_fini(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  %iomem.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #4, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_gpu_get_latest_flush_id(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 23
  %0 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw_features.i, align 4
  %2 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pfdev, align 8
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %4, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %5 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !104
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  %9 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pfdev, align 8
  %call.i11 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then2 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_exception_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_sample_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_clean_cache_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 65, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 69, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @panfrost_gpu_soft_reset._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @panfrost_gpu_soft_reset._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 331, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @panfrost_gpu_power_on._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @panfrost_gpu_power_on._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 337, i32 3}
!16 = !{ptr @panfrost_gpu_power_on._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @panfrost_gpu_power_on._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 343, i32 3}
!20 = !{ptr @panfrost_gpu_power_on._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @panfrost_gpu_power_on._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 367, i32 64}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 372, i32 24}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 374, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @panfrost_gpu_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @panfrost_gpu_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 215, i32 21}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 300, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @panfrost_gpu_init_features._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @panfrost_gpu_init_features._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 302, i32 2}
!41 = !{ptr @panfrost_gpu_init_features._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @panfrost_gpu_init_features._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 306, i32 2}
!45 = !{ptr @panfrost_gpu_init_features._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @panfrost_gpu_init_features._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 315, i32 2}
!49 = !{ptr @panfrost_gpu_init_features._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @panfrost_gpu_init_features._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 188, i32 2}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 190, i32 2}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 192, i32 2}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 193, i32 2}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 197, i32 2}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 198, i32 2}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 199, i32 2}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 200, i32 2}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 202, i32 2}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 204, i32 2}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 205, i32 2}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 206, i32 2}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 207, i32 2}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 208, i32 2}
!79 = !{ptr @gpu_models, !80, !"gpu_models", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 186, i32 36}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 35, i32 3}
!83 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @panfrost_gpu_irq_handler._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @panfrost_gpu_irq_handler._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panfrost/panfrost_gpu.c", i32 40, i32 4}
!89 = !{ptr @panfrost_gpu_irq_handler._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @panfrost_gpu_irq_handler._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2155624452}
!101 = !{i64 6261946}
!102 = !{i64 2155625022}
!103 = !{i64 2155625547}
!104 = !{i64 6262364}
!105 = !{i64 2155634863}
!106 = !{i64 2155637167}
!107 = !{i64 2155638271}
!108 = !{i64 2155638772}
!109 = !{i64 2155639780}
!110 = !{i64 2155640512}
!111 = !{i64 2155640871}
!112 = !{i64 2155641603}
!113 = !{i64 2155642094}
!114 = !{i64 2155642814}
!115 = !{i64 2155726598}
!116 = !{i64 2155730665}
!117 = !{i64 2155734794}
!118 = !{i64 2155738848}
!119 = !{i64 2155739288}
!120 = !{i64 2155739728}
!121 = !{i64 2155696306}
!122 = !{i64 2155696850}
!123 = !{i64 2155697394}
!124 = !{i64 2155697938}
!125 = !{i64 2155698482}
!126 = !{i64 2155699026}
!127 = !{i64 2155699570}
!128 = !{i64 2155700114}
!129 = !{i64 2155700658}
!130 = !{i64 2155701202}
!131 = !{i64 2155701752}
!132 = !{i64 2155702392}
!133 = !{i64 2155702936}
!134 = !{i64 2155703480}
!135 = !{i64 2155706864}
!136 = !{i64 2155707408}
!137 = !{i64 2155707952}
!138 = !{i64 2155708496}
!139 = !{i64 2155709040}
!140 = !{i64 2155709584}
!141 = !{i64 2155710128}
!142 = !{i64 2155716496}
!143 = !{i64 2155717040}
!144 = !{i64 2155717584}
!145 = !{i64 2155718122}
!146 = !{i64 2155617394}
!147 = !{i64 2155617932}
!148 = !{i64 2155618690}
!149 = !{i64 2155619228}
!150 = !{i64 2155623392}
!151 = !{i64 2155624004}
!152 = !{i64 2155766915}
