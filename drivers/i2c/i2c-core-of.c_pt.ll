; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-core-of.c_pt.bc'
source_filename = "../drivers/i2c/i2c-core-of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_i2c_get_board_info\22, \22a\22\09"
module asm "\09.weak\09__crc_of_i2c_get_board_info\09\09\09\09"
module asm "\09.long\09__crc_of_i2c_get_board_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_i2c_get_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22of_i2c_get_board_info\22\09\09\09\09\09"
module asm "__kstrtabns_of_i2c_get_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_find_i2c_device_by_node\22, \22a\22\09"
module asm "\09.weak\09__crc_of_find_i2c_device_by_node\09\09\09\09"
module asm "\09.long\09__crc_of_find_i2c_device_by_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_i2c_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_i2c_device_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_i2c_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_find_i2c_adapter_by_node\22, \22a\22\09"
module asm "\09.weak\09__crc_of_find_i2c_adapter_by_node\09\09\09\09"
module asm "\09.long\09__crc_of_find_i2c_adapter_by_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_i2c_adapter_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_get_i2c_adapter_by_node\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_i2c_adapter_by_node\09\09\09\09"
module asm "\09.long\09__crc_of_get_i2c_adapter_by_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_i2c_adapter_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_of_match_device\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_of_match_device\09\09\09\09"
module asm "\09.long\09__crc_i2c_of_match_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_of_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_of_match_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_of_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@of_i2c_get_board_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"of_i2c: modalias failure on %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_i2c_get_board_info\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/i2c/i2c-core-of.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_i2c_get_board_info._entry_ptr = internal global ptr @of_i2c_get_board_info._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_i2c_get_board_info._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"of_i2c: invalid reg on %pOF\0A\00", [35 x i8] zeroinitializer }, align 32
@of_i2c_get_board_info._entry_ptr.8 = internal global ptr @of_i2c_get_board_info._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"host-notify\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_of_i2c_get_board_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_i2c_get_board_info = external dso_local constant [0 x i8], align 1
@__ksymtab_of_i2c_get_board_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_i2c_get_board_info to i32), ptr @__kstrtab_of_i2c_get_board_info, ptr @__kstrtabns_of_i2c_get_board_info }, section "___ksymtab_gpl+of_i2c_get_board_info", align 4
@of_i2c_register_devices.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_core\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_i2c_register_devices\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"of_i2c: walking child nodes\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-bus\00", [24 x i8] zeroinitializer }, align 32
@of_i2c_register_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create I2C device for %pOF\0A\00", [58 x i8] zeroinitializer }, align 32
@of_i2c_register_devices._entry_ptr = internal global ptr @of_i2c_register_devices._entry, section ".printk_index", align 4
@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_of_find_i2c_device_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_i2c_device_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_i2c_device_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_i2c_device_by_node to i32), ptr @__kstrtab_of_find_i2c_device_by_node, ptr @__kstrtabns_of_find_i2c_device_by_node }, section "___ksymtab+of_find_i2c_device_by_node", align 4
@__kstrtab_of_find_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_i2c_adapter_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_i2c_adapter_by_node to i32), ptr @__kstrtab_of_find_i2c_adapter_by_node, ptr @__kstrtabns_of_find_i2c_adapter_by_node }, section "___ksymtab+of_find_i2c_adapter_by_node", align 4
@__kstrtab_of_get_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_i2c_adapter_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_i2c_adapter_by_node to i32), ptr @__kstrtab_of_get_i2c_adapter_by_node, ptr @__kstrtabns_of_get_i2c_adapter_by_node }, section "___ksymtab+of_get_i2c_adapter_by_node", align 4
@__kstrtab_i2c_of_match_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_of_match_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_of_match_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_of_match_device to i32), ptr @__kstrtab_i2c_of_match_device, ptr @__kstrtabns_i2c_of_match_device }, section "___ksymtab_gpl+i2c_of_match_device", align 4
@i2c_of_notifier = dso_local global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @of_i2c_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@of_i2c_register_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of_i2c_register_device\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of_i2c: register %pOF\0A\00", [41 x i8] zeroinitializer }, align 32
@of_i2c_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"of_i2c: Failure registering %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@of_i2c_register_device._entry_ptr = internal global ptr @of_i2c_register_device._entry, section ".printk_index", align 4
@of_i2c_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create client for '%pOF'\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"of_i2c_notify\00", [18 x i8] zeroinitializer }, align 32
@of_i2c_notify._entry_ptr = internal global ptr @of_i2c_notify._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 31, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 35, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 37, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 55, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 58, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 94, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 96, i32 48 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 106, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"i2c_of_notifier\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 278, i32 23 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 72, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 80, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [29 x i8] c"../drivers/i2c/i2c-core-of.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 249, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab_i2c_of_match_device, ptr @__ksymtab_of_find_i2c_adapter_by_node, ptr @__ksymtab_of_find_i2c_device_by_node, ptr @__ksymtab_of_get_i2c_adapter_by_node, ptr @__ksymtab_of_i2c_get_board_info, ptr @of_i2c_get_board_info._entry, ptr @of_i2c_get_board_info._entry.6, ptr @of_i2c_get_board_info._entry_ptr, ptr @of_i2c_get_board_info._entry_ptr.8, ptr @of_i2c_notify._entry, ptr @of_i2c_notify._entry_ptr, ptr @of_i2c_register_device._entry, ptr @of_i2c_register_device._entry_ptr, ptr @of_i2c_register_devices._entry, ptr @of_i2c_register_devices._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @i2c_of_notifier, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_i2c_get_board_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_i2c_get_board_info._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_i2c_register_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_of_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_i2c_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_i2c_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_i2c_get_board_info(ptr noundef %dev, ptr noundef %node, ptr noundef %info) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !63
  %1 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call = tail call i32 @of_modalias_node(ptr noundef %node, ptr noundef %info, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %node) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef nonnull %addr, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end6, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %node) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool7.not = icmp sgt i32 %3, -1
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %3, 2147483647
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and9, ptr %addr, align 4
  %flags = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 4
  %7 = or i16 %6, 16
  store i16 %7, ptr %flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %and12 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end20_crit_edge, label %if.then14

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %and15 = and i32 %9, -1073741825
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and15, ptr %addr, align 4
  %flags16 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags16, align 4
  %13 = or i16 %12, 32
  store i16 %13, ptr %flags16, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end11.if.end20_crit_edge
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %conv21 = trunc i32 %15 to i16
  %addr22 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %addr22 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv21, ptr %addr22, align 2
  %of_node = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node, ptr %of_node, align 4
  %tobool23.not = icmp eq ptr %node, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select = select i1 %tobool23.not, ptr null, ptr %fwnode
  %fwnode24 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 6
  %18 = ptrtoint ptr %fwnode24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select, ptr %fwnode24, align 4
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end20.if.end31_crit_edge, label %if.then26

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %flags27 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %flags27 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags27, align 4
  %21 = or i16 %20, 64
  store i16 %21, ptr %flags27, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end20.if.end31_crit_edge
  %call32 = call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %flags35 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 1
  %22 = ptrtoint ptr %flags35 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags35, align 4
  %24 = or i16 %23, 128
  store i16 %24, ptr %flags35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end31.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i, %do.end5 ], [ 0, %if.then34 ], [ 0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_modalias_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_i2c_register_devices(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %of_node = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_i2c_register_devices.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@of_i2c_register_devices, %do.end)) #6
          to label %if.then5 [label %do.end], !srcloc !64

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_i2c_register_devices.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call10 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.14) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call15 = tail call ptr @of_node_get(ptr noundef %5) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.end.if.end16_crit_edge
  %bus.0 = phi ptr [ %call10, %do.end.if.end16_crit_edge ], [ %call15, %if.then12 ]
  %call17 = tail call ptr @of_get_next_available_child(ptr noundef %bus.0, ptr noundef null) #6
  %cmp.not49 = icmp eq ptr %call17, null
  br i1 %cmp.not49, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %node.050 = phi ptr [ %call30, %for.inc.for.body_crit_edge ], [ %call17, %if.end16.for.body_crit_edge ]
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %node.050, i32 0, i32 10
  %call.i = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end21:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #6
  %6 = call ptr @memset(ptr %info.i, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_i2c_register_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@of_i2c_register_devices, %do.end.i)) #6
          to label %if.then.i [label %do.end.i], !srcloc !64

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_i2c_register_device.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %node.050) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end21
  %call5.i = call i32 @of_i2c_get_board_info(ptr noundef %dev, ptr noundef nonnull %node.050, ptr noundef nonnull %info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = inttoptr i32 %call5.i to ptr
  br label %of_i2c_register_device.exit

if.end9.i:                                        ; preds = %do.end.i
  %call10.i = call ptr @i2c_new_client_device(ptr noundef %adap, ptr noundef nonnull %info.i) #6
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end15.i, label %if.end9.i.of_i2c_register_device.exit_crit_edge

if.end9.i.of_i2c_register_device.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_i2c_register_device.exit

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull %node.050) #9
  br label %of_i2c_register_device.exit

