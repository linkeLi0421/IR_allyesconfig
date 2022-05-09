; ModuleID = '/llk/IR_all_yes/drivers/block/aoe/aoechr.c_pt.bc'
source_filename = "../drivers/block/aoe/aoechr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ErrMsg = type { i16, i16, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aoe_chardev = type { i32, [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.83, i32, %struct.spinlock }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aoedev = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, %struct.work_struct, ptr, ptr, ptr, %struct.list_head, %struct.blk_mq_tag_set, %struct.hd_geometry, i64, %struct.timer_list, %struct.spinlock, %struct.sk_buff_head, ptr, %struct.anon.105, i32, [61 x %struct.list_head], %struct.list_head, ptr, i32, ptr, i32, [512 x i8] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.anon.105 = type { ptr, ptr, ptr }
%struct.anon.86 = type { ptr, ptr, %union.anon.87 }
%union.anon.87 = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }

@emsgs_lock = internal global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@emsgs = internal global { [100 x %struct.ErrMsg], [192 x i8] } zeroinitializer, align 32
@emsgs_tail_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nblocked_emsgs_readers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@emsgs_comp = internal global { %struct.completion, [40 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aoechr\00", [25 x i8] zeroinitializer }, align 32
@aoe_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @aoechr_read, ptr @aoechr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @aoechr_open, ptr null, ptr @aoechr_rel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aoechr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013aoe: can't register char device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aoechr_init\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/block/aoe/aoechr.c\00", [37 x i8] zeroinitializer }, align 32
@aoechr_init._entry_ptr = internal global ptr @aoechr_init._entry, section ".printk_index", align 4
@aoechr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&emsgs_lock\00", [20 x i8] zeroinitializer }, align 32
@aoechr_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aoe\00", [28 x i8] zeroinitializer }, align 32
@aoe_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@chardevs = internal global { [5 x %struct.aoe_chardev], [44 x i8] } { [5 x %struct.aoe_chardev] [%struct.aoe_chardev { i32 2, [32 x i8] c"err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.aoe_chardev { i32 3, [32 x i8] c"discover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.aoe_chardev { i32 4, [32 x i8] c"interfaces\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.aoe_chardev { i32 5, [32 x i8] c"revalidate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.aoe_chardev { i32 6, [32 x i8] c"flush\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [44 x i8] zeroinitializer }, align 32
@emsgs_head_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@aoechr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016aoe: can't write to that file.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aoechr_write\00", [19 x i8] zeroinitializer }, align 32
@aoechr_write._entry_ptr = internal global ptr @aoechr_write._entry, section ".printk_index", align 4
@interfaces._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013aoe: could not set interface list: too many interfaces\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interfaces\00", [21 x i8] zeroinitializer }, align 32
@interfaces._entry_ptr = internal global ptr @interfaces._entry, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e%d.%d\00", [25 x i8] zeroinitializer }, align 32
@revalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013aoe: invalid device specification %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"revalidate\00", [21 x i8] zeroinitializer }, align 32
@revalidate._entry_ptr = internal global ptr @revalidate._entry, section ".printk_index", align 4
@aoechr_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @aoechr_mutex, i64 52), ptr getelementptr (i8, ptr @aoechr_mutex, i64 52) }, ptr @aoechr_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aoechr_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aoechr_mutex\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"etherd/%s\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"emsgs_lock\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 50, i32 19 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"emsgs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 47, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"emsgs_tail_idx\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 48, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"nblocked_emsgs_readers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 51, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"emsgs_comp\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 49, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 286, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"aoe_fops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 267, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 288, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 292, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 293, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"aoe_class\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 52, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"chardevs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 53, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"emsgs_head_idx\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 48, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 230, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 214, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 174, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 166, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 72, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 94, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 96, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"aoechr_mutex\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 41, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 87, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [30 x i8] c"../drivers/block/aoe/aoechr.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 278, i32 31 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @aoechr_init._entry, ptr @aoechr_init._entry_ptr, ptr @aoechr_write._entry, ptr @aoechr_write._entry_ptr, ptr @interfaces._entry, ptr @interfaces._entry_ptr, ptr @revalidate._entry, ptr @revalidate._entry_ptr, ptr @emsgs_lock, ptr @emsgs, ptr @emsgs_tail_idx, ptr @nblocked_emsgs_readers, ptr @emsgs_comp, ptr @.str, ptr @aoe_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @aoechr_init.__key, ptr @.str.4, ptr @aoechr_init.__key.5, ptr @.str.6, ptr @aoe_class, ptr @chardevs, ptr @emsgs_head_idx, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @aoechr_mutex, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsgs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsgs to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsgs_tail_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nblocked_emsgs_readers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsgs_comp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoechr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoechr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoechr_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chardevs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emsgs_head_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoechr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interfaces._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoechr_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoechr_error(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %msg) #12
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @emsgs_lock) #9
  %0 = load i32, ptr @emsgs_tail_idx, align 4
  %add.ptr = getelementptr %struct.ErrMsg, ptr @emsgs, i32 %0
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %add.ptr, align 4
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.bail_crit_edge

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

bail:                                             ; preds = %if.end.bail_crit_edge, %entry.bail_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emsgs_lock, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @kmemdup(ptr noundef %msg, i32 noundef %call, i32 noundef 2592) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.bail_crit_edge, label %if.end11

if.end.bail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end11:                                         ; preds = %if.end
  %msg12 = getelementptr %struct.ErrMsg, ptr @emsgs, i32 %0, i32 2
  %4 = ptrtoint ptr %msg12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %msg12, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 4
  %7 = or i16 %6, 1
  store i16 %7, ptr %add.ptr, align 4
  %conv16 = trunc i32 %call to i16
  %len = getelementptr %struct.ErrMsg, ptr @emsgs, i32 %0, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv16, ptr %len, align 2
  %9 = load i32, ptr @emsgs_tail_idx, align 4
  %inc = add i32 %9, 1
  %rem = urem i32 %inc, 100
  store i32 %rem, ptr @emsgs_tail_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emsgs_lock, i32 noundef %call3) #9
  %10 = load i32, ptr @nblocked_emsgs_readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %if.end11.cleanup_crit_edge, label %if.then18

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull @emsgs_comp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end11.cleanup_crit_edge, %bail
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aoechr_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__register_chrdev(i32 noundef 152, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @aoe_fops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr @emsgs_comp, align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @emsgs_comp, i32 0, i32 1), ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #9
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @emsgs_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @aoechr_init.__key, i16 noundef signext 3) #9
  %call7 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @aoechr_init.__key.5) #9
  store ptr %call7, ptr @aoe_class, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__unregister_chrdev(i32 noundef 152, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #9
  %0 = load ptr, ptr @aoe_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %devnode = getelementptr inbounds %struct.class, ptr %call7, i32 0, i32 6
  %2 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @aoe_devnode, ptr %devnode, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11
  %i.020 = phi i32 [ 0, %if.end11 ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = load ptr, ptr @aoe_class, align 4
  %arrayidx = getelementptr [5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 %i.020
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %or = or i32 %5, 159383552
  %name = getelementptr [5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 %i.020, i32 1
  %call14 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %3, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef %name) #9
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %1, %if.then9 ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @aoe_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i) #9
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoechr_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aoe_class, align 4
  %1 = load i32, ptr @chardevs, align 4
  %or = or i32 %1, 159383552
  tail call void @device_destroy(ptr noundef %0, i32 noundef %or) #9
  %2 = load ptr, ptr @aoe_class, align 4
  %3 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 1), align 4
  %or.1 = or i32 %3, 159383552
  tail call void @device_destroy(ptr noundef %2, i32 noundef %or.1) #9
  %4 = load ptr, ptr @aoe_class, align 4
  %5 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 2), align 4
  %or.2 = or i32 %5, 159383552
  tail call void @device_destroy(ptr noundef %4, i32 noundef %or.2) #9
  %6 = load ptr, ptr @aoe_class, align 4
  %7 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 3), align 4
  %or.3 = or i32 %7, 159383552
  tail call void @device_destroy(ptr noundef %6, i32 noundef %or.3) #9
  %8 = load ptr, ptr @aoe_class, align 4
  %9 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 4), align 4
  %or.4 = or i32 %9, 159383552
  tail call void @device_destroy(ptr noundef %8, i32 noundef %or.4) #9
  %10 = load ptr, ptr @aoe_class, align 4
  tail call void @class_destroy(ptr noundef %10) #9
  tail call void @__unregister_chrdev(i32 noundef 152, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoechr_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %cnt, ptr nocapture noundef readnone %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %1, inttoptr (i32 2 to ptr)
  br i1 %cmp.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @emsgs_lock) #9
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %if.end14.for.cond_crit_edge, %do.body1
  %flags.0 = phi i32 [ %call3, %do.body1 ], [ %call24, %if.end14.for.cond_crit_edge ]
  %2 = load i32, ptr @emsgs_head_idx, align 4
  %add.ptr = getelementptr %struct.ErrMsg, ptr @emsgs, i32 %2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr, align 4
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp8.not = icmp eq i16 %5, 0
  br i1 %cmp8.not, label %if.end11, label %for.end

