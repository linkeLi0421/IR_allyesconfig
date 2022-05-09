; ModuleID = '/llk/IR_all_yes/drivers/misc/pch_phub.c_pt.bc'
source_filename = "../drivers/misc/pch_phub.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.70 = type { ptr }
%struct.pch_phub_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i32], i32, i32, ptr, ptr, i32, i32, i32, ptr }

@__initcall__kmod_pch_phub__284_875_pch_phub_driver_init6 = internal global ptr @pch_phub_driver_init, section ".initcall6.init", align 4
@pch_phub_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pch_phub_pcidev_id, ptr @pch_phub_probe, ptr @pch_phub_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_phub_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pch_phub_driver_exit = internal global ptr @pch_phub_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description285 = internal constant [81 x i8] c"pch_phub.description=Intel EG20T PCH/LAPIS Semiconductor IOH(ML7213/ML7223) PHUB\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [36 x i8] c"pch_phub.file=drivers/misc/pch_phub\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [21 x i8] c"pch_phub.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pch_phub\00", [23 x i8] zeroinitializer }, align 32
@pch_phub_pcidev_id = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34817, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4315, i32 32794, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4315, i32 32786, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4315, i32 32770, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4315, i32 34817, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pch_phub_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_phub_suspend, ptr @pch_phub_resume, ptr @pch_phub_suspend, ptr @pch_phub_resume, ptr @pch_phub_suspend, ptr @pch_phub_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s : pci_enable_device FAILED(ret=%d)\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_phub_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/misc/pch_phub.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry_ptr = internal global ptr @pch_phub_probe._entry, section ".printk_index", align 4
@pch_phub_probe.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s : pci_enable_device returns %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s : pci_request_regions FAILED(ret=%d)\00", [56 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry_ptr.9 = internal global ptr @pch_phub_probe._entry.7, section ".printk_index", align 4
@pch_phub_probe.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s : pci_request_regions returns %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s : pci_iomap FAILED\00", [42 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry_ptr.13 = internal global ptr @pch_phub_probe._entry.11, section ".printk_index", align 4
@pch_phub_probe.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s : pci_iomap SUCCESS and value in pch_phub_base_address variable is %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel,eg20t-prefetch\00", [43 x i8] zeroinitializer }, align 32
@dev_attr_pch_mac = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pch_mac, ptr @store_pch_mac }, [36 x i8] zeroinitializer }, align 32
@pch_bin_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 15361, ptr null, ptr null, ptr @pch_phub_bin_read, ptr @pch_phub_bin_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"img,boston\00", [21 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s returns %d\0A\00", [17 x i8] zeroinitializer }, align 32
@pch_phub_probe._entry_ptr.20 = internal global ptr @pch_phub_probe._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_mac\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_firmware\00", [19 x i8] zeroinitializer }, align 32
@pch_phub_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pch_phub_mutex, i64 52), ptr getelementptr (i8, ptr @pch_phub_mutex, i64 52) }, ptr @pch_phub_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pch_phub_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_phub_mutex\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"pch_phub_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 867, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 875, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"pch_phub_pcidev_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 855, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"pch_phub_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 865, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 674, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 678, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 683, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 687, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 694, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 698, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 710, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"dev_attr_pch_mac\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"pch_bin_attr\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 652, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 745, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 825, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 650, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 624, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 654, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"pch_phub_mutex\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [27 x i8] c"../drivers/misc/pch_phub.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 134, i32 8 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_pch_phub_driver_exit, ptr @__initcall__kmod_pch_phub__284_875_pch_phub_driver_init6, ptr @pch_phub_driver_exit, ptr @pch_phub_probe._entry, ptr @pch_phub_probe._entry.11, ptr @pch_phub_probe._entry.18, ptr @pch_phub_probe._entry.7, ptr @pch_phub_probe._entry_ptr, ptr @pch_phub_probe._entry_ptr.13, ptr @pch_phub_probe._entry_ptr.20, ptr @pch_phub_probe._entry_ptr.9, ptr @pch_phub_driver, ptr @.str, ptr @pch_phub_pcidev_id, ptr @pch_phub_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @dev_attr_pch_mac, ptr @pch_bin_attr, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pch_phub_mutex, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_pcidev_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pch_mac to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_bin_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_phub_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_phub_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_phub_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_phub_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_phub_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_phub_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %prefetch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 588) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup183_crit_edge, label %if.end

entry.cleanup183_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup183

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call1) #12
  br label %err_pci_enable_dev

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_phub_probe.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_phub_probe, %if.then9)) #8
          to label %do.end13 [label %if.then9], !srcloc !74

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_phub_probe.__UNIQUE_ID_ddebug281, ptr noundef %dev10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 0) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body4
  %call14 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body22, label %do.end19

do.end19:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %call14) #12
  br label %err_req_regions

