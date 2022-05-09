; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/armada-37xx-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/armada-37xx-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.armada_37xx_dvfs = type { i32, [4 x i8], [4 x i32] }
%struct.cpufreq_dt_platform_data = type { i8, ptr, ptr, ptr, ptr }
%struct.armada37xx_cpufreq_state = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__initcall__kmod_armada_37xx_cpufreq__199_534_armada37xx_cpufreq_driver_init7 = internal global ptr @armada37xx_cpufreq_driver_init, section ".initcall7.init", align 4
@armada37xx_cpufreq_state = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_armada37xx_cpufreq_driver_exit = internal global ptr @armada37xx_cpufreq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author200 = internal constant [80 x i8] c"armada_37xx_cpufreq.author=Gregory CLEMENT <gregory.clement@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description201 = internal constant [59 x i8] c"armada_37xx_cpufreq.description=Armada 37xx cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file202 = internal constant [61 x i8] c"armada_37xx_cpufreq.file=drivers/cpufreq/armada-37xx-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [32 x i8] c"armada_37xx_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"marvell,armada-3700-periph-clock-nb\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,armada-3700-nb-pm\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell,armada-3700-avs\00", [40 x i8] zeroinitializer }, align 32
@armada37xx_cpufreq_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016Syscon failed for Adapting Voltage Scaling: skip it\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"armada37xx_cpufreq_driver_init\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/cpufreq/armada-37xx-cpufreq.c\00", [58 x i8] zeroinitializer }, align 32
@armada37xx_cpufreq_driver_init._entry_ptr = internal global ptr @armada37xx_cpufreq_driver_init._entry, section ".printk_index", align 4
@armada37xx_cpufreq_driver_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 444, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cannot get CPU\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada37xx_cpufreq_driver_init._entry_ptr.10 = internal global ptr @armada37xx_cpufreq_driver_init._entry.6, section ".printk_index", align 4
@armada37xx_cpufreq_driver_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 450, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot get clock for CPU0\0A\00", [37 x i8] zeroinitializer }, align 32
@armada37xx_cpufreq_driver_init._entry_ptr.13 = internal global ptr @armada37xx_cpufreq_driver_init._entry.11, section ".printk_index", align 4
@armada37xx_cpufreq_driver_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 456, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot get parent clock for CPU0\0A\00", [62 x i8] zeroinitializer }, align 32
@armada37xx_cpufreq_driver_init._entry_ptr.16 = internal global ptr @armada37xx_cpufreq_driver_init._entry.14, section ".printk_index", align 4
@armada37xx_cpufreq_driver_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 465, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get parent clock rate for CPU\0A\00", [55 x i8] zeroinitializer }, align 32
@armada37xx_cpufreq_driver_init._entry_ptr.19 = internal global ptr @armada37xx_cpufreq_driver_init._entry.17, section ".printk_index", align 4
@avs_map = internal constant { [52 x i32], [48 x i8] } { [52 x i32] [i32 747, i32 758, i32 770, i32 782, i32 793, i32 805, i32 817, i32 828, i32 840, i32 852, i32 863, i32 875, i32 887, i32 898, i32 910, i32 922, i32 933, i32 945, i32 957, i32 968, i32 980, i32 992, i32 1003, i32 1015, i32 1027, i32 1038, i32 1050, i32 1062, i32 1073, i32 1085, i32 1097, i32 1108, i32 1120, i32 1132, i32 1143, i32 1155, i32 1167, i32 1178, i32 1190, i32 1202, i32 1213, i32 1225, i32 1237, i32 1248, i32 1260, i32 1272, i32 1283, i32 1295, i32 1307, i32 1318, i32 1330, i32 1342], [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@armada_37xx_dvfs = internal global { [3 x %struct.armada_37xx_dvfs], [56 x i8] } { [3 x %struct.armada_37xx_dvfs] [%struct.armada_37xx_dvfs { i32 1000000000, [4 x i8] c"\01\02\04\05", [4 x i32] zeroinitializer }, %struct.armada_37xx_dvfs { i32 800000000, [4 x i8] c"\01\02\03\04", [4 x i32] zeroinitializer }, %struct.armada_37xx_dvfs { i32 600000000, [4 x i8] c"\02\04\05\06", [4 x i32] zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@armada_37xx_cpu_freq_info_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Unsupported CPU frequency %d MHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"armada_37xx_cpu_freq_info_get\00", [34 x i8] zeroinitializer }, align 32
@armada_37xx_cpu_freq_info_get._entry_ptr = internal global ptr @armada_37xx_cpu_freq_info_get._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@armada37xx_cpufreq_avs_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013L0 VDD MIN %d is not correct.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"armada37xx_cpufreq_avs_configure\00", [63 x i8] zeroinitializer }, align 32
@armada37xx_cpufreq_avs_configure._entry_ptr = internal global ptr @armada37xx_cpufreq_avs_configure._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"armada37xx_cpufreq_state\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 98, i32 41 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 416, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 421, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 427, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 431, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 444, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 450, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 456, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 465, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"avs_map\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 80, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 509, i32 45 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"armada_37xx_dvfs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 106, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 126, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [41 x i8] c"../drivers/cpufreq/armada-37xx-cpufreq.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 237, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author200, ptr @__UNIQUE_ID_description201, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_armada37xx_cpufreq_driver_exit, ptr @__initcall__kmod_armada_37xx_cpufreq__199_534_armada37xx_cpufreq_driver_init7, ptr @armada37xx_cpufreq_avs_configure._entry, ptr @armada37xx_cpufreq_avs_configure._entry_ptr, ptr @armada37xx_cpufreq_driver_exit, ptr @armada37xx_cpufreq_driver_init._entry, ptr @armada37xx_cpufreq_driver_init._entry.11, ptr @armada37xx_cpufreq_driver_init._entry.14, ptr @armada37xx_cpufreq_driver_init._entry.17, ptr @armada37xx_cpufreq_driver_init._entry.6, ptr @armada37xx_cpufreq_driver_init._entry_ptr, ptr @armada37xx_cpufreq_driver_init._entry_ptr.10, ptr @armada37xx_cpufreq_driver_init._entry_ptr.13, ptr @armada37xx_cpufreq_driver_init._entry_ptr.16, ptr @armada37xx_cpufreq_driver_init._entry_ptr.19, ptr @armada_37xx_cpu_freq_info_get._entry, ptr @armada_37xx_cpu_freq_info_get._entry_ptr, ptr @armada37xx_cpufreq_state, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @avs_map, ptr @.str.20, ptr @armada_37xx_dvfs, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada37xx_cpufreq_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada37xx_cpufreq_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada37xx_cpufreq_driver_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada37xx_cpufreq_driver_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada37xx_cpufreq_driver_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada37xx_cpufreq_driver_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avs_map to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_dvfs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_37xx_cpu_freq_info_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada37xx_cpufreq_avs_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada37xx_cpufreq_driver_init() #0 section ".init.text" align 64 {
entry:
  %pdata = alloca %struct.cpufreq_dt_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pdata) #8
  %0 = call ptr @memset(ptr %pdata, i32 255, i32 20)
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #8
  %cmp.i126 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.end.cleanup68_crit_edge, label %if.end5

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.2) #8
  %cmp.i127 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end5.if.end10_crit_edge
  %avs_base.0 = phi ptr [ null, %do.end ], [ %call6, %if.end5.if.end10_crit_edge ]
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 36, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call11 = tail call ptr @get_cpu_device(i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef nonnull @.str.7) #11
  br label %cleanup68

if.end16:                                         ; preds = %if.end10
  %call17 = tail call ptr @clk_get(ptr noundef nonnull %call11, ptr noundef null) #8
  %cmp.i128 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call11, ptr noundef nonnull @.str.12) #11
  %1 = ptrtoint ptr %call17 to i32
  br label %cleanup68

