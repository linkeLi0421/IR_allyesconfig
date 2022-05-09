; ModuleID = '/llk/IR_all_yes/drivers/char/misc.c_pt.bc'
source_filename = "../drivers/char/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+misc_register\22, \22a\22\09"
module asm "\09.weak\09__crc_misc_register\09\09\09\09"
module asm "\09.long\09__crc_misc_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_register\22\09\09\09\09\09"
module asm "__kstrtabns_misc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+misc_deregister\22, \22a\22\09"
module asm "\09.weak\09__crc_misc_deregister\09\09\09\09"
module asm "\09.long\09__crc_misc_deregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_misc_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@misc_mtx = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @misc_mtx, i64 52), ptr getelementptr (i8, ptr @misc_mtx, i64 52) }, ptr @misc_mtx, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@misc_minors = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@misc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @misc_list, ptr @misc_list }, [24 x i8] zeroinitializer }, align 32
@misc_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_misc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_register to i32), ptr @__kstrtab_misc_register, ptr @__kstrtabns_misc_register }, section "___ksymtab+misc_register", align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/char/misc.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_misc_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_deregister to i32), ptr @__kstrtab_misc_deregister, ptr @__kstrtabns_misc_deregister }, section "___ksymtab+misc_deregister", align 4
@__initcall__kmod_misc__210_291_misc_init4 = internal global ptr @misc_init, section ".initcall4.init", align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"misc_mtx.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"misc_mtx\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@misc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @misc_seq_start, ptr @misc_seq_stop, ptr @misc_seq_next, ptr @misc_seq_show }, [16 x i8] zeroinitializer }, align 32
@misc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@misc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @misc_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@misc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013unable to get major %d for misc devices\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"misc_init\00", [22 x i8] zeroinitializer }, align 32
@misc_init._entry_ptr = internal global ptr @misc_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%3i %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"char-major-%d-%d\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"misc_mtx\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"misc_minors\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 64, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"misc_list\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 57, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"misc_class\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 147, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 207, i32 28 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 243, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 58, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 271, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"misc_seq_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 92, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 272, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"misc_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 149, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 284, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 87, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 87, i32 60 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [23 x i8] c"../drivers/char/misc.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 118, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_misc__210_291_misc_init4, ptr @__ksymtab_misc_deregister, ptr @__ksymtab_misc_register, ptr @misc_init._entry, ptr @misc_init._entry_ptr, ptr @misc_mtx, ptr @misc_minors, ptr @misc_list, ptr @misc_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @misc_seq_ops, ptr @misc_init.__key, ptr @misc_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_mtx to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_minors to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @misc_register(ptr noundef %misc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %misc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp eq i32 %1, 255
  %list = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 3
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @misc_mtx, i32 noundef 0) #4
  br i1 %cmp, label %if.then, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

if.then:                                          ; preds = %entry
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @misc_minors, i32 noundef 128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call)
  %cmp1 = icmp sgt i32 %call, 127
  br i1 %cmp1, label %if.then.out_crit_edge, label %cleanup.thread

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %sub3 = sub i32 127, %call
  %4 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub3, ptr %misc, align 4
  tail call void @_set_bit(i32 noundef %call, ptr noundef nonnull @misc_minors) #4
  br label %if.end19

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @misc_list, %entry.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp6.not = icmp eq ptr %.pn, @misc_list
  br i1 %cmp6.not, label %for.cond.if.end19_crit_edge, label %for.body

for.cond.if.end19_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