if.end11:                                         ; preds = %for.cond
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and12 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emsgs_lock, i32 noundef %flags.0) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %8 = load i32, ptr @nblocked_emsgs_readers, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @nblocked_emsgs_readers, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emsgs_lock, i32 noundef %flags.0) #9
  %call15 = tail call i32 @wait_for_completion_interruptible(ptr noundef nonnull @emsgs_comp) #9
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @emsgs_lock) #9
  %9 = load i32, ptr @nblocked_emsgs_readers, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr @nblocked_emsgs_readers, align 4
  %tobool29.not = icmp eq i32 %call15, 0
  br i1 %tobool29.not, label %if.end14.for.cond_crit_edge, label %if.then30

if.end14.for.cond_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then30:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emsgs_lock, i32 noundef %call24) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %len32 = getelementptr %struct.ErrMsg, ptr @emsgs, i32 %2, i32 1
  %10 = ptrtoint ptr %len32 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len32, align 2
  %conv33 = sext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv33, i32 %cnt)
  %cmp34 = icmp ugt i32 %conv33, %cnt
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emsgs_lock, i32 noundef %flags.0) #9
  br label %cleanup

if.end37:                                         ; preds = %for.end
  %msg = getelementptr %struct.ErrMsg, ptr @emsgs, i32 %2, i32 2
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 4
  store ptr null, ptr %msg, align 4
  %14 = and i16 %4, -2
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr, align 4
  %inc45 = add i32 %2, 1
  %rem = urem i32 %inc45, 100
  store i32 %rem, ptr @emsgs_head_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @emsgs_lock, i32 noundef %flags.0) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp9.i.i = icmp slt i16 %11, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end37
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !75

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.end37
  tail call void @__check_object_size(ptr noundef %13, i32 noundef %conv33, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %conv33, i32 -1226833920) #14, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %13, i32 noundef %conv33) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %13, i32 noundef %conv33) #9
  br label %copy_to_user.exit

