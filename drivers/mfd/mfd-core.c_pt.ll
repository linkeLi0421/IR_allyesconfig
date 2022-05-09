; ModuleID = '/llk/IR_all_yes/drivers/mfd/mfd-core.c_pt.bc'
source_filename = "../drivers/mfd/mfd-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mfd_cell_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_mfd_cell_enable\09\09\09\09"
module asm "\09.long\09__crc_mfd_cell_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_cell_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_cell_enable\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_cell_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mfd_cell_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_mfd_cell_disable\09\09\09\09"
module asm "\09.long\09__crc_mfd_cell_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_cell_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_cell_disable\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_cell_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mfd_add_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_mfd_add_devices\09\09\09\09"
module asm "\09.long\09__crc_mfd_add_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_add_devices\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mfd_remove_devices_late\22, \22a\22\09"
module asm "\09.weak\09__crc_mfd_remove_devices_late\09\09\09\09"
module asm "\09.long\09__crc_mfd_remove_devices_late\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_remove_devices_late:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_remove_devices_late\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_remove_devices_late:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mfd_remove_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_mfd_remove_devices\09\09\09\09"
module asm "\09.long\09__crc_mfd_remove_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_remove_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_remove_devices\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_remove_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_mfd_add_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_mfd_add_devices\09\09\09\09"
module asm "\09.long\09__crc_devm_mfd_add_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mfd_add_devices\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.mfd_of_node_entry = type { %struct.list_head, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@mfd_cell_enable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mfd_core\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mfd_cell_enable\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/mfd-core.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No .enable() call-back registered\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_mfd_cell_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_cell_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_cell_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_cell_enable to i32), ptr @__kstrtab_mfd_cell_enable, ptr @__kstrtabns_mfd_cell_enable }, section "___ksymtab+mfd_cell_enable", align 4
@mfd_cell_disable.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mfd_cell_disable\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No .disable() call-back registered\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_mfd_cell_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_cell_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_cell_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_cell_disable to i32), ptr @__kstrtab_mfd_cell_disable, ptr @__kstrtabns_mfd_cell_disable }, section "___ksymtab+mfd_cell_disable", align 4
@__kstrtab_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_add_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_add_devices to i32), ptr @__kstrtab_mfd_add_devices, ptr @__kstrtabns_mfd_add_devices }, section "___ksymtab+mfd_add_devices", align 4
@__kstrtab_mfd_remove_devices_late = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_remove_devices_late = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_remove_devices_late = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_remove_devices_late to i32), ptr @__kstrtab_mfd_remove_devices_late, ptr @__kstrtabns_mfd_remove_devices_late }, section "___ksymtab+mfd_remove_devices_late", align 4
@__kstrtab_mfd_remove_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_remove_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_remove_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_remove_devices to i32), ptr @__kstrtab_mfd_remove_devices, ptr @__kstrtabns_mfd_remove_devices }, section "___ksymtab+mfd_remove_devices", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devm_mfd_dev_release\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_devm_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mfd_add_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mfd_add_devices to i32), ptr @__kstrtab_devm_mfd_add_devices, ptr @__kstrtabns_devm_mfd_add_devices }, section "___ksymtab+devm_mfd_add_devices", align 4
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"mfd_core.file=drivers/mfd/mfd-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"mfd_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [45 x i8] c"mfd_core.author=Ian Molton, Dmitry Baryshkov\00", section ".modinfo", align 1
@mfd_dev_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mfd_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: Failed to locate of_node [id: %d]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mfd_add_device\00", [17 x i8] zeroinitializer }, align 32
@mfd_add_device._entry_ptr = internal global ptr @mfd_add_device._entry, section ".printk_index", align 4
@mfd_of_node_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mfd_of_node_list, ptr @mfd_of_node_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mfd_device\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 41, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 54, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 421, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"mfd_dev_type\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 32, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 218, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"mfd_of_node_list\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 24, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [26 x i8] c"../drivers/mfd/mfd-core.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 33, i32 10 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__ksymtab_devm_mfd_add_devices, ptr @__ksymtab_mfd_add_devices, ptr @__ksymtab_mfd_cell_disable, ptr @__ksymtab_mfd_cell_enable, ptr @__ksymtab_mfd_remove_devices, ptr @__ksymtab_mfd_remove_devices_late, ptr @mfd_add_device._entry, ptr @mfd_add_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mfd_dev_type, ptr @.str.7, ptr @.str.8, ptr @mfd_of_node_list, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfd_dev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfd_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfd_of_node_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mfd_cell_enable(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %enable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mfd_cell_enable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mfd_cell_enable, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !49

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mfd_cell_enable.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %3(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mfd_cell_disable(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %disable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mfd_cell_disable.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mfd_cell_disable, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !49

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mfd_cell_disable.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %3(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mfd_add_devices(ptr noundef %parent, i32 noundef %id, ptr noundef %cells, i32 noundef %n_devs, ptr noundef %mem_base, i32 noundef %irq_base, ptr noundef %domain) #0 align 64 {
entry:
  %level.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_devs)
  %cmp27 = icmp sgt i32 %n_devs, 0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %id)
  %cmp.i = icmp eq i32 %id, -2
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 18
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 22
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 19
  %of_node.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 27
  %tobool92.not.i = icmp eq ptr %mem_base, null
  %tobool115.not.i = icmp eq ptr %domain, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028
  br i1 %cmp.i, label %for.body.if.end.i_crit_edge, label %if.else.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %id1.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 1
  %0 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1.i, align 4
  %add.i = add i32 %1, %id
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %for.body.if.end.i_crit_edge
  %platform_id.0.i = phi i32 [ %add.i, %if.else.i ], [ -2, %for.body.if.end.i_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call ptr @platform_device_alloc(ptr noundef %3, i32 noundef %platform_id.0.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.fail_crit_edge, label %if.end3.i

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef 88, i32 noundef 3264) #7
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4.i, ptr %mfd_cell.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end3.i.mfd_add_device.exit.thread17_crit_edge, label %if.end8.i

if.end3.i.mfd_add_device.exit.thread17_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mfd_add_device.exit.thread17

if.end8.i:                                        ; preds = %if.end3.i
  %num_resources.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 14
  %5 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_resources.i, align 8
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 32) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end8.i.mfd_add_device.exit.thread17_crit_edge, label %if.end7.i.i.i, !prof !50

if.end8.i.mfd_add_device.exit.thread17_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mfd_add_device.exit.thread17

if.end7.i.i.i:                                    ; preds = %if.end8.i
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #10
  %tobool10.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool10.not.i, label %if.end7.i.i.i.mfd_add_device.exit.thread17_crit_edge, label %if.end12.i

if.end7.i.i.i.mfd_add_device.exit.thread17_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mfd_add_device.exit.thread17

if.end12.i:                                       ; preds = %if.end7.i.i.i
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3
  %parent13.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %parent13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent, ptr %parent13.i, align 8
  %type.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mfd_dev_type, ptr %type.i, align 4
  %12 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_mask.i, align 8
  %dma_mask16.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 18
  %14 = ptrtoint ptr %dma_mask16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dma_mask16.i, align 8
  %15 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_parms.i, align 4
  %dma_parms18.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 22
  %17 = ptrtoint ptr %dma_parms18.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dma_parms18.i, align 4
  %18 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %coherent_dma_mask.i, align 8
  %coherent_dma_mask20.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 19
  %20 = ptrtoint ptr %coherent_dma_mask20.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %coherent_dma_mask20.i, align 8
  %parent_supplies.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 18
  %21 = ptrtoint ptr %parent_supplies.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_supplies.i, align 4
  %num_parent_supplies.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 19
  %23 = ptrtoint ptr %num_parent_supplies.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_parent_supplies.i, align 8
  %call23.i = tail call i32 @regulator_bulk_register_supply_alias(ptr noundef %dev.i, ptr noundef %22, ptr noundef %parent, ptr noundef %22, i32 noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end12.i.mfd_add_device.exit_crit_edge, label %if.end26.i

if.end12.i.mfd_add_device.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mfd_add_device.exit

if.end26.i:                                       ; preds = %if.end12.i
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %tobool27.not.i = icmp eq ptr %26, null
  br i1 %tobool27.not.i, label %if.end26.i.if.end58.i_crit_edge, label %land.lhs.true.i

if.end26.i.if.end58.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %of_compatible.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 10
  %27 = ptrtoint ptr %of_compatible.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_compatible.i, align 8
  %tobool28.not.i = icmp eq ptr %28, null
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.end58.i_crit_edge, label %if.then29.i

land.lhs.true.i.if.end58.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  %call31.i = tail call ptr @of_get_next_child(ptr noundef nonnull %26, ptr noundef null) #7
  %cmp32.not414.i = icmp eq ptr %call31.i, null
  br i1 %cmp32.not414.i, label %if.then29.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then29.i.for.end.i_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then29.i
  %use_of_reg.i.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 12
  %of_reg.i.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %np.0415.i = phi ptr [ %call31.i, %for.body.lr.ph.i ], [ %call49.i, %for.inc.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %of_compatible.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_compatible.i, align 8
  %call34.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np.0415.i, ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then36.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then36.i:                                      ; preds = %for.body.i
  %call37.i = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.0415.i) #7
  br i1 %call37.i, label %if.then36.i.for.cond.i.i_crit_edge, label %if.then36.i.fail_alias.sink.split.i_crit_edge

if.then36.i.fail_alias.sink.split.i_crit_edge:    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alias.sink.split.i

if.then36.i.for.cond.i.i_crit_edge:               ; preds = %if.then36.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then36.i.for.cond.i.i_crit_edge
  %of_entry.0.in.i.i = phi ptr [ %of_entry.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @mfd_of_node_list, %if.then36.i.for.cond.i.i_crit_edge ]
  %31 = ptrtoint ptr %of_entry.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %of_entry.0.i.i = load ptr, ptr %of_entry.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %of_entry.0.i.i, @mfd_of_node_list
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %np1.i.i = getelementptr inbounds %struct.mfd_of_node_entry, ptr %of_entry.0.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %np1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %np1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %33, %np.0415.i
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %34 = ptrtoint ptr %use_of_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_of_reg.i.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.allocate_of_node.i.i_crit_edge, label %if.end8.i.i

for.end.i.i.allocate_of_node.i.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %allocate_of_node.i.i

if.end8.i.i:                                      ; preds = %for.end.i.i
  %call.i.i.i = tail call ptr @__of_get_address(ptr noundef nonnull %np.0415.i, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool9.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.end8.i.i.for.inc.i_crit_edge, label %if.end11.i.i

if.end8.i.i.for.inc.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %call12.i.i = tail call i32 @of_n_addr_cells(ptr noundef nonnull %np.0415.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not3.i.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not3.i.i.i, label %if.end11.i.i.of_read_number.exit.i.i_crit_edge, label %if.end11.i.i.for.body.i.i.i_crit_edge

if.end11.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end11.i.i
  br label %for.body.i.i.i

if.end11.i.i.of_read_number.exit.i.i_crit_edge:   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_read_number.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end11.i.i.for.body.i.i.i_crit_edge
  %r.06.i.i.i = phi i64 [ %or.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end11.i.i.for.body.i.i.i_crit_edge ]
  %size.addr.05.i.i.i = phi i32 [ %dec.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call12.i.i, %if.end11.i.i.for.body.i.i.i_crit_edge ]
  %cell.addr.04.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.end11.i.i.for.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %size.addr.05.i.i.i, -1
  %shl.i.i.i = shl i64 %r.06.i.i.i, 32
  %36 = ptrtoint ptr %cell.addr.04.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cell.addr.04.i.i.i, align 4
  %conv.i.i.i = zext i32 %37 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i
  %incdec.ptr.i.i.i = getelementptr i32, ptr %cell.addr.04.i.i.i, i32 1
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.of_read_number.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.of_read_number.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_read_number.exit.i.i

of_read_number.exit.i.i:                          ; preds = %for.body.i.i.i.of_read_number.exit.i.i_crit_edge, %if.end11.i.i.of_read_number.exit.i.i_crit_edge
  %r.0.lcssa.i.i.i = phi i64 [ 0, %if.end11.i.i.of_read_number.exit.i.i_crit_edge ], [ %or.i.i.i, %for.body.i.i.i.of_read_number.exit.i.i_crit_edge ]
  %38 = ptrtoint ptr %of_reg.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %of_reg.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %r.0.lcssa.i.i.i)
  %cmp14.not.i.i = icmp eq i64 %39, %r.0.lcssa.i.i.i
  br i1 %cmp14.not.i.i, label %of_read_number.exit.i.i.allocate_of_node.i.i_crit_edge, label %of_read_number.exit.i.i.for.inc.i_crit_edge

of_read_number.exit.i.i.for.inc.i_crit_edge:      ; preds = %of_read_number.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

of_read_number.exit.i.i.allocate_of_node.i.i_crit_edge: ; preds = %of_read_number.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %allocate_of_node.i.i

allocate_of_node.i.i:                             ; preds = %of_read_number.exit.i.i.allocate_of_node.i.i_crit_edge, %for.end.i.i.allocate_of_node.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i394.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 16) #11
  %tobool18.not.i.i = icmp eq ptr %call7.i.i.i394.i, null
  br i1 %tobool18.not.i.i, label %allocate_of_node.i.i.fail_alias.sink.split.i_crit_edge, label %if.end20.i.i

allocate_of_node.i.i.fail_alias.sink.split.i_crit_edge: ; preds = %allocate_of_node.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alias.sink.split.i

if.end20.i.i:                                     ; preds = %allocate_of_node.i.i
  %dev21.i.i = getelementptr inbounds %struct.mfd_of_node_entry, ptr %call7.i.i.i394.i, i32 0, i32 1
  %41 = ptrtoint ptr %dev21.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev.i, ptr %dev21.i.i, align 8
  %np22.i.i = getelementptr inbounds %struct.mfd_of_node_entry, ptr %call7.i.i.i394.i, i32 0, i32 2
  %42 = ptrtoint ptr %np22.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %np.0415.i, ptr %np22.i.i, align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mfd_of_node_list, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i394.i, ptr noundef %43, ptr noundef nonnull @mfd_of_node_list) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i395.i, label %if.end20.i.i.if.end43.thread.i_crit_edge

if.end20.i.i.if.end43.thread.i_crit_edge:         ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.thread.i

if.end.i.i.i395.i:                                ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call7.i.i.i394.i, ptr getelementptr inbounds (%struct.list_head, ptr @mfd_of_node_list, i32 0, i32 1), align 4
  %44 = ptrtoint ptr %call7.i.i.i394.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @mfd_of_node_list, ptr %call7.i.i.i394.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i394.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev3.i.i.i.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i.i394.i, ptr %43, align 4
  br label %if.end43.thread.i

if.end43.thread.i:                                ; preds = %if.end.i.i.i395.i, %if.end20.i.i.if.end43.thread.i_crit_edge
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 27
  %47 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %np.0415.i, ptr %of_node.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np.0415.i, i32 0, i32 3
  %fwnode26.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 28
  %48 = ptrtoint ptr %fwnode26.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %fwnode.i.i, ptr %fwnode26.i.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %np.0415.i) #7
  br label %for.end.i