do.body22:                                        ; preds = %do.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_phub_probe.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_phub_probe, %if.then34)) #8
          to label %do.end38 [label %if.then34], !srcloc !74

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_phub_probe.__UNIQUE_ID_ddebug282, ptr noundef %dev35, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 0) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body22
  %call39 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #8
  %pch_phub_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 14
  %1 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call39, ptr %pch_phub_base_address, align 4
  %cmp41 = icmp eq ptr %call39, null
  br i1 %cmp41, label %do.end45, label %do.body48

do.end45:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2) #12
  br label %err_pci_iomap

do.body48:                                        ; preds = %do.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_phub_probe.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_phub_probe, %if.then60)) #8
          to label %do.end65 [label %if.then60], !srcloc !74

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pch_phub_base_address, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_phub_probe.__UNIQUE_ID_ddebug283, ptr noundef %dev61, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef %3) #8
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body48
  %pdev66 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %pdev66 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev66, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end65.if.end174_crit_edge [
    i32 1, label %if.then68
    i32 2, label %if.then108
    i32 3, label %if.then121
    i32 4, label %if.then131
    i32 5, label %if.then151
  ]

do.end65.if.end174_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then68:                                        ; preds = %do.end65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prefetch) #8
  %8 = ptrtoint ptr %prefetch to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 720810, ptr %prefetch, align 4
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %of_node = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool70.not = icmp eq ptr %10, null
  br i1 %tobool70.not, label %if.then68.if.end75_crit_edge, label %if.then71

if.then68.if.end75_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.15, ptr noundef nonnull %prefetch, i32 noundef 1, i32 noundef 0) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.then68.if.end75_crit_edge
  %call.i = call i32 @sysfs_create_file_ns(ptr noundef %dev69, ptr noundef nonnull @dev_attr_pch_mac, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool78.not = icmp eq i32 %call.i, 0
  br i1 %tobool78.not, label %if.end80, label %cleanup

if.end80:                                         ; preds = %if.end75
  %call83 = call i32 @sysfs_create_bin_file(ptr noundef %dev69, ptr noundef nonnull @pch_bin_attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %cleanup.thread272

cleanup.thread272:                                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prefetch) #8
  br label %exit_bin_attr

if.end86:                                         ; preds = %if.end80
  call fastcc void @pch_phub_read_modify_write_reg(ptr noundef nonnull %call7.i.i, i32 noundef 301989888, i32 noundef -16777216)
  %11 = ptrtoint ptr %prefetch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prefetch, align 4
  %13 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pch_phub_base_address, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @arm_heavy_mb() #8
  %15 = call i32 @llvm.bswap.i32(i32 %12) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !76
  %add.ptr95 = getelementptr i8, ptr %14, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 620756992) #8, !srcloc !76
  %pch_opt_rom_start_address = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %pch_opt_rom_start_address to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %pch_opt_rom_start_address, align 8
  %pch_mac_start_address = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %pch_mac_start_address to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20, ptr %pch_mac_start_address, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool98.not = icmp eq ptr %19, null
  br i1 %tobool98.not, label %if.end86.cleanup.thread_crit_edge, label %if.then99

if.end86.cleanup.thread_crit_edge:                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then99:                                        ; preds = %if.end86
  %call100 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then99.cleanup.thread_crit_edge, label %if.then102

if.then99.cleanup.thread_crit_edge:               ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @pch_phub_read_modify_write_reg(ptr noundef nonnull %call7.i.i, i32 noundef 131072, i32 noundef 16777215)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then102, %if.then99.cleanup.thread_crit_edge, %if.end86.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prefetch) #8
  br label %if.end174

cleanup:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prefetch) #8
  br label %err_sysfs_create

if.then108:                                       ; preds = %do.end65
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call111 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev109, ptr noundef nonnull @pch_bin_attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.then108.err_sysfs_create_crit_edge

if.then108.err_sysfs_create_crit_edge:            ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_sysfs_create

if.end114:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pch_phub_base_address, align 4
  %add.ptr116 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 -1593898496) #8, !srcloc !76
  %pch_opt_rom_start_address117 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 17
  %22 = ptrtoint ptr %pch_opt_rom_start_address117 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1024, ptr %pch_opt_rom_start_address117, align 8
  br label %if.end174

if.then121:                                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pch_phub_base_address, align 4
  %add.ptr123 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 2560) #8, !srcloc !76
  %add.ptr125 = getelementptr i8, ptr %24, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 620756992) #8, !srcloc !76
  %pch_opt_rom_start_address126 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 17
  %25 = ptrtoint ptr %pch_opt_rom_start_address126 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1024, ptr %pch_opt_rom_start_address126, align 8
  %pch_mac_start_address127 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %pch_mac_start_address127 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 524, ptr %pch_mac_start_address127, align 4
  br label %if.end174

