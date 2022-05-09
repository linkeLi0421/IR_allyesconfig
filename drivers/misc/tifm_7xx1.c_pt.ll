; ModuleID = '/llk/IR_all_yes/drivers/misc/tifm_7xx1.c_pt.bc'
source_filename = "../drivers/misc/tifm_7xx1.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.tifm_adapter = type { ptr, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.device, ptr, ptr, [0 x ptr] }
%struct.tifm_dev = type { ptr, %struct.spinlock, i8, i32, ptr, ptr, %struct.device }

@__initcall__kmod_tifm_7xx1__241_422_tifm_7xx1_driver_init6 = internal global ptr @tifm_7xx1_driver_init, section ".initcall6.init", align 4
@tifm_7xx1_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @tifm_7xx1_pci_tbl, ptr @tifm_7xx1_probe, ptr @tifm_7xx1_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tifm_7xx1_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tifm_7xx1_driver_exit = internal global ptr @tifm_7xx1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [28 x i8] c"tifm_7xx1.author=Alex Dubov\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [48 x i8] c"tifm_7xx1.description=TI FlashMedia host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [38 x i8] c"tifm_7xx1.file=drivers/misc/tifm_7xx1\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"tifm_7xx1.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version246 = internal constant [22 x i8] c"tifm_7xx1.version=0.8\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tifm_7xx1\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.8\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@tifm_7xx1_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 32819, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 32827, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 44175, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tifm_7xx1_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tifm_7xx1_suspend, ptr @tifm_7xx1_resume, ptr @tifm_7xx1_suspend, ptr @tifm_7xx1_resume, ptr @tifm_7xx1_suspend, ptr @tifm_7xx1_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tifm_7xx1_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&fm->media_switcher)\00", [57 x i8] zeroinitializer }, align 32
@tifm_7xx1_switch_media.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tifm_7xx1_switch_media\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/misc/tifm_7xx1.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"checking media set %x\0A\00", [41 x i8] zeroinitializer }, align 32
@tifm_7xx1_switch_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s : demand removing card from socket %u:%u\0A\00", [49 x i8] zeroinitializer }, align 32
@tifm_7xx1_switch_media._entry_ptr = internal global ptr @tifm_7xx1_switch_media._entry, section ".printk_index", align 4
@tifm_7xx1_suspend.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.5, ptr @.str.9, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tifm_7xx1_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"suspending host\0A\00", [47 x i8] zeroinitializer }, align 32
@tifm_7xx1_resume.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.5, ptr @.str.11, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tifm_7xx1_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resuming host\0A\00", [17 x i8] zeroinitializer }, align 32
@tifm_7xx1_resume.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.5, ptr @.str.12, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"change sets on resume: good %x, bad %x\0A\00", [56 x i8] zeroinitializer }, align 32
@tifm_7xx1_resume.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.5, ptr @.str.13, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait returned %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"tifm_7xx1_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 414, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 427, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"tifm_7xx1_pci_tbl\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 402, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"tifm_7xx1_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 412, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 339, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 149, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 162, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 216, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 244, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 261, i32 2 }
@___asan_gen_.71 = private constant [28 x i8] c"../drivers/misc/tifm_7xx1.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 269, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_version246, ptr @__exitcall_tifm_7xx1_driver_exit, ptr @__initcall__kmod_tifm_7xx1__241_422_tifm_7xx1_driver_init6, ptr @__modver_attr, ptr @tifm_7xx1_driver_exit, ptr @tifm_7xx1_switch_media._entry, ptr @tifm_7xx1_switch_media._entry_ptr, ptr @tifm_7xx1_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tifm_7xx1_pci_tbl, ptr @tifm_7xx1_pm_ops, ptr @tifm_7xx1_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_7xx1_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_7xx1_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_7xx1_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_7xx1_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tifm_7xx1_switch_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_7xx1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @tifm_7xx1_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tifm_7xx1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @tifm_7xx1_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_7xx1_probe(ptr noundef %dev, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %dev) #8
  %call6 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call void @pci_intx(ptr noundef %dev, i32 noundef 1) #8
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32717, i16 %1)
  %cmp = icmp eq i16 %1, -32717
  %cond = select i1 %cmp, i32 4, i32 2
  %call12 = tail call ptr @tifm_alloc_adapter(i32 noundef %cond, ptr noundef %dev1) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end9.if.then51_crit_edge, label %do.body