for.inc.i:                                        ; preds = %of_read_number.exit.i.i.for.inc.i_crit_edge, %if.end8.i.i.for.inc.i_crit_edge, %for.body.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %49 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node.i, align 8
  %call49.i = tail call ptr @of_get_next_child(ptr noundef %50, ptr noundef nonnull %np.0415.i) #7
  %cmp32.not.i = icmp eq ptr %call49.i, null
  br i1 %cmp32.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end43.thread.i, %if.then29.i.for.end.i_crit_edge
  %of_node51.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 27
  %51 = ptrtoint ptr %of_node51.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node51.i, align 8
  %tobool52.not.i = icmp eq ptr %52, null
  br i1 %tobool52.not.i, label %do.end.i, label %for.end.i.if.end58.i_crit_edge

for.end.i.if.end58.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 8
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %54, i32 noundef %platform_id.0.i) #12
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end.i, %for.end.i.if.end58.i_crit_edge, %land.lhs.true.i.if.end58.i_crit_edge, %if.end26.i.if.end58.i_crit_edge
  %pdata_size.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 8
  %55 = ptrtoint ptr %pdata_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pdata_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool59.not.i = icmp eq i32 %56, 0
  br i1 %tobool59.not.i, label %if.end58.i.if.end66.i_crit_edge, label %if.then60.i