if.then131:                                       ; preds = %do.end65
  %dev132 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i265 = tail call i32 @sysfs_create_file_ns(ptr noundef %dev132, ptr noundef nonnull @dev_attr_pch_mac, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool135.not = icmp eq i32 %call.i265, 0
  br i1 %tobool135.not, label %if.end137, label %if.then131.err_sysfs_create_crit_edge

if.then131.err_sysfs_create_crit_edge:            ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_sysfs_create

if.end137:                                        ; preds = %if.then131
  %call140 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev132, ptr noundef nonnull @pch_bin_attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end137.exit_bin_attr_crit_edge

if.end137.exit_bin_attr_crit_edge:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_bin_attr

if.end143:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pch_phub_base_address, align 4
  %add.ptr145 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 -1593901056) #8, !srcloc !76
  %pch_opt_rom_start_address146 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 17
  %29 = ptrtoint ptr %pch_opt_rom_start_address146 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1024, ptr %pch_opt_rom_start_address146, align 8
  %pch_mac_start_address147 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %pch_mac_start_address147 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 524, ptr %pch_mac_start_address147, align 4
  br label %if.end174

if.then151:                                       ; preds = %do.end65
  %dev152 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i266 = tail call i32 @sysfs_create_file_ns(ptr noundef %dev152, ptr noundef nonnull @dev_attr_pch_mac, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool155.not = icmp eq i32 %call.i266, 0
  br i1 %tobool155.not, label %if.end157, label %if.then151.err_sysfs_create_crit_edge

if.then151.err_sysfs_create_crit_edge:            ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_sysfs_create

if.end157:                                        ; preds = %if.then151
  %call160 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev152, ptr noundef nonnull @pch_bin_attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end157.exit_bin_attr_crit_edge

if.end157.exit_bin_attr_crit_edge:                ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_bin_attr

if.end163:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pch_phub_base_address, align 4
  %add.ptr165 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 -1426126336) #8, !srcloc !76
  %add.ptr167 = getelementptr i8, ptr %32, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 620756992) #8, !srcloc !76
  %pch_opt_rom_start_address168 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 17
  %33 = ptrtoint ptr %pch_opt_rom_start_address168 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %pch_opt_rom_start_address168, align 8
  %pch_mac_start_address169 = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %pch_mac_start_address169 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 20, ptr %pch_mac_start_address169, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.end163, %if.end143, %if.then121, %if.end114, %cleanup.thread, %do.end65.if.end174_crit_edge
  %35 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %driver_data, align 4
  %ioh_type = getelementptr inbounds %struct.pch_phub_reg, ptr %call7.i.i, i32 0, i32 18
  %37 = ptrtoint ptr %ioh_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ioh_type, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup183

exit_bin_attr:                                    ; preds = %if.end157.exit_bin_attr_crit_edge, %if.end137.exit_bin_attr_crit_edge, %cleanup.thread272
  %ret.1 = phi i32 [ %call140, %if.end137.exit_bin_attr_crit_edge ], [ %call160, %if.end157.exit_bin_attr_crit_edge ], [ %call83, %cleanup.thread272 ]
  %dev176 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @sysfs_remove_file_ns(ptr noundef %dev176, ptr noundef nonnull @dev_attr_pch_mac, ptr noundef null) #8
  br label %err_sysfs_create

err_sysfs_create:                                 ; preds = %exit_bin_attr, %if.then151.err_sysfs_create_crit_edge, %if.then131.err_sysfs_create_crit_edge, %if.then108.err_sysfs_create_crit_edge, %cleanup
  %ret.2 = phi i32 [ %call.i, %cleanup ], [ %ret.1, %exit_bin_attr ], [ %call111, %if.then108.err_sysfs_create_crit_edge ], [ %call.i265, %if.then131.err_sysfs_create_crit_edge ], [ %call.i266, %if.then151.err_sysfs_create_crit_edge ]
  %39 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pch_phub_base_address, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %40) #8
  br label %err_pci_iomap

err_pci_iomap:                                    ; preds = %err_sysfs_create, %do.end45
  %ret.3 = phi i32 [ -12, %do.end45 ], [ %ret.2, %err_sysfs_create ]
  call void @pci_release_regions(ptr noundef %pdev) #8
  br label %err_req_regions

err_req_regions:                                  ; preds = %err_pci_iomap, %do.end19
  %ret.4 = phi i32 [ %call14, %do.end19 ], [ %ret.3, %err_pci_iomap ]
  call void @pci_disable_device(ptr noundef %pdev) #8
  br label %err_pci_enable_dev

err_pci_enable_dev:                               ; preds = %err_req_regions, %do.end
  %ret.5 = phi i32 [ %call1, %do.end ], [ %ret.4, %err_req_regions ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %dev182 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev182, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef %ret.5) #12
  br label %cleanup183

