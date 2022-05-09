; ModuleID = '/llk/IR_all_yes/drivers/input/misc/rotary_encoder.c_pt.bc'
source_filename = "../drivers/input/misc/rotary_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rotary_encoder = type { ptr, %struct.mutex, i32, i32, i8, i8, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_rotary_encoder__227_365_rotary_encoder_driver_init6 = internal global ptr @rotary_encoder_driver_init, section ".initcall6.init", align 4
@rotary_encoder_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rotary_encoder_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rotary_encoder_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotary_encoder_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rotary_encoder_driver_exit = internal global ptr @rotary_encoder_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias228 = internal constant [45 x i8] c"rotary_encoder.alias=platform:rotary-encoder\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [54 x i8] c"rotary_encoder.description=GPIO rotary encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [66 x i8] c"rotary_encoder.author=Daniel Mack <daniel@caiaq.de>, Johan Hovold\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [54 x i8] c"rotary_encoder.file=drivers/input/misc/rotary_encoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [30 x i8] c"rotary_encoder.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rotary-encoder\00", [17 x i8] zeroinitializer }, align 32
@rotary_encoder_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rotary-encoder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rotary_encoder_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rotary_encoder_suspend, ptr @rotary_encoder_resume, ptr @rotary_encoder_suspend, ptr @rotary_encoder_resume, ptr @rotary_encoder_suspend, ptr @rotary_encoder_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rotary_encoder_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&encoder->access_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rotary-encoder,steps\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rotary-encoder,steps-per-period\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rotary-encoder,half-period\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rotary-encoder,rollover\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rotary-encoder,encoding\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gray\00", [27 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 223, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rotary_encoder_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/misc/rotary_encoder.c\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr = internal global ptr @rotary_encoder_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"binary\00", [25 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 227, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr.14 = internal global ptr @rotary_encoder_probe._entry.13, section ".printk_index", align 4
@rotary_encoder_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 230, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown encoding setting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr.18 = internal global ptr @rotary_encoder_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,axis\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rotary-encoder,relative-axis\00", [35 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.9, i32 242, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to get gpios: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr.23 = internal global ptr @rotary_encoder_probe._entry.21, section ".printk_index", align 4
@rotary_encoder_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.9, i32 246, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not enough gpios found\0A\00", [40 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr.26 = internal global ptr @rotary_encoder_probe._entry.24, section ".printk_index", align 4
@rotary_encoder_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.9, i32 280, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"'%d' is not a valid steps-per-period value\0A\00", [52 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr.29 = internal global ptr @rotary_encoder_probe._entry.27, section ".printk_index", align 4
@rotary_encoder_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.9, i32 301, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to request IRQ %d (gpio#%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr.32 = internal global ptr @rotary_encoder_probe._entry.30, section ".printk_index", align 4
@rotary_encoder_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.9, i32 308, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@rotary_encoder_probe._entry_ptr.35 = internal global ptr @rotary_encoder_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"rotary_encoder_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 357, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 360, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"rotary_encoder_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 350, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"rotary_encoder_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 346, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 199, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 201, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 203, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 214, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 218, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 220, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 222, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 223, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 226, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 227, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 230, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 234, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 236, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 242, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 246, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 279, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 300, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 308, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [39 x i8] c"../drivers/input/misc/rotary_encoder.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 313, i32 38 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_rotary_encoder_driver_exit, ptr @__initcall__kmod_rotary_encoder__227_365_rotary_encoder_driver_init6, ptr @rotary_encoder_driver_exit, ptr @rotary_encoder_probe._entry, ptr @rotary_encoder_probe._entry.13, ptr @rotary_encoder_probe._entry.15, ptr @rotary_encoder_probe._entry.21, ptr @rotary_encoder_probe._entry.24, ptr @rotary_encoder_probe._entry.27, ptr @rotary_encoder_probe._entry.30, ptr @rotary_encoder_probe._entry.33, ptr @rotary_encoder_probe._entry_ptr, ptr @rotary_encoder_probe._entry_ptr.14, ptr @rotary_encoder_probe._entry_ptr.18, ptr @rotary_encoder_probe._entry_ptr.23, ptr @rotary_encoder_probe._entry_ptr.26, ptr @rotary_encoder_probe._entry_ptr.29, ptr @rotary_encoder_probe._entry_ptr.32, ptr @rotary_encoder_probe._entry_ptr.35, ptr @rotary_encoder_driver, ptr @.str, ptr @rotary_encoder_of_match, ptr @rotary_encoder_pm_ops, ptr @rotary_encoder_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotary_encoder_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rotary_encoder_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rotary_encoder_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rotary_encoder_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rotary_encoder_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotary_encoder_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %steps_per_period = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %steps_per_period) #6
  %0 = ptrtoint ptr %steps_per_period to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %steps_per_period, align 4, !annotation !87
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %access_mutex = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %access_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @rotary_encoder_probe.__key) #6
  %steps = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 2
  %call.i193 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %steps, i32 noundef 1) #6
  %call.i194 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %steps_per_period, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool4.not = icmp eq i32 %call.i194, 0
  br i1 %tobool4.not, label %do.body.if.end7_crit_edge, label %if.then5

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i195 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.4) #6
  %cond = select i1 %call.i195, i32 2, i32 1
  %1 = ptrtoint ptr %steps_per_period to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %steps_per_period, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body.if.end7_crit_edge
  %call.i196 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.5) #6
  %rollover = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 5
  %frombool = zext i1 %call.i196 to i8
  %2 = ptrtoint ptr %rollover to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %rollover, align 1
  %call9 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  br i1 %call9, label %lor.lhs.false, label %if.end7.if.end28_crit_edge

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

