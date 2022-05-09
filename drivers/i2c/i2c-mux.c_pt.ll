; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-mux.c_pt.bc'
source_filename = "../drivers/i2c/i2c-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+i2c_root_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_root_adapter\09\09\09\09"
module asm "\09.long\09__crc_i2c_root_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_root_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_root_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_root_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_mux_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_mux_alloc\09\09\09\09"
module asm "\09.long\09__crc_i2c_mux_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_mux_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_mux_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_mux_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_mux_add_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_mux_add_adapter\09\09\09\09"
module asm "\09.long\09__crc_i2c_mux_add_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_mux_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_mux_add_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_mux_add_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_mux_del_adapters\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_mux_del_adapters\09\09\09\09"
module asm "\09.long\09__crc_i2c_mux_del_adapters\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_mux_del_adapters:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_mux_del_adapters\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_mux_del_adapters:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.i2c_mux_priv = type { %struct.i2c_adapter, %struct.i2c_algorithm, ptr, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@__kstrtab_i2c_root_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_root_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_root_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_root_adapter to i32), ptr @__kstrtab_i2c_root_adapter, ptr @__kstrtabns_i2c_root_adapter }, section "___ksymtab_gpl+i2c_root_adapter", align 4
@__kstrtab_i2c_mux_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_mux_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_mux_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_mux_alloc to i32), ptr @__kstrtab_i2c_mux_alloc, ptr @__kstrtabns_i2c_mux_alloc }, section "___ksymtab_gpl+i2c_mux_alloc", align 4
@i2c_mux_add_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No room for more i2c-mux adapters\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_mux_add_adapter\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/i2c/i2c-mux.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry_ptr = internal global ptr @i2c_mux_add_adapter._entry, section ".printk_index", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c-%d-mux (chan_id %d)\00", [40 x i8] zeroinitializer }, align 32
@i2c_mux_lock_ops = internal constant { %struct.i2c_lock_operations, [20 x i8] } { %struct.i2c_lock_operations { ptr @i2c_mux_lock_bus, ptr @i2c_mux_trylock_bus, ptr @i2c_mux_unlock_bus }, [20 x i8] zeroinitializer }, align 32
@i2c_parent_lock_ops = internal constant { %struct.i2c_lock_operations, [20 x i8] } { %struct.i2c_lock_operations { ptr @i2c_parent_lock_bus, ptr @i2c_parent_trylock_bus, ptr @i2c_parent_unlock_bus }, [20 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Segment %d behind mux can't share classes with ancestors\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry_ptr.8 = internal global ptr @i2c_mux_add_adapter._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-arb\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c-gate\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-mux\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to add mux-adapter %u as bus %u (error=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry_ptr.15 = internal global ptr @i2c_mux_add_adapter._entry.13, section ".printk_index", align 4
@i2c_mux_add_adapter._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to add mux-adapter %u (error=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry_ptr.18 = internal global ptr @i2c_mux_add_adapter._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mux_device\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't create symlink to mux device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"channel-%u\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't create symlink to channel %u\0A\00", [60 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 429, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Added multiplexed i2c bus %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_mux_add_adapter._entry_ptr.26 = internal global ptr @i2c_mux_add_adapter._entry.23, section ".printk_index", align 4
@__kstrtab_i2c_mux_add_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_mux_add_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_mux_add_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_mux_add_adapter to i32), ptr @__kstrtab_i2c_mux_add_adapter, ptr @__kstrtabns_i2c_mux_add_adapter }, section "___ksymtab_gpl+i2c_mux_add_adapter", align 4
@__kstrtab_i2c_mux_del_adapters = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_mux_del_adapters = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_mux_del_adapters = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_mux_del_adapters to i32), ptr @__kstrtab_i2c_mux_del_adapters, ptr @__kstrtabns_i2c_mux_del_adapters }, section "___ksymtab_gpl+i2c_mux_del_adapters", align 4
@__UNIQUE_ID_author288 = internal constant [52 x i8] c"i2c_mux.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [58 x i8] c"i2c_mux.description=I2C driver for multiplexed I2C busses\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [33 x i8] c"i2c_mux.file=drivers/i2c/i2c-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [23 x i8] c"i2c_mux.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 292, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 329, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"i2c_mux_lock_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 270, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"i2c_parent_lock_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 276, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 344, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 360, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 362, i32 46 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 364, i32 46 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 368, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 405, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 413, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 420, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 424, i32 47 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 425, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [25 x i8] c"../drivers/i2c/i2c-mux.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 428, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_i2c_mux_add_adapter, ptr @__ksymtab_i2c_mux_alloc, ptr @__ksymtab_i2c_mux_del_adapters, ptr @__ksymtab_i2c_root_adapter, ptr @i2c_mux_add_adapter._entry, ptr @i2c_mux_add_adapter._entry.13, ptr @i2c_mux_add_adapter._entry.16, ptr @i2c_mux_add_adapter._entry.23, ptr @i2c_mux_add_adapter._entry.6, ptr @i2c_mux_add_adapter._entry_ptr, ptr @i2c_mux_add_adapter._entry_ptr.15, ptr @i2c_mux_add_adapter._entry_ptr.18, ptr @i2c_mux_add_adapter._entry_ptr.26, ptr @i2c_mux_add_adapter._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @i2c_mux_lock_ops, ptr @i2c_parent_lock_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_add_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_lock_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parent_lock_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_add_adapter._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_add_adapter._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_add_adapter._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_add_adapter._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @i2c_root_adapter(ptr noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not26 = icmp eq ptr %dev, null
  br i1 %tobool.not26, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i2c.027 = phi ptr [ %3, %for.inc.for.body_crit_edge ], [ %dev, %entry.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.device, ptr %i2c.027, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @i2c_adapter_type
  br i1 %cmp, label %if.end3, label %for.inc

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.device, ptr %i2c.027, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %i2c.027, i32 -200
  %parent1.i28 = getelementptr i8, ptr %i2c.027, i32 136
  %4 = ptrtoint ptr %parent1.i28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1.i28, align 8
  %cmp.not.i29 = icmp eq ptr %5, null
  br i1 %cmp.not.i29, label %if.end3.cleanup_crit_edge, label %land.lhs.true.i.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i.preheader:                        ; preds = %if.end3
  %type.i38 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type.i38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type.i38, align 4
  %cmp2.i39 = icmp ne ptr %7, @i2c_adapter_type
  %add.ptr.i40 = getelementptr i8, ptr %5, i32 -200
  %tobool4.not41 = icmp eq ptr %add.ptr.i40, null
  %or.cond42 = select i1 %cmp2.i39, i1 true, i1 %tobool4.not41
  br i1 %or.cond42, label %land.lhs.true.i.preheader.cleanup_crit_edge, label %land.lhs.true.i.preheader.i2c_parent_is_i2c_adapter.exit21_crit_edge

land.lhs.true.i.preheader.i2c_parent_is_i2c_adapter.exit21_crit_edge: ; preds = %land.lhs.true.i.preheader
  br label %i2c_parent_is_i2c_adapter.exit21

land.lhs.true.i.preheader.cleanup_crit_edge:      ; preds = %land.lhs.true.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %i2c_parent_is_i2c_adapter.exit21
  %type.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 4
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %cmp2.i = icmp ne ptr %9, @i2c_adapter_type
  %add.ptr.i = getelementptr i8, ptr %13, i32 -200
  %tobool4.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %cmp2.i, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.i2c_parent_is_i2c_adapter.exit21_crit_edge

land.lhs.true.i.i2c_parent_is_i2c_adapter.exit21_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_parent_is_i2c_adapter.exit21

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

i2c_parent_is_i2c_adapter.exit21:                 ; preds = %land.lhs.true.i.i2c_parent_is_i2c_adapter.exit21_crit_edge, %land.lhs.true.i.preheader.i2c_parent_is_i2c_adapter.exit21_crit_edge
  %add.ptr.i44 = phi ptr [ %add.ptr.i, %land.lhs.true.i.i2c_parent_is_i2c_adapter.exit21_crit_edge ], [ %add.ptr.i40, %land.lhs.true.i.preheader.i2c_parent_is_i2c_adapter.exit21_crit_edge ]
  %type.i43 = phi ptr [ %type.i, %land.lhs.true.i.i2c_parent_is_i2c_adapter.exit21_crit_edge ], [ %type.i38, %land.lhs.true.i.preheader.i2c_parent_is_i2c_adapter.exit21_crit_edge ]
  %10 = ptrtoint ptr %type.i43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type.i43, align 4
  %cmp2.i16 = icmp eq ptr %11, @i2c_adapter_type
  %spec.select.i18 = select i1 %cmp2.i16, ptr %add.ptr.i44, ptr null
  %parent1.i = getelementptr inbounds %struct.i2c_adapter, ptr %spec.select.i18, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent1.i, align 8
  %cmp.not.i = icmp eq ptr %13, null
  br i1 %cmp.not.i, label %i2c_parent_is_i2c_adapter.exit21.cleanup_crit_edge, label %land.lhs.true.i

i2c_parent_is_i2c_adapter.exit21.cleanup_crit_edge: ; preds = %i2c_parent_is_i2c_adapter.exit21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %i2c_parent_is_i2c_adapter.exit21.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.i.preheader.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end3.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %add.ptr, %land.lhs.true.i.preheader.cleanup_crit_edge ], [ %spec.select.i18, %i2c_parent_is_i2c_adapter.exit21.cleanup_crit_edge ], [ %spec.select.i18, %land.lhs.true.i.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @i2c_mux_alloc(ptr noundef %parent, ptr noundef %dev, i32 noundef %max_adapters, i32 noundef %sizeof_priv, i32 noundef %flags, ptr noundef %select, ptr noundef %deselect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_adapters, i32 4) #8
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 32) #8
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %add = add i32 %retval.0.i, %sizeof_priv
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_priv)
  %tobool2.not = icmp eq i32 %sizeof_priv, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.i2c_mux_core, ptr %call.i, i32 0, i32 8, i32 %max_adapters
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %priv, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %parent, ptr %call.i, align 4
  %dev6 = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev6, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %mux_locked = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mux_locked, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %mux_locked, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %and10 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %if.then12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %arbitrator = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %arbitrator to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load13 = load i8, ptr %arbitrator, align 4
  %bf.set15 = or i8 %bf.load13, 64
  store i8 %bf.set15, ptr %arbitrator, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9.if.end16_crit_edge
  %and17 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %if.then19

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %gate = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %gate to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load20 = load i8, ptr %gate, align 4
  %bf.set22 = or i8 %bf.load20, 32
  store i8 %bf.set22, ptr %gate, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  %select24 = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %select24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %select, ptr %select24, align 4
  %deselect25 = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %deselect25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %deselect, ptr %deselect25, align 4
  %max_adapters26 = getelementptr inbounds %struct.i2c_mux_core, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %max_adapters26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %max_adapters, ptr %max_adapters26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_mux_add_adapter(ptr noundef %muxc, i32 noundef %force_nr, i32 noundef %chan_id, i32 noundef %class) #2 align 64 {