cleanup183:                                       ; preds = %err_pci_enable_dev, %if.end174, %entry.cleanup183_crit_edge
  %retval.0 = phi i32 [ %ret.5, %err_pci_enable_dev ], [ 0, %if.end174 ], [ -12, %entry.cleanup183_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_phub_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_pch_mac, ptr noundef null) #8
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @pch_bin_attr) #8
  %pch_phub_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pch_phub_base_address, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #8
  tail call void @pci_release_regions(ptr noundef %pdev) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_phub_read_modify_write_reg(ptr nocapture noundef readonly %chip, i32 noundef %data, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_phub_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %chip, i32 0, i32 14
  %0 = ptrtoint ptr %pch_phub_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_phub_base_address, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1280
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %data
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pch_mac(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %mac = alloca [8 x i8], align 1
  %rom_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mac) #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = getelementptr inbounds i8, ptr %mac, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 -1, ptr %0, align 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_size) #8
  %4 = ptrtoint ptr %rom_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rom_size, align 4, !annotation !79
  %pdev = getelementptr inbounds %struct.pch_phub_reg, ptr %3, i32 0, i32 19
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %call1 = call ptr @pci_map_rom(ptr noundef %6, ptr noundef nonnull %rom_size) #8
  %pch_phub_extrom_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %pch_phub_extrom_base_address, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = getelementptr inbounds [8 x i8], ptr %mac, i32 0, i32 5
  %9 = getelementptr inbounds [8 x i8], ptr %mac, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %mac, i32 0, i32 3
  %11 = getelementptr inbounds [8 x i8], ptr %mac, i32 0, i32 2
  %12 = getelementptr inbounds [8 x i8], ptr %mac, i32 0, i32 1
  %pch_mac_start_address.i.i = getelementptr inbounds %struct.pch_phub_reg, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.i = add i32 %14, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %call1, i32 %add.i.i
  %15 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %mac, align 1
  %17 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.1.i = add i32 %18, 2
  %19 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %20, i32 %add.i.1.i
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.1.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %12, align 1
  %23 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.2.i = add i32 %24, 1
  %25 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %26, i32 %add.i.2.i
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.2.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %11, align 1
  %29 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %31 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %32, i32 %30
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.3.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %10, align 1
  %35 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.4.i = add i32 %36, 11
  %37 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %add.ptr.i.i.4.i = getelementptr i8, ptr %38, i32 %add.i.4.i
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.4.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %9, align 1
  %41 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.5.i = add i32 %42, 10
  %43 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %add.ptr.i.i.5.i = getelementptr i8, ptr %44, i32 %add.i.5.i
  %45 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.5.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %8, align 1
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 4
  %49 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  call void @pci_unmap_rom(ptr noundef %48, ptr noundef %50) #8
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %mac)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pch_mac(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %mac = alloca [6 x i8], align 1
  %rom_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #8
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  %5 = call ptr @memset(ptr %mac, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_size) #8
  %6 = ptrtoint ptr %rom_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rom_size, align 4, !annotation !79
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %call1 = call zeroext i1 @mac_pton(ptr noundef %buf, ptr noundef nonnull %mac) #8
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.pch_phub_reg, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %call2 = call ptr @pci_map_rom(ptr noundef %10, ptr noundef nonnull %rom_size) #8
  %pch_phub_extrom_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %8, i32 0, i32 15
  %11 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2, ptr %pch_phub_extrom_base_address, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ioh_type.i = getelementptr inbounds %struct.pch_phub_reg, ptr %8, i32 0, i32 18
  %12 = ptrtoint ptr %ioh_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ioh_type.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %13, label %if.else.i [
    i32 1, label %if.end5.if.then.i_crit_edge
    i32 5, label %if.end5.if.then.i_crit_edge22
  ]

if.end5.if.then.i_crit_edge22:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.end5.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge22
  %call.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 11, i8 noundef zeroext -68) #8
  %call2.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 10, i8 noundef zeroext 16) #8
  %or.i.i = or i32 %call2.i.i, %call.i.i
  %call3.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 9, i8 noundef zeroext 1) #8
  %or4.i.i = or i32 %or.i.i, %call3.i.i
  %call5.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 8, i8 noundef zeroext 2) #8
  %or6.i.i = or i32 %or4.i.i, %call5.i.i
  %call7.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 15, i8 noundef zeroext 0) #8
  %or8.i.i = or i32 %or6.i.i, %call7.i.i
  %call9.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 14, i8 noundef zeroext 0) #8
  %or10.i.i = or i32 %or8.i.i, %call9.i.i
  %call11.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 13, i8 noundef zeroext 0) #8
  %or12.i.i = or i32 %or10.i.i, %call11.i.i
  %call13.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 12, i8 noundef zeroext -128) #8
  %or14.i.i = or i32 %or12.i.i, %call13.i.i
  %call15.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 19, i8 noundef zeroext -68) #8
  %or16.i.i = or i32 %or14.i.i, %call15.i.i
  %call17.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 18, i8 noundef zeroext 16) #8
  %or18.i.i = or i32 %or16.i.i, %call17.i.i
  %call19.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 17, i8 noundef zeroext 1) #8
  %or20.i.i = or i32 %or18.i.i, %call19.i.i
  %call21.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 16, i8 noundef zeroext 24) #8
  %or22.i.i = or i32 %or20.i.i, %call21.i.i
  %call23.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 27, i8 noundef zeroext -68) #8
  %or24.i.i = or i32 %or22.i.i, %call23.i.i
  %call25.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 26, i8 noundef zeroext 16) #8
  %or26.i.i = or i32 %or24.i.i, %call25.i.i
  %call27.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 25, i8 noundef zeroext 1) #8
  %or28.i.i = or i32 %or26.i.i, %call27.i.i
  %call29.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 24, i8 noundef zeroext 25) #8
  %or30.i.i = or i32 %or28.i.i, %call29.i.i
  %call31.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 35, i8 noundef zeroext -68) #8
  %or32.i.i = or i32 %or30.i.i, %call31.i.i
  %call33.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 34, i8 noundef zeroext 16) #8
  %or34.i.i = or i32 %or32.i.i, %call33.i.i
  %call35.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 33, i8 noundef zeroext 1) #8
  %or36.i.i = or i32 %or34.i.i, %call35.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i24.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 515, i8 noundef zeroext -68) #8
  %call3.i25.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 514, i8 noundef zeroext 0) #8
  %or.i26.i = or i32 %call3.i25.i, %call.i24.i
  %call5.i27.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 513, i8 noundef zeroext 64) #8
  %or6.i28.i = or i32 %or.i26.i, %call5.i27.i
  %call8.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 512, i8 noundef zeroext 2) #8
  %or9.i.i = or i32 %or6.i28.i, %call8.i.i
  %call11.i29.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 519, i8 noundef zeroext 0) #8
  %or12.i30.i = or i32 %or9.i.i, %call11.i29.i
  %call14.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 518, i8 noundef zeroext 0) #8
  %or15.i.i = or i32 %or12.i30.i, %call14.i.i
  %call17.i31.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 517, i8 noundef zeroext 0) #8
  %or18.i32.i = or i32 %or15.i.i, %call17.i31.i
  %call20.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 516, i8 noundef zeroext -128) #8
  %or21.i.i = or i32 %or18.i32.i, %call20.i.i
  %call23.i33.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 523, i8 noundef zeroext -68) #8
  %or24.i34.i = or i32 %or21.i.i, %call23.i33.i
  %call26.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 522, i8 noundef zeroext 0) #8
  %or27.i.i = or i32 %or24.i34.i, %call26.i.i
  %call29.i35.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 521, i8 noundef zeroext 64) #8
  %or30.i36.i = or i32 %or27.i.i, %call29.i35.i
  %call32.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 520, i8 noundef zeroext 24) #8
  %or33.i.i = or i32 %or30.i36.i, %call32.i.i
  %call35.i37.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 531, i8 noundef zeroext -68) #8
  %or36.i38.i = or i32 %or33.i.i, %call35.i37.i
  %call38.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 530, i8 noundef zeroext 0) #8
  %or39.i.i = or i32 %or36.i38.i, %call38.i.i
  %call41.i39.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 529, i8 noundef zeroext 64) #8
  %or42.i40.i = or i32 %or39.i.i, %call41.i39.i
  %call44.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 528, i8 noundef zeroext 25) #8
  %or45.i.i = or i32 %or42.i40.i, %call44.i.i
  %call47.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 539, i8 noundef zeroext -68) #8
  %or48.i.i = or i32 %or45.i.i, %call47.i.i
  %call50.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 538, i8 noundef zeroext 0) #8
  %or51.i.i = or i32 %or48.i.i, %call50.i.i
  %call53.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef 537, i8 noundef zeroext 64) #8
  %or54.i.i = or i32 %or51.i.i, %call53.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink46.i = phi i32 [ 536, %if.else.i ], [ 32, %if.then.i ]
  %or54.i.sink.i = phi i32 [ %or54.i.i, %if.else.i ], [ %or36.i.i, %if.then.i ]
  %.sink45.i = phi i32 [ 543, %if.else.i ], [ 39, %if.then.i ]
  %.sink44.i = phi i32 [ 542, %if.else.i ], [ 38, %if.then.i ]
  %.sink43.i = phi i32 [ 541, %if.else.i ], [ 37, %if.then.i ]
  %.sink.i = phi i32 [ 540, %if.else.i ], [ 36, %if.then.i ]
  %call56.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %.sink46.i, i8 noundef zeroext 58) #8
  %or57.i.i = or i32 %call56.i.i, %or54.i.sink.i
  %call59.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %.sink45.i, i8 noundef zeroext 1) #8
  %or60.i.i = or i32 %or57.i.i, %call59.i.i
  %call62.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %.sink44.i, i8 noundef zeroext 0) #8
  %or63.i.i = or i32 %or60.i.i, %call62.i.i
  %call65.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %.sink43.i, i8 noundef zeroext 0) #8
  %or66.i.i = or i32 %or63.i.i, %call65.i.i
  %call68.i.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %.sink.i, i8 noundef zeroext 0) #8
  %or69.i.i = or i32 %or66.i.i, %call68.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or69.i.i)
  %tobool.not.i = icmp eq i32 %or69.i.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.i.pch_phub_write_gbe_mac_addr.exit_crit_edge