if.end24:                                         ; preds = %if.end16
  %call25 = tail call ptr @clk_get_parent(ptr noundef %call17) #8
  %cmp.i129 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call11, ptr noundef nonnull @.str.15) #11
  tail call void @clk_put(ptr noundef %call17) #8
  %2 = ptrtoint ptr %call25 to i32
  br label %cleanup68

if.end32:                                         ; preds = %if.end24
  %call33 = tail call i32 @clk_get_rate(ptr noundef %call25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end38, label %if.end39

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call11, ptr noundef nonnull @.str.18) #11
  tail call void @clk_put(ptr noundef %call17) #8
  br label %cleanup68

if.end39:                                         ; preds = %if.end32
  %3 = load i32, ptr @armada_37xx_dvfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call33)
  %cmp1.i = icmp eq i32 %3, %call33
  br i1 %cmp1.i, label %if.end39.if.end43_crit_edge, label %for.cond.i

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

for.cond.i:                                       ; preds = %if.end39
  %4 = load i32, ptr getelementptr inbounds ([3 x %struct.armada_37xx_dvfs], ptr @armada_37xx_dvfs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %call33)
  %cmp1.1.i = icmp eq i32 %4, %call33
  br i1 %cmp1.1.i, label %for.cond.i.if.end43_crit_edge, label %for.cond.1.i