if.end58.i.if.end66.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then60.i:                                      ; preds = %if.end58.i
  %platform_data.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 7
  %57 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %platform_data.i, align 4
  %call62.i = tail call i32 @platform_device_add_data(ptr noundef nonnull %call.i, ptr noundef %58, i32 noundef %56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.then60.i.if.end66.i_crit_edge, label %if.then60.i.fail_of_entry.i_crit_edge

if.then60.i.fail_of_entry.i_crit_edge:            ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_of_entry.i

if.then60.i.if.end66.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then60.i.if.end66.i_crit_edge, %if.end58.i.if.end66.i_crit_edge
  %swnode.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 9
  %59 = ptrtoint ptr %swnode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %swnode.i, align 4
  %tobool67.not.i = icmp eq ptr %60, null
  br i1 %tobool67.not.i, label %if.end66.i.if.end75.i_crit_edge, label %if.then68.i

if.end66.i.if.end75.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.then68.i:                                      ; preds = %if.end66.i
  %call71.i = tail call i32 @device_add_software_node(ptr noundef %dev.i, ptr noundef nonnull %60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.then68.i.if.end75.i_crit_edge, label %if.then68.i.fail_of_entry.i_crit_edge

if.then68.i.fail_of_entry.i_crit_edge:            ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_of_entry.i

if.then68.i.if.end75.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then68.i.if.end75.i_crit_edge, %if.end66.i.if.end75.i_crit_edge
  %61 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_resources.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp78417.i = icmp sgt i32 %62, 0
  br i1 %cmp78417.i, label %for.body79.lr.ph.i, label %if.end75.i.for.end202.i_crit_edge

if.end75.i.for.end202.i_crit_edge:                ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end202.i

for.body79.lr.ph.i:                               ; preds = %if.end75.i
  %resources.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 15
  br label %for.body79.i

for.body79.i:                                     ; preds = %for.inc201.i.for.body79.i_crit_edge, %for.body79.lr.ph.i
  %r.0418.i = phi i32 [ 0, %for.body79.lr.ph.i ], [ %inc.i, %for.inc201.i.for.body79.i_crit_edge ]
  %63 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %resources.i, align 4
  %name80.i = getelementptr %struct.resource, ptr %64, i32 %r.0418.i, i32 2
  %65 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name80.i, align 4
  %arrayidx81.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i
  %name82.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 2
  %67 = ptrtoint ptr %name82.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %name82.i, align 8
  %flags.i = getelementptr %struct.resource, ptr %64, i32 %r.0418.i, i32 3
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i, align 4
  %flags86.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 3
  %70 = ptrtoint ptr %flags86.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %flags86.i, align 4
  %71 = load ptr, ptr %resources.i, align 4
  %flags89.i = getelementptr %struct.resource, ptr %71, i32 %r.0418.i, i32 3
  %72 = ptrtoint ptr %flags89.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags89.i, align 4
  %and.i = and i32 %73, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool90.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool92.not.i, %tobool90.not.i
  br i1 %or.cond.i, label %if.else108.i, label %if.then93.i

if.then93.i:                                      ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent95.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 5
  %74 = ptrtoint ptr %parent95.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %mem_base, ptr %parent95.i, align 4
  %75 = ptrtoint ptr %mem_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mem_base, align 4
  %77 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resources.i, align 4
  %arrayidx97.i = getelementptr %struct.resource, ptr %78, i32 %r.0418.i
  %79 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx97.i, align 4
  %add99.i = add i32 %80, %76
  %81 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add99.i, ptr %arrayidx81.i, align 32
  %end.i = getelementptr %struct.resource, ptr %78, i32 %r.0418.i, i32 1
  %82 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %end.i, align 4
  %add105.i = add i32 %83, %76
  %end107.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 1
  %84 = ptrtoint ptr %end107.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add105.i, ptr %end107.i, align 4
  br label %for.inc201.i

if.else108.i:                                     ; preds = %for.body79.i
  %and112.i = and i32 %73, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %if.else171.i, label %if.then114.i

if.then114.i:                                     ; preds = %if.else108.i
  %arrayidx110.i = getelementptr %struct.resource, ptr %71, i32 %r.0418.i
  %85 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx110.i, align 4
  br i1 %tobool115.not.i, label %if.else157.i, label %if.then116.i

if.then116.i:                                     ; preds = %if.then114.i
  %end122.i = getelementptr %struct.resource, ptr %71, i32 %r.0418.i, i32 1
  %87 = ptrtoint ptr %end122.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %end122.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp123.not.i = icmp eq i32 %86, %88
  br i1 %cmp123.not.i, label %if.then116.i.if.end141.i_crit_edge, label %do.end135.i, !prof !52

if.then116.i.if.end141.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i

do.end135.i:                                      ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 252, i32 noundef 9, ptr noundef null) #7
  br label %if.end141.i

if.end141.i:                                      ; preds = %do.end135.i, %if.then116.i.if.end141.i_crit_edge
  %89 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %resources.i, align 4
  %arrayidx150.i = getelementptr %struct.resource, ptr %90, i32 %r.0418.i
  %91 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx150.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %domain, i32 noundef %92, ptr noundef null) #7
  %end154.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 1
  %93 = ptrtoint ptr %end154.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call.i.i, ptr %end154.i, align 4
  %94 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call.i.i, ptr %arrayidx81.i, align 32
  br label %for.inc201.i