lor.lhs.false:                                    ; preds = %if.end7
  %call10 = call i32 @device_property_match_string(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end28_crit_edge, label %if.else

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false
  %call16 = call i32 @device_property_match_string(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else.if.end28_crit_edge, label %do.end26

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %.str.12.sink = phi ptr [ @.str.7, %if.end7.if.end28_crit_edge ], [ @.str.7, %lor.lhs.false.if.end28_crit_edge ], [ @.str.12, %if.else.if.end28_crit_edge ]
  %.sink = phi i32 [ 0, %if.end7.if.end28_crit_edge ], [ 0, %lor.lhs.false.if.end28_crit_edge ], [ 1, %if.else.if.end28_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull %.str.12.sink) #9
  %encoding22 = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %encoding22 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %encoding22, align 4
  %axis = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 3
  %call.i197 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %axis, i32 noundef 1) #6
  %call.i198 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.20) #6
  %relative_axis = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 4
  %frombool31 = zext i1 %call.i198 to i8
  %4 = ptrtoint ptr %relative_axis to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool31, ptr %relative_axis, align 4
  %call32 = call ptr @devm_gpiod_get_array(ptr noundef %dev1, ptr noundef null, i32 noundef 1) #6
  %gpios = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call32, ptr %gpios, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end28
  %cmp.not = icmp eq ptr %call32, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then35.cleanup_crit_edge, label %do.end41

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %6) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %call32, i32 0, i32 1
  %7 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ndescs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp45 = icmp ult i32 %8, 2
  br i1 %cmp45, label %do.end49, label %if.end50

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  %call51 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %if.end54

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call51, ptr %call.i, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %12 = ptrtoint ptr %call51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call51, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call51, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 25, ptr %id, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call51, i32 0, i32 40, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %parent, align 8
  %15 = ptrtoint ptr %relative_axis to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %relative_axis, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool59.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %axis to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %axis, align 4
  br i1 %tobool59.not, label %if.else62, label %if.then60

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_set_capability(ptr noundef nonnull %call51, i32 noundef 2, i32 noundef %18) #6
  br label %if.end65