of_i2c_register_device.exit:                      ; preds = %do.end15.i, %if.end9.i.of_i2c_register_device.exit_crit_edge, %if.then7.i
  %retval.0.i46 = phi ptr [ %7, %if.then7.i ], [ %call10.i, %do.end15.i ], [ %call10.i, %if.end9.i.of_i2c_register_device.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #6
  %cmp.i = icmp ugt ptr %retval.0.i46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %of_i2c_register_device.exit.for.inc_crit_edge

of_i2c_register_device.exit.for.inc_crit_edge:    ; preds = %of_i2c_register_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end27:                                         ; preds = %of_i2c_register_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull %node.050) #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end27, %of_i2c_register_device.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call30 = call ptr @of_get_next_available_child(ptr noundef %bus.0, ptr noundef nonnull %node.050) #6
  %cmp.not = icmp eq ptr %call30, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  call void @of_node_put(ptr noundef %bus.0) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_find_i2c_device_by_node(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %node, ptr noundef nonnull @device_match_of_node) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @i2c_verify_client(ptr noundef nonnull %call.i) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %node, ptr noundef nonnull @of_dev_or_parent_node_match) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @i2c_verify_adapter(ptr noundef nonnull %call) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @of_dev_or_parent_node_match(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.then1

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %of_node3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node3, align 8
  %cmp4 = icmp eq ptr %5, %data
  %conv = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.then1, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then1 ], [ 1, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %node, ptr noundef nonnull @of_dev_or_parent_node_match) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @i2c_verify_adapter(ptr noundef nonnull %call.i) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %0 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call1.i, align 8
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef %1) #6
  br i1 %call1, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %call1.i, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i, %if.end.cleanup_crit_edge ], [ null, %if.then2 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then3.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @i2c_of_match_device(ptr noundef %matches, ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  %tobool1.not = icmp eq ptr %matches, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @of_match_device(ptr noundef nonnull %matches, ptr noundef %dev) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %compatible27.i = getelementptr inbounds %struct.of_device_id, ptr %matches, i32 0, i32 2
  %0 = ptrtoint ptr %compatible27.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %compatible27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not28.i = icmp eq i8 %1, 0
  br i1 %tobool.not28.i, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end4
  %name1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %compatible30.i = phi ptr [ %compatible27.i, %for.body.lr.ph.i ], [ %compatible.i, %for.inc.i.for.body.i_crit_edge ]
  %matches.addr.029.i = phi ptr [ %matches, %for.body.lr.ph.i ], [ %incdec.ptr17.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %name1.i, ptr noundef %compatible30.i) #6
  br i1 %call.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %call6.i = tail call ptr @strchr(ptr noundef %compatible30.i, i32 noundef 44) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  %incdec.ptr.i = getelementptr i8, ptr %call6.i, i32 1
  %name.0.i = select i1 %tobool7.not.i, ptr %compatible30.i, ptr %incdec.ptr.i
  %call14.i = tail call zeroext i1 @sysfs_streq(ptr noundef %name1.i, ptr noundef %name.0.i) #6
  br i1 %call14.i, label %if.end.i.cleanup_crit_edge, label %for.inc.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i
  %incdec.ptr17.i = getelementptr %struct.of_device_id, ptr %matches.addr.029.i, i32 1
  %compatible.i = getelementptr %struct.of_device_id, ptr %matches.addr.029.i, i32 1, i32 2
  %2 = ptrtoint ptr %compatible.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %compatible.i, align 4
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ %matches.addr.029.i, %for.body.i.cleanup_crit_edge ], [ %matches.addr.029.i, %if.end.i.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_i2c_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %arg) #0 align 64 {
entry:
  %info.i = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_reconfig_get_state_change(i32 noundef %action, ptr noundef %arg) #6
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arg, align 4
  %parent = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %4, ptr noundef nonnull @of_dev_or_parent_node_match) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call ptr @i2c_verify_adapter(ptr noundef nonnull %call.i) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arg, align 4
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 10
  %call.i48 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not = icmp eq i32 %call.i48, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %call1.i, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #6
  %9 = call ptr @memset(ptr %info.i, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_i2c_register_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@of_i2c_notify, %do.end.i)) #6
          to label %if.then.i [label %do.end.i], !srcloc !64

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %call1.i, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_i2c_register_device.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef %8) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end5
  %dev4.i = getelementptr inbounds %struct.i2c_adapter, ptr %call1.i, i32 0, i32 9
  %call5.i = call i32 @of_i2c_get_board_info(ptr noundef %dev4.i, ptr noundef %8, ptr noundef nonnull %info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = inttoptr i32 %call5.i to ptr
  br label %of_i2c_register_device.exit

if.end9.i:                                        ; preds = %do.end.i
  %call10.i = call ptr @i2c_new_client_device(ptr noundef nonnull %call1.i, ptr noundef nonnull %info.i) #6
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end15.i, label %if.end9.i.of_i2c_register_device.exit_crit_edge

if.end9.i.of_i2c_register_device.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_i2c_register_device.exit

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.18, ptr noundef %8) #9
  br label %of_i2c_register_device.exit