if.end.i.pch_phub_write_gbe_mac_addr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pch_phub_write_gbe_mac_addr.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %pch_mac_start_address.i.i = getelementptr inbounds %struct.pch_phub_reg, ptr %8, i32 0, i32 16
  %15 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mac, align 1
  %17 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.i = add i32 %18, 3
  %call.i41.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %add.i.i, i8 noundef zeroext %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool9.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool9.not.i, label %for.cond.i, label %for.cond.preheader.i.pch_phub_write_gbe_mac_addr.exit_crit_edge

for.cond.preheader.i.pch_phub_write_gbe_mac_addr.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pch_phub_write_gbe_mac_addr.exit

for.cond.i:                                       ; preds = %for.cond.preheader.i
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 1
  %21 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.1.i = add i32 %22, 2
  %call.i41.1.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %add.i.1.i, i8 noundef zeroext %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.1.i)
  %tobool9.not.1.i = icmp eq i32 %call.i41.1.i, 0
  br i1 %tobool9.not.1.i, label %for.cond.1.i, label %for.cond.i.pch_phub_write_gbe_mac_addr.exit_crit_edge

for.cond.i.pch_phub_write_gbe_mac_addr.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pch_phub_write_gbe_mac_addr.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %25 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.2.i = add i32 %26, 1
  %call.i41.2.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %add.i.2.i, i8 noundef zeroext %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.2.i)
  %tobool9.not.2.i = icmp eq i32 %call.i41.2.i, 0
  br i1 %tobool9.not.2.i, label %for.cond.2.i, label %for.cond.1.i.pch_phub_write_gbe_mac_addr.exit_crit_edge