for.body:                                         ; preds = %for.cond
  %c.0 = getelementptr i8, ptr %.pn, i32 -12
  %6 = ptrtoint ptr %c.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c.0, align 4
  %8 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %misc, align 4
  %cmp9 = icmp eq i32 %7, %9
  br i1 %cmp9, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end19:                                         ; preds = %for.cond.if.end19_crit_edge, %cleanup.thread
  %10 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %misc, align 4
  %or = or i32 %11, 10485760
  %12 = load ptr, ptr @misc_class, align 4
  %parent = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 4
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 4
  %groups = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 6
  %15 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %groups, align 4
  %name = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call21 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %12, ptr noundef %14, i32 noundef %or, ptr noundef %misc, ptr noundef %16, ptr noundef nonnull @.str, ptr noundef %18) #4
  %this_device = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 5
  %19 = ptrtoint ptr %this_device to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21, ptr %this_device, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end39

if.then24:                                        ; preds = %if.end19
  br i1 %cmp, label %if.then26, label %if.then24.if.end36_crit_edge

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then26:                                        ; preds = %if.then24
  %20 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %misc, align 4
  %sub30 = sub i32 127, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub30)
  %22 = icmp ult i32 %sub30, 128
  br i1 %22, label %if.then33, label %if.then26.if.end34_crit_edge

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef %sub30, ptr noundef nonnull @misc_minors) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then26.if.end34_crit_edge
  %23 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 255, ptr %misc, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.then24.if.end36_crit_edge
  %24 = ptrtoint ptr %this_device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %this_device, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %out

if.end39:                                         ; preds = %if.end19
  %27 = load ptr, ptr @misc_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @misc_list, ptr noundef %27) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %list, align 4
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @misc_list, ptr %prev.i, align 4
  store volatile ptr %list, ptr @misc_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end39.out_crit_edge, %if.end36, %for.body.out_crit_edge, %if.then.out_crit_edge
  %err.3 = phi i32 [ %26, %if.end36 ], [ -16, %if.then.out_crit_edge ], [ 0, %if.end39.out_crit_edge ], [ 0, %if.end.i.i ], [ -16, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @misc_deregister(ptr noundef %misc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %misc, align 4
  %sub1 = sub i32 127, %1
  %list = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 3
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %3, %list
  br i1 %cmp.i.not, label %do.end, label %if.end23, !prof !48

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 243, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @misc_mtx, i32 noundef 0) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_del.exit_crit_edge

if.end23.list_del.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end23.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.miscdevice, ptr %misc, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = load ptr, ptr @misc_class, align 4
  %13 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %misc, align 4
  %or = or i32 %14, 10485760
  tail call void @device_destroy(ptr noundef %12, i32 noundef %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub1)
  %15 = icmp ult i32 %sub1, 128
  br i1 %15, label %if.then27, label %list_del.exit.if.end28_crit_edge

list_del.exit.if.end28_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then27:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef %sub1, ptr noundef nonnull @misc_minors) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %list_del.exit.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.4, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @misc_seq_ops, i32 noundef 0, ptr noundef null) #4
  %call1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @misc_init.__key) #4
  store ptr %call1, ptr @misc_class, align 4
  %0 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.fail_remove_crit_edge, label %if.end

entry.fail_remove_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_remove

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__register_chrdev(i32 noundef 10, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.4, ptr noundef nonnull @misc_fops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %do.end

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @misc_class, align 4
  %devnode = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @misc_devnode, ptr %devnode, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 10) #7
  %3 = load ptr, ptr @misc_class, align 4
  tail call void @class_destroy(ptr noundef %3) #4
  br label %fail_remove

fail_remove:                                      ; preds = %do.end, %entry.fail_remove_crit_edge
  %err.0 = phi i32 [ %0, %entry.fail_remove_crit_edge ], [ -5, %do.end ]
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %fail_remove.cleanup_crit_edge, label %if.then10