of_i2c_register_device.exit:                      ; preds = %do.end15.i, %if.end9.i.of_i2c_register_device.exit_crit_edge, %if.then7.i
  %retval.0.i49 = phi ptr [ %10, %if.then7.i ], [ %call10.i, %do.end15.i ], [ %call10.i, %if.end9.i.of_i2c_register_device.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #6
  %cmp.i = icmp ugt ptr %retval.0.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %of_i2c_register_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.19, ptr noundef %12) #9
  call void @put_device(ptr noundef %dev4.i) #6
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %_flags.i50 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i50) #6
  %15 = ptrtoint ptr %retval.0.i49 to i32
  %sub.i = sub i32 1, %15
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

if.end16:                                         ; preds = %of_i2c_register_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_device(ptr noundef %dev4.i) #6
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg, align 4
  %_flags.i53 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %_flags.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_flags.i53, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %sw.bb18.cleanup_crit_edge, label %if.end23

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %sw.bb18
  %call.i.i = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %17, ptr noundef nonnull @device_match_of_node) #6
  %tobool.not.i54 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i54, label %if.end23.cleanup_crit_edge, label %if.end.i57

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i57:                                       ; preds = %if.end23
  %call1.i55 = tail call ptr @i2c_verify_client(ptr noundef nonnull %call.i.i) #6
  %tobool2.not.i56 = icmp eq ptr %call1.i55, null
  br i1 %tobool2.not.i56, label %if.then3.i58, label %if.end28