if.end9.if.then51_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

do.body:                                          ; preds = %if.end9
  %media_switcher = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 7
  tail call void @__init_work(ptr noundef %media_switcher, i32 noundef 0) #8
  %2 = ptrtoint ptr %media_switcher to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %media_switcher, align 4
  %lockdep_map = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @tifm_7xx1_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry19 = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 7, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tifm_7xx1_switch_media, ptr %func, align 4
  %eject = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 9
  %6 = ptrtoint ptr %eject to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tifm_7xx1_eject, ptr %eject, align 8
  %has_ms_pif = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 10
  %7 = ptrtoint ptr %has_ms_pif to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tifm_7xx1_has_ms_pif, ptr %has_ms_pif, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %call21 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #8
  %9 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %call12, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.body.err_out_free_crit_edge, label %if.end25

do.body.err_out_free_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free

if.end25:                                         ; preds = %do.body
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @tifm_7xx1_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.err_out_unmap_crit_edge

if.end25.err_out_unmap_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_unmap

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @tifm_add_adapter(ptr noundef nonnull %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body34, label %err_out_irq

do.body34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %num_sockets = getelementptr inbounds %struct.tifm_adapter, ptr %call12, i32 0, i32 5
  %12 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sockets, align 4
  %notmask = shl nsw i32 -1, %13
  %sub = xor i32 %notmask, -1
  %or = or i32 %sub, -2147483648
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call12, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_sockets, align 4
  %notmask94 = shl nsw i32 -1, %18
  %sub43 = xor i32 %notmask94, -1
  %or44 = or i32 %sub43, -2147483648
  %19 = tail call i32 @llvm.bswap.i32(i32 %or44)
  %20 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call12, align 8
  %add.ptr46 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %19) #8, !srcloc !61
  br label %cleanup

err_out_irq:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call48 = tail call ptr @free_irq(i32 noundef %23, ptr noundef nonnull %call12) #8
  br label %err_out_unmap

err_out_unmap:                                    ; preds = %err_out_irq, %if.end25.err_out_unmap_crit_edge
  %rc.0 = phi i32 [ %call.i, %if.end25.err_out_unmap_crit_edge ], [ %call30, %err_out_irq ]
  %24 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call12, align 8
  tail call void @iounmap(ptr noundef %25) #8
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_unmap, %do.body.err_out_free_crit_edge
  %rc.1 = phi i32 [ %rc.0, %err_out_unmap ], [ -19, %do.body.err_out_free_crit_edge ]
  tail call void @tifm_free_adapter(ptr noundef nonnull %call12) #8
  br label %if.then51