for.cond.i.if.end43_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

for.cond.1.i:                                     ; preds = %for.cond.i
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.armada_37xx_dvfs], ptr @armada_37xx_dvfs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call33)
  %cmp1.2.i = icmp eq i32 %5, %call33
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end43_crit_edge, label %if.then42

for.cond.1.i.if.end43_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %call33, 1000000
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %div.i) #11
  tail call void @clk_put(ptr noundef %call17) #8
  br label %cleanup68

if.end43:                                         ; preds = %for.cond.1.i.if.end43_crit_edge, %for.cond.i.if.end43_crit_edge, %if.end39.if.end43_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([3 x %struct.armada_37xx_dvfs], ptr @armada_37xx_dvfs, i32 0, i32 2), %for.cond.1.i.if.end43_crit_edge ], [ getelementptr inbounds ([3 x %struct.armada_37xx_dvfs], ptr @armada_37xx_dvfs, i32 0, i32 1), %for.cond.i.if.end43_crit_edge ], [ @armada_37xx_dvfs, %if.end39.if.end43_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 28) #12
  store ptr %call7.i, ptr @armada37xx_cpufreq_state, align 4
  %tobool45.not = icmp eq ptr %call7.i, null
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_put(ptr noundef %call17) #8
  br label %cleanup68

