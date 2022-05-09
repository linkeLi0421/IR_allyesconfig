; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/iqs62x-keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/iqs62x-keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iqs62x_event_desc = type { i32, i8, i8 }
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
%struct.iqs62x_keys_private = type { ptr, ptr, %struct.notifier_block, [2 x %struct.iqs62x_switch_desc], [16 x i32], i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.iqs62x_switch_desc = type { i32, i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.iqs62x_core = type { ptr, ptr, ptr, %struct.blocking_notifier_head, %struct.list_head, %struct.completion, %struct.completion, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iqs62x_dev_desc = type { ptr, ptr, i32, i8, i8, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.iqs62x_event_data = type { i16, i8, i8, i8 }

@__initcall__kmod_iqs62x_keys__223_330_iqs62x_keys_platform_driver_init6 = internal global ptr @iqs62x_keys_platform_driver_init, section ".initcall6.init", align 4
@iqs62x_keys_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iqs62x_keys_probe, ptr @iqs62x_keys_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iqs62x_keys_platform_driver_exit = internal global ptr @iqs62x_keys_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [51 x i8] c"iqs62x_keys.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [73 x i8] c"iqs62x_keys.description=Azoteq IQS620A/621/622/624/625 Keys and Switches\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [52 x i8] c"iqs62x_keys.file=drivers/input/keyboard/iqs62x-keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [24 x i8] c"iqs62x_keys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [39 x i8] c"iqs62x_keys.alias=platform:iqs62x-keys\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iqs62x-keys\00", [20 x i8] zeroinitializer }, align 32
@iqs62x_keys_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs62x_keys_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/keyboard/iqs62x-keys.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iqs62x_keys_probe._entry_ptr = internal global ptr @iqs62x_keys_probe._entry, section ".printk_index", align 4
@iqs62x_keys_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@iqs62x_keys_probe._entry_ptr.8 = internal global ptr @iqs62x_keys_probe._entry.6, section ".printk_index", align 4
@iqs62x_keys_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register notifier: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs62x_keys_probe._entry_ptr.11 = internal global ptr @iqs62x_keys_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@iqs62x_keys_parse_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 54, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Too many keycodes present\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iqs62x_keys_parse_prop\00", [41 x i8] zeroinitializer }, align 32
@iqs62x_keys_parse_prop._entry_ptr = internal global ptr @iqs62x_keys_parse_prop._entry, section ".printk_index", align 4
@iqs62x_keys_parse_prop._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 57, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to count keycodes: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iqs62x_keys_parse_prop._entry_ptr.17 = internal global ptr @iqs62x_keys_parse_prop._entry.15, section ".printk_index", align 4
@iqs62x_keys_parse_prop._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 66, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read keycodes: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@iqs62x_keys_parse_prop._entry_ptr.20 = internal global ptr @iqs62x_keys_parse_prop._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@iqs62x_keys_parse_prop._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read switch code: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@iqs62x_keys_parse_prop._entry_ptr.24 = internal global ptr @iqs62x_keys_parse_prop._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azoteq,use-prox\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hall-switch-north\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hall-switch-south\00", [46 x i8] zeroinitializer }, align 32
@iqs62x_events = external dso_local local_unnamed_addr constant [22 x %struct.iqs62x_event_desc], align 4
@iqs62x_keys_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-initialize device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iqs62x_keys_notifier\00", [43 x i8] zeroinitializer }, align 32
@iqs62x_keys_notifier._entry_ptr = internal global ptr @iqs62x_keys_notifier._entry, section ".printk_index", align 4
@iqs62x_keys_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to unregister notifier: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iqs62x_keys_remove\00", [45 x i8] zeroinitializer }, align 32
@iqs62x_keys_remove._entry_ptr = internal global ptr @iqs62x_keys_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 65, i64 66, i64 67, i64 70]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"iqs62x_keys_platform_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 323, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 325, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 291, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 297, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 305, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 52, i32 46 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 54, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 57, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 66, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 76, i32 41 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 78, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 85, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 25, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 26, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 197, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [40 x i8] c"../drivers/input/keyboard/iqs62x-keys.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 318, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_iqs62x_keys_platform_driver_exit, ptr @__initcall__kmod_iqs62x_keys__223_330_iqs62x_keys_platform_driver_init6, ptr @iqs62x_keys_notifier._entry, ptr @iqs62x_keys_notifier._entry_ptr, ptr @iqs62x_keys_parse_prop._entry, ptr @iqs62x_keys_parse_prop._entry.15, ptr @iqs62x_keys_parse_prop._entry.18, ptr @iqs62x_keys_parse_prop._entry.22, ptr @iqs62x_keys_parse_prop._entry_ptr, ptr @iqs62x_keys_parse_prop._entry_ptr.17, ptr @iqs62x_keys_parse_prop._entry_ptr.20, ptr @iqs62x_keys_parse_prop._entry_ptr.24, ptr @iqs62x_keys_platform_driver_exit, ptr @iqs62x_keys_probe._entry, ptr @iqs62x_keys_probe._entry.6, ptr @iqs62x_keys_probe._entry.9, ptr @iqs62x_keys_probe._entry_ptr, ptr @iqs62x_keys_probe._entry_ptr.11, ptr @iqs62x_keys_probe._entry_ptr.8, ptr @iqs62x_keys_remove._entry, ptr @iqs62x_keys_remove._entry_ptr, ptr @iqs62x_keys_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_parse_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_parse_prop._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_parse_prop._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_parse_prop._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_keys_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_keys_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iqs62x_keys_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iqs62x_keys_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @iqs62x_keys_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_keys_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !80
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, 16
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %iqs62x_keys_parse_prop.exit.thread

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i.i) #8
  br label %iqs62x_keys_parse_prop.exit.thread

if.end8.i:                                        ; preds = %if.else.i
  %keycodemax.i = getelementptr inbounds %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %keycodemax.i, align 4
  %keycode.i = getelementptr inbounds %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 4
  %call11.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %keycode.i, i32 noundef %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %do.end15.i

for.body.preheader.i:                             ; preds = %if.end8.i
  %call20.i = tail call ptr @device_get_named_child_node(ptr noundef %dev, ptr noundef nonnull @.str.26) #5
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end23.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call11.i) #8
  br label %iqs62x_keys_parse_prop.exit.thread