if.else157.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #9
  %add161.i = add i32 %86, %irq_base
  %95 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add161.i, ptr %arrayidx81.i, align 32
  %96 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %resources.i, align 4
  %end166.i = getelementptr %struct.resource, ptr %97, i32 %r.0418.i, i32 1
  %98 = ptrtoint ptr %end166.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %end166.i, align 4
  %add167.i = add i32 %99, %irq_base
  %end169.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 1
  %100 = ptrtoint ptr %end169.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add167.i, ptr %end169.i, align 4
  br label %for.inc201.i

if.else171.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent174.i = getelementptr %struct.resource, ptr %71, i32 %r.0418.i, i32 5
  %101 = ptrtoint ptr %parent174.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %parent174.i, align 4
  %parent176.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 5
  %103 = ptrtoint ptr %parent176.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %parent176.i, align 4
  %104 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %resources.i, align 4
  %arrayidx178.i = getelementptr %struct.resource, ptr %105, i32 %r.0418.i
  %106 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx178.i, align 4
  %108 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx81.i, align 32
  %end184.i = getelementptr %struct.resource, ptr %105, i32 %r.0418.i, i32 1
  %109 = ptrtoint ptr %end184.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %end184.i, align 4
  %end186.i = getelementptr %struct.resource, ptr %call8.i.i.i, i32 %r.0418.i, i32 1
  %111 = ptrtoint ptr %end186.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %end186.i, align 4
  br label %for.inc201.i