fail_remove.cleanup_crit_edge:                    ; preds = %fail_remove
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %fail_remove
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %fail_remove.cleanup_crit_edge, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %err.0, %if.then10 ], [ %err.0, %fail_remove.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @misc_devnode(ptr nocapture noundef readonly %dev, ptr noundef writeonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %mode, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mode1 = getelementptr inbounds %struct.miscdevice, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %mode, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nodename = getelementptr inbounds %struct.miscdevice, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %nodename to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nodename, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call noalias ptr @kstrdup(ptr noundef nonnull %6, i32 noundef 3264) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then5 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @misc_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @misc_mtx, i32 noundef 0) #4
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef nonnull @misc_list, i64 noundef %1) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @misc_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @misc_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @misc_list, ptr noundef %pos) #4
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_seq_show(ptr noundef %seq, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %name = getelementptr i8, ptr %v, i32 -8
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.8, ptr %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef nonnull %spec.select) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @misc_mtx, i32 noundef 0) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @misc_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @misc_list
  br i1 %cmp.not, label %for.cond.if.then11_crit_edge, label %for.body

for.cond.if.then11_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

for.body:                                         ; preds = %for.cond
  %c.0 = getelementptr i8, ptr %.pn, i32 -12
  %3 = ptrtoint ptr %c.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c.0, align 4
  %cmp2 = icmp eq i32 %4, %and.i
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then:                                          ; preds = %for.body
  %fops = getelementptr i8, ptr %.pn, i32 -4
  %5 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fops, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.then11_crit_edge, label %land.lhs.true

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

land.lhs.true:                                    ; preds = %if.then
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call4 = tail call zeroext i1 @try_module_get(ptr noundef %8) #4
  br i1 %call4, label %for.end, label %land.lhs.true.if.then11_crit_edge

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fops, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %for.end.if.then11_crit_edge, label %for.end.if.end46_crit_edge

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

for.end.if.then11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.then11:                                        ; preds = %for.end.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge, %if.then.if.then11_crit_edge, %for.cond.if.then11_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  %call12 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.9, i32 noundef 10, i32 noundef %and.i) #4
  tail call void @mutex_lock_nested(ptr noundef nonnull @misc_mtx, i32 noundef 0) #4
  br label %for.cond16

for.cond16:                                       ; preds = %for.body20.for.cond16_crit_edge, %if.then11
  %.pn105.in = phi ptr [ @misc_list, %if.then11 ], [ %.pn105, %for.body20.for.cond16_crit_edge ]
  %11 = ptrtoint ptr %.pn105.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn105 = load ptr, ptr %.pn105.in, align 4
  %cmp18.not = icmp eq ptr %.pn105, @misc_list
  br i1 %cmp18.not, label %for.cond16.fail_crit_edge, label %for.body20

for.cond16.fail_crit_edge:                        ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

for.body20:                                       ; preds = %for.cond16
  %c.1 = getelementptr i8, ptr %.pn105, i32 -12
  %12 = ptrtoint ptr %c.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c.1, align 4
  %cmp22 = icmp eq i32 %13, %and.i
  br i1 %cmp22, label %if.then23, label %for.body20.for.cond16_crit_edge

for.body20.for.cond16_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond16

if.then23:                                        ; preds = %for.body20
  %fops24 = getelementptr i8, ptr %.pn105, i32 -4
  %14 = ptrtoint ptr %fops24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fops24, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.then23.fail_crit_edge, label %land.lhs.true26

if.then23.fail_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

land.lhs.true26:                                  ; preds = %if.then23
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call29 = tail call zeroext i1 @try_module_get(ptr noundef %17) #4
  br i1 %call29, label %for.end42, label %land.lhs.true26.fail_crit_edge

land.lhs.true26.fail_crit_edge:                   ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

for.end42:                                        ; preds = %land.lhs.true26
  %18 = ptrtoint ptr %fops24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fops24, align 4
  %tobool43.not = icmp eq ptr %19, null
  br i1 %tobool43.not, label %for.end42.fail_crit_edge, label %for.end42.if.end46_crit_edge

for.end42.if.end46_crit_edge:                     ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