if.end47:                                         ; preds = %if.end43
  %regmap = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %regmap, align 8
  tail call fastcc void @armada37xx_cpufreq_avs_configure(ptr noundef %avs_base.0, ptr noundef nonnull %retval.0.i.ph) #13
  tail call fastcc void @armada37xx_cpufreq_avs_setup(ptr noundef %avs_base.0, ptr noundef nonnull %retval.0.i.ph) #13
  %divider = getelementptr inbounds %struct.armada_37xx_dvfs, ptr %retval.0.i.ph, i32 0, i32 1
  tail call fastcc void @armada37xx_cpufreq_dvfs_setup(ptr noundef %call2, ptr noundef %call, ptr noundef %divider) #13
  tail call void @clk_put(ptr noundef %call17) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end47
  %load_lvl.0138 = phi i32 [ 0, %if.end47 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.armada_37xx_dvfs, ptr %retval.0.i.ph, i32 0, i32 2, i32 %load_lvl.0138
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx48 = getelementptr [52 x i32], ptr @avs_map, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx48, align 4
  %mul = mul i32 %11, 1000
  %arrayidx50 = getelementptr %struct.armada_37xx_dvfs, ptr %retval.0.i.ph, i32 0, i32 1, i32 %load_lvl.0138
  %12 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx50, align 1
  %conv = zext i8 %13 to i32
  %div = udiv i32 %call33, %conv
  %call51 = tail call i32 @dev_pm_opp_add(ptr noundef nonnull %call11, i32 noundef %div, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.inc, label %remove_opp

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %load_lvl.0138, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call fastcc void @armada37xx_cpufreq_enable_dvfs(ptr noundef %call2) #13
  %14 = call ptr @memset(ptr %pdata, i32 0, i32 12)
  %suspend = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %pdata, i32 0, i32 3
  %15 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @armada37xx_cpufreq_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.cpufreq_dt_platform_data, ptr %pdata, i32 0, i32 4
  %16 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @armada37xx_cpufreq_resume, ptr %resume, align 4
  %call55 = call fastcc ptr @platform_device_register_data(ptr noundef nonnull %pdata)
  %cmp.i.i.not = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %remove_opp.thread, label %if.end59

if.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  %cpu_dev60 = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cpu_dev60 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %cpu_dev60, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call55, ptr %17, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call55, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i.ph, ptr %driver_data.i.i, align 4
  br label %cleanup68

remove_opp.thread:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call55 to i32
  %call.i.i130 = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 36, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %while.body.preheader

remove_opp:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_lvl.0138)
  %cmp62139.not = icmp eq i32 %load_lvl.0138, 0
  br i1 %cmp62139.not, label %remove_opp.while.end_crit_edge, label %remove_opp.while.body.preheader_crit_edge

remove_opp.while.body.preheader_crit_edge:        ; preds = %remove_opp
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

remove_opp.while.end_crit_edge:                   ; preds = %remove_opp
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %remove_opp.while.body.preheader_crit_edge, %remove_opp.thread
  %ret.0147 = phi i32 [ %21, %remove_opp.thread ], [ %call51, %remove_opp.while.body.preheader_crit_edge ]
  %load_lvl.0137146 = phi i32 [ 4, %remove_opp.thread ], [ %load_lvl.0138, %remove_opp.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %load_lvl.1140 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %load_lvl.0137146, %while.body.preheader ]
  %dec = add nsw i32 %load_lvl.1140, -1
  %arrayidx65 = getelementptr %struct.armada_37xx_dvfs, ptr %retval.0.i.ph, i32 0, i32 1, i32 %dec
  %22 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %23 to i32
  %div67 = udiv i32 %call33, %conv66
  call void @dev_pm_opp_remove(ptr noundef nonnull %call11, i32 noundef %div67) #8
  %cmp62 = icmp sgt i32 %load_lvl.1140, 1
  br i1 %cmp62, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %remove_opp.while.end_crit_edge
  %ret.0148 = phi i32 [ %call51, %remove_opp.while.end_crit_edge ], [ %ret.0147, %while.body.while.end_crit_edge ]
  %24 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  call void @kfree(ptr noundef %24) #8
  br label %cleanup68

cleanup68:                                        ; preds = %while.end, %if.end59, %if.then46, %if.then42, %do.end38, %do.end30, %do.end22, %do.end15, %if.end.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ %1, %do.end22 ], [ %2, %do.end30 ], [ %ret.0148, %while.end ], [ 0, %if.end59 ], [ -12, %if.then46 ], [ -22, %if.then42 ], [ -22, %do.end38 ], [ -19, %do.end15 ], [ -19, %entry.cleanup68_crit_edge ], [ -19, %if.end.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pdata) #8
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada37xx_cpufreq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @platform_device_unregister(ptr noundef %2) #8
  %5 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  %regmap = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 36, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %load_lvl.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %arrayidx = getelementptr %struct.armada_37xx_dvfs, ptr %4, i32 0, i32 1, i32 %load_lvl.06
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %div = udiv i32 %9, %conv
  %12 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  %cpu_dev = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_dev, align 4
  tail call void @dev_pm_opp_remove(ptr noundef %14, i32 noundef %div) #8
  %inc = add nuw nsw i32 %load_lvl.06, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  tail call void @kfree(ptr noundef %15) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada37xx_cpufreq_avs_configure(ptr noundef %base, ptr nocapture noundef %dvfs) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %l0_vdd_min = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l0_vdd_min) #8
  %0 = ptrtoint ptr %l0_vdd_min to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %l0_vdd_min, align 4, !annotation !68
  %cmp = icmp eq ptr %base, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @regmap_read(ptr noundef nonnull %base, i32 noundef 0, ptr noundef nonnull %l0_vdd_min) #8
  %1 = ptrtoint ptr %l0_vdd_min to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l0_vdd_min, align 4
  %shr = lshr i32 %2, 22
  %and = and i32 %shr, 63
  store i32 %and, ptr %l0_vdd_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %and)
  %cmp1 = icmp ugt i32 %and, 51
  br i1 %cmp1, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %avs = getelementptr inbounds %struct.armada_37xx_dvfs, ptr %dvfs, i32 0, i32 2
  %3 = ptrtoint ptr %avs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %avs, align 4
  %4 = and i32 %2, 260046848
  call void @__sanitizer_cov_trace_const_cmp4(i32 92274688, i32 %4)
  %cmp6 = icmp ult i32 %4, 92274688
  br i1 %cmp6, label %if.end4.for.body_crit_edge, label %if.end25

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %load_level.0172 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end4.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.armada_37xx_dvfs, ptr %dvfs, i32 0, i32 2, i32 %load_level.0172
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 22, ptr %arrayidx11, align 4
  %inc = add nuw nsw i32 %load_level.0172, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %6 = ptrtoint ptr %dvfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dvfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %7)
  %cmp12 = icmp ugt i32 %7, 999999999
  br i1 %cmp12, label %if.then13, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199999999, i32 %7)
  %cmp15 = icmp ugt i32 %7, 1199999999
  %spec.select = select i1 %cmp15, i32 35, i32 31
  %arrayidx21 = getelementptr %struct.armada_37xx_dvfs, ptr %dvfs, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %arrayidx21, align 4
  %9 = ptrtoint ptr %avs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %avs, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end4
  %arrayidx5 = getelementptr [52 x i32], ptr @avs_map, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %sub = add i32 %11, -100
  %12 = call i32 @llvm.umax.i32(i32 %sub, i32 1000)
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.inc.i127.for.body.i124_crit_edge, %if.end25
  %avs.09.i121 = phi i32 [ 0, %if.end25 ], [ %inc.i125, %for.inc.i127.for.body.i124_crit_edge ]
  %arrayidx.i122 = getelementptr [52 x i32], ptr @avs_map, i32 0, i32 %avs.09.i121
  %13 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp1.not.i123 = icmp slt i32 %14, %12
  br i1 %cmp1.not.i123, label %for.inc.i127, label %for.end.i129