for.inc201.i:                                     ; preds = %if.else171.i, %if.else157.i, %if.end141.i, %if.then93.i
  %inc.i = add nuw nsw i32 %r.0418.i, 1
  %112 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_resources.i, align 8
  %cmp78.i = icmp slt i32 %inc.i, %113
  br i1 %cmp78.i, label %for.inc201.i.for.body79.i_crit_edge, label %for.inc201.i.for.end202.i_crit_edge

for.inc201.i.for.end202.i_crit_edge:              ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end202.i

for.inc201.i.for.body79.i_crit_edge:              ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79.i

for.end202.i:                                     ; preds = %for.inc201.i.for.end202.i_crit_edge, %if.end75.i.for.end202.i_crit_edge
  %.lcssa.i = phi i32 [ %62, %if.end75.i.for.end202.i_crit_edge ], [ %113, %for.inc201.i.for.end202.i_crit_edge ]
  %call204.i = tail call i32 @platform_device_add_resources(ptr noundef nonnull %call.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %.lcssa.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204.i)
  %tobool205.not.i = icmp eq i32 %call204.i, 0
  br i1 %tobool205.not.i, label %if.end207.i, label %for.end202.i.fail_res_conflict.i_crit_edge

for.end202.i.fail_res_conflict.i_crit_edge:       ; preds = %for.end202.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_res_conflict.i