for.end42.fail_crit_edge:                         ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end46:                                         ; preds = %for.end42.if.end46_crit_edge, %for.end.if.end46_crit_edge
  %new_fops.2 = phi ptr [ %10, %for.end.if.end46_crit_edge ], [ %19, %for.end42.if.end46_crit_edge ]
  %.pn.pn = phi ptr [ %.pn, %for.end.if.end46_crit_edge ], [ %.pn105, %for.end42.if.end46_crit_edge ]
  %c.2 = getelementptr i8, ptr %.pn.pn, i32 -12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %c.2, ptr %private_data, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %21 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_op, align 4
  %tobool48.not = icmp eq ptr %22, null
  br i1 %tobool48.not, label %if.end46.do.end69_crit_edge, label %if.then49

if.end46.do.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void @module_put(ptr noundef %24) #4
  br label %do.end69

do.end69:                                         ; preds = %if.then49, %if.end46.do.end69_crit_edge
  %25 = ptrtoint ptr %f_op to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %new_fops.2, ptr %f_op, align 4
  %open = getelementptr inbounds %struct.file_operations, ptr %new_fops.2, i32 0, i32 14
  %26 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %open, align 4
  %tobool73.not = icmp eq ptr %27, null
  br i1 %tobool73.not, label %do.end69.fail_crit_edge, label %if.then74

do.end69.fail_crit_edge:                          ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.then74:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #6
  %call77 = tail call i32 %27(ptr noundef %inode, ptr noundef %file) #4
  br label %fail

fail:                                             ; preds = %if.then74, %do.end69.fail_crit_edge, %for.end42.fail_crit_edge, %land.lhs.true26.fail_crit_edge, %if.then23.fail_crit_edge, %for.cond16.fail_crit_edge
  %err.0 = phi i32 [ %call77, %if.then74 ], [ 0, %do.end69.fail_crit_edge ], [ -19, %for.end42.fail_crit_edge ], [ -19, %land.lhs.true26.fail_crit_edge ], [ -19, %if.then23.fail_crit_edge ], [ -19, %for.cond16.fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @misc_mtx) #4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/misc.c", i32 207, i32 28}
!2 = !{ptr @__ksymtab_misc_register, !3, !"__ksymtab_misc_register", i1 false, i1 false}
!3 = !{!"../drivers/char/misc.c", i32 229, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/misc.c", i32 243, i32 6}
!6 = !{ptr @__ksymtab_misc_deregister, !7, !"__ksymtab_misc_deregister", i1 false, i1 false}
!7 = !{!"../drivers/char/misc.c", i32 253, i32 1}
!8 = !{ptr @__initcall__kmod_misc__210_291_misc_init4, !9, !"__initcall__kmod_misc__210_291_misc_init4", i1 false, i1 false}
!9 = !{!"../drivers/char/misc.c", i32 291, i32 1}
!10 = !{ptr @misc_minors, !11, !"misc_minors", i1 false, i1 false}
!11 = !{!"../drivers/char/misc.c", i32 64, i32 8}
!12 = !{ptr @misc_class, !13, !"misc_class", i1 false, i1 false}
!13 = !{!"../drivers/char/misc.c", i32 147, i32 22}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/misc.c", i32 58, i32 8}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @misc_mtx, !15, !"misc_mtx", i1 false, i1 false}
!18 = !{ptr @misc_list, !19, !"misc_list", i1 false, i1 false}
!19 = !{!"../drivers/char/misc.c", i32 57, i32 8}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/misc.c", i32 271, i32 8}
!22 = !{ptr @misc_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/char/misc.c", i32 272, i32 15}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/misc.c", i32 284, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @misc_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @misc_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @misc_seq_ops, !30, !"misc_seq_ops", i1 false, i1 false}
!30 = !{!"../drivers/char/misc.c", i32 92, i32 36}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/misc.c", i32 87, i32 18}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/char/misc.c", i32 87, i32 60}
!35 = !{ptr @misc_fops, !36, !"misc_fops", i1 false, i1 false}
!36 = !{!"../drivers/char/misc.c", i32 149, i32 37}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/char/misc.c", i32 118, i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