if.then51:                                        ; preds = %err_out_free, %if.end9.if.then51_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_out_free ], [ -12, %if.end9.if.then51_crit_edge ]
  tail call void @pci_intx(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pci_release_regions(ptr noundef %dev) #8
  tail call void @pci_disable_device(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body34, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body34 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %rc.2, %if.then51 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_7xx1_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %eject = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %eject to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tifm_7xx1_dummy_eject, ptr %eject, align 8
  %has_ms_pif = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %has_ms_pif to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tifm_7xx1_dummy_has_ms_pif, ptr %has_ms_pif, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #8, !srcloc !61
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #8
  tail call void @tifm_remove_adapter(ptr noundef %1) #8
  %num_sockets = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sockets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20.not = icmp eq i32 %9, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.i = shl i32 %cnt.021, 10
  %shl.i = add i32 %add.i, 1024
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %add.ptr.i19 = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %13 = and i32 %12, -117440513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %13) #8, !srcloc !61
  %inc = add nuw i32 %cnt.021, 1
  %14 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sockets, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void @iounmap(ptr noundef %17) #8
  tail call void @pci_intx(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pci_release_regions(ptr noundef %dev) #8
  tail call void @pci_disable_device(ptr noundef %dev) #8
  tail call void @tifm_free_adapter(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tifm_alloc_adapter(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_7xx1_switch_media(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %lock = getelementptr i8, ptr %work, i32 -64
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %socket_change_set6 = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %socket_change_set6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %socket_change_set6, align 4
  store i32 0, ptr %socket_change_set6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_7xx1_switch_media.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_7xx1_switch_media, %if.then)) #8
          to label %do.end14 [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr i8, ptr %work, i32 180
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_7xx1_switch_media.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %1) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool15.not = icmp eq i32 %1, 0
  br i1 %tobool15.not, label %do.end14.cleanup_crit_edge, label %for.cond.preheader

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end14
  %num_sockets = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sockets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19205.not = icmp eq i32 %5, 0
  br i1 %cmp19205.not, label %for.cond.preheader.do.body112_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body112_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sockets = getelementptr i8, ptr %work, i32 980
  %init_name.i = getelementptr i8, ptr %work, i32 188
  %dev30 = getelementptr i8, ptr %work, i32 44
  %id = getelementptr i8, ptr %work, i32 -12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flags.0208 = phi i32 [ %call3, %for.body.lr.ph ], [ %flags.2, %for.inc.for.body_crit_edge ]
  %cnt.0206 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %cnt.0206
  %and = and i32 %shl, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %arrayidx = getelementptr [0 x ptr], ptr %sockets, i32 0, i32 %cnt.0206
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %7, null
  br i1 %tobool24.not, label %if.end23.if.end55_crit_edge, label %do.end28

if.end23.if.end55_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end28:                                         ; preds = %if.end23
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end28.dev_name.exit_crit_edge

do.end28.dev_name.exit_crit_edge:                 ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev30, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end28.dev_name.exit_crit_edge
  %retval.0.i193 = phi ptr [ %11, %if.end.i ], [ %9, %do.end28.dev_name.exit_crit_edge ]
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i193, i32 noundef %13, i32 noundef %cnt.0206) #11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0208) #8
  %dev36 = getelementptr inbounds %struct.tifm_dev, ptr %7, i32 0, i32 6
  tail call void @device_unregister(ptr noundef %dev36) #8
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %18 = and i32 %17, -117440513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 917504) #8, !srcloc !61
  br label %if.end55

if.end55:                                         ; preds = %dev_name.exit, %if.end23.if.end55_crit_edge
  %flags.1 = phi i32 [ %call46, %dev_name.exit ], [ %flags.0208, %if.end23.if.end55_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %add.i = shl i32 %cnt.0206, 10
  %shl.i = add i32 %add.i, 1024
  %add.ptr.i194 = getelementptr i8, ptr %20, i32 %shl.i
  %call59 = tail call fastcc zeroext i8 @tifm_7xx1_toggle_sock_power(ptr noundef %add.ptr.i194), !range !69
  %call60 = tail call ptr @tifm_alloc_device(ptr noundef %add.ptr, i32 noundef %cnt.0206, i8 noundef zeroext %call59) #8
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.end55.do.body99_crit_edge, label %if.then62

if.end55.do.body99_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body99

if.then62:                                        ; preds = %if.end55
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i197 = getelementptr i8, ptr %22, i32 %shl.i
  %23 = ptrtoint ptr %call60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i197, ptr %call60, align 8
  %dev66 = getelementptr inbounds %struct.tifm_dev, ptr %call60, i32 0, i32 6
  %call67 = tail call i32 @device_register(ptr noundef %dev66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body71, label %if.then62.if.then94_crit_edge

if.then62.if.then94_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

do.body71:                                        ; preds = %if.then62
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool86.not = icmp eq ptr %25, null
  br i1 %tobool86.not, label %if.end92.thread202, label %if.end92

if.end92.thread202:                               ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call60, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call79) #8
  br label %do.body99

if.end92:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call79) #8
  br label %if.then94

if.then94:                                        ; preds = %if.end92, %if.then62.if.then94_crit_edge
  tail call void @tifm_free_device(ptr noundef %dev66) #8
  br label %do.body99

do.body99:                                        ; preds = %if.then94, %if.end92.thread202, %if.end55.do.body99_crit_edge
  %call107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  br label %for.inc

for.inc:                                          ; preds = %do.body99, %for.body.for.inc_crit_edge
  %flags.2 = phi i32 [ %call107, %do.body99 ], [ %flags.0208, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %cnt.0206, 1
  %27 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_sockets, align 4
  %cmp19 = icmp ult i32 %inc, %28
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.do.body112_crit_edge

for.inc.do.body112_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body112:                                       ; preds = %for.inc.do.body112_crit_edge, %for.cond.preheader.do.body112_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %for.cond.preheader.do.body112_crit_edge ], [ %flags.2, %for.inc.do.body112_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %shl115 = shl i32 %1, 16
  %shl116 = shl i32 %1, 8
  %or = or i32 %shl115, %shl116
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  %add.ptr118 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %29) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  %add.ptr126 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %29) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  %add.ptr131 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 128) #8, !srcloc !61
  br label %cleanup