entry:
  %symlink_name = alloca [20 x i8], align 1
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %muxc, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %symlink_name) #8
  %num_adapters = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 6
  %2 = call ptr @memset(ptr %symlink_name, i32 255, i32 20)
  %3 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_adapters, align 4
  %max_adapters = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 7
  %5 = ptrtoint ptr %max_adapters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_adapters, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp slt i32 %4, %6
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1400) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %muxc4 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %muxc4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %muxc, ptr %muxc4, align 4
  %chan_id5 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %chan_id5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %chan_id, ptr %chan_id5, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end3.if.end15_crit_edge, label %if.then7

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %mux_locked = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 2
  %16 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %mux_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  %algo12 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1
  %__i2c_mux_master_xfer.i2c_mux_master_xfer = select i1 %tobool8.not, ptr @__i2c_mux_master_xfer, ptr @i2c_mux_master_xfer
  %17 = ptrtoint ptr %algo12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %__i2c_mux_master_xfer.i2c_mux_master_xfer, ptr %algo12, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end3.if.end15_crit_edge
  %18 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %algo, align 8
  %master_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %master_xfer_atomic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master_xfer_atomic, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %algo19 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %algo19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %algo19, align 8
  %master_xfer_atomic22 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %master_xfer_atomic22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %master_xfer_atomic22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %25 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %algo, align 8
  %smbus_xfer = getelementptr inbounds %struct.i2c_algorithm, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %smbus_xfer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smbus_xfer, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end23.if.end39_crit_edge, label %if.then26

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %mux_locked27 = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 2
  %29 = ptrtoint ptr %mux_locked27 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load28 = load i8, ptr %mux_locked27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28)
  %tobool31.not = icmp sgt i8 %bf.load28, -1
  %smbus_xfer37 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %__i2c_mux_smbus_xfer.i2c_mux_smbus_xfer = select i1 %tobool31.not, ptr @__i2c_mux_smbus_xfer, ptr @i2c_mux_smbus_xfer
  %30 = ptrtoint ptr %smbus_xfer37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %__i2c_mux_smbus_xfer.i2c_mux_smbus_xfer, ptr %smbus_xfer37, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.end23.if.end39_crit_edge
  %31 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %algo, align 8
  %smbus_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %smbus_xfer_atomic to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smbus_xfer_atomic, align 4
  %tobool41.not = icmp eq ptr %34, null
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %if.then42

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %smbus_xfer44 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %smbus_xfer44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smbus_xfer44, align 8
  %smbus_xfer_atomic46 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %smbus_xfer_atomic46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %smbus_xfer_atomic46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end39.if.end47_crit_edge
  %algo48 = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1
  %functionality = getelementptr inbounds %struct.i2c_mux_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %functionality to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @i2c_mux_functionality, ptr %functionality, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr.i, align 4
  %call50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %40, i32 noundef %chan_id)
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %call7.i.i, align 8
  %algo54 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %algo54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %algo48, ptr %algo54, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %algo_data, align 4
  %dev56 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %dev58 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9
  %parent59 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %parent59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev56, ptr %parent59, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %retries, align 8
  %retries61 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %retries61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %retries61, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %timeout, align 4
  %timeout63 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %timeout63 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %timeout63, align 4
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 17
  %51 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %quirks, align 8
  %quirks65 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 17
  %53 = ptrtoint ptr %quirks65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %quirks65, align 8
  %mux_locked66 = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 2
  %54 = ptrtoint ptr %mux_locked66 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load67 = load i8, ptr %mux_locked66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load67)
  %tobool70.not = icmp sgt i8 %bf.load67, -1
  %spec.select = select i1 %tobool70.not, ptr @i2c_parent_lock_ops, ptr @i2c_mux_lock_ops
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %spec.select, ptr %55, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i.i.do.body.i_crit_edge, %if.end47
  %parent.addr.0.i = phi ptr [ %1, %if.end47 ], [ %add.ptr.i.i, %land.lhs.true.i.i.do.body.i_crit_edge ]
  %class.0.i = phi i32 [ 0, %if.end47 ], [ %or.i, %land.lhs.true.i.i.do.body.i_crit_edge ]
  %class1.i = getelementptr inbounds %struct.i2c_adapter, ptr %parent.addr.0.i, i32 0, i32 1
  %57 = ptrtoint ptr %class1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %class1.i, align 4
  %or.i = or i32 %58, %class.0.i
  %parent1.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %parent.addr.0.i, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent1.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %60, null
  br i1 %cmp.not.i.i, label %do.body.i.i2c_mux_parent_classes.exit_crit_edge, label %land.lhs.true.i.i

