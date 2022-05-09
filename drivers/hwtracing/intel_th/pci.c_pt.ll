; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/intel_th/pci.c_pt.bc'
source_filename = "../drivers/hwtracing/intel_th/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_th_drvdata = type { i8, [3 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.intel_th = type { ptr, [10 x ptr], ptr, ptr, [3 x %struct.resource], ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr }

@__initcall__kmod_intel_th_pci__236_303_intel_th_pci_driver_init6 = internal global ptr @intel_th_pci_driver_init, section ".initcall6.init", align 4
@intel_th_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @intel_th_pci_id_table, ptr @intel_th_pci_probe, ptr @intel_th_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_intel_th_pci_driver_exit = internal global ptr @intel_th_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [58 x i8] c"intel_th_pci.file=drivers/hwtracing/intel_th/intel_th_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"intel_th_pci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [66 x i8] c"intel_th_pci.description=Intel(R) Trace Hub PCI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [70 x i8] c"intel_th_pci.author=Alexander Shishkin <alexander.shishkin@intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel_th_pci\00", [19 x i8] zeroinitializer }, align 32
@intel_th_pci_id_table = internal constant { [33 x %struct.pci_device_id], [256 x i8] } { [33 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 40230, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41254, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 23182, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2688, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6798, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41638, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_1x_multi_is_broken to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6625, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41382, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41510, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 12686, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 41766, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40358, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6369, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 13478, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 678, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 1702, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 41894, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_1x_multi_is_broken to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 17861, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 35369, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39475, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 41126, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 17318, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19878, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 20009, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 17705, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19238, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 7116, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 31398, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 20902, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 21670, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 18031, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19481, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @intel_th_2x to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [256 x i8] zeroinitializer }, align 32
@intel_th_1x_multi_is_broken = internal constant { %struct.intel_th_drvdata, [28 x i8] } { %struct.intel_th_drvdata { i8 64, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@intel_th_2x = internal constant { %struct.intel_th_drvdata, [28 x i8] } { %struct.intel_th_drvdata { i8 -96, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@intel_th_pci_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 47, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read NPKDSC register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"intel_th_pci_activate\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hwtracing/intel_th/pci.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_th_pci_activate._entry_ptr = internal global ptr @intel_th_pci_activate._entry, section ".printk_index", align 4
@intel_th_pci_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.6, ptr @.str.3, i32 68, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"intel_th_pci_deactivate\00", [40 x i8] zeroinitializer }, align 32
@intel_th_pci_deactivate._entry_ptr = internal global ptr @intel_th_pci_deactivate._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"intel_th_pci_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 296, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 303, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"intel_th_pci_id_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 132, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"intel_th_1x_multi_is_broken\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 123, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"intel_th_2x\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 127, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 47, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [36 x i8] c"../drivers/hwtracing/intel_th/pci.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 68, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_intel_th_pci_driver_exit, ptr @__initcall__kmod_intel_th_pci__236_303_intel_th_pci_driver_init6, ptr @intel_th_pci_activate._entry, ptr @intel_th_pci_activate._entry_ptr, ptr @intel_th_pci_deactivate._entry, ptr @intel_th_pci_deactivate._entry_ptr, ptr @intel_th_pci_driver_exit, ptr @intel_th_pci_driver, ptr @.str, ptr @intel_th_pci_id_table, ptr @intel_th_1x_multi_is_broken, ptr @intel_th_2x, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_pci_id_table to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_1x_multi_is_broken to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_2x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_pci_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_pci_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @intel_th_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @intel_th_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %resource = alloca [11 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %resource) #5
  %resource1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %3 = call ptr @memcpy(ptr %resource, ptr %resource1, i32 32)
  %arrayinit.element = getelementptr inbounds %struct.resource, ptr %resource, i32 1
  %arrayidx3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %4 = getelementptr inbounds %struct.resource, ptr %resource, i32 2
  %5 = call ptr @memset(ptr %4, i32 0, i32 288)
  %6 = call ptr @memcpy(ptr %arrayinit.element, ptr %arrayidx3, i32 32)
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @pcim_iomap_regions_request_all(ptr noundef %pdev, i32 noundef 5, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx9 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end7.if.end15_crit_edge, label %if.then11

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12 = getelementptr inbounds [11 x %struct.resource], ptr %resource, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %arrayidx12, ptr %arrayidx9, i32 32)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  %r.0 = phi i32 [ 3, %if.then11 ], [ 2, %if.end7.if.end15_crit_edge ]
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 8, i32 noundef 7, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %i.061 = phi i32 [ %inc23, %for.body.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %r.160 = phi i32 [ %inc24, %for.body.for.body_crit_edge ], [ %r.0, %if.end15.for.body_crit_edge ]
  %arrayidx19 = getelementptr [11 x %struct.resource], ptr %resource, i32 0, i32 %r.160
  %flags = getelementptr [11 x %struct.resource], ptr %resource, i32 0, i32 %r.160, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1024, ptr %flags, align 4
  %call20 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %i.061) #5
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call20, ptr %arrayidx19, align 4
  %inc23 = add nuw nsw i32 %i.061, 1
  %inc24 = add nuw i32 %r.160, 1
  %exitcond.not = icmp eq i32 %inc23, %call.i
  br i1 %exitcond.not, label %for.body.if.end25_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %for.body.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %r.2 = phi i32 [ %r.0, %if.end15.if.end25_crit_edge ], [ %inc24, %for.body.if.end25_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call26 = call ptr @intel_th_alloc(ptr noundef %dev, ptr noundef %2, ptr noundef nonnull %resource, i32 noundef %r.2) #5
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %activate = getelementptr inbounds %struct.intel_th, ptr %call26, i32 0, i32 5
  %13 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @intel_th_pci_activate, ptr %activate, align 4
  %deactivate = getelementptr inbounds %struct.intel_th, ptr %call26, i32 0, i32 6
  %14 = ptrtoint ptr %deactivate to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @intel_th_pci_deactivate, ptr %deactivate, align 4
  call void @pci_set_master(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then28 ], [ 0, %if.end30 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %resource) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @intel_th_free(ptr noundef %1) #5
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @intel_th_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_pci_activate(ptr nocapture noundef readonly %th) #2 align 64 {
entry:
  %npkdsc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npkdsc) #5
  %2 = ptrtoint ptr %npkdsc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %npkdsc, align 4, !annotation !40
  %drvdata = getelementptr inbounds %struct.intel_th, ptr %th, i32 0, i32 3
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drvdata, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.true:                                        ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %cond.true.cleanup_crit_edge, label %if.end

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.true
  %call = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 128, ptr noundef nonnull %npkdsc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %npkdsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npkdsc, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %npkdsc, align 4
  %call5 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 128, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end6.do.end_crit_edge, %if.end.do.end_crit_edge
  %err.021 = phi i32 [ %call5, %if.end6.do.end_crit_edge ], [ %call, %if.end.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %cond.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.true.cleanup_crit_edge ], [ %err.021, %do.end ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npkdsc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_pci_deactivate(ptr nocapture noundef readonly %th) #2 align 64 {
entry:
  %npkdsc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npkdsc) #5
  %2 = ptrtoint ptr %npkdsc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %npkdsc, align 4, !annotation !40
  %drvdata = getelementptr inbounds %struct.intel_th, ptr %th, i32 0, i32 3
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drvdata, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.true:                                        ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %cond.true.cleanup_crit_edge, label %if.end

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.true
  %call = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 128, ptr noundef nonnull %npkdsc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %npkdsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npkdsc, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %npkdsc, align 4
  %call5 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 128, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end6.do.end_crit_edge, %if.end.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %cond.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npkdsc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @intel_th_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_intel_th_pci__236_303_intel_th_pci_driver_init6, !1, !"__initcall__kmod_intel_th_pci__236_303_intel_th_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_intel_th_pci_driver_exit, !1, !"__exitcall_intel_th_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 305, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description239, !7, !"__UNIQUE_ID_description239", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 306, i32 1}
!8 = !{ptr @__UNIQUE_ID_author240, !9, !"__UNIQUE_ID_author240", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 307, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @intel_th_pci_driver, !12, !"intel_th_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 296, i32 26}
!13 = !{ptr @intel_th_pci_id_table, !14, !"intel_th_pci_id_table", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 132, i32 35}
!15 = !{ptr @intel_th_1x_multi_is_broken, !16, !"intel_th_1x_multi_is_broken", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 123, i32 38}
!17 = !{ptr @intel_th_2x, !18, !"intel_th_2x", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 127, i32 38}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 47, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @intel_th_pci_activate._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @intel_th_pci_activate._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwtracing/intel_th/pci.c", i32 68, i32 3}
!29 = !{ptr @intel_th_pci_deactivate._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @intel_th_pci_deactivate._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