if.else62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %steps, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call51, i32 noundef %18, i32 noundef 0, i32 noundef %20, i32 noundef 0, i32 noundef 1) #6
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then60
  %21 = ptrtoint ptr %steps_per_period to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %steps_per_period, align 4
  %23 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpios, align 4
  %ndescs67 = getelementptr inbounds %struct.gpio_descs, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ndescs67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ndescs67, align 4
  %sub = add i32 %26, -2
  %shr = lshr i32 %22, %sub
  %27 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %do.end75 [
    i32 4, label %if.end65.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb69
    i32 1, label %if.end65.sw.epilog_crit_edge
  ]

if.end65.sw.epilog_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end65.sw.epilog.sink.split_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb69:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.end75:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %22) #9
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb69, %if.end65.sw.epilog.sink.split_crit_edge
  %handler.0.ph = phi ptr [ @rotary_encoder_half_period_irq, %sw.bb69 ], [ @rotary_encoder_quarter_period_irq, %if.end65.sw.epilog.sink.split_crit_edge ]
  %call70 = call fastcc i32 @rotary_encoder_get_state(ptr noundef nonnull %call.i)
  %last_stable71 = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 12
  %28 = ptrtoint ptr %last_stable71 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call70, ptr %last_stable71, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end65.sw.epilog_crit_edge
  %handler.0 = phi ptr [ @rotary_encoder_irq, %if.end65.sw.epilog_crit_edge ], [ %handler.0.ph, %sw.epilog.sink.split ]
  %29 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpios, align 4
  %ndescs77 = getelementptr inbounds %struct.gpio_descs, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ndescs77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndescs77, align 4
  %33 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #6
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !89

devm_kcalloc.exit.thread:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %irq201 = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %irq201 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %irq201, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %sw.epilog
  %36 = extractvalue { i32, i1 } %33, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %36, i32 noundef 3520) #6
  %irq = getelementptr inbounds %struct.rotary_encoder, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i, ptr %irq, align 4
  %tobool80.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool80.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %38 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gpios, align 4
  %ndescs84204 = getelementptr inbounds %struct.gpio_descs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ndescs84204 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ndescs84204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp85205.not = icmp eq i32 %41, 0
  br i1 %cmp85205.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %42 = phi ptr [ %56, %for.inc.for.body_crit_edge ], [ %39, %for.cond.preheader.for.body_crit_edge ]
  %i.0206 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpio_descs, ptr %42, i32 0, i32 2, i32 %i.0206
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %call87 = call i32 @gpiod_to_irq(ptr noundef %44) #6
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %irq, align 4
  %arrayidx89 = getelementptr i32, ptr %46, i32 %i.0206
  %47 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call87, ptr %arrayidx89, align 4
  %48 = load ptr, ptr %irq, align 4
  %arrayidx91 = getelementptr i32, ptr %48, i32 %i.0206
  %49 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx91, align 4
  %call92 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %50, ptr noundef null, ptr noundef nonnull %handler.0, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %for.inc, label %do.end97

do.end97:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %irq, align 4
  %arrayidx99 = getelementptr i32, ptr %52, i32 %i.0206
  %53 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx99, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %54, i32 noundef %i.0206) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0206, 1
  %55 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gpios, align 4
  %ndescs84 = getelementptr inbounds %struct.gpio_descs, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ndescs84 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ndescs84, align 4
  %cmp85 = icmp ult i32 %inc, %58
  br i1 %cmp85, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call101 = call i32 @input_register_device(ptr noundef nonnull %call51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end107, label %do.end106

do.end106:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end107:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i199 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.36) #6
  %call109 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext %call.i199) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %do.end106, %do.end97, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end75, %if.end50.cleanup_crit_edge, %do.end49, %do.end41, %if.then35.cleanup_crit_edge, %do.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end26 ], [ -22, %do.end49 ], [ -22, %do.end75 ], [ %call92, %do.end97 ], [ %call101, %do.end106 ], [ 0, %if.end107 ], [ -12, %entry.cleanup_crit_edge ], [ %6, %do.end41 ], [ -517, %if.then35.cleanup_crit_edge ], [ -12, %if.end50.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %steps_per_period) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotary_encoder_quarter_period_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %access_mutex = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_mutex, i32 noundef 0) #6
  %gpios.i = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpios.i, align 4
  %ndescs12.i = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndescs12.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndescs12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.rotary_encoder_get_state.exit_crit_edge, label %for.body.lr.ph.i