cleanup:                                          ; preds = %do.body112, %do.end14.cleanup_crit_edge
  %flags.0.lcssa.sink = phi i32 [ %flags.0.lcssa, %do.body112 ], [ %call3, %do.end14.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa.sink) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tifm_7xx1_eject(ptr noundef %fm, ptr nocapture noundef readonly %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tifm_adapter, ptr %fm, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %socket_id = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 3
  %0 = ptrtoint ptr %socket_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %socket_id, align 4
  %shl = shl nuw i32 1, %1
  %socket_change_set = getelementptr inbounds %struct.tifm_adapter, ptr %fm, i32 0, i32 3
  %2 = ptrtoint ptr %socket_change_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %socket_change_set, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %socket_change_set, align 4
  %media_switcher = getelementptr inbounds %struct.tifm_adapter, ptr %fm, i32 0, i32 7
  tail call void @tifm_queue_work(ptr noundef %media_switcher) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tifm_7xx1_has_ms_pif(ptr nocapture noundef readonly %fm, ptr nocapture noundef readonly %sock) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sockets = getelementptr inbounds %struct.tifm_adapter, ptr %fm, i32 0, i32 5
  %0 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sockets, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 4, label %land.lhs.true
    i32 2, label %land.lhs.true4
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %socket_id = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 3
  %3 = ptrtoint ptr %socket_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %socket_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true4:                                   ; preds = %entry
  %socket_id5 = getelementptr inbounds %struct.tifm_dev, ptr %sock, i32 0, i32 3
  %5 = ptrtoint ptr %socket_id5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %socket_id5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %land.lhs.true4.return_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true4.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true4.return_crit_edge ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_7xx1_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tifm_adapter, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %2, label %if.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 -1, label %entry.cleanup_crit_edge85
  ]

entry.cleanup_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.end.do.body23_crit_edge, label %do.body

if.end.do.body23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 8
  %add.ptr6 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 128) #8, !srcloc !61
  %num_sockets = getelementptr inbounds %struct.tifm_adapter, ptr %dev_id, i32 0, i32 5
  %7 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_sockets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp777.not = icmp eq i32 %8, 0
  br i1 %cmp777.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %cnt.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tifm_adapter, ptr %dev_id, i32 0, i32 11, i32 %cnt.078
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %shr = lshr i32 %3, %cnt.078
  %and10 = and i32 %shr, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.if.end13_crit_edge, label %if.then12

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %data_event = getelementptr inbounds %struct.tifm_dev, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %data_event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_event, align 4
  tail call void %12(ptr noundef nonnull %10) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9.if.end13_crit_edge
  %and15 = and i32 %shr, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.for.inc_crit_edge, label %if.then17

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %card_event = getelementptr inbounds %struct.tifm_dev, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %card_event to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card_event, align 8
  tail call void %14(ptr noundef nonnull %10) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %cnt.078, 1
  %15 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sockets, align 4
  %cmp7 = icmp ult i32 %inc, %16
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %do.body.for.end_crit_edge ], [ %16, %for.inc.for.end_crit_edge ]
  %notmask = shl nsw i32 -1, %.lcssa
  %sub = xor i32 %notmask, -1
  %and21 = and i32 %3, %sub
  %socket_change_set = getelementptr inbounds %struct.tifm_adapter, ptr %dev_id, i32 0, i32 3
  %17 = ptrtoint ptr %socket_change_set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %socket_change_set, align 4
  %or = or i32 %18, %and21
  store i32 %or, ptr %socket_change_set, align 4
  br label %do.body23

do.body23:                                        ; preds = %for.end, %if.end.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 8
  %add.ptr27 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %2) #8, !srcloc !61
  %finish_me = getelementptr inbounds %struct.tifm_adapter, ptr %dev_id, i32 0, i32 6
  %21 = ptrtoint ptr %finish_me to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %finish_me, align 8
  %tobool28.not = icmp eq ptr %22, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @complete_all(ptr noundef nonnull %22) #8
  br label %cleanup