for.cond.1.i.pch_phub_write_gbe_mac_addr.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pch_phub_write_gbe_mac_addr.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %29 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %call.i41.3.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %30, i8 noundef zeroext %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.3.i)
  %tobool9.not.3.i = icmp eq i32 %call.i41.3.i, 0
  br i1 %tobool9.not.3.i, label %for.cond.3.i, label %for.cond.2.i.pch_phub_write_gbe_mac_addr.exit_crit_edge

for.cond.2.i.pch_phub_write_gbe_mac_addr.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pch_phub_write_gbe_mac_addr.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %33 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.4.i = add i32 %34, 11
  %call.i41.4.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %add.i.4.i, i8 noundef zeroext %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.4.i)
  %tobool9.not.4.i = icmp eq i32 %call.i41.4.i, 0
  br i1 %tobool9.not.4.i, label %for.cond.4.i, label %for.cond.3.i.pch_phub_write_gbe_mac_addr.exit_crit_edge

for.cond.3.i.pch_phub_write_gbe_mac_addr.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pch_phub_write_gbe_mac_addr.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %4, align 1
  %37 = ptrtoint ptr %pch_mac_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pch_mac_start_address.i.i, align 4
  %add.i.5.i = add i32 %38, 10
  %call.i41.5.i = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %8, i32 noundef %add.i.5.i, i8 noundef zeroext %36) #8
  br label %pch_phub_write_gbe_mac_addr.exit

pch_phub_write_gbe_mac_addr.exit:                 ; preds = %for.cond.4.i, %for.cond.3.i.pch_phub_write_gbe_mac_addr.exit_crit_edge, %for.cond.2.i.pch_phub_write_gbe_mac_addr.exit_crit_edge, %for.cond.1.i.pch_phub_write_gbe_mac_addr.exit_crit_edge, %for.cond.i.pch_phub_write_gbe_mac_addr.exit_crit_edge, %for.cond.preheader.i.pch_phub_write_gbe_mac_addr.exit_crit_edge, %if.end.i.pch_phub_write_gbe_mac_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %or69.i.i, %if.end.i.pch_phub_write_gbe_mac_addr.exit_crit_edge ], [ %call.i41.i, %for.cond.preheader.i.pch_phub_write_gbe_mac_addr.exit_crit_edge ], [ %call.i41.1.i, %for.cond.i.pch_phub_write_gbe_mac_addr.exit_crit_edge ], [ %call.i41.2.i, %for.cond.1.i.pch_phub_write_gbe_mac_addr.exit_crit_edge ], [ %call.i41.3.i, %for.cond.2.i.pch_phub_write_gbe_mac_addr.exit_crit_edge ], [ %call.i41.4.i, %for.cond.3.i.pch_phub_write_gbe_mac_addr.exit_crit_edge ], [ %call.i41.5.i, %for.cond.4.i ]
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %41 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  call void @pci_unmap_rom(ptr noundef %40, ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool10.not = icmp eq i32 %retval.0.i, 0
  %count.call7 = select i1 %tobool10.not, i32 %count, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %pch_phub_write_gbe_mac_addr.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %count.call7, %pch_phub_write_gbe_mac_addr.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_size) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_phub_write_serial_rom(ptr nocapture noundef readonly %chip, i32 noundef %offset_address, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pch_phub_extrom_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %and = and i32 %offset_address, -4
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %rem = shl i32 %offset_address, 3
  %mul = and i32 %rem, 24
  %shl = shl nuw i32 255, %mul
  %neg = xor i32 %shl, -1
  %add.ptr2 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #8, !srcloc !76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %and3 = and i32 %3, %neg
  %conv = zext i8 %data to i32
  %shl4 = shl nuw i32 %conv, %mul
  %or = or i32 %and3, %shl4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !76
  %5 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not25 = icmp eq i8 %7, 0
  br i1 %cmp.not25, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %entry
  tail call void @msleep(i32 noundef 1) #8
  %8 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not = icmp eq i8 %10, 0
  br i1 %cmp.not, label %while.body.preheader.while.end_crit_edge, label %while.body.1

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.1:                                     ; preds = %while.body.preheader
  tail call void @msleep(i32 noundef 1) #8
  %11 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not.1 = icmp eq i8 %13, 0
  br i1 %cmp.not.1, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  tail call void @msleep(i32 noundef 1) #8
  %14 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not.2 = icmp eq i8 %16, 0
  br i1 %cmp.not.2, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  tail call void @msleep(i32 noundef 1) #8
  %17 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.3 = icmp eq i8 %19, 0
  br i1 %cmp.not.3, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  tail call void @msleep(i32 noundef 1) #8
  %20 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not.4 = icmp eq i8 %22, 0
  br i1 %cmp.not.4, label %while.body.4.while.end_crit_edge, label %cleanup.loopexit

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.preheader.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %add.ptr13 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #8, !srcloc !76
  br label %cleanup

cleanup.loopexit:                                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -110, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_phub_bin_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %rom_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_size) #8
  %0 = ptrtoint ptr %rom_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rom_size, align 4, !annotation !79
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @pch_phub_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %call3 = call ptr @pci_map_rom(ptr noundef %4, ptr noundef nonnull %rom_size) #8
  %pch_phub_extrom_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 15
  %5 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %pch_phub_extrom_base_address, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.exrom_map_err_crit_edge, label %if.else