if.end23.i:                                       ; preds = %for.body.preheader.i
  %call.i82.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call20.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool25.not.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool25.not.i, label %if.end31.i, label %if.end23.i.do.end29.i_crit_edge

if.end23.i.do.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.1.i.do.end29.i_crit_edge, %if.end23.i.do.end29.i_crit_edge
  %call.i82.lcssa.i = phi i32 [ %call.i82.i, %if.end23.i.do.end29.i_crit_edge ], [ %call.i82.1.i, %if.end23.1.i.do.end29.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call.i82.lcssa.i) #8
  br label %iqs62x_keys_parse_prop.exit.thread

if.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %arrayidx32.i = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 0
  %code.i = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %code.i, align 4
  %enabled.i = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled.i, align 4
  %call35.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call20.i, ptr noundef nonnull @.str.25) #5
  %..i = select i1 %call35.i, i32 17, i32 16
  %11 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %..i, ptr %arrayidx32.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end31.i, %for.body.preheader.i.for.inc.i_crit_edge
  %call20.1.i = call ptr @device_get_named_child_node(ptr noundef %dev, ptr noundef nonnull @.str.27) #5
  %tobool21.not.1.i = icmp eq ptr %call20.1.i, null
  br i1 %tobool21.not.1.i, label %for.inc.i.if.end6_crit_edge, label %if.end23.1.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end23.1.i:                                     ; preds = %for.inc.i
  %call.i82.1.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call20.1.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.1.i)
  %tobool25.not.1.i = icmp eq i32 %call.i82.1.i, 0
  br i1 %tobool25.not.1.i, label %if.end31.1.i, label %if.end23.1.i.do.end29.i_crit_edge