copy_to_user.exit.thread:                         ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  tail call void @kfree(ptr noundef %13) #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv33, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv33, %if.end.i.i.copy_to_user.exit_crit_edge ]
  tail call void @kfree(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp47 = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %cmp47, i32 %conv33, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %copy_to_user.exit.thread, %if.then36, %if.then30, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then36 ], [ -11, %if.then13 ], [ -512, %if.then30 ], [ -14, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoechr_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %cnt, ptr nocapture noundef readnone %offp) #0 align 64 {
entry:
  %major.i = alloca i32, align 4
  %minor.i = alloca i32, align 4
  %buf.i = alloca [16 x i8], align 1
  %queue.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %sw.epilog.thread19

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @aoecmd_cfg(i16 noundef zeroext -1, i8 noundef zeroext -1) #9
  br label %sw.epilog.thread

sw.bb2:                                           ; preds = %entry
  %call.i = tail call i32 @set_aoe_iflist(ptr noundef %buf, i32 noundef %cnt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb2.sw.epilog.thread_crit_edge, label %do.end.i

sw.bb2.sw.epilog.thread_crit_edge:                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %sw.epilog.thread19

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major.i) #9
  %4 = ptrtoint ptr %major.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %major.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor.i) #9
  %5 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %minor.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %cnt)
  %cmp.i = icmp ugt i32 %cnt, 15
  %6 = call ptr @memset(ptr %buf.i, i32 255, i32 15)
  br i1 %cmp.i, label %sw.bb4.revalidate.exit_crit_edge, label %if.end.i

sw.bb4.revalidate.exit_crit_edge:                 ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %revalidate.exit

if.end.i:                                         ; preds = %sw.bb4
  %7 = getelementptr inbounds [16 x i8], ptr %buf.i, i32 0, i32 15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %7, align 1
  call void @__check_object_size(ptr noundef nonnull %buf.i, i32 noundef %cnt, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #9
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.end.i.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %cnt, i32 -1226833920) #14, !srcloc !78
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !75

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf.i, i32 noundef %cnt) #9
  %10 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !79
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf.i, ptr noundef %buf, i32 noundef %cnt) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %cnt, %if.end.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %cnt, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end2.i, label %if.then11.i.i.i, !prof !75

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i32 %cnt, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %buf.i, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %revalidate.exit

if.end2.i:                                        ; preds = %if.end.i.i.i
  %call4.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %major.i, ptr noundef nonnull %minor.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 2
  br i1 %cmp5.not.i, label %if.end9.i, label %do.end.i14