if.end.exrom_map_err_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exrom_map_err

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pch_opt_rom_start_address = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 17
  %6 = ptrtoint ptr %pch_opt_rom_start_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pch_opt_rom_start_address, align 4
  %add.ptr.i = getelementptr i8, ptr %call3, i32 %7
  %8 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %9 = ptrtoint ptr %pch_opt_rom_start_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pch_opt_rom_start_address, align 4
  %add = add i32 %10, 1
  %11 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  %add.ptr.i64 = getelementptr i8, ptr %12, i32 %add
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i64) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %16 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pch_phub_extrom_base_address, align 4
  call void @pci_unmap_rom(ptr noundef %15, ptr noundef %17) #8
  br label %exrom_map_err

exrom_map_err:                                    ; preds = %if.else, %if.end.exrom_map_err_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @pch_phub_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %exrom_map_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %exrom_map_err ], [ -512, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_size) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_phub_bin_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %rom_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_size) #8
  %0 = ptrtoint ptr %rom_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rom_size, align 4, !annotation !79
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @pch_phub_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 15360, i64 %off)
  %cmp = icmp sgt i64 %off, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 15360, i32 %count)
  %cmp5 = icmp ugt i32 %count, 15360
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.end.return_ok_crit_edge, label %if.end7

if.end.return_ok_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_ok

if.end7:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %call8 = call ptr @pci_map_rom(ptr noundef %4, ptr noundef nonnull %rom_size) #8
  %pch_phub_extrom_base_address = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 15
  %5 = ptrtoint ptr %pch_phub_extrom_base_address to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %pch_phub_extrom_base_address, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end7.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1353.not = icmp eq i32 %count, 0
  br i1 %cmp1353.not, label %for.cond.preheader.return_ok_crit_edge, label %for.body.lr.ph

for.cond.preheader.return_ok_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_ok

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pch_opt_rom_start_address = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 17
  %6 = trunc i64 %off to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr_offset.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = zext i32 %addr_offset.054 to i64
  %add = add i64 %conv, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 15360, i64 %add)
  %cmp14 = icmp sgt i64 %add, 15360
  br i1 %cmp14, label %for.body.return_ok_crit_edge, label %if.end17

for.body.return_ok_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_ok