entry.rotary_encoder_get_state.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rotary_encoder_get_state.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %encoding.i = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi ptr [ %1, %for.body.lr.ph.i ], [ %10, %for.body.i.for.body.i_crit_edge ]
  %ret.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %4, i32 0, i32 2, i32 %i.014.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %6) #6
  %7 = ptrtoint ptr %encoding.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp ne i32 %8, 0
  %and.i = and i32 %ret.015.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  %val.0.i = select i1 %or.cond.i, i32 %call.i, i32 %lnot.ext.i
  %shl.i = shl i32 %ret.015.i, 1
  %or.i = or i32 %val.0.i, %shl.i
  %inc.i = add nuw i32 %i.014.i, 1
  %9 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndescs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i = and i32 %or.i, 3
  br label %rotary_encoder_get_state.exit

rotary_encoder_get_state.exit:                    ; preds = %for.end.loopexit.i, %entry.rotary_encoder_get_state.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %entry.rotary_encoder_get_state.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %last_stable = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 12
  %13 = ptrtoint ptr %last_stable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_stable, align 4
  %add = add i32 %14, 1
  %rem = and i32 %add, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %ret.0.lcssa.i)
  %cmp = icmp eq i32 %rem, %ret.0.lcssa.i
  br i1 %cmp, label %rotary_encoder_get_state.exit.if.end8_crit_edge, label %if.else

rotary_encoder_get_state.exit.if.end8_crit_edge:  ; preds = %rotary_encoder_get_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %rotary_encoder_get_state.exit
  %add2 = add nuw nsw i32 %ret.0.lcssa.i, 1
  %rem3 = and i32 %add2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %rem3)
  %cmp4 = icmp eq i32 %14, %rem3
  br i1 %cmp4, label %if.else.if.end8_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %rotary_encoder_get_state.exit.if.end8_crit_edge
  %.sink = phi i8 [ 1, %rotary_encoder_get_state.exit.if.end8_crit_edge ], [ -1, %if.else.if.end8_crit_edge ]
  %dir6 = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 11
  %15 = ptrtoint ptr %dir6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %dir6, align 1
  tail call fastcc void @rotary_encoder_report_event(ptr noundef %dev_id)
  br label %out

out:                                              ; preds = %if.end8, %if.else.out_crit_edge
  %16 = ptrtoint ptr %last_stable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ret.0.lcssa.i, ptr %last_stable, align 4
  tail call void @mutex_unlock(ptr noundef %access_mutex) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rotary_encoder_get_state(ptr nocapture noundef readonly %encoder) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpios = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpios, align 4
  %ndescs12 = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndescs12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndescs12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %encoding = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %10, %for.body.for.body_crit_edge ]
  %ret.015 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpio_descs, ptr %4, i32 0, i32 2, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %6) #6
  %7 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp ne i32 %8, 0
  %and = and i32 %ret.015, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool3.not to i32
  %val.0 = select i1 %or.cond, i32 %call, i32 %lnot.ext
  %shl = shl i32 %ret.015, 1
  %or = or i32 %val.0, %shl
  %inc = add nuw i32 %i.014, 1
  %9 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios, align 4
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndescs, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = and i32 %or, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotary_encoder_half_period_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %access_mutex = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_mutex, i32 noundef 0) #6
  %gpios.i = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpios.i, align 4
  %ndescs12.i = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndescs12.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndescs12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.if.else_crit_edge, label %for.body.lr.ph.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %entry
  %encoding.i = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi ptr [ %1, %for.body.lr.ph.i ], [ %10, %for.body.i.for.body.i_crit_edge ]
  %ret.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %4, i32 0, i32 2, i32 %i.014.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %6) #6
  %7 = ptrtoint ptr %encoding.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp ne i32 %8, 0
  %and.i = and i32 %ret.015.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  %val.0.i = select i1 %or.cond.i, i32 %call.i, i32 %lnot.ext.i
  %shl.i = shl i32 %ret.015.i, 1
  %or.i = or i32 %val.0.i, %shl.i
  %inc.i = add nuw i32 %i.014.i, 1
  %9 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndescs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %rotary_encoder_get_state.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rotary_encoder_get_state.exit:                    ; preds = %for.body.i
  %phi.bo.i = and i32 %or.i, 3
  %and = and i32 %val.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rotary_encoder_get_state.exit.if.else_crit_edge, label %if.then