do.end.i14:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %buf.i) #13
  br label %revalidate.exit

if.end9.i:                                        ; preds = %if.end2.i
  %14 = ptrtoint ptr %major.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %major.i, align 4
  %16 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %minor.i, align 4
  %call10.i = call ptr @aoedev_by_aoeaddr(i32 noundef %15, i32 noundef %17, i32 noundef 0) #9
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.revalidate.exit_crit_edge, label %do.body15.i

if.end9.i.revalidate.exit_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %revalidate.exit

do.body15.i:                                      ; preds = %if.end9.i
  %lock.i = getelementptr inbounds %struct.aoedev, ptr %call10.i, i32 0, i32 21
  %call19.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call void @aoecmd_cleanslate(ptr noundef nonnull %call10.i) #9
  %18 = ptrtoint ptr %major.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %major.i, align 4
  %conv24.i = trunc i32 %19 to i16
  %20 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %minor.i, align 4
  %conv25.i = trunc i32 %21 to i8
  call void @aoecmd_cfg(i16 noundef zeroext %conv24.i, i8 noundef zeroext %conv25.i) #9
  %call2668.i = call ptr @aoecmd_ata_id(ptr noundef nonnull %call10.i) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call19.i) #9
  %tobool28.not69.i = icmp eq ptr %call2668.i, null
  br i1 %tobool28.not69.i, label %do.body15.i.land.lhs.true.i_crit_edge, label %do.body15.i.if.then48.critedge.i_crit_edge

do.body15.i.if.then48.critedge.i_crit_edge:       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.critedge.i

do.body15.i.land.lhs.true.i_crit_edge:            ; preds = %do.body15.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.body33.i.land.lhs.true.i_crit_edge, %do.body15.i.land.lhs.true.i_crit_edge
  %call29.i = call i32 @msleep_interruptible(i32 noundef 250) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %do.body33.i, label %if.end49.critedge.i

do.body33.i:                                      ; preds = %land.lhs.true.i
  %call41.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %call26.i = call ptr @aoecmd_ata_id(ptr noundef nonnull %call10.i) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call41.i) #9
  %tobool28.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool28.not.i, label %do.body33.i.land.lhs.true.i_crit_edge, label %do.body33.i.if.then48.critedge.i_crit_edge

do.body33.i.if.then48.critedge.i_crit_edge:       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.critedge.i

do.body33.i.land.lhs.true.i_crit_edge:            ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.then48.critedge.i:                             ; preds = %do.body33.i.if.then48.critedge.i_crit_edge, %do.body15.i.if.then48.critedge.i_crit_edge
  %call26.lcssa.i = phi ptr [ %call2668.i, %do.body15.i.if.then48.critedge.i_crit_edge ], [ %call26.i, %do.body33.i.if.then48.critedge.i_crit_edge ]
  call void @aoedev_put(ptr noundef nonnull %call10.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue.i) #9
  %22 = getelementptr inbounds i8, ptr %queue.i, i32 12
  %23 = call ptr @memset(ptr %22, i32 255, i32 44)
  %prev.i.i = getelementptr inbounds %struct.anon.84, ptr %queue.i, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.i, i32 0, i32 1
  %24 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qlen.i.i, align 4
  %25 = ptrtoint ptr %call26.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %queue.i, ptr %call26.lcssa.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.86, ptr %call26.lcssa.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %queue.i, ptr %prev10.i.i.i.i, align 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call26.lcssa.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call26.lcssa.i, ptr %queue.i, align 4
  %29 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  call void @aoenet_xmit(ptr noundef nonnull %queue.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue.i) #9
  br label %revalidate.exit

if.end49.critedge.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @aoedev_put(ptr noundef nonnull %call10.i) #9
  br label %revalidate.exit