if.end207.i:                                      ; preds = %for.end202.i
  %call208.i = tail call i32 @platform_device_add(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208.i)
  %tobool209.not.i = icmp eq i32 %call208.i, 0
  br i1 %tobool209.not.i, label %if.end211.i, label %if.end207.i.fail_res_conflict.i_crit_edge

if.end207.i.fail_res_conflict.i_crit_edge:        ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_res_conflict.i

if.end211.i:                                      ; preds = %if.end207.i
  %pm_runtime_no_callbacks.i = getelementptr %struct.mfd_cell, ptr %cells, i32 %i.028, i32 17
  %114 = ptrtoint ptr %pm_runtime_no_callbacks.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pm_runtime_no_callbacks.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool212.not.i = icmp eq i8 %115, 0
  br i1 %tobool212.not.i, label %if.end211.i.mfd_add_device.exit.thread_crit_edge, label %if.then213.i

if.end211.i.mfd_add_device.exit.thread_crit_edge: ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mfd_add_device.exit.thread

if.then213.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_runtime_no_callbacks(ptr noundef %dev.i) #7
  br label %mfd_add_device.exit.thread

mfd_add_device.exit.thread:                       ; preds = %if.then213.i, %if.end211.i.mfd_add_device.exit.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %for.inc

fail_res_conflict.i:                              ; preds = %if.end207.i.fail_res_conflict.i_crit_edge, %for.end202.i.fail_res_conflict.i_crit_edge
  %ret.0.i = phi i32 [ %call204.i, %for.end202.i.fail_res_conflict.i_crit_edge ], [ %call208.i, %if.end207.i.fail_res_conflict.i_crit_edge ]
  %116 = ptrtoint ptr %swnode.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %swnode.i, align 4
  %tobool217.not.i = icmp eq ptr %117, null
  br i1 %tobool217.not.i, label %fail_res_conflict.i.fail_of_entry.i_crit_edge, label %if.then218.i

fail_res_conflict.i.fail_of_entry.i_crit_edge:    ; preds = %fail_res_conflict.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_of_entry.i

if.then218.i:                                     ; preds = %fail_res_conflict.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @device_remove_software_node(ptr noundef %dev.i) #7
  br label %fail_of_entry.i

fail_of_entry.i:                                  ; preds = %if.then218.i, %fail_res_conflict.i.fail_of_entry.i_crit_edge, %if.then68.i.fail_of_entry.i_crit_edge, %if.then60.i.fail_of_entry.i_crit_edge
  %ret.1.i = phi i32 [ %call62.i, %if.then60.i.fail_of_entry.i_crit_edge ], [ %call71.i, %if.then68.i.fail_of_entry.i_crit_edge ], [ %ret.0.i, %if.then218.i ], [ %ret.0.i, %fail_res_conflict.i.fail_of_entry.i_crit_edge ]
  %118 = load ptr, ptr @mfd_of_node_list, align 4
  %cmp227.not421.i = icmp eq ptr %118, @mfd_of_node_list
  br i1 %cmp227.not421.i, label %fail_of_entry.i.fail_alias.i_crit_edge, label %fail_of_entry.i.for.body230.i_crit_edge

fail_of_entry.i.for.body230.i_crit_edge:          ; preds = %fail_of_entry.i
  br label %for.body230.i

fail_of_entry.i.fail_alias.i_crit_edge:           ; preds = %fail_of_entry.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alias.i

for.body230.i:                                    ; preds = %for.inc237.i.for.body230.i_crit_edge, %fail_of_entry.i.for.body230.i_crit_edge
  %of_entry.0422.i = phi ptr [ %tmp.0424.i, %for.inc237.i.for.body230.i_crit_edge ], [ %118, %fail_of_entry.i.for.body230.i_crit_edge ]
  %119 = ptrtoint ptr %of_entry.0422.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %tmp.0424.i = load ptr, ptr %of_entry.0422.i, align 4
  %dev231.i = getelementptr inbounds %struct.mfd_of_node_entry, ptr %of_entry.0422.i, i32 0, i32 1
  %120 = ptrtoint ptr %dev231.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev231.i, align 4
  %cmp233.i = icmp eq ptr %121, %dev.i
  br i1 %cmp233.i, label %if.then234.i, label %for.body230.i.for.inc237.i_crit_edge