if.end17:                                         ; preds = %for.body
  %7 = ptrtoint ptr %pch_opt_rom_start_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pch_opt_rom_start_address, align 4
  %add18 = add i32 %addr_offset.054, %6
  %conv21 = add i32 %add18, %8
  %arrayidx = getelementptr i8, ptr %buf, i32 %addr_offset.054
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %call22 = call fastcc i32 @pch_phub_write_serial_rom(ptr noundef %2, i32 noundef %conv21, i8 noundef zeroext %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.inc, label %if.end17.cleanup.sink.split.sink.split_crit_edge

if.end17.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

for.inc:                                          ; preds = %if.end17
  %inc = add i32 %addr_offset.054, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.return_ok_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.return_ok_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %return_ok

return_ok:                                        ; preds = %for.inc.return_ok_crit_edge, %for.body.return_ok_crit_edge, %for.cond.preheader.return_ok_crit_edge, %if.end.return_ok_crit_edge
  %addr_offset.1 = phi i32 [ 0, %if.end.return_ok_crit_edge ], [ 0, %for.cond.preheader.return_ok_crit_edge ], [ %addr_offset.054, %for.body.return_ok_crit_edge ], [ %count, %for.inc.return_ok_crit_edge ]
  %pdev26 = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 19
  %pch_phub_extrom_base_address27 = getelementptr inbounds %struct.pch_phub_reg, ptr %2, i32 0, i32 15
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %return_ok, %if.end17.cleanup.sink.split.sink.split_crit_edge
  %pch_phub_extrom_base_address.sink = phi ptr [ %pch_phub_extrom_base_address27, %return_ok ], [ %pch_phub_extrom_base_address, %if.end17.cleanup.sink.split.sink.split_crit_edge ]
  %.sink.in = phi ptr [ %pdev26, %return_ok ], [ %pdev, %if.end17.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %addr_offset.1, %return_ok ], [ %call22, %if.end17.cleanup.sink.split.sink.split_crit_edge ]
  %11 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.sink = load ptr, ptr %.sink.in, align 4
  %12 = ptrtoint ptr %pch_phub_extrom_base_address.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pch_phub_extrom_base_address.sink, align 4
  call void @pci_unmap_rom(ptr noundef %.sink, ptr noundef %13) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end7.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  call void @mutex_unlock(ptr noundef nonnull @pch_phub_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_size) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_phub_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_phub_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_pch_phub__284_875_pch_phub_driver_init6, !1, !"__initcall__kmod_pch_phub__284_875_pch_phub_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/pch_phub.c", i32 875, i32 1}
!2 = !{ptr @__exitcall_pch_phub_driver_exit, !1, !"__exitcall_pch_phub_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description285, !4, !"__UNIQUE_ID_description285", i1 false, i1 false}
!4 = !{!"../drivers/misc/pch_phub.c", i32 877, i32 1}
!5 = !{ptr @__UNIQUE_ID_file286, !6, !"__UNIQUE_ID_file286", i1 false, i1 false}
!6 = !{!"../drivers/misc/pch_phub.c", i32 878, i32 1}
!7 = !{ptr @__UNIQUE_ID_license287, !6, !"__UNIQUE_ID_license287", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pch_phub_driver, !10, !"pch_phub_driver", i1 false, i1 false}
!10 = !{!"../drivers/misc/pch_phub.c", i32 867, i32 26}
!11 = !{ptr @pch_phub_pcidev_id, !12, !"pch_phub_pcidev_id", i1 false, i1 false}
!12 = !{!"../drivers/misc/pch_phub.c", i32 855, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/pch_phub.c", i32 674, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pch_phub_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @pch_phub_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/pch_phub.c", i32 678, i32 2}
!23 = !{ptr @pch_phub_probe.__UNIQUE_ID_ddebug281, !22, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/pch_phub.c", i32 683, i32 3}
!26 = !{ptr @pch_phub_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pch_phub_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/pch_phub.c", i32 687, i32 2}
!30 = !{ptr @pch_phub_probe.__UNIQUE_ID_ddebug282, !29, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/misc/pch_phub.c", i32 694, i32 3}
!33 = !{ptr @pch_phub_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pch_phub_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/pch_phub.c", i32 698, i32 2}
!37 = !{ptr @pch_phub_probe.__UNIQUE_ID_ddebug283, !36, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/pch_phub.c", i32 710, i32 9}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/pch_phub.c", i32 729, i32 40}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/pch_phub.c", i32 745, i32 33}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/pch_phub.c", i32 825, i32 2}
!46 = !{ptr @pch_phub_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pch_phub_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/pch_phub.c", i32 650, i32 8}
!50 = !{ptr @dev_attr_pch_mac, !49, !"dev_attr_pch_mac", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/pch_phub.c", i32 624, i32 22}
!53 = distinct !{null, !54, !"pch_phub_mac_offset", i1 false, i1 false}
!54 = !{!"../drivers/misc/pch_phub.c", i32 132, i32 18}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/pch_phub.c", i32 654, i32 11}
!57 = !{ptr @pch_bin_attr, !58, !"pch_bin_attr", i1 false, i1 false}
!58 = !{!"../drivers/misc/pch_phub.c", i32 652, i32 35}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/pch_phub.c", i32 134, i32 8}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @pch_phub_mutex, !60, !"pch_phub_mutex", i1 false, i1 false}
!63 = !{ptr @pch_phub_pm_ops, !64, !"pch_phub_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/misc/pch_phub.c", i32 865, i32 8}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148979116, i64 2148979121, i64 2148979134, i64 2148979178, i64 2148979212, i64 2148979233}
!75 = !{i64 2153277034}
!76 = !{i64 5734912}
!77 = !{i64 5735330}
!78 = !{i64 2153275679}
!79 = !{!"auto-init"}
!80 = !{i64 5735110}
!81 = !{i64 2153274455}