rotary_encoder_get_state.exit.if.else_crit_edge:  ; preds = %rotary_encoder_get_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %rotary_encoder_get_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %last_stable = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 12
  %13 = ptrtoint ptr %last_stable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_stable, align 4
  %sub = sub i32 %14, %or.i
  %15 = trunc i32 %sub to i8
  %16 = add i8 %15, 1
  %17 = and i8 %16, 3
  %conv = add nsw i8 %17, -1
  %dir = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 11
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %dir, align 1
  br label %if.end6

if.else:                                          ; preds = %rotary_encoder_get_state.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %ret.0.lcssa.i21 = phi i32 [ %phi.bo.i, %rotary_encoder_get_state.exit.if.else_crit_edge ], [ 0, %entry.if.else_crit_edge ]
  %last_stable2 = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 12
  %19 = ptrtoint ptr %last_stable2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_stable2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.lcssa.i21, i32 %20)
  %cmp.not = icmp eq i32 %ret.0.lcssa.i21, %20
  br i1 %cmp.not, label %if.else.if.end6_crit_edge, label %if.then4

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rotary_encoder_report_event(ptr noundef %dev_id)
  %21 = ptrtoint ptr %last_stable2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %ret.0.lcssa.i21, ptr %last_stable2, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else.if.end6_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %access_mutex) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotary_encoder_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %access_mutex = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_mutex, i32 noundef 0) #6
  %gpios.i = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpios.i, align 4
  %ndescs12.i = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndescs12.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndescs12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.sw.bb_crit_edge, label %for.body.lr.ph.i

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body.lr.ph.i:                                 ; preds = %entry
  %encoding.i = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi ptr [ %1, %for.body.lr.ph.i ], [ %10, %for.body.i.for.body.i_crit_edge ]
  %ret.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %4, i32 0, i32 2, i32 %i.014.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %6) #6
  %7 = ptrtoint ptr %encoding.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp ne i32 %8, 0
  %and.i = and i32 %ret.015.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  %val.0.i = select i1 %or.cond.i, i32 %call.i, i32 %lnot.ext.i
  %shl.i = shl i32 %ret.015.i, 1
  %or.i = or i32 %val.0.i, %shl.i
  %inc.i = add nuw i32 %i.014.i, 1
  %9 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndescs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %rotary_encoder_get_state.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rotary_encoder_get_state.exit:                    ; preds = %for.body.i
  %phi.bo.i = and i32 %or.i, 3
  %13 = zext i32 %phi.bo.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %phi.bo.i, label %rotary_encoder_get_state.exit.unreachabledefault [
    i32 0, label %rotary_encoder_get_state.exit.sw.bb_crit_edge
    i32 1, label %rotary_encoder_get_state.exit.sw.bb2_crit_edge
    i32 3, label %rotary_encoder_get_state.exit.sw.bb2_crit_edge20
    i32 2, label %sw.bb7
  ]

rotary_encoder_get_state.exit.sw.bb2_crit_edge20: ; preds = %rotary_encoder_get_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

rotary_encoder_get_state.exit.sw.bb2_crit_edge:   ; preds = %rotary_encoder_get_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

