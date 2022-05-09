; ModuleID = '/llk/IR_all_yes/drivers/w1/w1_int.c_pt.bc'
source_filename = "../drivers/w1/w1_int.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+w1_add_master_device\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_add_master_device\09\09\09\09"
module asm "\09.long\09__crc_w1_add_master_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_add_master_device:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_add_master_device\22\09\09\09\09\09"
module asm "__kstrtabns_w1_add_master_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+w1_remove_master_device\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_remove_master_device\09\09\09\09"
module asm "\09.long\09__crc_w1_remove_master_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_remove_master_device:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_remove_master_device\22\09\09\09\09\09"
module asm "__kstrtabns_w1_remove_master_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.w1_netlink_msg = type { i8, i8, i16, %union.anon.145, [0 x i8] }
%union.anon.145 = type { %struct.w1_mst }
%struct.w1_mst = type { i32, i32 }
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_search_count = internal constant [18 x i8] c"wire.search_count\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@w1_search_count = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_search_count = internal constant %struct.kernel_param { ptr @__param_str_search_count, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @w1_search_count } }, section "__param", align 4
@__UNIQUE_ID_search_counttype457 = internal constant [31 x i8] c"wire.parmtype=search_count:int\00", section ".modinfo", align 1
@__param_str_enable_pullup = internal constant [19 x i8] c"wire.enable_pullup\00", align 1
@w1_enable_pullup = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enable_pullup = internal constant %struct.kernel_param { ptr @__param_str_enable_pullup, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @w1_enable_pullup } }, section "__param", align 4
@__UNIQUE_ID_enable_pulluptype458 = internal constant [32 x i8] c"wire.parmtype=enable_pullup:int\00", section ".modinfo", align 1
@w1_add_master_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013w1_add_master_device: invalid function set\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"w1_add_master_device\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/w1/w1_int.c\00", [44 x i8] zeroinitializer }, align 32
@w1_add_master_device._entry_ptr = internal global ptr @w1_add_master_device._entry, section ".printk_index", align 4
@w1_mlock = external dso_local global %struct.mutex, align 4
@w1_masters = external dso_local global %struct.list_head, align 4
@w1_max_slave_count = external dso_local local_unnamed_addr global i32, align 4
@w1_max_slave_ttl = external dso_local local_unnamed_addr global i32, align 4
@w1_master_driver = external dso_local global %struct.device_driver, align 4
@w1_master_device = external dso_local local_unnamed_addr global %struct.device, align 8
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@w1_add_master_device._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 145, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to create new kernel thread. err=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w1_add_master_device._entry_ptr.8 = internal global ptr @w1_add_master_device._entry.4, section ".printk_index", align 4
@__kstrtab_w1_add_master_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_add_master_device = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_add_master_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_add_master_device to i32), ptr @__kstrtab_w1_add_master_device, ptr @__kstrtabns_w1_add_master_device }, section "___ksymtab+w1_add_master_device", align 4
@__w1_remove_master_device._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 200, ptr @.str.11, ptr @.str.7 }, align 1
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Waiting for %s to become free: refcnt=%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__w1_remove_master_device\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@__w1_remove_master_device._entry_ptr = internal global ptr @__w1_remove_master_device._entry, section ".printk_index", align 4
@w1_remove_master_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Device doesn't exist.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"w1_remove_master_device\00", [40 x i8] zeroinitializer }, align 32
@w1_remove_master_device._entry_ptr = internal global ptr @w1_remove_master_device._entry, section ".printk_index", align 4
@__kstrtab_w1_remove_master_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_remove_master_device = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_remove_master_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_remove_master_device to i32), ptr @__kstrtab_w1_remove_master_device, ptr @__kstrtabns_w1_remove_master_device }, section "___ksymtab+w1_remove_master_device", align 4
@w1_alloc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Failed to allocate %zd bytes for new w1 device.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"w1_alloc_dev\00", [19 x i8] zeroinitializer }, align 32
@w1_alloc_dev._entry_ptr = internal global ptr @w1_alloc_dev._entry, section ".printk_index", align 4
@w1_alloc_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@w1_alloc_dev.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->bus_mutex\00", [16 x i8] zeroinitializer }, align 32
@w1_alloc_dev.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->list_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w1_bus_master%u\00", [16 x i8] zeroinitializer }, align 32
@w1_alloc_dev._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register master device. err=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@w1_alloc_dev._entry_ptr.24 = internal global ptr @w1_alloc_dev._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"w1_search_count\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 18, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"w1_enable_pullup\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 21, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 104, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 140, i32 16 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 143, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 199, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 239, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 36, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 61, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 62, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 63, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 66, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [23 x i8] c"../drivers/w1/w1_int.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 76, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_enable_pulluptype458, ptr @__UNIQUE_ID_search_counttype457, ptr @__ksymtab_w1_add_master_device, ptr @__ksymtab_w1_remove_master_device, ptr @__param_enable_pullup, ptr @__param_search_count, ptr @__w1_remove_master_device._entry, ptr @__w1_remove_master_device._entry_ptr, ptr @w1_add_master_device._entry, ptr @w1_add_master_device._entry.4, ptr @w1_add_master_device._entry_ptr, ptr @w1_add_master_device._entry_ptr.8, ptr @w1_alloc_dev._entry, ptr @w1_alloc_dev._entry.22, ptr @w1_alloc_dev._entry_ptr, ptr @w1_alloc_dev._entry_ptr.24, ptr @w1_remove_master_device._entry, ptr @w1_remove_master_device._entry_ptr, ptr @w1_search_count, ptr @w1_enable_pullup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @w1_alloc_dev.__key, ptr @.str.16, ptr @w1_alloc_dev.__key.17, ptr @.str.18, ptr @w1_alloc_dev.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_search_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_enable_pullup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_add_master_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_add_master_device._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_remove_master_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_alloc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_alloc_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_alloc_dev.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_alloc_dev.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_alloc_dev._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_add_master_device(ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  %msg = alloca %struct.w1_netlink_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg, i32 0, i32 3
  %touch_bit = getelementptr inbounds %struct.w1_bus_master, ptr %master, i32 0, i32 3
  %1 = ptrtoint ptr %touch_bit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %touch_bit, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.land.lhs.true4_crit_edge, label %land.lhs.true