for.inc.i127:                                     ; preds = %for.body.i124
  %inc.i125 = add nuw nsw i32 %avs.09.i121, 1
  %exitcond.not.i126 = icmp eq i32 %inc.i125, 52
  br i1 %exitcond.not.i126, label %for.inc.i127.for.end.thread.i130_crit_edge, label %for.inc.i127.for.body.i124_crit_edge

for.inc.i127.for.body.i124_crit_edge:             ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i124

for.inc.i127.for.end.thread.i130_crit_edge:       ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i130

for.end.i129:                                     ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %avs.09.i121)
  %cmp2.i128 = icmp eq i32 %avs.09.i121, 52
  br i1 %cmp2.i128, label %for.end.i129.for.end.thread.i130_crit_edge, label %for.end.i129.armada_37xx_avs_val_match.exit131_crit_edge

for.end.i129.armada_37xx_avs_val_match.exit131_crit_edge: ; preds = %for.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %armada_37xx_avs_val_match.exit131

for.end.i129.for.end.thread.i130_crit_edge:       ; preds = %for.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i130

for.end.thread.i130:                              ; preds = %for.end.i129.for.end.thread.i130_crit_edge, %for.inc.i127.for.end.thread.i130_crit_edge
  br label %armada_37xx_avs_val_match.exit131