if.end23.1.i.do.end29.i_crit_edge:                ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

if.end31.1.i:                                     ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %arrayidx32.1.i = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 1
  %code.1.i = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %14 = ptrtoint ptr %code.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %code.1.i, align 4
  %enabled.1.i = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 1, i32 2
  %15 = ptrtoint ptr %enabled.1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %enabled.1.i, align 4
  %call35.1.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call20.1.i, ptr noundef nonnull @.str.25) #5
  %. = select i1 %call35.1.i, i32 19, i32 18
  %16 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %., ptr %arrayidx32.1.i, align 4
  br label %if.end6

iqs62x_keys_parse_prop.exit.thread:               ; preds = %do.end29.i, %do.end15.i, %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i82.lcssa.i, %do.end29.i ], [ %call11.i, %do.end15.i ], [ %call.i.i, %do.end6.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end31.1.i, %for.inc.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %call8 = call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %keycodemax.i, align 4
  %keycodemax12 = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 15
  %19 = ptrtoint ptr %keycodemax12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %keycodemax12, align 4
  %keycode13 = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 17
  %20 = ptrtoint ptr %keycode13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %keycode.i, ptr %keycode13, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 16
  %21 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %keycodesize, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call8, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 3
  %27 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 24, ptr %id, align 4
  %28 = load i32, ptr %keycodemax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp114.not = icmp eq i32 %28, 0
  br i1 %cmp114.not, label %if.end11.for.cond21.preheader_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.cond21.preheader_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.inc.for.cond21.preheader_crit_edge, %if.end11.for.cond21.preheader_crit_edge
  %enabled = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enabled, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not = icmp eq i8 %30, 0
  br i1 %tobool25.not, label %for.cond21.preheader.for.inc30_crit_edge, label %if.then26

for.cond21.preheader.for.inc30_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 4, i32 %i.0115
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp16.not = icmp eq i32 %32, 0
  br i1 %cmp16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @input_set_capability(ptr noundef nonnull %call8, i32 noundef 1, i32 noundef %32) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0115, 1
  %33 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %keycodemax.i, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond21.preheader_crit_edge

for.inc.for.cond21.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond21.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.then26:                                        ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %code = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %code, align 4
  call void @input_set_capability(ptr noundef nonnull %call8, i32 noundef 5, i32 noundef %36) #5
  br label %for.inc30

for.inc30:                                        ; preds = %if.then26, %for.cond21.preheader.for.inc30_crit_edge
  %enabled.1 = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 1, i32 2
  %37 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %enabled.1, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool25.not.1 = icmp eq i8 %38, 0
  br i1 %tobool25.not.1, label %for.inc30.for.inc30.1_crit_edge, label %if.then26.1

for.inc30.for.inc30.1_crit_edge:                  ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc30.1

if.then26.1:                                      ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #7
  %code.1 = getelementptr %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %39 = ptrtoint ptr %code.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %code.1, align 4
  call void @input_set_capability(ptr noundef nonnull %call8, i32 noundef 5, i32 noundef %40) #5
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %if.then26.1, %for.inc30.for.inc30.1_crit_edge
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %3, ptr %call.i, align 4
  %input34 = getelementptr inbounds %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %input34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8, ptr %input34, align 4
  %call35 = call fastcc i32 @iqs62x_keys_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %do.end

do.end:                                           ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call35) #8
  br label %cleanup