revalidate.exit:                                  ; preds = %if.end49.critedge.i, %if.then48.critedge.i, %if.end9.i.revalidate.exit_crit_edge, %do.end.i14, %if.then11.i.i.i, %sw.bb4.revalidate.exit_crit_edge
  %retval.0.i15 = phi i32 [ -22, %do.end.i14 ], [ -22, %sw.bb4.revalidate.exit_crit_edge ], [ -22, %if.end9.i.revalidate.exit_crit_edge ], [ 0, %if.end49.critedge.i ], [ 0, %if.then48.critedge.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major.i) #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @aoedev_flush(ptr noundef %buf, i32 noundef %cnt) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %revalidate.exit
  %ret.0 = phi i32 [ %call7, %sw.bb6 ], [ %retval.0.i15, %revalidate.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, 0
  br i1 %cmp, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.sw.epilog.thread19_crit_edge

sw.epilog.sw.epilog.thread19_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread19

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %sw.bb2.sw.epilog.thread_crit_edge, %sw.bb
  br label %sw.epilog.thread19

sw.epilog.thread19:                               ; preds = %sw.epilog.thread, %sw.epilog.sw.epilog.thread19_crit_edge, %do.end.i, %do.end
  %30 = phi i32 [ %cnt, %sw.epilog.thread ], [ %ret.0, %sw.epilog.sw.epilog.thread19_crit_edge ], [ -22, %do.end ], [ -22, %do.end.i ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aoechr_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @aoechr_mutex, i32 noundef 0) #9
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %2 = inttoptr i32 %and.i to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %private_data, align 4
  %4 = load i32, ptr @chardevs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and.i)
  %cmp1 = icmp eq i32 %4, %and.i
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond:                                         ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and.i)
  %cmp1.1 = icmp eq i32 %5, %and.i
  br i1 %cmp1.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %6 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and.i)
  %cmp1.2 = icmp eq i32 %6, %and.i
  br i1 %cmp1.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %7 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and.i)
  %cmp1.3 = icmp eq i32 %7, %and.i
  br i1 %cmp1.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %8 = load i32, ptr getelementptr inbounds ([5 x %struct.aoe_chardev], ptr @chardevs, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and.i)
  %cmp1.4 = icmp eq i32 %8, %and.i
  br i1 %cmp1.4, label %for.cond.3.if.then_crit_edge, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %for.cond.3.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @aoechr_mutex) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aoechr_rel(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %filp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aoedev_flush(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoecmd_cfg(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_aoe_iflist(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aoedev_by_aoeaddr(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoecmd_cleanslate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aoecmd_ata_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoedev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoenet_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/aoe/aoechr.c", i32 286, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/aoe/aoechr.c", i32 288, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @aoechr_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @aoechr_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @aoechr_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/block/aoe/aoechr.c", i32 292, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @aoechr_init.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/block/aoe/aoechr.c", i32 293, i32 14}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @emsgs, !15, !"emsgs", i1 false, i1 false}
!15 = !{!"../drivers/block/aoe/aoechr.c", i32 47, i32 22}
!16 = !{ptr @emsgs_tail_idx, !17, !"emsgs_tail_idx", i1 false, i1 false}
!17 = !{!"../drivers/block/aoe/aoechr.c", i32 48, i32 28}
!18 = !{ptr @emsgs_comp, !19, !"emsgs_comp", i1 false, i1 false}
!19 = !{!"../drivers/block/aoe/aoechr.c", i32 49, i32 26}
!20 = !{ptr @emsgs_lock, !21, !"emsgs_lock", i1 false, i1 false}
!21 = !{!"../drivers/block/aoe/aoechr.c", i32 50, i32 19}
!22 = !{ptr @nblocked_emsgs_readers, !23, !"nblocked_emsgs_readers", i1 false, i1 false}
!23 = !{!"../drivers/block/aoe/aoechr.c", i32 51, i32 12}
!24 = !{ptr @aoe_class, !25, !"aoe_class", i1 false, i1 false}
!25 = !{!"../drivers/block/aoe/aoechr.c", i32 52, i32 22}
!26 = !{ptr @aoe_fops, !27, !"aoe_fops", i1 false, i1 false}
!27 = !{!"../drivers/block/aoe/aoechr.c", i32 267, i32 37}
!28 = !{ptr @emsgs_head_idx, !29, !"emsgs_head_idx", i1 false, i1 false}
!29 = !{!"../drivers/block/aoe/aoechr.c", i32 48, i32 12}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/block/aoe/aoechr.c", i32 166, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @aoechr_write._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @aoechr_write._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/block/aoe/aoechr.c", i32 72, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @interfaces._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @interfaces._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/block/aoe/aoechr.c", i32 94, i32 18}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/block/aoe/aoechr.c", i32 96, i32 3}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @revalidate._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @revalidate._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/aoe/aoechr.c", i32 41, i32 8}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @aoechr_mutex, !55, !"aoechr_mutex", i1 false, i1 false}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/block/aoe/aoechr.c", i32 278, i32 31}
!63 = !{ptr @chardevs, !64, !"chardevs", i1 false, i1 false}
!64 = !{!"../drivers/block/aoe/aoechr.c", i32 53, i32 27}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2152279788, i64 2152279813}
!77 = !{!"auto-init"}
!78 = !{i64 2152279107, i64 2152279132}
!79 = !{i64 4774662}
!80 = !{i64 4774859}
!81 = !{i64 2152260092}