armada_37xx_avs_val_match.exit131:                ; preds = %for.end.thread.i130, %for.end.i129.armada_37xx_avs_val_match.exit131_crit_edge
  %15 = phi i32 [ 51, %for.end.thread.i130 ], [ %avs.09.i121, %for.end.i129.armada_37xx_avs_val_match.exit131_crit_edge ]
  %arrayidx30 = getelementptr %struct.armada_37xx_dvfs, ptr %dvfs, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx30, align 4
  %sub32 = add i32 %11, -150
  %17 = call i32 @llvm.umax.i32(i32 %sub32, i32 1000)
  br label %for.body.i135

for.body.i135:                                    ; preds = %for.inc.i138.for.body.i135_crit_edge, %armada_37xx_avs_val_match.exit131
  %avs.09.i132 = phi i32 [ 0, %armada_37xx_avs_val_match.exit131 ], [ %inc.i136, %for.inc.i138.for.body.i135_crit_edge ]
  %arrayidx.i133 = getelementptr [52 x i32], ptr @avs_map, i32 0, i32 %avs.09.i132
  %18 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp1.not.i134 = icmp slt i32 %19, %17
  br i1 %cmp1.not.i134, label %for.inc.i138, label %for.end.i140

for.inc.i138:                                     ; preds = %for.body.i135
  %inc.i136 = add nuw nsw i32 %avs.09.i132, 1
  %exitcond.not.i137 = icmp eq i32 %inc.i136, 52
  br i1 %exitcond.not.i137, label %for.inc.i138.for.end.thread.i141_crit_edge, label %for.inc.i138.for.body.i135_crit_edge

for.inc.i138.for.body.i135_crit_edge:             ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i135

for.inc.i138.for.end.thread.i141_crit_edge:       ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i141

for.end.i140:                                     ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %avs.09.i132)
  %cmp2.i139 = icmp eq i32 %avs.09.i132, 52
  br i1 %cmp2.i139, label %for.end.i140.for.end.thread.i141_crit_edge, label %for.end.i140.armada_37xx_avs_val_match.exit142_crit_edge

for.end.i140.armada_37xx_avs_val_match.exit142_crit_edge: ; preds = %for.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %armada_37xx_avs_val_match.exit142

for.end.i140.for.end.thread.i141_crit_edge:       ; preds = %for.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i141

for.end.thread.i141:                              ; preds = %for.end.i140.for.end.thread.i141_crit_edge, %for.inc.i138.for.end.thread.i141_crit_edge
  br label %armada_37xx_avs_val_match.exit142

armada_37xx_avs_val_match.exit142:                ; preds = %for.end.thread.i141, %for.end.i140.armada_37xx_avs_val_match.exit142_crit_edge
  %20 = phi i32 [ 51, %for.end.thread.i141 ], [ %avs.09.i132, %for.end.i140.armada_37xx_avs_val_match.exit142_crit_edge ]
  %arrayidx40 = getelementptr %struct.armada_37xx_dvfs, ptr %dvfs, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr %struct.armada_37xx_dvfs, ptr %dvfs, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %arrayidx42, align 4
  %23 = ptrtoint ptr %dvfs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dvfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %24)
  %cmp44 = icmp ugt i32 %24, 999999999
  br i1 %cmp44, label %if.then45, label %armada_37xx_avs_val_match.exit142.cleanup_crit_edge