entry.land.lhs.true4_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true4

land.lhs.true:                                    ; preds = %entry
  %reset_bus = getelementptr inbounds %struct.w1_bus_master, ptr %master, i32 0, i32 9
  %3 = ptrtoint ptr %reset_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_bus, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.land.lhs.true4_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true.land.lhs.true4_crit_edge, %entry.land.lhs.true4_crit_edge
  %write_bit = getelementptr inbounds %struct.w1_bus_master, ptr %master, i32 0, i32 2
  %5 = ptrtoint ptr %write_bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_bit, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true4.land.lhs.true8_crit_edge, label %land.lhs.true6

land.lhs.true4.land.lhs.true8_crit_edge:          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true8

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %read_bit = getelementptr inbounds %struct.w1_bus_master, ptr %master, i32 0, i32 1
  %7 = ptrtoint ptr %read_bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_bit, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true6.land.lhs.true8_crit_edge, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true6.land.lhs.true8_crit_edge:          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6.land.lhs.true8_crit_edge, %land.lhs.true4.land.lhs.true8_crit_edge
  %write_byte = getelementptr inbounds %struct.w1_bus_master, ptr %master, i32 0, i32 5
  %9 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_byte, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %land.lhs.true8.do.end_crit_edge, label %land.lhs.true10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %read_byte = getelementptr inbounds %struct.w1_bus_master, ptr %master, i32 0, i32 4
  %11 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_byte, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true10.do.end_crit_edge, label %land.lhs.true12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %reset_bus13 = getelementptr inbounds %struct.w1_bus_master, ptr %master, i32 0, i32 9
  %13 = ptrtoint ptr %reset_bus13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_bus13, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %land.lhs.true12.do.end_crit_edge, label %land.lhs.true12.if.end_crit_edge