do.body.i.i2c_mux_parent_classes.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_mux_parent_classes.exit

land.lhs.true.i.i:                                ; preds = %do.body.i
  %type.i.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %type.i.i, align 4
  %cmp2.i.i = icmp ne ptr %62, @i2c_adapter_type
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 -200
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = select i1 %cmp2.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.i2c_mux_parent_classes.exit_crit_edge, label %land.lhs.true.i.i.do.body.i_crit_edge

land.lhs.true.i.i.do.body.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.i.i2c_mux_parent_classes.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_mux_parent_classes.exit

i2c_mux_parent_classes.exit:                      ; preds = %land.lhs.true.i.i.i2c_mux_parent_classes.exit_crit_edge, %do.body.i.i2c_mux_parent_classes.exit_crit_edge
  %and = and i32 %or.i, %class
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  br i1 %tobool78.not, label %if.else84, label %do.end82

do.end82:                                         ; preds = %i2c_mux_parent_classes.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.7, i32 noundef %chan_id) #11
  br label %if.end87

if.else84:                                        ; preds = %i2c_mux_parent_classes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %class86 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %class86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %class, ptr %class86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else84, %do.end82
  %dev88 = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 1
  %64 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev88, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node, align 8
  %tobool89.not = icmp eq ptr %67, null
  br i1 %tobool89.not, label %if.end87.if.end154_crit_edge, label %if.then90