if.else:                                          ; preds = %do.body23
  %socket_change_set31 = getelementptr inbounds %struct.tifm_adapter, ptr %dev_id, i32 0, i32 3
  %23 = ptrtoint ptr %socket_change_set31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %socket_change_set31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool32.not = icmp eq i32 %24, 0
  br i1 %tobool32.not, label %do.body34, label %if.else39

do.body34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 8
  %add.ptr38 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 128) #8, !srcloc !61
  br label %cleanup

if.else39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %media_switcher = getelementptr inbounds %struct.tifm_adapter, ptr %dev_id, i32 0, i32 7
  tail call void @tifm_queue_work(ptr noundef %media_switcher) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else39, %do.body34, %if.then29, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge85
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge85 ], [ 1, %do.body34 ], [ 1, %if.else39 ], [ 1, %if.then29 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tifm_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_free_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tifm_7xx1_toggle_sock_power(ptr noundef %sock_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %sock_addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 917504) #8, !srcloc !61
  %add.ptr1 = getelementptr i8, ptr %sock_addr, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %tobool.not = icmp sgt i32 %0, -1
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 16) #8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.1 = icmp sgt i32 %1, -1
  br i1 %tobool.not.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 32) #8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not.2 = icmp sgt i32 %2, -1
  br i1 %tobool.not.2, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 64) #8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.3 = icmp sgt i32 %3, -1
  br i1 %tobool.not.3, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 128) #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.4 = icmp sgt i32 %4, -1
  br i1 %tobool.not.4, label %if.end.3.for.end_crit_edge, label %if.end.4

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 256) #8
  br label %for.end

for.end:                                          ; preds = %if.end.4, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %and9 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.end.cleanup_crit_edge, label %do.body13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body13:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %8 = or i32 %7, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !61
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %10 = and i32 %9, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %10)
  %cmp30 = icmp eq i32 %10, 268435456
  br i1 %cmp30, label %if.then31, label %do.body13.do.body33_crit_edge

do.body13.do.body33_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

if.then31:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 40) #8
  br label %do.body33

do.body33:                                        ; preds = %if.then31, %do.body13.do.body33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %and36 = and i32 %6, 7
  %or37 = or i32 %and36, 3072
  %11 = tail call i32 @llvm.bswap.i32(i32 %or37)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !61
  tail call void @msleep(i32 noundef 20) #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool49.not = icmp sgt i32 %12, -1
  br i1 %tobool49.not, label %if.end51, label %do.body33.do.body55_crit_edge

do.body33.do.body55_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.end51:                                         ; preds = %do.body33
  tail call void @msleep(i32 noundef 16) #8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool49.not.1 = icmp sgt i32 %13, -1
  br i1 %tobool49.not.1, label %if.end51.1, label %if.end51.do.body55_crit_edge

if.end51.do.body55_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.end51.1:                                       ; preds = %if.end51
  tail call void @msleep(i32 noundef 32) #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool49.not.2 = icmp sgt i32 %14, -1
  br i1 %tobool49.not.2, label %if.end51.2, label %if.end51.1.do.body55_crit_edge

if.end51.1.do.body55_crit_edge:                   ; preds = %if.end51.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.end51.2:                                       ; preds = %if.end51.1
  tail call void @msleep(i32 noundef 64) #8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool49.not.3 = icmp sgt i32 %15, -1
  br i1 %tobool49.not.3, label %if.end51.3, label %if.end51.2.do.body55_crit_edge

if.end51.2.do.body55_crit_edge:                   ; preds = %if.end51.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.end51.3:                                       ; preds = %if.end51.2
  tail call void @msleep(i32 noundef 128) #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool49.not.4 = icmp sgt i32 %16, -1
  br i1 %tobool49.not.4, label %if.end51.4, label %if.end51.3.do.body55_crit_edge

if.end51.3.do.body55_crit_edge:                   ; preds = %if.end51.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.end51.4:                                       ; preds = %if.end51.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 256) #8
  br label %do.body55

do.body55:                                        ; preds = %if.end51.4, %if.end51.3.do.body55_crit_edge, %if.end51.2.do.body55_crit_edge, %if.end51.1.do.body55_crit_edge, %if.end51.do.body55_crit_edge, %do.body33.do.body55_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %18 = and i32 %17, -1073741825
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !61
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !65
  %20 = lshr i32 %19, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %21 = trunc i32 %20 to i8
  %conv = and i8 %21, 7
  br label %cleanup