rotary_encoder_get_state.exit.sw.bb_crit_edge:    ; preds = %rotary_encoder_get_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %rotary_encoder_get_state.exit.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  %armed = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 10
  %14 = ptrtoint ptr %armed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %armed, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rotary_encoder_report_event(ptr noundef %dev_id)
  %16 = ptrtoint ptr %armed to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %armed, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %rotary_encoder_get_state.exit.sw.bb2_crit_edge, %rotary_encoder_get_state.exit.sw.bb2_crit_edge20
  %armed3 = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 10
  %17 = ptrtoint ptr %armed3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %armed3, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then5

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %19 = trunc i32 %phi.bo.i to i8
  %conv = sub nsw i8 2, %19
  %dir = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 11
  %20 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %dir, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %rotary_encoder_get_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %armed8 = getelementptr inbounds %struct.rotary_encoder, ptr %dev_id, i32 0, i32 10
  %21 = ptrtoint ptr %armed8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %armed8, align 4
  br label %sw.epilog

rotary_encoder_get_state.exit.unreachabledefault: ; preds = %rotary_encoder_get_state.exit
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %if.then5, %sw.bb2.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %access_mutex) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rotary_encoder_report_event(ptr nocapture noundef %encoder) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %relative_axis = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %relative_axis to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %relative_axis, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %axis = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %axis to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %axis, align 4
  %dir = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 11
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dir, align 1
  %conv = sext i8 %7 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef %5, i32 noundef %conv) #6
  br label %if.end30

if.else:                                          ; preds = %entry
  %pos1 = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 7
  %8 = ptrtoint ptr %pos1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos1, align 4
  %dir2 = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 11
  %10 = ptrtoint ptr %dir2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dir2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp slt i8 %11, 0
  %rollover = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 5
  %12 = ptrtoint ptr %rollover to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rollover, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %cmp, label %if.then5, label %if.else11

if.then5:                                         ; preds = %if.else
  br i1 %tobool6.not, label %if.then5.if.end_crit_edge, label %if.then7

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %steps = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 2
  %14 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %steps, align 4
  %add = add i32 %15, %9
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5.if.end_crit_edge
  %pos.0 = phi i32 [ %add, %if.then7 ], [ %9, %if.then5.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0)
  %tobool8.not = icmp eq i32 %pos.0, 0
  %dec = add i32 %pos.0, -1
  %spec.select = select i1 %tobool8.not, i32 0, i32 %dec
  br label %if.end20

if.else11:                                        ; preds = %if.else
  br i1 %tobool6.not, label %lor.lhs.false, label %if.else11.if.then18_crit_edge

if.else11.if.then18_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.else11
  %steps15 = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 2
  %16 = ptrtoint ptr %steps15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %steps15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %17)
  %cmp16 = icmp ult i32 %9, %17
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.else11.if.then18_crit_edge
  %inc = add i32 %9, 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false.if.end20_crit_edge, %if.end
  %pos.1 = phi i32 [ %inc, %if.then18 ], [ %9, %lor.lhs.false.if.end20_crit_edge ], [ %spec.select, %if.end ]
  %rollover21 = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 5
  %18 = ptrtoint ptr %rollover21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rollover21, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %steps24 = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 2
  %20 = ptrtoint ptr %steps24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %steps24, align 4
  %rem = urem i32 %pos.1, %21
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %pos.2 = phi i32 [ %rem, %if.then23 ], [ %pos.1, %if.end20.if.end25_crit_edge ]
  %22 = ptrtoint ptr %pos1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %pos.2, ptr %pos1, align 4
  %23 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encoder, align 4
  %axis28 = getelementptr inbounds %struct.rotary_encoder, ptr %encoder, i32 0, i32 3
  %25 = ptrtoint ptr %axis28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %axis28, align 4
  tail call void @input_event(ptr noundef %24, i32 noundef 3, i32 noundef %26, i32 noundef %pos.2) #6
  br label %if.end30