if.end87.if.end154_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then90:                                        ; preds = %if.end87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %68 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %reg, align 4, !annotation !70
  %69 = ptrtoint ptr %mux_locked66 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load93 = load i8, ptr %mux_locked66, align 4
  %70 = and i8 %bf.load93, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool96.not = icmp eq i8 %70, 0
  %71 = and i8 %bf.load93, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool104.not = icmp eq i8 %71, 0
  %.str.11..str.10 = select i1 %tobool104.not, ptr @.str.11, ptr @.str.10
  %.str.10.sink = select i1 %tobool96.not, ptr %.str.11..str.10, ptr @.str.9
  %call106 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %67, ptr noundef nonnull %.str.10.sink) #8
  %tobool111.not = icmp eq ptr %call106, null
  br i1 %tobool111.not, label %if.then90.if.then119_crit_edge, label %if.then112

if.then90.if.then119_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then112:                                       ; preds = %if.then90
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call106, ptr noundef nonnull @.str.12, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool114.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool114.not, label %if.then115, label %if.else121

if.then115:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %call106) #8
  br label %if.then119

if.then119:                                       ; preds = %if.then115, %if.then90.if.then119_crit_edge
  %call120 = call ptr @of_node_get(ptr noundef nonnull %67) #8
  br label %if.then139