cleanup:                                          ; preds = %do.body55, %for.end.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %do.body55 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tifm_alloc_device(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_queue_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tifm_7xx1_dummy_eject(ptr nocapture noundef %fm, ptr nocapture noundef %sock) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tifm_7xx1_dummy_has_ms_pif(ptr nocapture noundef readnone %fm, ptr nocapture noundef readnone %sock) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tifm_remove_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_7xx1_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_7xx1_suspend.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_7xx1_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_7xx1_suspend.__UNIQUE_ID_ddebug237, ptr noundef %dev_d, ptr noundef nonnull @.str.9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_sockets = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sockets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %cnt.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tifm_adapter, ptr %1, i32 0, i32 11, i32 %cnt.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %9 = and i32 %8, -117440513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !61
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %cnt.021, 1
  %10 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_sockets, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call11 = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tifm_7xx1_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  %new_ids = alloca [4 x i8], align 4
  %finish_resume = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ids) #8
  %2 = ptrtoint ptr %new_ids to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new_ids, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %finish_resume) #8
  %3 = getelementptr inbounds i8, ptr %finish_resume, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 52)
  %5 = ptrtoint ptr %finish_resume to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %finish_resume, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %finish_resume, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #8
  %num_sockets = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sockets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ugt i32 %7, 4
  br i1 %cmp, label %do.end, label %if.end23, !prof !88

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  call void @pci_set_master(ptr noundef %add.ptr) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_7xx1_resume.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_7xx1_resume, %if.then34)) #8
          to label %do.end38 [label %if.then34], !srcloc !67

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_7xx1_resume.__UNIQUE_ID_ddebug238, ptr noundef %dev_d, ptr noundef nonnull @.str.11) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %if.end23
  %8 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sockets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp40232.not = icmp eq i32 %9, 0
  br i1 %cmp40232.not, label %do.end38.do.body44_crit_edge, label %do.end38.for.body_crit_edge

do.end38.for.body_crit_edge:                      ; preds = %do.end38
  br label %for.body

do.end38.do.body44_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end38.for.body_crit_edge
  %rc.0233 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end38.for.body_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.i = shl i32 %rc.0233, 10
  %shl.i = add i32 %add.i, 1024
  %add.ptr.i = getelementptr i8, ptr %11, i32 %shl.i
  %call42 = call fastcc zeroext i8 @tifm_7xx1_toggle_sock_power(ptr noundef %add.ptr.i)
  %arrayidx = getelementptr [4 x i8], ptr %new_ids, i32 0, i32 %rc.0233
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call42, ptr %arrayidx, align 1
  %inc = add nuw i32 %rc.0233, 1
  %13 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_sockets, align 4
  %cmp40 = icmp ult i32 %inc, %14
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %for.body.do.body44_crit_edge

for.body.do.body44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body44:                                        ; preds = %for.body.do.body44_crit_edge, %do.end38.do.body44_crit_edge
  %lock = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 1
  %call48 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %15 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sockets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp55234.not = icmp eq i32 %16, 0
  br i1 %cmp55234.not, label %do.body44.do.body76_crit_edge, label %do.body44.for.body57_crit_edge

do.body44.for.body57_crit_edge:                   ; preds = %do.body44
  br label %for.body57

do.body44.do.body76_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

for.body57:                                       ; preds = %for.inc73.for.body57_crit_edge, %do.body44.for.body57_crit_edge
  %rc.1237 = phi i32 [ %inc74, %for.inc73.for.body57_crit_edge ], [ 0, %do.body44.for.body57_crit_edge ]
  %good_sockets.0236 = phi i32 [ %good_sockets.1, %for.inc73.for.body57_crit_edge ], [ 0, %do.body44.for.body57_crit_edge ]
  %bad_sockets.0235 = phi i32 [ %bad_sockets.1, %for.inc73.for.body57_crit_edge ], [ 0, %do.body44.for.body57_crit_edge ]
  %arrayidx58 = getelementptr %struct.tifm_adapter, ptr %1, i32 0, i32 11, i32 %rc.1237
  %17 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %18, null
  br i1 %tobool59.not, label %for.body57.for.inc73_crit_edge, label %if.then60

for.body57.for.inc73_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