if.end39:                                         ; preds = %for.inc30.1
  %43 = ptrtoint ptr %input34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input34, align 4
  %call41 = call i32 @input_register_device(ptr noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call41) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %notifier = getelementptr inbounds %struct.iqs62x_keys_private, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @iqs62x_keys_notifier, ptr %notifier, align 4
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %47, i32 0, i32 3
  %call51 = call i32 @blocking_notifier_chain_register(ptr noundef %nh, ptr noundef %notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end48.cleanup_crit_edge, label %do.end56

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call51) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end48.cleanup_crit_edge, %do.end46, %do.end, %if.end6.cleanup_crit_edge, %iqs62x_keys_parse_prop.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %do.end ], [ %call41, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call51, %do.end56 ], [ 0, %if.end48.cleanup_crit_edge ], [ %retval.0.i.ph, %iqs62x_keys_parse_prop.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_keys_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 3
  %notifier = getelementptr inbounds %struct.iqs62x_keys_private, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %nh, ptr noundef %notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs62x_keys_init(ptr nocapture noundef %iqs62x_keys) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqs62x_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqs62x_keys, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !80
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %prod_num = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %prod_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prod_num, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %entry.cleanup_crit_edge [
    i8 65, label %entry.sw.bb_crit_edge
    i8 70, label %entry.sw.bb_crit_edge138
    i8 66, label %entry.sw.bb_crit_edge139
    i8 67, label %sw.bb61
  ]

entry.sw.bb_crit_edge139:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge138:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge138, %entry.sw.bb_crit_edge139
  %keycodemax = getelementptr inbounds %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 5
  %8 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %keycodemax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp132.not = icmp eq i32 %9, 0
  br i1 %cmp132.not, label %sw.bb.for.end_crit_edge, label %for.body.lr.ph

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb
  %hyst_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %4, i32 0, i32 10
  %sar_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %4, i32 0, i32 8
  %prox_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %4, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %event_mask.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %event_mask.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 4, i32 %i.0134
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx5 = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %i.0134
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %13, label %if.end.for.inc_crit_edge [
    i32 2, label %if.then8
    i32 3, label %if.then15
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prox_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %prox_mask, align 4
  %conv10 = zext i8 %16 to i32
  %or = or i32 %event_mask.0133, %conv10
  br label %for.inc

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %hyst_mask to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hyst_mask, align 1
  %19 = ptrtoint ptr %sar_mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sar_mask, align 1
  %or20131 = or i8 %20, %18
  %or20 = zext i8 %or20131 to i32
  %or21 = or i32 %event_mask.0133, %or20
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.then8, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %event_mask.1 = phi i32 [ %event_mask.0133, %for.body.for.inc_crit_edge ], [ %or, %if.then8 ], [ %or21, %if.then15 ], [ %event_mask.0133, %if.end.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb.for.end_crit_edge
  %event_mask.0.lcssa = phi i32 [ 0, %sw.bb.for.end_crit_edge ], [ %event_mask.1, %for.inc.for.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %hall_flags = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %4, i32 0, i32 16
  %23 = ptrtoint ptr %hall_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hall_flags, align 1
  %conv25 = zext i8 %24 to i32
  %call = call i32 @regmap_read(ptr noundef %22, i32 noundef %conv25, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond28.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond28.preheader:                             ; preds = %for.end
  %input = getelementptr inbounds %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 1
  %enabled = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enabled, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not = icmp eq i8 %26, 0
  br i1 %tobool33.not, label %for.cond28.preheader.for.inc57_crit_edge, label %if.end35

for.cond28.preheader.for.inc57_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc57

if.end35:                                         ; preds = %for.cond28.preheader
  %arrayidx32 = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx32, align 4
  %arrayidx39 = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp41.not = icmp eq i32 %30, 4
  br i1 %cmp41.not, label %if.end44, label %if.end35.for.inc57_crit_edge

if.end35.for.inc57_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc57

if.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %hall_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %hall_mask to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hall_mask, align 2
  %conv46 = zext i8 %34 to i32
  %or47 = or i32 %event_mask.0.lcssa, %conv46
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  %code = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code, align 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %mask = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %28, i32 1
  %41 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mask, align 4
  %conv51 = zext i8 %42 to i32
  %and = and i32 %40, %conv51
  %val53 = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %28, i32 2
  %43 = ptrtoint ptr %val53 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val53, align 1
  %conv54 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv54)
  %cmp55 = icmp eq i32 %and, %conv54
  %lnot.ext.i = zext i1 %cmp55 to i32
  call void @input_event(ptr noundef %36, i32 noundef 5, i32 noundef %38, i32 noundef %lnot.ext.i) #5
  br label %for.inc57

for.inc57:                                        ; preds = %if.end44, %if.end35.for.inc57_crit_edge, %for.cond28.preheader.for.inc57_crit_edge
  %event_mask.3 = phi i32 [ %event_mask.0.lcssa, %if.end35.for.inc57_crit_edge ], [ %or47, %if.end44 ], [ %event_mask.0.lcssa, %for.cond28.preheader.for.inc57_crit_edge ]
  %enabled.1 = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 3, i32 1, i32 2
  %45 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %enabled.1, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool33.not.1 = icmp eq i8 %46, 0
  br i1 %tobool33.not.1, label %for.inc57.for.inc57.1_crit_edge, label %if.end35.1

for.inc57.for.inc57.1_crit_edge:                  ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc57.1

if.end35.1:                                       ; preds = %for.inc57
  %arrayidx32.1 = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx32.1, align 4
  %arrayidx39.1 = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx39.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp41.not.1 = icmp eq i32 %50, 4
  br i1 %cmp41.not.1, label %if.end44.1, label %if.end35.1.for.inc57.1_crit_edge

if.end35.1.for.inc57.1_crit_edge:                 ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc57.1

if.end44.1:                                       ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %hall_mask.1 = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %hall_mask.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hall_mask.1, align 2
  %conv46.1 = zext i8 %54 to i32
  %or47.1 = or i32 %event_mask.3, %conv46.1
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  %code.1 = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 3, i32 1, i32 1
  %57 = ptrtoint ptr %code.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %code.1, align 4
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  %mask.1 = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %48, i32 1
  %61 = ptrtoint ptr %mask.1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mask.1, align 4
  %conv51.1 = zext i8 %62 to i32
  %and.1 = and i32 %60, %conv51.1
  %val53.1 = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %48, i32 2
  %63 = ptrtoint ptr %val53.1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %val53.1, align 1
  %conv54.1 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %conv54.1)
  %cmp55.1 = icmp eq i32 %and.1, %conv54.1
  %lnot.ext.i.1 = zext i1 %cmp55.1 to i32
  call void @input_event(ptr noundef %56, i32 noundef 5, i32 noundef %58, i32 noundef %lnot.ext.i.1) #5
  br label %for.inc57.1

for.inc57.1:                                      ; preds = %if.end44.1, %if.end35.1.for.inc57.1_crit_edge, %for.inc57.for.inc57.1_crit_edge
  %event_mask.3.1 = phi i32 [ %event_mask.3, %if.end35.1.for.inc57.1_crit_edge ], [ %or47.1, %if.end44.1 ], [ %event_mask.3, %for.inc57.for.inc57.1_crit_edge ]
  %65 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  %arrayidx63 = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 4, i32 14
  %67 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx63, align 4
  %arrayidx70 = getelementptr %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 4, i32 15
  %69 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx70, align 4
  %regmap76 = getelementptr inbounds %struct.iqs62x_core, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %regmap76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap76, align 4
  %interval = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %4, i32 0, i32 18
  %73 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %interval, align 1
  %conv78 = zext i8 %74 to i32
  %call79 = call i32 @regmap_read(ptr noundef %72, i32 noundef %conv78, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %sw.bb61.cleanup_crit_edge

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp71.not = icmp eq i32 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp64.not = icmp eq i32 %68, 0
  %75 = select i1 %cmp71.not, i1 %cmp64.not, i1 false
  %event_mask.5 = select i1 %75, i32 0, i32 8
  %76 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val, align 4
  %conv83 = trunc i32 %77 to i8
  %interval84 = getelementptr inbounds %struct.iqs62x_keys_private, ptr %iqs62x_keys, i32 0, i32 6
  %78 = ptrtoint ptr %interval84 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv83, ptr %interval84, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end82, %for.inc57.1
  %event_reg.0 = phi i32 [ 112, %if.end82 ], [ 215, %for.inc57.1 ]
  %event_mask.6 = phi i32 [ %event_mask.5, %if.end82 ], [ %event_mask.3.1, %for.inc57.1 ]
  %regmap85 = getelementptr inbounds %struct.iqs62x_core, ptr %1, i32 0, i32 2
  %79 = ptrtoint ptr %regmap85 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap85, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %event_reg.0, i32 noundef %event_mask.6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb61.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ %call, %for.end.cleanup_crit_edge ], [ %call79, %sw.bb61.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_keys_notifier(ptr nocapture noundef %notifier, i32 noundef %event_flags, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event_flags, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %keycodemax = getelementptr i8, ptr %notifier, i32 100
  %0 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %keycodemax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp98.not = icmp eq i32 %1, 0
  br i1 %cmp98.not, label %for.cond.preheader.for.cond14.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond14.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %interval = getelementptr inbounds %struct.iqs62x_event_data, ptr %context, i32 0, i32 3
  %interval5 = getelementptr i8, ptr %notifier, i32 104
  %input11 = getelementptr i8, ptr %notifier, i32 -4
  %keycode = getelementptr i8, ptr %notifier, i32 36
  br label %for.body

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %notifier, i32 -8
  %call = tail call fastcc i32 @iqs62x_keys_init(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %input = getelementptr i8, ptr %notifier, i32 -4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %call) #8
  br label %cleanup

for.cond14.preheader:                             ; preds = %for.inc.for.cond14.preheader_crit_edge, %for.cond.preheader.for.cond14.preheader_crit_edge
  %input21 = getelementptr i8, ptr %notifier, i32 -4
  %enabled = getelementptr i8, ptr %notifier, i32 20
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  br i1 %tobool19.not, label %for.cond14.preheader.for.inc29_crit_edge, label %if.then20

for.cond14.preheader.for.inc29_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %i.099
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp4 = icmp eq i32 %9, 7
  br i1 %cmp4, label %land.lhs.true, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interval, align 2
  %12 = ptrtoint ptr %interval5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %interval5, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp7 = icmp eq i8 %11, %13
  br i1 %cmp7, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %14 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input11, align 4
  %arrayidx12 = getelementptr [16 x i32], ptr %keycode, i32 0, i32 %i.099
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %18 = lshr i32 %event_flags, %i.099
  %19 = and i32 %18, 1
  tail call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef %17, i32 noundef %19) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw i32 %i.099, 1
  %20 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %keycodemax, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond14.preheader_crit_edge

for.inc.for.cond14.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.then20:                                        ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %switches = getelementptr i8, ptr %notifier, i32 12
  %22 = ptrtoint ptr %input21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input21, align 4
  %code = getelementptr i8, ptr %notifier, i32 16
  %24 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code, align 4
  %26 = ptrtoint ptr %switches to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %switches, align 4
  %28 = lshr i32 %event_flags, %27
  %29 = and i32 %28, 1
  tail call void @input_event(ptr noundef %23, i32 noundef 5, i32 noundef %25, i32 noundef %29) #5
  br label %for.inc29

for.inc29:                                        ; preds = %if.then20, %for.cond14.preheader.for.inc29_crit_edge
  %enabled.1 = getelementptr i8, ptr %notifier, i32 32
  %30 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enabled.1, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool19.not.1 = icmp eq i8 %31, 0
  br i1 %tobool19.not.1, label %for.inc29.for.inc29.1_crit_edge, label %if.then20.1

for.inc29.for.inc29.1_crit_edge:                  ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.1

if.then20.1:                                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18.1 = getelementptr i8, ptr %notifier, i32 24
  %32 = ptrtoint ptr %input21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input21, align 4
  %code.1 = getelementptr i8, ptr %notifier, i32 28
  %34 = ptrtoint ptr %code.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %code.1, align 4
  %36 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx18.1, align 4
  %38 = lshr i32 %event_flags, %37
  %39 = and i32 %38, 1
  tail call void @input_event(ptr noundef %33, i32 noundef 5, i32 noundef %35, i32 noundef %39) #5
  br label %for.inc29.1

for.inc29.1:                                      ; preds = %if.then20.1, %for.inc29.for.inc29.1_crit_edge
  %40 = ptrtoint ptr %input21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input21, align 4
  tail call void @input_event(ptr noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %interval33 = getelementptr inbounds %struct.iqs62x_event_data, ptr %context, i32 0, i32 3
  %42 = ptrtoint ptr %interval33 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %interval33, align 2
  %interval35 = getelementptr i8, ptr %notifier, i32 104
  %44 = ptrtoint ptr %interval35 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %interval35, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp37 = icmp eq i8 %43, %45
  br i1 %cmp37, label %for.inc29.1.cleanup_crit_edge, label %if.end40

for.inc29.1.cleanup_crit_edge:                    ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %for.inc29.1
  %and41 = and i32 %event_flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else, label %if.end40.if.end56.sink.split_crit_edge

if.end40.if.end56.sink.split_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.sink.split

if.else:                                          ; preds = %if.end40
  %and48 = and i32 %event_flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else.if.end56_crit_edge, label %if.else.if.end56.sink.split_crit_edge

if.else.if.end56.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.sink.split

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.end56.sink.split:                              ; preds = %if.else.if.end56.sink.split_crit_edge, %if.end40.if.end56.sink.split_crit_edge
  %.sink103 = phi i32 [ 92, %if.end40.if.end56.sink.split_crit_edge ], [ 96, %if.else.if.end56.sink.split_crit_edge ]
  %46 = ptrtoint ptr %input21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input21, align 4
  %arrayidx53 = getelementptr i8, ptr %notifier, i32 %.sink103
  %48 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx53, align 4
  tail call void @input_event(ptr noundef %47, i32 noundef 1, i32 noundef %49, i32 noundef 0) #5
  %50 = ptrtoint ptr %input21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input21, align 4
  tail call void @input_event(ptr noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %if.else.if.end56_crit_edge
  %52 = ptrtoint ptr %interval33 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %interval33, align 2
  %54 = ptrtoint ptr %interval35 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %interval35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %for.inc29.1.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 32770, %do.end ], [ 1, %if.end56 ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %for.inc29.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_iqs62x_keys__223_330_iqs62x_keys_platform_driver_init6, !1, !"__initcall__kmod_iqs62x_keys__223_330_iqs62x_keys_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 330, i32 1}
!2 = !{ptr @__exitcall_iqs62x_keys_platform_driver_exit, !1, !"__exitcall_iqs62x_keys_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 332, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 333, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 334, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 335, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 325, i32 11}
!14 = !{ptr @iqs62x_keys_platform_driver, !15, !"iqs62x_keys_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 323, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 291, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @iqs62x_keys_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @iqs62x_keys_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 297, i32 3}
!26 = !{ptr @iqs62x_keys_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @iqs62x_keys_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 305, i32 3}
!30 = !{ptr @iqs62x_keys_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @iqs62x_keys_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 52, i32 46}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 54, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @iqs62x_keys_parse_prop._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @iqs62x_keys_parse_prop._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 57, i32 3}
!41 = !{ptr @iqs62x_keys_parse_prop._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @iqs62x_keys_parse_prop._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 66, i32 3}
!45 = !{ptr @iqs62x_keys_parse_prop._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @iqs62x_keys_parse_prop._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 76, i32 41}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 78, i32 4}
!51 = !{ptr @iqs62x_keys_parse_prop._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @iqs62x_keys_parse_prop._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 85, i32 38}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 25, i32 23}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 26, i32 23}
!59 = distinct !{null, !60, !"iqs62x_switch_names", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 24, i32 27}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 197, i32 4}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @iqs62x_keys_notifier._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @iqs62x_keys_notifier._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/iqs62x-keys.c", i32 318, i32 3}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iqs62x_keys_remove._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @iqs62x_keys_remove._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i8 0, i8 2}