land.lhs.true12.if.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %land.lhs.true12.do.end_crit_edge, %land.lhs.true10.do.end_crit_edge, %land.lhs.true8.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true12.if.end_crit_edge, %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @w1_mlock, i32 noundef 0) #8
  br label %do.body15

do.body15:                                        ; preds = %for.body.do.body15_crit_edge, %if.end
  %id.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body.do.body15_crit_edge ]
  %inc = add i32 %id.0, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body15
  %entry1.0.in = phi ptr [ @w1_masters, %do.body15 ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %15 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, @w1_masters
  br i1 %cmp.not, label %do.end27.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %id17 = getelementptr inbounds %struct.w1_master, ptr %entry1.0, i32 0, i32 11
  %16 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id17, align 4
  %cmp18 = icmp eq i32 %17, %inc
  br i1 %cmp18, label %for.body.do.body15_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.end27.critedge:                                ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @w1_max_slave_count to i32))
  %18 = load i32, ptr @w1_max_slave_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @w1_max_slave_ttl to i32))
  %19 = load i32, ptr @w1_max_slave_ttl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 1396) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end27.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 1344) #11
  br label %if.then30

if.end.i:                                         ; preds = %do.end27.critedge
  %add.ptr.i = getelementptr %struct.w1_master, ptr %call7.i.i.i, i32 1
  %bus_master.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 24
  %21 = ptrtoint ptr %bus_master.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %bus_master.i, align 8
  %owner.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner.i, align 8
  %max_slave_count.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %max_slave_count.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %max_slave_count.i, align 8
  %slave_count2.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %slave_count2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %slave_count2.i, align 4
  %attempts.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %attempts.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %attempts.i, align 8
  %initialized.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %initialized.i, align 8
  %id3.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 11
  %27 = ptrtoint ptr %id3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %id3.i, align 4
  %slave_ttl4.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %slave_ttl4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %19, ptr %slave_ttl4.i, align 4
  %29 = load i32, ptr @w1_search_count, align 4
  %search_count.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 12
  %30 = ptrtoint ptr %search_count.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %search_count.i, align 8
  %31 = load i32, ptr @w1_enable_pullup, align 4
  %enable_pullup.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %enable_pullup.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %enable_pullup.i, align 8
  %refcnt.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  %33 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 2, ptr %refcnt.i, align 8
  %slist.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %slist.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %slist.i, ptr %slist.i, align 8
  %prev.i.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %slist.i, ptr %prev.i.i, align 4
  %async_list.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %async_list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %async_list.i, ptr %async_list.i, align 8
  %prev.i1.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %async_list.i, ptr %prev.i1.i, align 4
  %mutex.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @w1_alloc_dev.__key) #8
  %bus_mutex.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %bus_mutex.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @w1_alloc_dev.__key.17) #8
  %list_mutex.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %list_mutex.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @w1_alloc_dev.__key.19) #8
  %dev14.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 23
  %38 = call ptr @memcpy(ptr %dev14.i, ptr @w1_master_device, i32 928)
  %39 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id3.i, align 4
  %call17.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev14.i, ptr noundef nonnull @.str.21, i32 noundef %40) #8
  %name.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id3.i, align 4
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %42) #8
  %init_name.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 23, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %name.i, ptr %init_name.i, align 8
  %driver23.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 22
  %44 = ptrtoint ptr %driver23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @w1_master_driver, ptr %driver23.i, align 8
  %seq.i = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 25
  %45 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %seq.i, align 4
  %call25.i = tail call i32 @device_register(ptr noundef %dev14.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end31, label %do.end30.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call25.i) #11
  tail call void @put_device(ptr noundef %dev14.i) #8
  br label %if.then30

if.then30:                                        ; preds = %do.end30.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end.i
  %call32 = tail call i32 @w1_create_master_attributes(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #8
  br label %err_out_free_dev

if.end35:                                         ; preds = %if.end31
  %46 = ptrtoint ptr %bus_master.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus_master.i, align 8
  %48 = call ptr @memcpy(ptr %47, ptr %master, i32 52)
  %49 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %initialized.i, align 8
  %call36 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @w1_process, ptr noundef nonnull %call7.i.i.i, i32 noundef -1, ptr noundef nonnull @.str.3, ptr noundef %name.i) #8
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %thread94 = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %thread94 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call36, ptr %thread94, align 4
  %51 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.5, i32 noundef %51) #11
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #8
  tail call void @w1_destroy_master_attributes(ptr noundef nonnull %call7.i.i.i) #8
  br label %err_out_free_dev