if.else121:                                       ; preds = %if.then112
  %72 = ptrtoint ptr %mux_locked66 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load123 = load i8, ptr %mux_locked66, align 4
  %73 = and i8 %bf.load123, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %if.else121.if.then139_crit_edge, label %if.end137

if.else121.if.then139_crit_edge:                  ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then139

if.end137:                                        ; preds = %if.else121
  %call135 = call ptr @of_node_get(ptr noundef nonnull %call106) #8
  %tobool138.not = icmp eq ptr %call135, null
  br i1 %tobool138.not, label %if.end137.if.then139_crit_edge, label %if.end137.if.end150_crit_edge

if.end137.if.end150_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.end137.if.then139_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then139

if.then139:                                       ; preds = %if.end137.if.then139_crit_edge, %if.else121.if.then139_crit_edge, %if.then119
  %mux_node.2372 = phi ptr [ %call106, %if.end137.if.then139_crit_edge ], [ %call106, %if.else121.if.then139_crit_edge ], [ %call120, %if.then119 ]
  %call140 = call ptr @of_get_next_child(ptr noundef %mux_node.2372, ptr noundef null) #8
  %cmp141.not373 = icmp eq ptr %call140, null
  br i1 %cmp141.not373, label %if.then139.if.end150_crit_edge, label %if.then139.for.body_crit_edge

if.then139.for.body_crit_edge:                    ; preds = %if.then139
  br label %for.body

