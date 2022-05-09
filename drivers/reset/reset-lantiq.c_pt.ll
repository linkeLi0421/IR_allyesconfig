; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-lantiq.c_pt.bc'
source_filename = "../drivers/reset/reset-lantiq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
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
%struct.lantiq_rcu_reset_priv = type { %struct.reset_controller_dev, ptr, ptr, i32, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_reset_lantiq__170_206_lantiq_rcu_reset_driver_init6 = internal global ptr @lantiq_rcu_reset_driver_init, section ".initcall6.init", align 4
@lantiq_rcu_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lantiq_rcu_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lantiq_rcu_reset_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lantiq_rcu_reset_driver_exit = internal global ptr @lantiq_rcu_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [77 x i8] c"reset_lantiq.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [65 x i8] c"reset_lantiq.description=Lantiq XWAY RCU Reset Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [45 x i8] c"reset_lantiq.file=drivers/reset/reset-lantiq\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [25 x i8] c"reset_lantiq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lantiq-reset\00", [19 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,danube-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @lantiq_rcu_reset_reset, ptr @lantiq_rcu_reset_assert, ptr @lantiq_rcu_reset_deassert, ptr @lantiq_rcu_reset_status }, [16 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup RCU regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lantiq_rcu_reset_of_parse\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/reset/reset-lantiq.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_of_parse._entry_ptr = internal global ptr @lantiq_rcu_reset_of_parse._entry, section ".printk_index", align 4
@lantiq_rcu_reset_of_parse._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get RCU reset offset\0A\00", [32 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_of_parse._entry_ptr.8 = internal global ptr @lantiq_rcu_reset_of_parse._entry.6, section ".printk_index", align 4
@lantiq_rcu_reset_of_parse._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get RCU status offset\0A\00", [63 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_of_parse._entry_ptr.11 = internal global ptr @lantiq_rcu_reset_of_parse._entry.9, section ".printk_index", align 4
@lantiq_rcu_reset_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set reset bit %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lantiq_rcu_reset_update\00", [40 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_update._entry_ptr = internal global ptr @lantiq_rcu_reset_update._entry, section ".printk_index", align 4
@lantiq_rcu_reset_update._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to %s bit %u\0A\00", [43 x i8] zeroinitializer }, align 32
@lantiq_rcu_reset_update._entry_ptr.16 = internal global ptr @lantiq_rcu_reset_update._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"assert\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"deassert\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"lantiq_rcu_reset_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 199, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 202, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"lantiq_rcu_reset_dt_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 192, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"lantiq_rcu_reset_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 116, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 131, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 137, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 144, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 79, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [32 x i8] c"../drivers/reset/reset-lantiq.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 86, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_lantiq_rcu_reset_driver_exit, ptr @__initcall__kmod_reset_lantiq__170_206_lantiq_rcu_reset_driver_init6, ptr @lantiq_rcu_reset_driver_exit, ptr @lantiq_rcu_reset_of_parse._entry, ptr @lantiq_rcu_reset_of_parse._entry.6, ptr @lantiq_rcu_reset_of_parse._entry.9, ptr @lantiq_rcu_reset_of_parse._entry_ptr, ptr @lantiq_rcu_reset_of_parse._entry_ptr.11, ptr @lantiq_rcu_reset_of_parse._entry_ptr.8, ptr @lantiq_rcu_reset_update._entry, ptr @lantiq_rcu_reset_update._entry.14, ptr @lantiq_rcu_reset_update._entry_ptr, ptr @lantiq_rcu_reset_update._entry_ptr.16, ptr @lantiq_rcu_reset_driver, ptr @.str, ptr @lantiq_rcu_reset_dt_ids, ptr @lantiq_rcu_reset_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_of_parse._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_of_parse._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lantiq_rcu_reset_update._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_rcu_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lantiq_rcu_reset_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lantiq_rcu_reset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lantiq_rcu_reset_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_rcu_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %parent.i = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %call.i34 = tail call ptr @syscon_node_to_regmap(ptr noundef %5) #6
  %regmap.i = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i34, ptr %regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lantiq_rcu_reset_of_parse.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @__of_get_address(ptr noundef %8, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i, align 4
  %reset_offset.i = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %reset_offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reset_offset.i, align 4
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i37.i = tail call ptr @__of_get_address(ptr noundef %13, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  %tobool17.not.i = icmp eq ptr %call.i37.i, null
  br i1 %tobool17.not.i, label %do.end21.i, label %lantiq_rcu_reset_of_parse.exit.thread37

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

lantiq_rcu_reset_of_parse.exit.thread37:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i37.i, align 4
  %status_offset.i = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %status_offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %status_offset.i, align 4
  br label %if.end6

lantiq_rcu_reset_of_parse.exit:                   ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %lantiq_rcu_reset_of_parse.exit.if.end6_crit_edge, label %lantiq_rcu_reset_of_parse.exit.cleanup_crit_edge

lantiq_rcu_reset_of_parse.exit.cleanup_crit_edge: ; preds = %lantiq_rcu_reset_of_parse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lantiq_rcu_reset_of_parse.exit.if.end6_crit_edge: ; preds = %lantiq_rcu_reset_of_parse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %lantiq_rcu_reset_of_parse.exit.if.end6_crit_edge, %lantiq_rcu_reset_of_parse.exit.thread37
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @lantiq_rcu_reset_ops, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %owner, align 4
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  %of_node10 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %of_node10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node10, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %nr_resets, align 4
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @lantiq_rcu_reset_xlate, ptr %of_xlate, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %of_reset_n_cells, align 4
  %call16 = tail call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lantiq_rcu_reset_of_parse.exit.cleanup_crit_edge, %do.end21.i, %do.end12.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ %19, %lantiq_rcu_reset_of_parse.exit.cleanup_crit_edge ], [ -2, %do.end21.i ], [ -2, %do.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lantiq_rcu_reset_xlate(ptr nocapture noundef readonly %rcdev, ptr nocapture noundef readonly %reset_spec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 8
  %4 = ptrtoint ptr %nr_resets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_resets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp ult i32 %1, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.not = icmp ult i32 %3, %5
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  %shl = shl i32 %3, 8
  %or = or i32 %shl, %1
  %retval.0 = select i1 %or.cond, i32 %or, i32 -22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_rcu_reset_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @lantiq_rcu_reset_update(ptr noundef %rcdev, i32 noundef %id, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i5 = tail call fastcc i32 @lantiq_rcu_reset_update(ptr noundef %rcdev, i32 noundef %id, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i5, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_rcu_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lantiq_rcu_reset_update(ptr noundef %rcdev, i32 noundef %id, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_rcu_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lantiq_rcu_reset_update(ptr noundef %rcdev, i32 noundef %id, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lantiq_rcu_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !54
  %regmap = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %rcdev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %status_offset = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %rcdev, i32 0, i32 4
  %3 = ptrtoint ptr %status_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status_offset, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %id, 8
  %and = and i32 %shr, 31
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = lshr i32 %6, %and
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lantiq_rcu_reset_update(ptr nocapture noundef readonly %rcdev, i32 noundef %id, i1 noundef zeroext %assert) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %id, 31
  %shl = shl nuw i32 1, %and
  %spec.select = select i1 %assert, i32 %shl, i32 0
  %regmap = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reset_offset = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %rcdev, i32 0, i32 3
  %2 = ptrtoint ptr %reset_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset_offset, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %rcdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %and) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %status_offset.i.i = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %rcdev, i32 0, i32 4
  %shr.i.i = lshr i32 %id, 8
  %and.i.i = and i32 %shr.i.i, 31
  %conv.i = zext i1 %assert to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end
  %retry.0.i = phi i32 [ 10000, %if.end ], [ %dec.i, %if.end4.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !54
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %status_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status_offset.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %lantiq_rcu_reset_status.exit.thread.i, label %lantiq_rcu_reset_status.exit.i

lantiq_rcu_reset_status.exit.thread.i:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i, align 4
  %13 = lshr i32 %12, %and.i.i
  %14 = and i32 %13, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %if.end.i

lantiq_rcu_reset_status.exit.i:                   ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %lantiq_rcu_reset_status.exit.i.do.end10_crit_edge, label %lantiq_rcu_reset_status.exit.i.if.end.i_crit_edge

lantiq_rcu_reset_status.exit.i.if.end.i_crit_edge: ; preds = %lantiq_rcu_reset_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lantiq_rcu_reset_status.exit.i.do.end10_crit_edge: ; preds = %lantiq_rcu_reset_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

if.end.i:                                         ; preds = %lantiq_rcu_reset_status.exit.i.if.end.i_crit_edge, %lantiq_rcu_reset_status.exit.thread.i
  %retval.0.i11.i = phi i32 [ %14, %lantiq_rcu_reset_status.exit.thread.i ], [ %call1.i.i, %lantiq_rcu_reset_status.exit.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i11.i, i32 %conv.i)
  %cmp1.i = icmp eq i32 %retval.0.i11.i, %conv.i
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #6
  %dec.i = add nsw i32 %retry.0.i, -1
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.do.end10_crit_edge, label %if.end4.i.do.body.i_crit_edge

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end4.i.do.end10_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10:                                         ; preds = %if.end4.i.do.end10_crit_edge, %lantiq_rcu_reset_status.exit.i.do.end10_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %if.end4.i.do.end10_crit_edge ], [ %call1.i.i, %lantiq_rcu_reset_status.exit.i.do.end10_crit_edge ]
  %dev11 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, ptr %rcdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev11, align 4
  %cond13 = select i1 %assert, ptr @.str.17, ptr @.str.18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond13, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %retval.0.i.ph, %do.end10 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_reset_lantiq__170_206_lantiq_rcu_reset_driver_init6, !1, !"__initcall__kmod_reset_lantiq__170_206_lantiq_rcu_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-lantiq.c", i32 206, i32 1}
!2 = !{ptr @__exitcall_lantiq_rcu_reset_driver_exit, !1, !"__exitcall_lantiq_rcu_reset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/reset/reset-lantiq.c", i32 208, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/reset/reset-lantiq.c", i32 209, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/reset/reset-lantiq.c", i32 210, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/reset/reset-lantiq.c", i32 202, i32 12}
!12 = !{ptr @lantiq_rcu_reset_driver, !13, !"lantiq_rcu_reset_driver", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-lantiq.c", i32 199, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/reset/reset-lantiq.c", i32 131, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lantiq_rcu_reset_of_parse._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lantiq_rcu_reset_of_parse._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/reset/reset-lantiq.c", i32 137, i32 3}
!24 = !{ptr @lantiq_rcu_reset_of_parse._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lantiq_rcu_reset_of_parse._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/reset/reset-lantiq.c", i32 144, i32 3}
!28 = !{ptr @lantiq_rcu_reset_of_parse._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lantiq_rcu_reset_of_parse._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @lantiq_rcu_reset_ops, !31, !"lantiq_rcu_reset_ops", i1 false, i1 false}
!31 = !{!"../drivers/reset/reset-lantiq.c", i32 116, i32 39}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/reset/reset-lantiq.c", i32 79, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lantiq_rcu_reset_update._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @lantiq_rcu_reset_update._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/reset/reset-lantiq.c", i32 86, i32 3}
!39 = !{ptr @lantiq_rcu_reset_update._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lantiq_rcu_reset_update._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lantiq_rcu_reset_dt_ids, !44, !"lantiq_rcu_reset_dt_ids", i1 false, i1 false}
!44 = !{!"../drivers/reset/reset-lantiq.c", i32 192, i32 34}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