if.end51:                                         ; preds = %if.end35
  %call39 = tail call i32 @wake_up_process(ptr noundef %call36) #8
  %thread = getelementptr inbounds %struct.w1_master, ptr %call7.i.i.i, i32 0, i32 19
  %52 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call36, ptr %thread, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @w1_masters to i32))
  %53 = load ptr, ptr @w1_masters, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @w1_masters, ptr noundef %53) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.list_add.exit_crit_edge

if.end51.list_add.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i, ptr %prev1.i.i, align 4
  %55 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @w1_masters, ptr %prev3.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @w1_masters to i32))
  store volatile ptr %call7.i.i.i, ptr @w1_masters, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end51.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #8
  %57 = call ptr @memset(ptr %msg, i32 0, i32 12)
  %58 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id3.i, align 4
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %0, align 4
  %61 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %msg, align 4
  call void @w1_netlink_send(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %msg) #8
  br label %cleanup

err_out_free_dev:                                 ; preds = %if.then44, %if.then34
  %retval2.0 = phi i32 [ %call32, %if.then34 ], [ %51, %if.then44 ]
  tail call void @device_unregister(ptr noundef %dev14.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_dev, %list_add.exit, %if.then30, %do.end
  %retval.0 = phi i32 [ %retval2.0, %err_out_free_dev ], [ 0, %list_add.exit ], [ -12, %if.then30 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_create_master_attributes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_process(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_netlink_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_destroy_master_attributes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__w1_remove_master_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.w1_netlink_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %0 = call ptr @memset(ptr %msg, i32 255, i32 12)
  tail call void @mutex_lock_nested(ptr noundef nonnull @w1_mlock, i32 noundef 0) #8
  %call.i.i64 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev) #8
  br i1 %call.i.i64, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %dev, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @w1_mlock) #8
  %flags = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  %thread = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %10) #8
  %mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %list_mutex = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #8
  %slist = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slist, align 8
  %cmp.not65 = icmp eq ptr %12, %slist
  br i1 %cmp.not65, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %.pn.in66 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %12, %list_del.exit.for.body_crit_edge ]
  %sl.0 = getelementptr i8, ptr %.pn.in66, i32 -36
  %13 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn.in66, align 4
  tail call void @mutex_unlock(ptr noundef %list_mutex) #8
  %call8 = tail call i32 @w1_slave_detach(ptr noundef %sl.0) #8
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #8
  %cmp.not = icmp eq ptr %.pn, %slist
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @w1_destroy_master_attributes(ptr noundef %dev) #8
  tail call void @mutex_unlock(ptr noundef %list_mutex) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %refcnt = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !71
  %call.i.i6267 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not68 = icmp eq i32 %16, 0
  br i1 %tobool.not68, label %for.end.while.end_crit_edge, label %do.end.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.lr.ph:                                     ; preds = %for.end
  %dev19 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 23
  %name = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 2
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.end.lr.ph
  %call.i.i63 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %17 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcnt, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %18) #11
  %call22 = tail call i32 @msleep_interruptible(i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  tail call void @flush_signals(ptr noundef %22) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #8
  %call26 = tail call i32 @w1_process_callbacks(ptr noundef %dev) #8
  tail call void @mutex_unlock(ptr noundef %list_mutex) #8
  %call.i.i62 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %23 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %refcnt, align 4
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %for.end.while.end_crit_edge
  %25 = getelementptr inbounds %struct.w1_netlink_msg, ptr %msg, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %list_mutex, i32 noundef 0) #8
  %call29 = tail call i32 @w1_process_callbacks(ptr noundef %dev) #8
  tail call void @mutex_unlock(ptr noundef %list_mutex) #8
  %26 = call ptr @memset(ptr %msg, i32 0, i32 12)
  %id = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 11
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %25, align 4
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %msg, align 4
  call void @w1_netlink_send(ptr noundef %dev, ptr noundef nonnull %msg) #8
  %dev1.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 23
  call void @device_unregister(ptr noundef %dev1.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_slave_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_process_callbacks(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_remove_master_device(ptr nocapture noundef readonly %bm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @w1_masters to i32))
  %dev.022 = load ptr, ptr @w1_masters, align 4
  %cmp.not23 = icmp eq ptr %dev.022, @w1_masters
  br i1 %cmp.not23, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.024 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.022, %entry.for.body_crit_edge ]
  %initialized = getelementptr inbounds %struct.w1_master, ptr %dev.024, i32 0, i32 10
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev.024, i32 0, i32 24
  %2 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_master, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bm, align 4
  %cmp2 = icmp eq ptr %5, %7
  br i1 %cmp2, label %for.end, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %dev.024 to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.0 = load ptr, ptr %dev.024, align 4
  %cmp.not = icmp eq ptr %dev.0, @w1_masters
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end:                                          ; preds = %if.end
  %tobool9.not = icmp eq ptr %dev.024, null
  br i1 %tobool9.not, label %for.end.do.end_crit_edge, label %if.end12

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__w1_remove_master_device(ptr noundef nonnull %dev.024)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__param_search_count, !1, !"__param_search_count", i1 false, i1 false}
!1 = !{!"../drivers/w1/w1_int.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_search_counttype457, !1, !"__UNIQUE_ID_search_counttype457", i1 false, i1 false}
!3 = !{ptr @__param_enable_pullup, !4, !"__param_enable_pullup", i1 false, i1 false}
!4 = !{!"../drivers/w1/w1_int.c", i32 22, i32 1}
!5 = !{ptr @__UNIQUE_ID_enable_pulluptype458, !4, !"__UNIQUE_ID_enable_pulluptype458", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/w1/w1_int.c", i32 104, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @w1_add_master_device._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @w1_add_master_device._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/w1/w1_int.c", i32 140, i32 16}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/w1/w1_int.c", i32 143, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @w1_add_master_device._entry.4, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @w1_add_master_device._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_w1_add_master_device, !21, !"__ksymtab_w1_add_master_device", i1 false, i1 false}
!21 = !{!"../drivers/w1/w1_int.c", i32 172, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/w1_int.c", i32 199, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__w1_remove_master_device._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @__w1_remove_master_device._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/w1/w1_int.c", i32 239, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @w1_remove_master_device._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @w1_remove_master_device._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_w1_remove_master_device, !34, !"__ksymtab_w1_remove_master_device", i1 false, i1 false}
!34 = !{!"../drivers/w1/w1_int.c", i32 245, i32 1}
!35 = !{ptr @__param_str_search_count, !1, !"__param_str_search_count", i1 false, i1 false}
!36 = !{ptr @w1_search_count, !37, !"w1_search_count", i1 false, i1 false}
!37 = !{!"../drivers/w1/w1_int.c", i32 18, i32 12}
!38 = !{ptr @__param_str_enable_pullup, !4, !"__param_str_enable_pullup", i1 false, i1 false}
!39 = !{ptr @w1_enable_pullup, !40, !"w1_enable_pullup", i1 false, i1 false}
!40 = !{!"../drivers/w1/w1_int.c", i32 21, i32 12}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/w1/w1_int.c", i32 36, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @w1_alloc_dev._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @w1_alloc_dev._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @w1_alloc_dev.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/w1/w1_int.c", i32 61, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @w1_alloc_dev.__key.17, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/w1/w1_int.c", i32 62, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @w1_alloc_dev.__key.19, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/w1/w1_int.c", i32 63, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/w1/w1_int.c", i32 66, i32 26}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/w1/w1_int.c", i32 76, i32 3}
!59 = !{ptr @w1_alloc_dev._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @w1_alloc_dev._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2148216040, i64 2148216066, i64 2148216095, i64 2148216129, i64 2148216160, i64 2148216183}