if.then139.if.end150_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then139.for.body_crit_edge
  %child.1374 = phi ptr [ %call149, %for.inc.for.body_crit_edge ], [ %call140, %if.then139.for.body_crit_edge ]
  %call.i.i364 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.1374, ptr noundef nonnull @.str.12, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i364)
  %tobool143.not = icmp sgt i32 %call.i.i364, -1
  br i1 %tobool143.not, label %if.end145, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end145:                                        ; preds = %for.body
  %75 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %chan_id)
  %cmp146 = icmp eq i32 %76, %chan_id
  br i1 %cmp146, label %if.end145.if.end150_crit_edge, label %if.end145.for.inc_crit_edge

if.end145.for.inc_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end145.if.end150_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

for.inc:                                          ; preds = %if.end145.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call149 = call ptr @of_get_next_child(ptr noundef %mux_node.2372, ptr noundef nonnull %child.1374) #8
  %cmp141.not = icmp eq ptr %call149, null
  br i1 %cmp141.not, label %for.inc.if.end150_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end150_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.end150:                                        ; preds = %for.inc.if.end150_crit_edge, %if.end145.if.end150_crit_edge, %if.then139.if.end150_crit_edge, %if.end137.if.end150_crit_edge
  %mux_node.2371 = phi ptr [ %call106, %if.end137.if.end150_crit_edge ], [ %mux_node.2372, %if.then139.if.end150_crit_edge ], [ %mux_node.2372, %for.inc.if.end150_crit_edge ], [ %mux_node.2372, %if.end145.if.end150_crit_edge ]
  %child.2 = phi ptr [ %call135, %if.end137.if.end150_crit_edge ], [ null, %if.then139.if.end150_crit_edge ], [ %child.1374, %if.end145.if.end150_crit_edge ], [ null, %for.inc.if.end150_crit_edge ]
  %of_node153 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 27
  %77 = ptrtoint ptr %of_node153 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %child.2, ptr %of_node153, align 8
  call void @of_node_put(ptr noundef %mux_node.2371) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  br label %if.end154

if.end154:                                        ; preds = %if.end150, %if.end87.if.end154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_nr)
  %tobool161.not = icmp eq i32 %force_nr, 0
  br i1 %tobool161.not, label %if.else174, label %if.then162

if.then162:                                       ; preds = %if.end154
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 11
  %78 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %force_nr, ptr %nr, align 4
  %call165 = call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %do.end171, label %if.then162.if.end185_crit_edge

if.then162.if.end185_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

do.end171:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.14, i32 noundef %chan_id, i32 noundef %force_nr, i32 noundef %call165) #11
  br label %err_free_priv

if.else174:                                       ; preds = %if.end154
  %call176 = call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %do.end182, label %if.else174.if.end185_crit_edge

if.else174.if.end185_crit_edge:                   ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

do.end182:                                        ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.17, i32 noundef %chan_id, i32 noundef %call176) #11
  br label %err_free_priv

if.end185:                                        ; preds = %if.else174.if.end185_crit_edge, %if.then162.if.end185_crit_edge
  %79 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev88, align 4
  %call190 = call i32 @sysfs_create_link(ptr noundef %dev58, ptr noundef %80, ptr noundef nonnull @.str.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end185.if.end209_crit_edge, label %do.end203, !prof !71

if.end185.if.end209_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

do.end203:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef nonnull @.str.20) #8
  br label %if.end209

if.end209:                                        ; preds = %do.end203, %if.end185.if.end209_crit_edge
  %call217 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %symlink_name, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %chan_id)
  %81 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev88, align 4
  %call225 = call i32 @sysfs_create_link(ptr noundef %82, ptr noundef %dev58, ptr noundef nonnull %symlink_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end209.if.end248_crit_edge, label %do.end242, !prof !71

if.end209.if.end248_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

do.end242:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 427, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %chan_id) #8
  br label %if.end248

if.end248:                                        ; preds = %do.end242, %if.end209.if.end248_crit_edge
  %nr.i365 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 11
  %83 = ptrtoint ptr %nr.i365 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr.i365, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev56, ptr noundef nonnull @.str.24, i32 noundef %84) #11
  %85 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_adapters, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %num_adapters, align 4
  %arrayidx = getelementptr %struct.i2c_mux_core, ptr %muxc, i32 0, i32 8, i32 %86
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