for.body230.i.for.inc237.i_crit_edge:             ; preds = %for.body230.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc237.i

if.then234.i:                                     ; preds = %for.body230.i
  %call.i.i396.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %of_entry.0422.i) #7
  br i1 %call.i.i396.i, label %if.end.i.i397.i, label %if.then234.i.list_del.exit.i_crit_edge

if.then234.i.list_del.exit.i_crit_edge:           ; preds = %if.then234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i397.i:                                  ; preds = %if.then234.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %of_entry.0422.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i.i.i, align 4
  %124 = ptrtoint ptr %of_entry.0422.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %of_entry.0422.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %prev1.i.i.i.i, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %125, ptr %123, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i397.i, %if.then234.i.list_del.exit.i_crit_edge
  %128 = ptrtoint ptr %of_entry.0422.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 256 to ptr), ptr %of_entry.0422.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %of_entry.0422.i, i32 0, i32 1
  %129 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %of_entry.0422.i) #7
  br label %for.inc237.i

for.inc237.i:                                     ; preds = %list_del.exit.i, %for.body230.i.for.inc237.i_crit_edge
  %cmp227.not.i = icmp eq ptr %tmp.0424.i, @mfd_of_node_list
  br i1 %cmp227.not.i, label %for.inc237.i.fail_alias.i_crit_edge, label %for.inc237.i.for.body230.i_crit_edge

for.inc237.i.for.body230.i_crit_edge:             ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body230.i

for.inc237.i.fail_alias.i_crit_edge:              ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_alias.i

fail_alias.sink.split.i:                          ; preds = %allocate_of_node.i.i.fail_alias.sink.split.i_crit_edge, %if.then36.i.fail_alias.sink.split.i_crit_edge
  %ret.2.ph.i = phi i32 [ -12, %allocate_of_node.i.i.fail_alias.sink.split.i_crit_edge ], [ 0, %if.then36.i.fail_alias.sink.split.i_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %np.0415.i) #7
  br label %fail_alias.i

fail_alias.i:                                     ; preds = %fail_alias.sink.split.i, %for.inc237.i.fail_alias.i_crit_edge, %fail_of_entry.i.fail_alias.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %fail_of_entry.i.fail_alias.i_crit_edge ], [ %ret.2.ph.i, %fail_alias.sink.split.i ], [ %ret.1.i, %for.inc237.i.fail_alias.i_crit_edge ]
  %130 = ptrtoint ptr %parent_supplies.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %parent_supplies.i, align 4
  %132 = ptrtoint ptr %num_parent_supplies.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num_parent_supplies.i, align 8
  tail call void @regulator_bulk_unregister_supply_alias(ptr noundef %dev.i, ptr noundef %131, i32 noundef %133) #7
  br label %mfd_add_device.exit

mfd_add_device.exit.thread17:                     ; preds = %if.end7.i.i.i.mfd_add_device.exit.thread17_crit_edge, %if.end8.i.mfd_add_device.exit.thread17_crit_edge, %if.end3.i.mfd_add_device.exit.thread17_crit_edge
  tail call void @platform_device_put(ptr noundef nonnull %call.i) #7
  br label %fail