armada_37xx_avs_val_match.exit142.cleanup_crit_edge: ; preds = %armada_37xx_avs_val_match.exit142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %armada_37xx_avs_val_match.exit142
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199999999, i32 %24)
  %cmp47 = icmp ugt i32 %24, 1199999999
  %spec.select182 = select i1 %cmp47, i32 35, i32 31
  %25 = call i32 @llvm.umin.i32(i32 %spec.select182, i32 %and)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %25)
  %cmp62 = icmp ult i32 %15, %25
  br i1 %cmp62, label %if.then63, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.then45.cleanup_crit_edge, %armada_37xx_avs_val_match.exit142.cleanup_crit_edge, %if.then13, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l0_vdd_min) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada37xx_cpufreq_avs_setup(ptr noundef %base, ptr nocapture noundef readonly %dvfs) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %base, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %base, i32 noundef 0, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %base, i32 noundef 8, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %load_level.018 = phi i32 [ 1, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.armada_37xx_dvfs, ptr %dvfs, i32 0, i32 2, i32 %load_level.018
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sub = shl i32 %load_level.018, 2
  %add = add nuw nsw i32 %sub, 24
  %shl = shl i32 %1, 16
  %shl3 = shl i32 %1, 22
  %or = or i32 %shl, %shl3
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %base, i32 noundef %add, i32 noundef 268369920, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %inc = add nuw nsw i32 %load_level.018, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %base, i32 noundef 0, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada37xx_cpufreq_dvfs_setup(ptr noundef %base, ptr noundef %clk_base, ptr nocapture noundef readonly %divider) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cpu_tbg_sel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_tbg_sel) #8
  %0 = ptrtoint ptr %cpu_tbg_sel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpu_tbg_sel, align 4, !annotation !68
  %call = call i32 @regmap_read(ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull %cpu_tbg_sel) #8
  %1 = ptrtoint ptr %cpu_tbg_sel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu_tbg_sel, align 4
  %shr = lshr i32 %2, 22
  %and = and i32 %shr, 3
  store i32 %and, ptr %cpu_tbg_sel, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %load_lvl.028 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %load_lvl.028)
  %cmp1 = icmp ult i32 %load_lvl.028, 2
  %. = select i1 %cmp1, i32 24, i32 28
  %switch.and = and i32 %load_lvl.028, 2147483645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %3 = select i1 %switch.selectcmp, i32 16, i32 0
  %4 = ptrtoint ptr %cpu_tbg_sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu_tbg_sel, align 4
  %shl = shl i32 %5, 9
  %arrayidx = getelementptr i8, ptr %divider, i32 %load_lvl.028
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shl6 = shl nuw nsw i32 %conv, 13
  %shl8 = shl i32 %load_lvl.028, 6
  %or = or i32 %shl, %shl8
  %or9 = or i32 %or, %shl6
  %shl11 = shl i32 %or9, %3
  %shl12 = shl nuw i32 59072, %3
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %base, i32 noundef %., i32 noundef %shl12, i32 noundef %shl11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %inc = add nuw nsw i32 %load_lvl.028, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_tbg_sel) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada37xx_cpufreq_enable_dvfs(ptr noundef %base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %base, i32 noundef 48, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %base, i32 noundef 36, i32 noundef -201326592, i32 noundef -201326592, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada37xx_cpufreq_suspend(ptr nocapture noundef readnone %policy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  %regmap = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %nb_l0l1 = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 3
  %call = tail call i32 @regmap_read(ptr noundef %2, i32 noundef 24, ptr noundef %nb_l0l1) #8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %nb_l2l3 = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 4
  %call2 = tail call i32 @regmap_read(ptr noundef %4, i32 noundef 28, ptr noundef %nb_l2l3) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %nb_cpu_load = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 6
  %call4 = tail call i32 @regmap_read(ptr noundef %6, i32 noundef 48, ptr noundef %nb_cpu_load) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %nb_dyn_mod = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 5
  %call6 = tail call i32 @regmap_read(ptr noundef %8, i32 noundef 36, ptr noundef %nb_dyn_mod) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada37xx_cpufreq_resume(ptr nocapture noundef readnone %policy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @armada37xx_cpufreq_state, align 4
  %regmap = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 36, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %nb_l0l1 = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %nb_l0l1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nb_l0l1, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 24, i32 noundef %6) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %nb_l2l3 = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 4
  %9 = ptrtoint ptr %nb_l2l3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nb_l2l3, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 28, i32 noundef %10) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %nb_cpu_load = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 6
  %13 = ptrtoint ptr %nb_cpu_load to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_cpu_load, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 48, i32 noundef %14) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %nb_dyn_mod = getelementptr inbounds %struct.armada37xx_cpufreq_state, ptr %0, i32 0, i32 5
  %17 = ptrtoint ptr %nb_dyn_mod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nb_dyn_mod, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 36, i32 noundef %18) #8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_data(ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #8
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i, align 8
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.20, ptr %name2.i, align 4
  %res4.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 5
  %6 = ptrtoint ptr %res4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %res4.i, align 4
  %num_res.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 6
  %7 = ptrtoint ptr %num_res.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_res.i, align 8
  %data5.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 7
  %8 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data5.i, align 4
  %size_data.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 8
  %9 = ptrtoint ptr %size_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %size_data.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 9
  %10 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dma_mask.i, align 8
  %properties.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 10
  %11 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %properties.i, align 8
  %call.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #8
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_armada_37xx_cpufreq__199_534_armada37xx_cpufreq_driver_init7, !1, !"__initcall__kmod_armada_37xx_cpufreq__199_534_armada37xx_cpufreq_driver_init7", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 534, i32 1}
!2 = !{ptr @__exitcall_armada37xx_cpufreq_driver_exit, !3, !"__exitcall_armada37xx_cpufreq_driver_exit", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 554, i32 1}
!4 = !{ptr @__UNIQUE_ID_author200, !5, !"__UNIQUE_ID_author200", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 562, i32 1}
!6 = !{ptr @__UNIQUE_ID_description201, !7, !"__UNIQUE_ID_description201", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 563, i32 1}
!8 = !{ptr @__UNIQUE_ID_file202, !9, !"__UNIQUE_ID_file202", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 564, i32 1}
!10 = !{ptr @__UNIQUE_ID_license203, !9, !"__UNIQUE_ID_license203", i1 false, i1 false}
!11 = !{ptr @armada37xx_cpufreq_state, !12, !"armada37xx_cpufreq_state", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 98, i32 41}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 416, i32 38}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 421, i32 38}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 427, i32 38}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 431, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @armada37xx_cpufreq_driver_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @armada37xx_cpufreq_driver_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 444, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @armada37xx_cpufreq_driver_init._entry.6, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @armada37xx_cpufreq_driver_init._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 450, i32 3}
!33 = !{ptr @armada37xx_cpufreq_driver_init._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @armada37xx_cpufreq_driver_init._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 456, i32 3}
!37 = !{ptr @armada37xx_cpufreq_driver_init._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @armada37xx_cpufreq_driver_init._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 465, i32 3}
!41 = !{ptr @armada37xx_cpufreq_driver_init._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @armada37xx_cpufreq_driver_init._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 509, i32 45}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 126, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @armada_37xx_cpu_freq_info_get._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @armada_37xx_cpu_freq_info_get._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @armada_37xx_dvfs, !51, !"armada_37xx_dvfs", i1 false, i1 false}
!51 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 106, i32 32}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 237, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @armada37xx_cpufreq_avs_configure._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @armada37xx_cpufreq_avs_configure._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @avs_map, !58, !"avs_map", i1 false, i1 false}
!58 = !{!"../drivers/cpufreq/armada-37xx-cpufreq.c", i32 80, i32 12}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