err_free_priv:                                    ; preds = %do.end182, %do.end171
  %ret.0 = phi i32 [ %call165, %do.end171 ], [ %call176, %do.end182 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_priv, %if.end248, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %err_free_priv ], [ 0, %if.end248 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %symlink_name) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %select = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %select, align 4
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 8
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @i2c_transfer(ptr noundef %5, ptr noundef %msgs, i32 noundef %num) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %deselect = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %deselect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %deselect, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id, align 8
  %call7 = tail call i32 %11(ptr noundef %3, i32 noundef %13) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__i2c_mux_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %select = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %select, align 4
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 8
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @__i2c_transfer(ptr noundef %5, ptr noundef %msgs, i32 noundef %num) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %deselect = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %deselect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %deselect, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id, align 8
  %call7 = tail call i32 %11(ptr noundef %3, i32 noundef %13) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_smbus_xfer(ptr nocapture noundef readonly %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %select = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %select, align 4
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 8
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @i2c_smbus_xfer(ptr noundef %5, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %deselect = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %deselect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %deselect, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id, align 8
  %call7 = tail call i32 %11(ptr noundef %3, i32 noundef %13) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__i2c_mux_smbus_xfer(ptr nocapture noundef readonly %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %select = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %select, align 4
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 8
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @__i2c_smbus_xfer(ptr noundef %5, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %deselect = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %deselect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %deselect, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id, align 8
  %call7 = tail call i32 %11(ptr noundef %3, i32 noundef %13) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_functionality(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo, align 8
  %functionality = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality, align 4
  %call = tail call i32 %9(ptr noundef %5) #8
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i2c_mux_del_adapters(ptr nocapture noundef %muxc) #2 align 64 {
entry:
  %symlink_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %symlink_name) #8
  %num_adapters = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 6
  %0 = call ptr @memset(ptr %symlink_name, i32 255, i32 20)
  %1 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_adapters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not19 = icmp eq i32 %2, 0
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev5 = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %3 = phi i32 [ %2, %while.body.lr.ph ], [ %16, %while.body.while.body_crit_edge ]
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %num_adapters to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %num_adapters, align 4
  %arrayidx = getelementptr %struct.i2c_mux_core, ptr %muxc, i32 0, i32 8, i32 %dec
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %algo_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  store ptr null, ptr %arrayidx, align 4
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan_id, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %symlink_name, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %12)
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 4
  call void @sysfs_remove_link(ptr noundef %14, ptr noundef nonnull %symlink_name) #8
  %dev8 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 9
  call void @sysfs_remove_link(ptr noundef %dev8, ptr noundef nonnull @.str.19) #8
  call void @i2c_del_adapter(ptr noundef %6) #8
  call void @of_node_put(ptr noundef %10) #8
  call void @kfree(ptr noundef %8) #8
  %15 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_adapters, align 4
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %symlink_name) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_mux_lock_bus(ptr noundef %adapter, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 6
  %call = tail call i32 @i2c_adapter_depth(ptr noundef %adapter) #8
  tail call void @rt_mutex_lock_nested(ptr noundef %mux_lock, i32 noundef %call) #8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %5, i32 noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_trylock_bus(ptr nocapture noundef readonly %adapter, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 6
  %call = tail call i32 @rt_mutex_trylock(ptr noundef %mux_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %trylock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %trylock_bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trylock_bus.i, align 4
  %call.i = tail call i32 %9(ptr noundef %5, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rt_mutex_unlock(ptr noundef %mux_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_mux_unlock_bus(ptr nocapture noundef readonly %adapter, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %9(ptr noundef %5, i32 noundef %flags) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 6
  tail call void @rt_mutex_unlock(ptr noundef %mux_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_adapter_depth(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_parent_lock_bus(ptr noundef %adapter, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 6
  %call = tail call i32 @i2c_adapter_depth(ptr noundef %adapter) #8
  tail call void @rt_mutex_lock_nested(ptr noundef %mux_lock, i32 noundef %call) #8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %5, i32 noundef %flags) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_parent_trylock_bus(ptr nocapture noundef readonly %adapter, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 6
  %call = tail call i32 @rt_mutex_trylock(ptr noundef %mux_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %trylock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %trylock_bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trylock_bus.i, align 4
  %call.i = tail call i32 %9(ptr noundef %5, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rt_mutex_unlock(ptr noundef %mux_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_parent_unlock_bus(ptr nocapture noundef readonly %adapter, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %9(ptr noundef %5, i32 noundef %flags) #8
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 6
  tail call void @rt_mutex_unlock(ptr noundef %mux_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__ksymtab_i2c_root_adapter, !1, !"__ksymtab_i2c_root_adapter", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-mux.c", i32 237, i32 1}
!2 = !{ptr @__ksymtab_i2c_mux_alloc, !3, !"__ksymtab_i2c_mux_alloc", i1 false, i1 false}
!3 = !{!"../drivers/i2c/i2c-mux.c", i32 268, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/i2c/i2c-mux.c", i32 292, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @i2c_mux_add_adapter._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @i2c_mux_add_adapter._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/i2c-mux.c", i32 329, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/i2c-mux.c", i32 344, i32 3}
!16 = !{ptr @i2c_mux_add_adapter._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @i2c_mux_add_adapter._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/i2c-mux.c", i32 360, i32 46}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/i2c-mux.c", i32 362, i32 46}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/i2c-mux.c", i32 364, i32 46}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/i2c-mux.c", i32 368, i32 40}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/i2c-mux.c", i32 405, i32 4}
!28 = !{ptr @i2c_mux_add_adapter._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @i2c_mux_add_adapter._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/i2c-mux.c", i32 413, i32 4}
!32 = !{ptr @i2c_mux_add_adapter._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @i2c_mux_add_adapter._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/i2c-mux.c", i32 420, i32 2}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/i2c-mux.c", i32 424, i32 47}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/i2c-mux.c", i32 425, i32 2}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/i2c-mux.c", i32 428, i32 2}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @i2c_mux_add_adapter._entry.23, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @i2c_mux_add_adapter._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__ksymtab_i2c_mux_add_adapter, !47, !"__ksymtab_i2c_mux_add_adapter", i1 false, i1 false}
!47 = !{!"../drivers/i2c/i2c-mux.c", i32 438, i32 1}
!48 = !{ptr @__ksymtab_i2c_mux_del_adapters, !49, !"__ksymtab_i2c_mux_del_adapters", i1 false, i1 false}
!49 = !{!"../drivers/i2c/i2c-mux.c", i32 461, i32 1}
!50 = !{ptr @__UNIQUE_ID_author288, !51, !"__UNIQUE_ID_author288", i1 false, i1 false}
!51 = !{!"../drivers/i2c/i2c-mux.c", i32 463, i32 1}
!52 = !{ptr @__UNIQUE_ID_description289, !53, !"__UNIQUE_ID_description289", i1 false, i1 false}
!53 = !{!"../drivers/i2c/i2c-mux.c", i32 464, i32 1}
!54 = !{ptr @__UNIQUE_ID_file290, !55, !"__UNIQUE_ID_file290", i1 false, i1 false}
!55 = !{!"../drivers/i2c/i2c-mux.c", i32 465, i32 1}
!56 = !{ptr @__UNIQUE_ID_license291, !55, !"__UNIQUE_ID_license291", i1 false, i1 false}
!57 = !{ptr @i2c_mux_lock_ops, !58, !"i2c_mux_lock_ops", i1 false, i1 false}
!58 = !{!"../drivers/i2c/i2c-mux.c", i32 270, i32 41}
!59 = !{ptr @i2c_parent_lock_ops, !60, !"i2c_parent_lock_ops", i1 false, i1 false}
!60 = !{!"../drivers/i2c/i2c-mux.c", i32 276, i32 41}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{!"branch_weights", i32 2000, i32 1}