if.then60:                                        ; preds = %for.body57
  %type = getelementptr inbounds %struct.tifm_dev, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type, align 8
  %arrayidx64 = getelementptr [4 x i8], ptr %new_ids, i32 0, i32 %rc.1237
  %21 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx64, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp66 = icmp eq i8 %20, %22
  %shl = shl nuw i32 1, %rc.1237
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %shl, %good_sockets.0236
  br label %for.inc73

if.else:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %or70 = or i32 %shl, %bad_sockets.0235
  br label %for.inc73

for.inc73:                                        ; preds = %if.else, %if.then68, %for.body57.for.inc73_crit_edge
  %bad_sockets.1 = phi i32 [ %bad_sockets.0235, %if.then68 ], [ %or70, %if.else ], [ %bad_sockets.0235, %for.body57.for.inc73_crit_edge ]
  %good_sockets.1 = phi i32 [ %or, %if.then68 ], [ %good_sockets.0236, %if.else ], [ %good_sockets.0236, %for.body57.for.inc73_crit_edge ]
  %inc74 = add nuw i32 %rc.1237, 1
  %exitcond.not = icmp eq i32 %inc74, %16
  br i1 %exitcond.not, label %for.inc73.do.body76_crit_edge, label %for.inc73.for.body57_crit_edge

for.inc73.for.body57_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.inc73.do.body76_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

do.body76:                                        ; preds = %for.inc73.do.body76_crit_edge, %do.body44.do.body76_crit_edge
  %bad_sockets.0.lcssa = phi i32 [ 0, %do.body44.do.body76_crit_edge ], [ %bad_sockets.1, %for.inc73.do.body76_crit_edge ]
  %good_sockets.0.lcssa = phi i32 [ 0, %do.body44.do.body76_crit_edge ], [ %good_sockets.1, %for.inc73.do.body76_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %num_sockets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_sockets, align 4
  %notmask = shl nsw i32 -1, %24
  %sub = xor i32 %notmask, -1
  %or81 = or i32 %sub, -2147483648
  %25 = call i32 @llvm.bswap.i32(i32 %or81)
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %add.ptr83 = getelementptr i8, ptr %27, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %25) #8, !srcloc !61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_7xx1_resume.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_7xx1_resume, %if.then96)) #8
          to label %do.end100 [label %if.then96], !srcloc !67

if.then96:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_7xx1_resume.__UNIQUE_ID_ddebug239, ptr noundef %dev_d, ptr noundef nonnull @.str.12, i32 noundef %good_sockets.0.lcssa, i32 noundef %bad_sockets.0.lcssa) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body76
  %socket_change_set = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %socket_change_set to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %socket_change_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %good_sockets.0.lcssa)
  %tobool101.not = icmp eq i32 %good_sockets.0.lcssa, 0
  br i1 %tobool101.not, label %do.end100.if.end155_crit_edge, label %if.then102

do.end100.if.end155_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then102:                                       ; preds = %do.end100
  %finish_me = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %finish_me to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %finish_resume, ptr %finish_me, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call48) #8
  %call104 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %finish_resume, i32 noundef 100) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tifm_7xx1_resume.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tifm_7xx1_resume, %if.then117)) #8
          to label %do.body122 [label %if.then117], !srcloc !67

if.then117:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tifm_7xx1_resume.__UNIQUE_ID_ddebug240, ptr noundef %dev_d, ptr noundef nonnull @.str.13, i32 noundef %call104) #8
  br label %do.body122

do.body122:                                       ; preds = %if.then117, %if.then102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @arm_heavy_mb() #8
  %shl125 = shl i32 %good_sockets.0.lcssa, 16
  %shl126 = shl i32 %good_sockets.0.lcssa, 8
  %or127 = or i32 %shl125, %shl126
  %30 = call i32 @llvm.bswap.i32(i32 %or127)
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %add.ptr129 = getelementptr i8, ptr %32, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %30) #8, !srcloc !61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr137 = getelementptr i8, ptr %34, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %30) #8, !srcloc !61
  %call147 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %35 = ptrtoint ptr %finish_me to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %finish_me, align 8
  %36 = ptrtoint ptr %socket_change_set to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %socket_change_set, align 4
  %38 = xor i32 %good_sockets.0.lcssa, -1
  %xor = and i32 %37, %38
  store i32 %xor, ptr %socket_change_set, align 4
  br label %if.end155