if.end30:                                         ; preds = %if.end25, %if.then
  %27 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %encoder, align 4
  tail call void @input_event(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotary_encoder_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %for.cond.preheader

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader:                               ; preds = %device_may_wakeup.exit
  %gpios = getelementptr inbounds %struct.rotary_encoder, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios, align 4
  %ndescs7 = getelementptr inbounds %struct.gpio_descs, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ndescs7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ndescs7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not = icmp eq i32 %8, 0
  br i1 %cmp8.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %irq = getelementptr inbounds %struct.rotary_encoder, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %i.09
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 1) #6
  %inc = add nuw i32 %i.09, 1
  %13 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpios, align 4
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndescs, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotary_encoder_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %for.cond.preheader

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader:                               ; preds = %device_may_wakeup.exit
  %gpios = getelementptr inbounds %struct.rotary_encoder, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios, align 4
  %ndescs7 = getelementptr inbounds %struct.gpio_descs, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ndescs7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ndescs7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not = icmp eq i32 %8, 0
  br i1 %cmp8.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %irq = getelementptr inbounds %struct.rotary_encoder, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %i.09
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 0) #6
  %inc = add nuw i32 %i.09, 1
  %13 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpios, align 4
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndescs, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !42, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_rotary_encoder__227_365_rotary_encoder_driver_init6, !1, !"__initcall__kmod_rotary_encoder__227_365_rotary_encoder_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/rotary_encoder.c", i32 365, i32 1}
!2 = !{ptr @__exitcall_rotary_encoder_driver_exit, !1, !"__exitcall_rotary_encoder_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias228, !4, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/rotary_encoder.c", i32 367, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/rotary_encoder.c", i32 368, i32 1}
!7 = !{ptr @__UNIQUE_ID_author230, !8, !"__UNIQUE_ID_author230", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/rotary_encoder.c", i32 369, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/input/misc/rotary_encoder.c", i32 370, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/rotary_encoder.c", i32 360, i32 11}
!14 = !{ptr @rotary_encoder_driver, !15, !"rotary_encoder_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/rotary_encoder.c", i32 357, i32 31}
!16 = !{ptr @rotary_encoder_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/rotary_encoder.c", i32 199, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/misc/rotary_encoder.c", i32 201, i32 32}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/rotary_encoder.c", i32 203, i32 38}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/misc/rotary_encoder.c", i32 214, i32 6}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/rotary_encoder.c", i32 218, i32 34}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/rotary_encoder.c", i32 220, i32 36}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/misc/rotary_encoder.c", i32 222, i32 8}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/rotary_encoder.c", i32 223, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rotary_encoder_probe._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @rotary_encoder_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/rotary_encoder.c", i32 226, i32 8}
!40 = !{ptr @rotary_encoder_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/rotary_encoder.c", i32 227, i32 3}
!42 = !{ptr @rotary_encoder_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/rotary_encoder.c", i32 230, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rotary_encoder_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rotary_encoder_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/rotary_encoder.c", i32 234, i32 32}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/rotary_encoder.c", i32 236, i32 34}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/rotary_encoder.c", i32 242, i32 4}
!54 = !{ptr @rotary_encoder_probe._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rotary_encoder_probe._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/rotary_encoder.c", i32 246, i32 3}
!58 = !{ptr @rotary_encoder_probe._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rotary_encoder_probe._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/rotary_encoder.c", i32 279, i32 3}
!62 = !{ptr @rotary_encoder_probe._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rotary_encoder_probe._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/rotary_encoder.c", i32 300, i32 4}
!66 = !{ptr @rotary_encoder_probe._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rotary_encoder_probe._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/rotary_encoder.c", i32 308, i32 3}
!70 = !{ptr @rotary_encoder_probe._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rotary_encoder_probe._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/misc/rotary_encoder.c", i32 313, i32 38}
!74 = !{ptr @rotary_encoder_of_match, !75, !"rotary_encoder_of_match", i1 false, i1 false}
!75 = !{!"../drivers/input/misc/rotary_encoder.c", i32 350, i32 34}
!76 = !{ptr @rotary_encoder_pm_ops, !77, !"rotary_encoder_pm_ops", i1 false, i1 false}
!77 = !{!"../drivers/input/misc/rotary_encoder.c", i32 346, i32 8}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{i8 0, i8 2}
!89 = !{!"branch_weights", i32 1, i32 2000}