if.then3.i58:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call.i.i) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_unregister_device(ptr noundef nonnull %call1.i55) #6
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %call1.i55, i32 0, i32 4
  tail call void @put_device(ptr noundef %dev29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then3.i58, %if.end23.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %if.end16, %do.end, %if.then4, %if.then3.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then4 ], [ %or.i, %do.end ], [ 1, %sw.bb18.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end28 ], [ 1, %if.end16 ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.then3.i ], [ 1, %if.end23.cleanup_crit_edge ], [ 1, %if.then3.i58 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_get_state_change(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-core-of.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @of_i2c_get_board_info._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @of_i2c_get_board_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/i2c/i2c-core-of.c", i32 35, i32 35}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/i2c-core-of.c", i32 37, i32 3}
!12 = !{ptr @of_i2c_get_board_info._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_i2c_get_board_info._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/i2c-core-of.c", i32 55, i32 34}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/i2c-core-of.c", i32 58, i32 28}
!18 = !{ptr @__ksymtab_of_i2c_get_board_info, !19, !"__ksymtab_of_i2c_get_board_info", i1 false, i1 false}
!19 = !{!"../drivers/i2c/i2c-core-of.c", i32 63, i32 1}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/i2c-core-of.c", i32 94, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @of_i2c_register_devices.__UNIQUE_ID_ddebug289, !21, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/i2c-core-of.c", i32 96, i32 48}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/i2c-core-of.c", i32 106, i32 4}
!29 = !{ptr @of_i2c_register_devices._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @of_i2c_register_devices._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_of_find_i2c_device_by_node, !32, !"__ksymtab_of_find_i2c_device_by_node", i1 false, i1 false}
!32 = !{!"../drivers/i2c/i2c-core-of.c", i32 143, i32 1}
!33 = !{ptr @__ksymtab_of_find_i2c_adapter_by_node, !34, !"__ksymtab_of_find_i2c_adapter_by_node", i1 false, i1 false}
!34 = !{!"../drivers/i2c/i2c-core-of.c", i32 162, i32 1}
!35 = !{ptr @__ksymtab_of_get_i2c_adapter_by_node, !36, !"__ksymtab_of_get_i2c_adapter_by_node", i1 false, i1 false}
!36 = !{!"../drivers/i2c/i2c-core-of.c", i32 180, i32 1}
!37 = !{ptr @__ksymtab_i2c_of_match_device, !38, !"__ksymtab_i2c_of_match_device", i1 false, i1 false}
!38 = !{!"../drivers/i2c/i2c-core-of.c", i32 226, i32 1}
!39 = !{ptr @i2c_of_notifier, !40, !"i2c_of_notifier", i1 false, i1 false}
!40 = !{!"../drivers/i2c/i2c-core-of.c", i32 278, i32 23}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/i2c-core-of.c", i32 72, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @of_i2c_register_device.__UNIQUE_ID_ddebug288, !42, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/i2c-core-of.c", i32 80, i32 3}
!47 = !{ptr @of_i2c_register_device._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @of_i2c_register_device._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/i2c-core-of.c", i32 249, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @of_i2c_notify._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @of_i2c_notify._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2148282543, i64 2148282548, i64 2148282561, i64 2148282605, i64 2148282639, i64 2148282660}