mfd_add_device.exit:                              ; preds = %fail_alias.i, %if.end12.i.mfd_add_device.exit_crit_edge
  %ret.3.i = phi i32 [ %call23.i, %if.end12.i.mfd_add_device.exit_crit_edge ], [ %ret.2.i, %fail_alias.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  tail call void @platform_device_put(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool.not, label %mfd_add_device.exit.for.inc_crit_edge, label %mfd_add_device.exit.fail_crit_edge

mfd_add_device.exit.fail_crit_edge:               ; preds = %mfd_add_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

mfd_add_device.exit.for.inc_crit_edge:            ; preds = %mfd_add_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %mfd_add_device.exit.for.inc_crit_edge, %mfd_add_device.exit.thread
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %n_devs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail:                                             ; preds = %mfd_add_device.exit.fail_crit_edge, %mfd_add_device.exit.thread17, %if.end.i.fail_crit_edge
  %retval.0.i16 = phi i32 [ -12, %mfd_add_device.exit.thread17 ], [ %ret.3.i, %mfd_add_device.exit.fail_crit_edge ], [ -12, %if.end.i.fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %tobool1.not = icmp eq i32 %i.028, 0
  br i1 %tobool1.not, label %fail.cleanup_crit_edge, label %if.then2

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.i) #7
  %134 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %level.i, align 4
  %call.i10 = call i32 @device_for_each_child_reverse(ptr noundef %parent, ptr noundef nonnull %level.i, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %fail.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i16, %if.then2 ], [ %retval.0.i16, %fail.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mfd_remove_devices(ptr noundef %parent) #0 align 64 {
entry:
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #7
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %level, align 4
  %call = call i32 @device_for_each_child_reverse(ptr noundef %parent, ptr noundef nonnull %level, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mfd_remove_devices_late(ptr noundef %parent) #0 align 64 {
entry:
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #7
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %level, align 4
  %call = call i32 @device_for_each_child_reverse(ptr noundef %parent, ptr noundef nonnull %level, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mfd_remove_devices_fn(ptr noundef %dev, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp.not = icmp eq ptr %1, @mfd_dev_type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %mfd_cell.i = getelementptr i8, ptr %dev, i32 964
  %2 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd_cell.i, align 4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %level1 = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level1, align 8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp sgt i32 %5, %7
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %swnode = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %swnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swnode, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @device_remove_software_node(ptr noundef %dev) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %parent_supplies = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %parent_supplies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent_supplies, align 4
  %num_parent_supplies = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %num_parent_supplies to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_parent_supplies, align 8
  tail call void @regulator_bulk_unregister_supply_alias(ptr noundef %dev, ptr noundef %11, i32 noundef %13) #7
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_mfd_add_devices(ptr noundef %dev, i32 noundef %id, ptr noundef %cells, i32 noundef %n_devs, ptr noundef %mem_base, i32 noundef %irq_base, ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mfd_dev_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.6) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mfd_add_devices(ptr noundef %dev, i32 noundef %id, ptr noundef %cells, i32 noundef %n_devs, ptr noundef %mem_base, i32 noundef %irq_base, ptr noundef %domain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devres_free(ptr noundef nonnull %call) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %call1, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_mfd_dev_release(ptr noundef %dev, ptr nocapture noundef readnone %res) #0 align 64 {
entry:
  %level.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.i) #7
  %0 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %level.i, align 4
  %call.i = call i32 @device_for_each_child_reverse(ptr noundef %dev, ptr noundef nonnull %level.i, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_register_supply_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_unregister_supply_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/mfd-core.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mfd_cell_enable.__UNIQUE_ID_ddebug289, !1, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mfd_cell_enable, !7, !"__ksymtab_mfd_cell_enable", i1 false, i1 false}
!7 = !{!"../drivers/mfd/mfd-core.c", i32 47, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/mfd-core.c", i32 54, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mfd_cell_disable.__UNIQUE_ID_ddebug290, !9, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mfd_cell_disable, !13, !"__ksymtab_mfd_cell_disable", i1 false, i1 false}
!13 = !{!"../drivers/mfd/mfd-core.c", i32 60, i32 1}
!14 = !{ptr @__ksymtab_mfd_add_devices, !15, !"__ksymtab_mfd_add_devices", i1 false, i1 false}
!15 = !{!"../drivers/mfd/mfd-core.c", i32 348, i32 1}
!16 = !{ptr @__ksymtab_mfd_remove_devices_late, !17, !"__ksymtab_mfd_remove_devices_late", i1 false, i1 false}
!17 = !{!"../drivers/mfd/mfd-core.c", i32 381, i32 1}
!18 = !{ptr @__ksymtab_mfd_remove_devices, !19, !"__ksymtab_mfd_remove_devices", i1 false, i1 false}
!19 = !{!"../drivers/mfd/mfd-core.c", i32 389, i32 1}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/mfd-core.c", i32 421, i32 8}
!22 = !{ptr @__ksymtab_devm_mfd_add_devices, !23, !"__ksymtab_devm_mfd_add_devices", i1 false, i1 false}
!23 = !{!"../drivers/mfd/mfd-core.c", i32 437, i32 1}
!24 = !{ptr @__UNIQUE_ID_file291, !25, !"__UNIQUE_ID_file291", i1 false, i1 false}
!25 = !{!"../drivers/mfd/mfd-core.c", i32 439, i32 1}
!26 = !{ptr @__UNIQUE_ID_license292, !25, !"__UNIQUE_ID_license292", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_author293, !28, !"__UNIQUE_ID_author293", i1 false, i1 false}
!28 = !{!"../drivers/mfd/mfd-core.c", i32 440, i32 1}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/mfd-core.c", i32 218, i32 4}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mfd_add_device._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mfd_add_device._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/mfd-core.c", i32 33, i32 10}
!36 = !{ptr @mfd_dev_type, !37, !"mfd_dev_type", i1 false, i1 false}
!37 = !{!"../drivers/mfd/mfd-core.c", i32 32, i32 27}
!38 = !{ptr @mfd_of_node_list, !39, !"mfd_of_node_list", i1 false, i1 false}
!39 = !{!"../drivers/mfd/mfd-core.c", i32 24, i32 8}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148700655, i64 2148700660, i64 2148700673, i64 2148700717, i64 2148700751, i64 2148700772}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i8 0, i8 2}
!52 = !{!"branch_weights", i32 2000, i32 1}