if.end155:                                        ; preds = %do.body122, %do.end100.if.end155_crit_edge
  %flags.0 = phi i32 [ %call147, %do.body122 ], [ %call48, %do.end100.if.end155_crit_edge ]
  %39 = ptrtoint ptr %socket_change_set to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %socket_change_set, align 4
  %or157 = or i32 %40, %bad_sockets.0.lcssa
  store i32 %or157, ptr %socket_change_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or157)
  %tobool159.not = icmp eq i32 %or157, 0
  br i1 %tobool159.not, label %if.end155.if.end161_crit_edge, label %if.then160

if.end155.if.end161_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then160:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %media_switcher = getelementptr inbounds %struct.tifm_adapter, ptr %1, i32 0, i32 7
  call void @tifm_queue_work(ptr noundef %media_switcher) #8
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end155.if.end161_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %add.ptr167 = getelementptr i8, ptr %42, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 128) #8, !srcloc !61
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end161 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %finish_resume) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ids) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_tifm_7xx1__241_422_tifm_7xx1_driver_init6, !1, !"__initcall__kmod_tifm_7xx1__241_422_tifm_7xx1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/tifm_7xx1.c", i32 422, i32 1}
!2 = !{ptr @__exitcall_tifm_7xx1_driver_exit, !1, !"__exitcall_tifm_7xx1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../drivers/misc/tifm_7xx1.c", i32 423, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../drivers/misc/tifm_7xx1.c", i32 424, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/misc/tifm_7xx1.c", i32 425, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version246, !11, !"__UNIQUE_ID_version246", i1 false, i1 false}
!11 = !{!"../drivers/misc/tifm_7xx1.c", i32 427, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @tifm_7xx1_driver, !17, !"tifm_7xx1_driver", i1 false, i1 false}
!17 = !{!"../drivers/misc/tifm_7xx1.c", i32 414, i32 26}
!18 = !{ptr @tifm_7xx1_pci_tbl, !19, !"tifm_7xx1_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/misc/tifm_7xx1.c", i32 402, i32 35}
!20 = !{ptr @tifm_7xx1_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/misc/tifm_7xx1.c", i32 339, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/tifm_7xx1.c", i32 149, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tifm_7xx1_switch_media.__UNIQUE_ID_ddebug236, !24, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/tifm_7xx1.c", i32 162, i32 4}
!30 = !{ptr @tifm_7xx1_switch_media._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tifm_7xx1_switch_media._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tifm_7xx1_pm_ops, !33, !"tifm_7xx1_pm_ops", i1 false, i1 false}
!33 = !{!"../drivers/misc/tifm_7xx1.c", i32 412, i32 8}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/tifm_7xx1.c", i32 216, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tifm_7xx1_suspend.__UNIQUE_ID_ddebug237, !35, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/tifm_7xx1.c", i32 244, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tifm_7xx1_resume.__UNIQUE_ID_ddebug238, !39, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/tifm_7xx1.c", i32 261, i32 2}
!44 = !{ptr @tifm_7xx1_resume.__UNIQUE_ID_ddebug239, !43, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/tifm_7xx1.c", i32 269, i32 3}
!47 = !{ptr @tifm_7xx1_resume.__UNIQUE_ID_ddebug240, !46, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2154474869}
!61 = !{i64 4211825}
!62 = !{i64 2154475496}
!63 = !{i64 2154476067}
!64 = !{i64 2154447850}
!65 = !{i64 4212243}
!66 = !{i64 2154448827}
!67 = !{i64 2148315749, i64 2148315754, i64 2148315767, i64 2148315811, i64 2148315845, i64 2148315866}
!68 = !{i64 2154455134}
!69 = !{i8 0, i8 8}
!70 = !{i64 2154456386}
!71 = !{i64 2154457098}
!72 = !{i64 2154457710}
!73 = !{i64 2154437599}
!74 = !{i64 2154437861}
!75 = !{i64 2154438337}
!76 = !{i64 2154438795}
!77 = !{i64 2154439232}
!78 = !{i64 2154439972}
!79 = !{i64 2154440510}
!80 = !{i64 2154441531}
!81 = !{i64 2154442480}
!82 = !{i64 2154443043}
!83 = !{i64 2154443306}
!84 = !{i64 2154444124}
!85 = !{i64 2154445139}
!86 = !{i64 2154446098}
!87 = !{i64 2154446666}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2154466523}
!90 = !{i64 2154471919}
!91 = !{i64 2154472581}
!92 = !{i64 2154473525}
