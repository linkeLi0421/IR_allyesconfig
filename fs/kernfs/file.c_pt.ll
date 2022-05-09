; ModuleID = '/llk/IR_all_yes/fs/kernfs/file.c_pt.bc'
source_filename = "../fs/kernfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kernfs_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_kernfs_notify\09\09\09\09"
module asm "\09.long\09__crc_kernfs_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_notify\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.0, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_open_node = type { %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file = type { %union.anon.3, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.kernfs_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i32, i8, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.76, %struct.list_head, %struct.list_head, %union.anon.77 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { %struct.spinlock, i32 }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { ptr }
%union.anon.31 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.24, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@kernfs_open_node_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kernfs_open_file_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kernfs_open_file_mutex, i64 52), ptr getelementptr (i8, ptr @kernfs_open_file_mutex, i64 52) }, ptr @kernfs_open_file_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@kernfs_notify.kernfs_notify_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @kernfs_notify.kernfs_notify_work, i64 4), ptr getelementptr (i8, ptr @kernfs_notify.kernfs_notify_work, i64 4) }, ptr @kernfs_notify_workfn, %struct.lockdep_map { ptr @kernfs_notify.kernfs_notify_work, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernfs_notify_work\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/kernfs/file.c\00", [47 x i8] zeroinitializer }, align 32
@kernfs_notify_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kernfs_notify_list = internal global { ptr, [28 x i8] } { ptr @kernfs_notify_list, [28 x i8] zeroinitializer }, align 32
@__kstrtab_kernfs_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_notify to i32), ptr @__kstrtab_kernfs_notify, ptr @__kstrtabns_kernfs_notify }, section "___ksymtab_gpl+kernfs_notify", align 4
@kernfs_file_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @kernfs_fop_read_iter, ptr @kernfs_fop_write_iter, ptr null, ptr null, ptr null, ptr @kernfs_fop_poll, ptr null, ptr null, ptr @kernfs_fop_mmap, i32 0, ptr @kernfs_fop_open, ptr null, ptr @kernfs_fop_release, ptr @noop_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kn->active\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernfs_open_node_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kernfs_open_file_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernfs_open_file_mutex\00", [41 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernfs_notify_lock\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@kernfs_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @kernfs_vma_open, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_vma_fault, ptr null, ptr null, ptr null, ptr @kernfs_vma_page_mkwrite, ptr null, ptr @kernfs_vma_access, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kernfs_fop_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&of->mutex\00", [21 x i8] zeroinitializer }, align 32
@kernfs_fop_open.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kernfs_fop_open.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&of->prealloc_mutex\00", [44 x i8] zeroinitializer }, align 32
@kernfs_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kernfs_seq_start, ptr @kernfs_seq_stop, ptr @kernfs_seq_next, ptr @kernfs_seq_show }, [16 x i8] zeroinitializer }, align 32
@kernfs_get_open_node.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&new_on->poll\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"kernfs_open_node_lock\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"kernfs_open_file_mutex\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"kernfs_notify_work\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 917, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 921, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"kernfs_notify_lock\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"kernfs_notify_list\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 53, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"kernfs_file_fops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 945, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 999, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 32, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 33, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 52, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 230, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 214, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"kernfs_vm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 439, i32 42 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 648, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 650, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 675, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"kernfs_seq_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 171, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [20 x i8] c"../fs/kernfs/file.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 558, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_kernfs_notify, ptr @kernfs_open_node_lock, ptr @kernfs_open_file_mutex, ptr @kernfs_notify.kernfs_notify_work, ptr @.str, ptr @.str.1, ptr @kernfs_notify_lock, ptr @kernfs_notify_list, ptr @kernfs_file_fops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @kernfs_vm_ops, ptr @kernfs_fop_open.__key, ptr @.str.9, ptr @kernfs_fop_open.__key.10, ptr @kernfs_fop_open.__key.11, ptr @.str.12, ptr @kernfs_seq_ops, ptr @kernfs_get_open_node.__key, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_open_node_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_open_file_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_notify.kernfs_notify_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_notify_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_notify_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_fop_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_fop_open.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_fop_open.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_get_open_node.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_drain_open_files(ptr nocapture noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 8
  %2 = and i16 %1, 8320
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  %open = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %open, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then5.critedge, label %if.then2

if.then2:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #8, !srcloc !52
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @kernfs_open_file_mutex, i32 noundef 0) #8
  %files = getelementptr inbounds %struct.kernfs_open_node, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn40 = load ptr, ptr %files, align 4
  %cmp.not42 = icmp eq ptr %.pn40, %files
  br i1 %cmp.not42, label %if.then2.for.end_crit_edge, label %for.body.lr.ph

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then2
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 8
  br label %for.body

if.then5.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  br label %cleanup

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.lr.ph
  %.pn43 = phi ptr [ %.pn40, %for.body.lr.ph ], [ %.pn, %if.end20.for.body_crit_edge ]
  %of.044 = getelementptr i8, ptr %.pn43, i32 -204
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 8
  %10 = and i16 %9, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool12.not = icmp eq i16 %10, 0
  br i1 %tobool12.not, label %for.body.if.end14_crit_edge, label %if.then13

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %file = getelementptr i8, ptr %.pn43, i32 -200
  %11 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping, align 8
  tail call void @unmap_mapping_range(ptr noundef %16, i64 noundef 0, i64 noundef 0, i32 noundef 1) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body.if.end14_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 8
  %19 = and i16 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool18.not = icmp eq i16 %19, 0
  br i1 %tobool18.not, label %if.end14.if.end20_crit_edge, label %if.then19

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then19.if.end.i_crit_edge, label %land.rhs.i

if.then19.if.end.i_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then19
  %call.i.i39 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kernfs_open_file_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %cmp.not.i = icmp eq i32 %call.i.i39, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !53

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 736, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then19.if.end.i_crit_edge
  %released.i = getelementptr i8, ptr %.pn43, i32 16
  %21 = ptrtoint ptr %released.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %released.i, align 4
  %22 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %bf.cast.not.i = icmp eq i8 %22, 0
  br i1 %bf.cast.not.i, label %if.then24.i, label %if.end.i.if.end20_crit_edge

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 8
  %release.i = getelementptr inbounds %struct.kernfs_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release.i, align 4
  tail call void %26(ptr noundef %of.044) #8
  %27 = ptrtoint ptr %released.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load26.i = load i8, ptr %released.i, align 4
  %bf.set.i = or i8 %bf.load26.i, 64
  store i8 %bf.set.i, ptr %released.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then24.i, %if.end.i.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %28 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %files
  br i1 %cmp.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %if.then2.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call fastcc void @kernfs_put_open_node(ptr noundef %kn, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5.critedge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kernfs_put_open_node(ptr nocapture noundef %kn, ptr noundef %of) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @kernfs_open_file_mutex, i32 noundef 0) #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_open_node_lock) #8
  %tobool.not = icmp eq ptr %of, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 7
  %call.i.i12 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i12, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #8, !srcloc !55
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %open, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %on.0 = phi ptr [ %1, %if.then6 ], [ null, %if.end.if.end8_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_open_node_lock, i32 noundef %call2) #8
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call void @kfree(ptr noundef %on.0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_generic_poll(ptr nocapture noundef readonly %of, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 1
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %5, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %open = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 8, i32 0, i32 1
  %8 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %open, align 4
  %poll = getelementptr inbounds %struct.kernfs_open_node, ptr %9, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %kernfs_dentry_node.exit.poll_wait.exit_crit_edge, label %land.lhs.true.i

kernfs_dentry_node.exit.poll_wait.exit_crit_edge: ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %kernfs_dentry_node.exit
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  %tobool3.not.i = icmp eq ptr %poll, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %1, ptr noundef nonnull %poll, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %kernfs_dentry_node.exit.poll_wait.exit_crit_edge
  %event = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 6
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event, align 4
  %event2 = getelementptr inbounds %struct.kernfs_open_node, ptr %9, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event2, i32 noundef 4) #8
  %14 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %event2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  %. = select i1 %cmp.not, i32 325, i32 335
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_notify(ptr noundef %kn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 8
  %2 = and i16 %1, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %cmp.not = icmp eq i16 %2, 2
  br i1 %cmp.not, label %do.body23, label %do.end, !prof !57

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 921, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body23:                                        ; preds = %entry
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_open_node_lock) #8
  %open = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %open, align 4
  %tobool32.not = icmp eq ptr %4, null
  br i1 %tobool32.not, label %do.body23.if.end34_crit_edge, label %if.then33

do.body23.if.end34_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %event = getelementptr inbounds %struct.kernfs_open_node, ptr %4, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %event, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event, ptr %event, i32 1, ptr elementtype(i32) %event) #8, !srcloc !52
  %poll = getelementptr inbounds %struct.kernfs_open_node, ptr %4, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %poll, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %do.body23.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_open_node_lock, i32 noundef %call27) #8
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_notify_lock) #8
  %notify_next = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 8, i32 0, i32 3
  %6 = ptrtoint ptr %notify_next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notify_next, align 8
  %tobool48.not = icmp eq ptr %7, null
  br i1 %tobool48.not, label %if.then49, label %if.end34.if.end52_crit_edge

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then49:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kernfs_get(ptr noundef %kn) #8
  %8 = load ptr, ptr @kernfs_notify_list, align 4
  %9 = ptrtoint ptr %notify_next to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %notify_next, align 8
  store ptr %kn, ptr @kernfs_notify_list, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i63 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef nonnull @kernfs_notify.kernfs_notify_work) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end34.if.end52_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_notify_lock, i32 noundef %call43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kernfs_notify_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %name = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_notify_lock) #8
  %0 = load ptr, ptr @kernfs_notify_list, align 4
  %cmp87 = icmp eq ptr %0, @kernfs_notify_list
  br i1 %cmp87, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %.compoundliteral.sroa.2.0.name.sroa_idx = getelementptr inbounds i8, ptr %name, i32 4
  %.compoundliteral.sroa.3.0.name.sroa_idx = getelementptr inbounds i8, ptr %name, i32 8
  br label %if.end

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_notify_lock) #8
  ret void

if.end:                                           ; preds = %for.end.if.end_crit_edge, %if.end.lr.ph
  %1 = phi ptr [ %0, %if.end.lr.ph ], [ %39, %for.end.if.end_crit_edge ]
  %notify_next = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, i32 0, i32 3
  %2 = ptrtoint ptr %notify_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify_next, align 8
  store ptr %3, ptr @kernfs_notify_list, align 4
  store ptr null, ptr %notify_next, align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_notify_lock) #8
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool.not.i, ptr %1, ptr %5
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %7, i32 0, i32 8
  call void @down_write(ptr noundef %kernfs_rwsem) #8
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 4
  %tobool.not.i64 = icmp eq ptr %9, null
  %spec.select.i65 = select i1 %tobool.not.i64, ptr %1, ptr %9
  %root.i66 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i65, i32 0, i32 8, i32 0, i32 2
  %10 = ptrtoint ptr %root.i66 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root.i66, align 8
  %supers = getelementptr inbounds %struct.kernfs_root, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %supers to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn78 = load ptr, ptr %supers, align 4
  %cmp5.not84 = icmp eq ptr %.pn78, %supers
  br i1 %cmp5.not84, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 10
  %name10 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn85 = phi ptr [ %.pn78, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %info.086 = getelementptr i8, ptr %.pn85, i32 -12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #8
  %13 = call ptr @memset(ptr %name, i32 255, i32 16)
  %14 = ptrtoint ptr %info.086 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info.086, align 4
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %id.i, align 8
  %conv.i.i = trunc i64 %17 to i32
  %call7 = call ptr @ilookup(ptr noundef %15, i32 noundef %conv.i.i) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %18 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name10, align 8
  %call11 = call i32 @strlen(ptr noundef %19) #11
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call11, ptr %name, align 8
  %21 = ptrtoint ptr %.compoundliteral.sroa.2.0.name.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %.compoundliteral.sroa.2.0.name.sroa_idx, align 4
  %22 = ptrtoint ptr %.compoundliteral.sroa.3.0.name.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %.compoundliteral.sroa.3.0.name.sroa_idx, align 8
  %call14 = call ptr @kernfs_get_parent(ptr noundef %1) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end9.if.then26_crit_edge, label %if.then16

if.end9.if.then26_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then16:                                        ; preds = %if.end9
  %23 = ptrtoint ptr %info.086 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info.086, align 4
  %id.i71 = getelementptr inbounds %struct.kernfs_node, ptr %call14, i32 0, i32 10
  %25 = ptrtoint ptr %id.i71 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %id.i71, align 8
  %conv.i.i72 = trunc i64 %26 to i32
  %call19 = call ptr @ilookup(ptr noundef %24, i32 noundef %conv.i.i72) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end24.thread76, label %if.end24

if.end24.thread76:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  call void @kernfs_put(ptr noundef nonnull %call14) #8
  br label %if.then26

if.end24:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 @fsnotify(i32 noundef 134217730, ptr noundef nonnull %call7, i32 noundef 2, ptr noundef nonnull %call19, ptr noundef nonnull %name, ptr noundef nonnull %call7, i32 noundef 0) #8
  call void @iput(ptr noundef nonnull %call19) #8
  call void @kernfs_put(ptr noundef nonnull %call14) #8
  br label %if.end27

if.then26:                                        ; preds = %if.end24.thread76, %if.end9.if.then26_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_fsnotify_connectors.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 48
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %s_fsnotify_connectors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %s_fsnotify_connectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.then26.if.end27_crit_edge, label %if.end.i

if.then26.if.end27_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call7 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %call7, align 8
  %33 = and i16 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %33)
  %cmp1.i = icmp eq i16 %33, 16384
  %spec.select.i73 = select i1 %cmp1.i, i32 1073741826, i32 2
  %call5.i = call i32 @fsnotify(i32 noundef %spec.select.i73, ptr noundef nonnull %call7, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7, i32 noundef 0) #8
  br label %if.end27

if.end27:                                         ; preds = %if.end.i, %if.then26.if.end27_crit_edge, %if.end24
  call void @iput(ptr noundef nonnull %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #8
  %34 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn85, align 4
  %35 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i, align 4
  %tobool.not.i68 = icmp eq ptr %36, null
  %spec.select.i69 = select i1 %tobool.not.i68, ptr %1, ptr %36
  %root.i70 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i69, i32 0, i32 8, i32 0, i32 2
  %37 = ptrtoint ptr %root.i70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %root.i70, align 8
  %supers4 = getelementptr inbounds %struct.kernfs_root, ptr %38, i32 0, i32 6
  %cmp5.not = icmp eq ptr %.pn, %supers4
  br i1 %cmp5.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @up_write(ptr noundef %kernfs_rwsem) #8
  call void @kernfs_put(ptr noundef %1) #8
  call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_notify_lock) #8
  %39 = load ptr, ptr @kernfs_notify_list, align 4
  %cmp = icmp eq ptr %39, @kernfs_notify_list
  br i1 %cmp, label %for.end.if.then_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_fop_read_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 8
  %10 = and i16 %9, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @seq_read_iter(ptr noundef %iocb, ptr noundef %iter) #8
  br label %return

if.end:                                           ; preds = %entry
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %11 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i.i, align 8
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 4096) #8
  %prealloc_buf.i = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %prealloc_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prealloc_buf.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end8.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prealloc_mutex.i = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %prealloc_mutex.i, i32 noundef 0) #8
  br label %if.end5.i

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #12
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end8.i.i.return_crit_edge, label %if.end8.i.i.if.end5.i_crit_edge

if.end8.i.i.if.end5.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end8.i.i.return_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5.i:                                        ; preds = %if.end8.i.i.if.end5.i_crit_edge, %if.then.i
  %buf.076.i = phi ptr [ %call9.i.i, %if.end8.i.i.if.end5.i_crit_edge ], [ %15, %if.then.i ]
  %mutex.i = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call6.i = tail call ptr @kernfs_get_active(ptr noundef %17) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  br label %out_free.i

if.end10.i:                                       ; preds = %if.end5.i
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %open.i = getelementptr inbounds %struct.kernfs_node, ptr %19, i32 0, i32 8, i32 0, i32 1
  %20 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %open.i, align 4
  %event.i = getelementptr inbounds %struct.kernfs_open_node, ptr %21, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event.i, i32 noundef 4) #8
  %22 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %event.i, align 4
  %event13.i = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 6
  %24 = ptrtoint ptr %event13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %event13.i, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i.i, align 8
  %29 = and i16 %28, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i.i, label %if.end10.i.kernfs_ops.exit.i_crit_edge, label %do.body.i.i

if.end10.i.kernfs_ops.exit.i_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.body.i.i:                                      ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.kernfs_ops.exit.i_crit_edge, label %land.rhs.i.i

do.body.i.i.kernfs_ops.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dep_map.i.i = getelementptr inbounds %struct.kernfs_node, ptr %26, i32 0, i32 2
  %call.i.i73.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i73.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, !prof !53

land.rhs.i.i.kernfs_ops.exit.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit.i

kernfs_ops.exit.i:                                ; preds = %do.end.i.i, %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, %do.body.i.i.kernfs_ops.exit.i_crit_edge, %if.end10.i.kernfs_ops.exit.i_crit_edge
  %31 = getelementptr inbounds %struct.kernfs_node, ptr %26, i32 0, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %read.i = getelementptr inbounds %struct.kernfs_ops, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i, align 4
  %tobool16.not.i = icmp eq ptr %35, null
  br i1 %tobool16.not.i, label %kernfs_ops.exit.i.if.end21.i_crit_edge, label %if.then17.i

kernfs_ops.exit.i.if.end21.i_crit_edge:           ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then17.i:                                      ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %36 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ki_pos.i, align 8
  %call19.i = tail call i32 %35(ptr noundef %5, ptr noundef nonnull %buf.076.i, i32 noundef %13, i64 noundef %37) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %kernfs_ops.exit.i.if.end21.i_crit_edge
  %len.0.i = phi i32 [ %call19.i, %if.then17.i ], [ -22, %kernfs_ops.exit.i.if.end21.i_crit_edge ]
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  tail call void @kernfs_put_active(ptr noundef %39) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp24.i = icmp slt i32 %len.0.i, 0
  br i1 %cmp24.i, label %if.end21.i.out_free.i_crit_edge, label %if.then.i.i.i.i

if.end21.i.out_free.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

if.then.i.i.i.i:                                  ; preds = %if.end21.i
  tail call void @__check_object_size(ptr noundef %buf.076.i, i32 noundef %len.0.i, i1 noundef zeroext true) #8
  %call3.i.i = tail call i32 @_copy_to_iter(ptr noundef %buf.076.i, i32 noundef %len.0.i, ptr noundef %iter) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %len.0.i)
  %cmp28.not.i = icmp eq i32 %call3.i.i, %len.0.i
  br i1 %cmp28.not.i, label %if.end30.i, label %if.then.i.i.i.i.out_free.i_crit_edge

if.then.i.i.i.i.out_free.i_crit_edge:             ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

if.end30.i:                                       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv77.i = zext i32 %len.0.i to i64
  %ki_pos31.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %40 = ptrtoint ptr %ki_pos31.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ki_pos31.i, align 8
  %add.i = add i64 %41, %conv77.i
  store i64 %add.i, ptr %ki_pos31.i, align 8
  br label %out_free.i

out_free.i:                                       ; preds = %if.end30.i, %if.then.i.i.i.i.out_free.i_crit_edge, %if.end21.i.out_free.i_crit_edge, %if.then8.i
  %len.1.i = phi i32 [ %len.0.i, %if.end21.i.out_free.i_crit_edge ], [ %len.0.i, %if.end30.i ], [ -19, %if.then8.i ], [ -14, %if.then.i.i.i.i.out_free.i_crit_edge ]
  %42 = ptrtoint ptr %prealloc_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prealloc_buf.i, align 4
  %cmp33.i = icmp eq ptr %buf.076.i, %43
  br i1 %cmp33.i, label %if.then35.i, label %if.else37.i

if.then35.i:                                      ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #10
  %prealloc_mutex36.i = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %prealloc_mutex36.i) #8
  br label %return

if.else37.i:                                      ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %buf.076.i) #8
  br label %return

return:                                           ; preds = %if.else37.i, %if.then35.i, %if.end8.i.i.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -12, %if.end8.i.i.return_crit_edge ], [ %len.1.i, %if.else37.i ], [ %len.1.i, %if.then35.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_fop_write_iter(ptr nocapture noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %atomic_write_len = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %atomic_write_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %atomic_write_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 4096)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.if.end5_crit_edge
  %len.0 = phi i32 [ %7, %if.then.if.end5_crit_edge ], [ %10, %if.else ]
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %prealloc_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prealloc_buf, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.end8.i, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %prealloc_mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %prealloc_mutex, i32 noundef 0) #8
  br label %if.end8.i.i

if.end8.i:                                        ; preds = %if.end5
  %add = add i32 %len.0, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end8.i.i_crit_edge

if.end8.i.if.end8.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end8.i.if.end8.i.i_crit_edge, %if.then7
  %buf.087 = phi ptr [ %call9.i, %if.end8.i.if.end8.i.i_crit_edge ], [ %12, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp9.i.i = icmp slt i32 %len.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_from_iter.exit_crit_edge, label %if.then27.i.i, !prof !57

land.rhs16.i.i.copy_from_iter.exit_crit_edge:     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_from_iter.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %copy_from_iter.exit

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__check_object_size(ptr noundef nonnull %buf.087, i32 noundef %len.0, i1 noundef zeroext false) #8
  %call3.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %buf.087, i32 noundef %len.0, ptr noundef %iter) #8
  br label %copy_from_iter.exit

copy_from_iter.exit:                              ; preds = %if.then.i.i.i, %if.then27.i.i, %land.rhs16.i.i.copy_from_iter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.then.i.i.i ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.copy_from_iter.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %len.0)
  %cmp15.not = icmp eq i32 %retval.0.i, %len.0
  br i1 %cmp15.not, label %if.end17, label %copy_from_iter.exit.out_free_crit_edge

copy_from_iter.exit.out_free_crit_edge:           ; preds = %copy_from_iter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end17:                                         ; preds = %copy_from_iter.exit
  %arrayidx = getelementptr i8, ptr %buf.087, i32 %len.0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call18 = tail call ptr @kernfs_get_active(ptr noundef %15) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %out_free

if.end22:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i, align 8
  %20 = and i16 %19, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i, label %if.end22.kernfs_ops.exit_crit_edge, label %do.body.i

if.end22.kernfs_ops.exit_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.body.i:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %do.body.i.kernfs_ops.exit_crit_edge, label %land.rhs.i

do.body.i.kernfs_ops.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 2
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_ops.exit_crit_edge, !prof !53

land.rhs.i.kernfs_ops.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit

kernfs_ops.exit:                                  ; preds = %do.end.i, %land.rhs.i.kernfs_ops.exit_crit_edge, %do.body.i.kernfs_ops.exit_crit_edge, %if.end22.kernfs_ops.exit_crit_edge
  %22 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %write = getelementptr inbounds %struct.kernfs_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write, align 4
  %tobool25.not = icmp eq ptr %26, null
  br i1 %tobool25.not, label %kernfs_ops.exit.if.end30_crit_edge, label %if.then26

kernfs_ops.exit.if.end30_crit_edge:               ; preds = %kernfs_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %kernfs_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %27 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ki_pos, align 8
  %call28 = tail call i32 %26(ptr noundef %5, ptr noundef nonnull %buf.087, i32 noundef %len.0, i64 noundef %28) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %kernfs_ops.exit.if.end30_crit_edge
  %len.1 = phi i32 [ %call28, %if.then26 ], [ -22, %kernfs_ops.exit.if.end30_crit_edge ]
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  tail call void @kernfs_put_active(ptr noundef %30) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp33 = icmp sgt i32 %len.1, 0
  br i1 %cmp33, label %if.then34, label %if.end30.out_free_crit_edge

if.end30.out_free_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %conv100 = zext i32 %len.1 to i64
  %ki_pos35 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %31 = ptrtoint ptr %ki_pos35 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ki_pos35, align 8
  %add36 = add i64 %32, %conv100
  store i64 %add36, ptr %ki_pos35, align 8
  br label %out_free

out_free:                                         ; preds = %if.then34, %if.end30.out_free_crit_edge, %if.then20, %copy_from_iter.exit.out_free_crit_edge
  %len.2 = phi i32 [ %len.1, %if.then34 ], [ %len.1, %if.end30.out_free_crit_edge ], [ -19, %if.then20 ], [ -14, %copy_from_iter.exit.out_free_crit_edge ]
  %33 = ptrtoint ptr %prealloc_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prealloc_buf, align 4
  %cmp39 = icmp eq ptr %buf.087, %34
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  %prealloc_mutex42 = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %prealloc_mutex42) #8
  br label %cleanup

if.else43:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %buf.087) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else43, %if.then41, %if.end8.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %len.2, %if.else43 ], [ %len.2, %if.then41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_fop_poll(ptr nocapture noundef readonly %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %7, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_private.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %call2 = tail call ptr @kernfs_get_active(ptr noundef %retval.0.i) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %kernfs_dentry_node.exit.cleanup_crit_edge, label %if.end

kernfs_dentry_node.exit.cleanup_crit_edge:        ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kernfs_dentry_node.exit
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %poll = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %poll, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 %14(ptr noundef %3, ptr noundef %wait) #8
  br label %if.end9

if.else:                                          ; preds = %if.end
  %file.i = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file.i, align 4
  %dentry.i = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %20, null
  br i1 %cmp.i.i.i, label %if.else.kernfs_dentry_node.exit.i_crit_edge, label %if.end.i.i

if.else.kernfs_dentry_node.exit.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_dentry_node.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 54
  %21 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_private.i.i, align 4
  br label %kernfs_dentry_node.exit.i

kernfs_dentry_node.exit.i:                        ; preds = %if.end.i.i, %if.else.kernfs_dentry_node.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ null, %if.else.kernfs_dentry_node.exit.i_crit_edge ]
  %open.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i.i, i32 0, i32 8, i32 0, i32 1
  %23 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %open.i, align 4
  %poll.i = getelementptr inbounds %struct.kernfs_open_node, ptr %24, i32 0, i32 2
  %tobool.not.i.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i.i, label %kernfs_dentry_node.exit.i.kernfs_generic_poll.exit_crit_edge, label %land.lhs.true.i.i

kernfs_dentry_node.exit.i.kernfs_generic_poll.exit_crit_edge: ; preds = %kernfs_dentry_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_generic_poll.exit

land.lhs.true.i.i:                                ; preds = %kernfs_dentry_node.exit.i
  %25 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wait, align 4
  %tobool1.not.i.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.kernfs_generic_poll.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.kernfs_generic_poll.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_generic_poll.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %16, ptr noundef nonnull %poll.i, ptr noundef nonnull %wait) #8
  br label %kernfs_generic_poll.exit

kernfs_generic_poll.exit:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.kernfs_generic_poll.exit_crit_edge, %kernfs_dentry_node.exit.i.kernfs_generic_poll.exit_crit_edge
  %event.i = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %event.i, align 4
  %event2.i = getelementptr inbounds %struct.kernfs_open_node, ptr %24, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event2.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %event2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %event2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not.i = icmp eq i32 %28, %30
  %..i = select i1 %cmp.not.i, i32 325, i32 335
  br label %if.end9

if.end9:                                          ; preds = %kernfs_generic_poll.exit, %if.then4
  %ret.0 = phi i32 [ %call7, %if.then4 ], [ %..i, %kernfs_generic_poll.exit ]
  tail call void @kernfs_put_active(ptr noundef %retval.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %kernfs_dentry_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ 335, %kernfs_dentry_node.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_fop_mmap(ptr noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 8
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call2 = tail call ptr @kernfs_get_active(ptr noundef %10) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_unlock_crit_edge, label %if.end5

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 8
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i, label %if.end5.kernfs_ops.exit_crit_edge, label %do.body.i

if.end5.kernfs_ops.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.body.i:                                        ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %do.body.i.kernfs_ops.exit_crit_edge, label %land.rhs.i

do.body.i.kernfs_ops.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 2
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_ops.exit_crit_edge, !prof !53

land.rhs.i.kernfs_ops.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit

kernfs_ops.exit:                                  ; preds = %do.end.i, %land.rhs.i.kernfs_ops.exit_crit_edge, %do.body.i.kernfs_ops.exit_crit_edge, %if.end5.kernfs_ops.exit_crit_edge
  %17 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %mmap = getelementptr inbounds %struct.kernfs_ops, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmap, align 4
  %call8 = tail call i32 %21(ptr noundef %3, ptr noundef %vma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %kernfs_ops.exit.out_put_crit_edge

kernfs_ops.exit.out_put_crit_edge:                ; preds = %kernfs_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put

if.end11:                                         ; preds = %kernfs_ops.exit
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %22 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_file, align 4
  %cmp.not = icmp eq ptr %23, %file
  br i1 %cmp.not, label %if.end14, label %if.end11.out_put_crit_edge

if.end11.out_put_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put

if.end14:                                         ; preds = %if.end11
  %mmapped = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %mmapped to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %mmapped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end14.if.end20_crit_edge, label %land.lhs.true

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm_ops, align 4
  %vm_ops16 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %27 = ptrtoint ptr %vm_ops16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_ops16, align 4
  %cmp17.not = icmp eq ptr %26, %28
  br i1 %cmp17.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.out_put_crit_edge

land.lhs.true.out_put_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %vm_ops21 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %29 = ptrtoint ptr %vm_ops21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vm_ops21, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %land.lhs.true23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true23:                                  ; preds = %if.end20
  %close = getelementptr inbounds %struct.vm_operations_struct, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %close, align 4
  %tobool25.not = icmp eq ptr %32, null
  br i1 %tobool25.not, label %land.lhs.true23.if.end27_crit_edge, label %land.lhs.true23.out_put_crit_edge

land.lhs.true23.out_put_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true23.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %bf.set = or i8 %bf.load, -128
  %33 = ptrtoint ptr %mmapped to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.set, ptr %mmapped, align 4
  %34 = ptrtoint ptr %vm_ops21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vm_ops21, align 4
  %vm_ops31 = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %vm_ops31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %vm_ops31, align 4
  store ptr @kernfs_vm_ops, ptr %vm_ops21, align 4
  br label %out_put

out_put:                                          ; preds = %if.end27, %land.lhs.true23.out_put_crit_edge, %land.lhs.true.out_put_crit_edge, %if.end11.out_put_crit_edge, %kernfs_ops.exit.out_put_crit_edge
  %rc.0 = phi i32 [ %call8, %kernfs_ops.exit.out_put_crit_edge ], [ 0, %if.end11.out_put_crit_edge ], [ -22, %land.lhs.true.out_put_crit_edge ], [ -22, %land.lhs.true23.out_put_crit_edge ], [ 0, %if.end27 ]
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  tail call void @kernfs_put_active(ptr noundef %38) #8
  br label %out_unlock

out_unlock:                                       ; preds = %out_put, %if.end.out_unlock_crit_edge
  %rc.1 = phi i32 [ %rc.0, %out_put ], [ -19, %if.end.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out_unlock ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_fop_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr %1, ptr %3
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 8
  %call1 = tail call ptr @kernfs_get_active(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 8
  %8 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i164 = icmp eq i16 %8, 0
  br i1 %tobool.not.i164, label %if.end.kernfs_ops.exit_crit_edge, label %do.body.i

if.end.kernfs_ops.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %do.body.i.kernfs_ops.exit_crit_edge, label %land.rhs.i

do.body.i.kernfs_ops.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 2
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_ops.exit_crit_edge, !prof !53

land.rhs.i.kernfs_ops.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit

kernfs_ops.exit:                                  ; preds = %do.end.i, %land.rhs.i.kernfs_ops.exit_crit_edge, %do.body.i.kernfs_ops.exit_crit_edge, %if.end.kernfs_ops.exit_crit_edge
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %seq_show = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %seq_show to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seq_show, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %lor.lhs.false, label %kernfs_ops.exit.lor.end_crit_edge

kernfs_ops.exit.lor.end_crit_edge:                ; preds = %kernfs_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %kernfs_ops.exit
  %read = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %mmap = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 11
  %17 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmap, align 4
  %tobool5 = icmp eq ptr %18, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %kernfs_ops.exit.lor.end_crit_edge
  %19 = phi i1 [ false, %lor.lhs.false.lor.end_crit_edge ], [ false, %kernfs_ops.exit.lor.end_crit_edge ], [ %tobool5, %lor.rhs ]
  %write = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 9
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %lor.rhs7, label %lor.end.lor.end10_crit_edge

lor.end.lor.end10_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end10

lor.rhs7:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %mmap8 = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 11
  %22 = ptrtoint ptr %mmap8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmap8, align 4
  %tobool9 = icmp eq ptr %23, null
  br label %lor.end10

lor.end10:                                        ; preds = %lor.rhs7, %lor.end.lor.end10_crit_edge
  %24 = phi i1 [ false, %lor.end.lor.end10_crit_edge ], [ %tobool9, %lor.rhs7 ]
  %mmap12 = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 11
  %25 = ptrtoint ptr %mmap12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmap12, align 4
  %tobool13.not = icmp eq ptr %26, null
  %flags = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %lor.end10.if.end37_crit_edge, label %if.then16

lor.end10.if.end37_crit_edge:                     ; preds = %lor.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then16:                                        ; preds = %lor.end10
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %29 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_mode, align 8
  %and17 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then16.if.end24_crit_edge, label %land.lhs.true

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then16
  %31 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %inode, align 8
  %33 = and i16 %32, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool20.not = icmp eq i16 %33, 0
  %brmerge = select i1 %tobool20.not, i1 true, i1 %24
  br i1 %brmerge, label %land.lhs.true.cleanup104.sink.split_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true.cleanup104.sink.split_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.sink.split

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.then16.if.end24_crit_edge
  %and26 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end37_crit_edge, label %land.lhs.true28

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true28:                                  ; preds = %if.end24
  %34 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %inode, align 8
  %36 = and i16 %35, 292
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool32.not = icmp eq i16 %36, 0
  %brmerge163 = select i1 %tobool32.not, i1 true, i1 %19
  br i1 %brmerge163, label %land.lhs.true28.cleanup104.sink.split_crit_edge, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true28.cleanup104.sink.split_crit_edge:  ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.sink.split

if.end37:                                         ; preds = %land.lhs.true28.if.end37_crit_edge, %if.end24.if.end37_crit_edge, %lor.end10.if.end37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 228) #13
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %if.end37.cleanup104.sink.split_crit_edge, label %if.end41

if.end37.cleanup104.sink.split_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.sink.split

if.end41:                                         ; preds = %if.end37
  %mutex45 = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 4
  %kernfs_fop_open.__key.10.kernfs_fop_open.__key = select i1 %tobool13.not, ptr @kernfs_fop_open.__key.10, ptr @kernfs_fop_open.__key
  tail call void @__mutex_init(ptr noundef %mutex45, ptr noundef nonnull @.str.9, ptr noundef nonnull %kernfs_fop_open.__key.10.kernfs_fop_open.__key) #8
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %call7.i.i, align 8
  %file50 = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %file50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %file, ptr %file50, align 4
  %atomic_write_len = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 7
  %40 = ptrtoint ptr %atomic_write_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %atomic_write_len, align 4
  %atomic_write_len51 = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %atomic_write_len51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %atomic_write_len51, align 8
  %prealloc = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 8
  %43 = ptrtoint ptr %prealloc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %prealloc, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool52.not = icmp eq i8 %44, 0
  br i1 %tobool52.not, label %if.end41.if.end72_crit_edge, label %land.lhs.true54

if.end41.if.end72_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

land.lhs.true54:                                  ; preds = %if.end41
  %45 = ptrtoint ptr %seq_show to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %seq_show, align 4
  %tobool56.not = icmp eq ptr %46, null
  br i1 %tobool56.not, label %if.end8.i, label %land.lhs.true54.err_free_crit_edge

land.lhs.true54.err_free_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end8.i:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool63.not = icmp eq i32 %41, 0
  %.op = add i32 %41, 1
  %add = select i1 %tobool63.not, i32 4097, i32 %.op
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %prealloc_buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i, ptr %prealloc_buf, align 4
  %tobool66.not = icmp eq ptr %call9.i, null
  br i1 %tobool66.not, label %if.end8.i.err_free_crit_edge, label %cleanup.thread

if.end8.i.err_free_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

cleanup.thread:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %prealloc_mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %prealloc_mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @kernfs_fop_open.__key.11) #8
  br label %if.end72

if.end72:                                         ; preds = %cleanup.thread, %if.end41.if.end72_crit_edge
  %48 = ptrtoint ptr %seq_show to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %seq_show, align 4
  %tobool74.not = icmp eq ptr %49, null
  br i1 %tobool74.not, label %if.else77, label %if.then75

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @kernfs_seq_ops) #8
  br label %if.end79

if.else77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call i32 @seq_open(ptr noundef %file, ptr noundef null) #8
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.then75
  %error.0 = phi i32 [ %call76, %if.then75 ], [ %call78, %if.else77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool80.not = icmp eq i32 %error.0, 0
  br i1 %tobool80.not, label %if.end82, label %if.end79.err_free_crit_edge

if.end79.err_free_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end82:                                         ; preds = %if.end79
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %50 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private_data, align 4
  %seq_file = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %seq_file to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %seq_file, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %51, i32 0, i32 11
  %53 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %private, align 8
  %f_mode84 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %54 = ptrtoint ptr %f_mode84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %f_mode84, align 8
  %and85 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end82.if.end89_crit_edge, label %if.then87

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %55, 16
  %56 = ptrtoint ptr %f_mode84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or, ptr %f_mode84, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end82.if.end89_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @kernfs_open_file_mutex, i32 noundef 0) #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  %open.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, i32 0, i32 1
  %57 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %open.i, align 4
  %tobool.not41.i = icmp eq ptr %58, null
  br i1 %tobool.not41.i, label %if.end89.land.lhs.true.i_crit_edge, label %if.end89.if.then5.i_crit_edge

if.end89.if.then5.i_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.end89.land.lhs.true.i_crit_edge:               ; preds = %if.end89
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end12.i.land.lhs.true.i_crit_edge, %if.end89.land.lhs.true.i_crit_edge
  %new_on.042.i = phi ptr [ %call7.i.i167, %if.end12.i.land.lhs.true.i_crit_edge ], [ null, %if.end89.land.lhs.true.i_crit_edge ]
  %tobool1.not.i165 = icmp eq ptr %new_on.042.i, null
  br i1 %tobool1.not.i165, label %if.end9.critedge.i, label %if.then.i166

if.then.i166:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %new_on.042.i, ptr %open.i, align 4
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end12.i.if.then5.i_crit_edge, %if.then.i166, %if.end89.if.then5.i_crit_edge
  %.ph.i = phi ptr [ %new_on.042.i, %if.then.i166 ], [ %58, %if.end89.if.then5.i_crit_edge ], [ %73, %if.end12.i.if.then5.i_crit_edge ]
  %new_on.1.ph.i = phi ptr [ null, %if.then.i166 ], [ null, %if.end89.if.then5.i_crit_edge ], [ %call7.i.i167, %if.end12.i.if.then5.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.ph.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %.ph.i, i32 1, i32 3, i32 1) #8
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.ph.i, ptr nonnull %.ph.i, i32 1, ptr nonnull elementtype(i32) %.ph.i) #8, !srcloc !52
  %list.i = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 7
  %files.i = getelementptr inbounds %struct.kernfs_open_node, ptr %.ph.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.kernfs_open_node, ptr %.ph.i, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %call.i.i30.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %62, ptr noundef %files.i) #8
  br i1 %call.i.i30.i, label %if.end.i.i.i, label %if.then5.i.if.end93_crit_edge

if.then5.i.if.end93_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end.i.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %list.i, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %files.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 7, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i, align 8
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %list.i, ptr %62, align 4
  br label %if.end93

if.end9.critedge.i:                               ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i167 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3264, i32 noundef 68) #13
  %tobool10.not.i = icmp eq ptr %call7.i.i167, null
  br i1 %tobool10.not.i, label %if.end9.critedge.i.err_seq_release_crit_edge, label %if.end12.i

if.end9.critedge.i.err_seq_release_crit_edge:     ; preds = %if.end9.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_seq_release

if.end12.i:                                       ; preds = %if.end9.critedge.i
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i167, i32 noundef 4) #8
  %68 = ptrtoint ptr %call7.i.i167 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %call7.i.i167, align 8
  %event.i = getelementptr inbounds %struct.kernfs_open_node, ptr %call7.i.i167, i32 0, i32 1
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #8
  %69 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 1, ptr %event.i, align 4
  %poll.i = getelementptr inbounds %struct.kernfs_open_node, ptr %call7.i.i167, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %poll.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @kernfs_get_open_node.__key) #8
  %files14.i = getelementptr inbounds %struct.kernfs_open_node, ptr %call7.i.i167, i32 0, i32 3
  %70 = ptrtoint ptr %files14.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %files14.i, ptr %files14.i, align 4
  %prev.i31.i = getelementptr inbounds %struct.kernfs_open_node, ptr %call7.i.i167, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %files14.i, ptr %prev.i31.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @kernfs_open_file_mutex, i32 noundef 0) #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  %72 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %open.i, align 4
  %tobool.not.i168 = icmp eq ptr %73, null
  br i1 %tobool.not.i168, label %if.end12.i.land.lhs.true.i_crit_edge, label %if.end12.i.if.then5.i_crit_edge

if.end12.i.if.then5.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.end12.i.land.lhs.true.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end93:                                         ; preds = %if.end.i.i.i, %if.then5.i.if.end93_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call void @kfree(ptr noundef %new_on.1.ph.i) #8
  %74 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %12, align 4
  %tobool94.not = icmp eq ptr %75, null
  br i1 %tobool94.not, label %if.end93.cleanup104.sink.split_crit_edge, label %if.then95

if.end93.cleanup104.sink.split_crit_edge:         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.sink.split

if.then95:                                        ; preds = %if.end93
  %call97 = tail call i32 %75(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then95.cleanup104.sink.split_crit_edge, label %err_put_node

if.then95.cleanup104.sink.split_crit_edge:        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.sink.split

err_put_node:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @kernfs_put_open_node(ptr noundef %1, ptr noundef nonnull %call7.i.i)
  br label %err_seq_release

err_seq_release:                                  ; preds = %err_put_node, %if.end9.critedge.i.err_seq_release_crit_edge
  %error.1 = phi i32 [ %call97, %err_put_node ], [ -12, %if.end9.critedge.i.err_seq_release_crit_edge ]
  %call102 = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #8
  br label %err_free

err_free:                                         ; preds = %err_seq_release, %if.end79.err_free_crit_edge, %if.end8.i.err_free_crit_edge, %land.lhs.true54.err_free_crit_edge
  %error.2 = phi i32 [ -22, %land.lhs.true54.err_free_crit_edge ], [ %error.0, %if.end79.err_free_crit_edge ], [ %error.1, %err_seq_release ], [ -12, %if.end8.i.err_free_crit_edge ]
  %prealloc_buf103 = getelementptr inbounds %struct.kernfs_open_file, ptr %call7.i.i, i32 0, i32 8
  %76 = ptrtoint ptr %prealloc_buf103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prealloc_buf103, align 4
  tail call void @kfree(ptr noundef %77) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup104.sink.split

cleanup104.sink.split:                            ; preds = %err_free, %if.then95.cleanup104.sink.split_crit_edge, %if.end93.cleanup104.sink.split_crit_edge, %if.end37.cleanup104.sink.split_crit_edge, %land.lhs.true28.cleanup104.sink.split_crit_edge, %land.lhs.true.cleanup104.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then95.cleanup104.sink.split_crit_edge ], [ 0, %if.end93.cleanup104.sink.split_crit_edge ], [ %error.2, %err_free ], [ -12, %if.end37.cleanup104.sink.split_crit_edge ], [ -13, %land.lhs.true28.cleanup104.sink.split_crit_edge ], [ -13, %land.lhs.true.cleanup104.sink.split_crit_edge ]
  tail call void @kernfs_put_active(ptr noundef %1) #8
  br label %cleanup104

cleanup104:                                       ; preds = %cleanup104.sink.split, %entry.cleanup104_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup104_crit_edge ], [ %retval.0.ph, %cleanup104.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_fop_release(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 8
  %8 = and i16 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @kernfs_open_file_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kernfs_open_file_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !53

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 736, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %released.i = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %released.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %released.i, align 4
  %11 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not.i = icmp eq i8 %11, 0
  br i1 %bf.cast.not.i, label %if.then24.i, label %if.end.i.kernfs_release_file.exit_crit_edge

if.end.i.kernfs_release_file.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_release_file.exit

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %release.i = getelementptr inbounds %struct.kernfs_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %release.i, align 4
  tail call void %16(ptr noundef %5) #8
  %17 = ptrtoint ptr %released.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load26.i = load i8, ptr %released.i, align 4
  %bf.set.i = or i8 %bf.load26.i, 64
  store i8 %bf.set.i, ptr %released.i, align 4
  br label %kernfs_release_file.exit

kernfs_release_file.exit:                         ; preds = %if.then24.i, %if.end.i.kernfs_release_file.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  br label %if.end

if.end:                                           ; preds = %kernfs_release_file.exit, %entry.if.end_crit_edge
  tail call fastcc void @kernfs_put_open_node(ptr noundef %1, ptr noundef %5)
  %call1 = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %filp) #8
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %prealloc_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prealloc_buf, align 4
  tail call void @kfree(ptr noundef %19) #8
  tail call void @kfree(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__kernfs_create_file(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %mode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i64 noundef %size, ptr noundef %ops, ptr noundef %priv, ptr noundef %ns, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %mode, 4095
  %1 = or i16 %0, -32768
  %call = tail call ptr @kernfs_new_node(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %1, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i32 noundef 2) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops, ptr %2, align 8
  %size7 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %size7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %size, ptr %size7, align 8
  %ns8 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %ns8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ns, ptr %ns8, align 8
  %priv9 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %priv9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %priv9, align 8
  %tobool10.not = icmp eq ptr %key, null
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dep_map = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull %key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %flags12 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %flags12 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags12, align 8
  %9 = or i16 %8, 256
  store i16 %9, ptr %flags12, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %seq_show = getelementptr inbounds %struct.kernfs_ops, ptr %ops, i32 0, i32 2
  %10 = ptrtoint ptr %seq_show to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seq_show, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.end16.if.end23_crit_edge, label %if.then18

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %flags19 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 11
  %12 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags19, align 8
  %14 = or i16 %13, 64
  store i16 %14, ptr %flags19, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end16.if.end23_crit_edge
  %mmap = getelementptr inbounds %struct.kernfs_ops, ptr %ops, i32 0, i32 11
  %15 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmap, align 4
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %flags26 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 11
  %17 = ptrtoint ptr %flags26 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags26, align 8
  %19 = or i16 %18, 128
  store i16 %19, ptr %flags26, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end23.if.end30_crit_edge
  %release = getelementptr inbounds %struct.kernfs_ops, ptr %ops, i32 0, i32 1
  %20 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %release, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end30.if.end37_crit_edge, label %if.then32

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %flags33 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 11
  %22 = ptrtoint ptr %flags33 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags33, align 8
  %24 = or i16 %23, 8192
  store i16 %24, ptr %flags33, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end30.if.end37_crit_edge
  %call38 = tail call i32 @kernfs_add_one(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kernfs_put(ptr noundef nonnull %call) #8
  %25 = inttoptr i32 %call38 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %25, %if.then40 ], [ %call, %if.end37.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_new_node(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_add_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kernfs_vma_open(ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call1 = tail call ptr @kernfs_get_active(ptr noundef %9) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %vma) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  tail call void @kernfs_put_active(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_vma_fault(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_ops, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call1 = tail call ptr @kernfs_get_active(ptr noundef %11) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_ops, align 4
  %fault = getelementptr inbounds %struct.vm_operations_struct, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fault, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %if.then7

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 %15(ptr noundef %vmf) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4.if.end11_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ 2, %if.end4.if.end11_crit_edge ]
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  tail call void @kernfs_put_active(ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_vma_page_mkwrite(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_ops, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call1 = tail call ptr @kernfs_get_active(ptr noundef %11) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_ops, align 4
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %page_mkwrite to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page_mkwrite, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 %15(ptr noundef %vmf) #8
  br label %if.end12

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @file_update_time(ptr noundef %3) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ 0, %if.else ]
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  tail call void @kernfs_put_active(ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_vma_access(ptr noundef %vma, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call1 = tail call ptr @kernfs_get_active(ptr noundef %9) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_ops, align 4
  %access = getelementptr inbounds %struct.vm_operations_struct, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %access, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %if.then7

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 %13(ptr noundef %vma, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %write) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4.if.end11_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ -22, %if.end4.if.end11_crit_edge ]
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  tail call void @kernfs_put_active(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernfs_seq_start(ptr noundef %sf, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @kernfs_get_active(ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 8
  %8 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.end.kernfs_ops.exit_crit_edge, label %do.body.i

if.end.kernfs_ops.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %do.body.i.kernfs_ops.exit_crit_edge, label %land.rhs.i

do.body.i.kernfs_ops.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_ops.exit_crit_edge, !prof !53

land.rhs.i.kernfs_ops.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit

kernfs_ops.exit:                                  ; preds = %do.end.i, %land.rhs.i.kernfs_ops.exit_crit_edge, %do.body.i.kernfs_ops.exit_crit_edge, %if.end.kernfs_ops.exit_crit_edge
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %seq_start = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %seq_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seq_start, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %kernfs_ops.exit
  %call7 = tail call ptr %14(ptr noundef %sf, ptr noundef %ppos) #8
  %cmp = icmp eq ptr %call7, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i.i, align 8
  %21 = and i16 %20, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i.i, label %if.then9.kernfs_ops.exit.i_crit_edge, label %do.body.i.i

if.then9.kernfs_ops.exit.i_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.body.i.i:                                      ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.kernfs_ops.exit.i_crit_edge, label %land.rhs.i.i

do.body.i.i.kernfs_ops.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dep_map.i.i = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 2
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, !prof !53

land.rhs.i.i.kernfs_ops.exit.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit.i

kernfs_ops.exit.i:                                ; preds = %do.end.i.i, %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, %do.body.i.i.kernfs_ops.exit.i_crit_edge, %if.then9.kernfs_ops.exit.i_crit_edge
  %23 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %seq_stop.i = getelementptr inbounds %struct.kernfs_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %seq_stop.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %seq_stop.i, align 4
  %tobool.not.i21 = icmp eq ptr %27, null
  br i1 %tobool.not.i21, label %kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge, label %if.then.i

kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge: ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_seq_stop_active.exit

if.then.i:                                        ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %27(ptr noundef %sf, ptr noundef nonnull inttoptr (i32 -19 to ptr)) #8
  br label %kernfs_seq_stop_active.exit

kernfs_seq_stop_active.exit:                      ; preds = %if.then.i, %kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %16, align 4
  tail call void @kernfs_put_active(ptr noundef %29) #8
  br label %cleanup

if.else:                                          ; preds = %kernfs_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool11.not = icmp eq i64 %31, 0
  %lnot.ext = zext i1 %tobool11.not to i32
  %add.ptr = getelementptr i8, ptr null, i32 %lnot.ext
  br label %cleanup

cleanup:                                          ; preds = %if.else, %kernfs_seq_stop_active.exit, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.else ], [ inttoptr (i32 -19 to ptr), %kernfs_seq_stop_active.exit ], [ %call7, %if.then5.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kernfs_seq_stop(ptr noundef %sf, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cmp.not = icmp eq ptr %v, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i, align 8
  %6 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i, label %if.then.kernfs_ops.exit.i_crit_edge, label %do.body.i.i

if.then.kernfs_ops.exit.i_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.body.i.i:                                      ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.kernfs_ops.exit.i_crit_edge, label %land.rhs.i.i

do.body.i.i.kernfs_ops.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dep_map.i.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, !prof !53

land.rhs.i.i.kernfs_ops.exit.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit.i

kernfs_ops.exit.i:                                ; preds = %do.end.i.i, %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, %do.body.i.i.kernfs_ops.exit.i_crit_edge, %if.then.kernfs_ops.exit.i_crit_edge
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %seq_stop.i = getelementptr inbounds %struct.kernfs_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %seq_stop.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %seq_stop.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge, label %if.then.i

kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge: ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_seq_stop_active.exit

if.then.i:                                        ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %12(ptr noundef %sf, ptr noundef %v) #8
  br label %kernfs_seq_stop_active.exit

kernfs_seq_stop_active.exit:                      ; preds = %if.then.i, %kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @kernfs_put_active(ptr noundef %14) #8
  br label %if.end

if.end:                                           ; preds = %kernfs_seq_stop_active.exit, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernfs_seq_next(ptr noundef %sf, ptr noundef %v, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 8
  %6 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %entry.kernfs_ops.exit_crit_edge, label %do.body.i

entry.kernfs_ops.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %do.body.i.kernfs_ops.exit_crit_edge, label %land.rhs.i

do.body.i.kernfs_ops.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_ops.exit_crit_edge, !prof !53

land.rhs.i.kernfs_ops.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit

kernfs_ops.exit:                                  ; preds = %do.end.i, %land.rhs.i.kernfs_ops.exit_crit_edge, %do.body.i.kernfs_ops.exit_crit_edge, %entry.kernfs_ops.exit_crit_edge
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %seq_next = getelementptr inbounds %struct.kernfs_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %seq_next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %seq_next, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %kernfs_ops.exit
  %call2 = tail call ptr %12(ptr noundef %sf, ptr noundef %v, ptr noundef %ppos) #8
  %cmp = icmp eq ptr %call2, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.then
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i.i, align 8
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i.i, label %if.then4.kernfs_ops.exit.i_crit_edge, label %do.body.i.i

if.then4.kernfs_ops.exit.i_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.body.i.i:                                      ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.kernfs_ops.exit.i_crit_edge, label %land.rhs.i.i

do.body.i.i.kernfs_ops.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dep_map.i.i = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 2
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, !prof !53

land.rhs.i.i.kernfs_ops.exit.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_ops.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #8
  br label %kernfs_ops.exit.i

kernfs_ops.exit.i:                                ; preds = %do.end.i.i, %land.rhs.i.i.kernfs_ops.exit.i_crit_edge, %do.body.i.i.kernfs_ops.exit.i_crit_edge, %if.then4.kernfs_ops.exit.i_crit_edge
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %seq_stop.i = getelementptr inbounds %struct.kernfs_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %seq_stop.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %seq_stop.i, align 4
  %tobool.not.i12 = icmp eq ptr %25, null
  br i1 %tobool.not.i12, label %kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge, label %if.then.i

kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge: ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kernfs_seq_stop_active.exit

if.then.i:                                        ; preds = %kernfs_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %25(ptr noundef %sf, ptr noundef nonnull inttoptr (i32 -19 to ptr)) #8
  br label %kernfs_seq_stop_active.exit

kernfs_seq_stop_active.exit:                      ; preds = %if.then.i, %kernfs_ops.exit.i.kernfs_seq_stop_active.exit_crit_edge
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %14, align 4
  tail call void @kernfs_put_active(ptr noundef %27) #8
  br label %cleanup

if.else:                                          ; preds = %kernfs_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ppos, align 8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %kernfs_seq_stop_active.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.else ], [ inttoptr (i32 -19 to ptr), %kernfs_seq_stop_active.exit ], [ %call2, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_seq_show(ptr noundef %sf, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %open = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open, align 4
  %event = getelementptr inbounds %struct.kernfs_open_node, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #8
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %event, align 4
  %event1 = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %event1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event1, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %seq_show = getelementptr inbounds %struct.kernfs_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %seq_show to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %seq_show, align 4
  %call3 = tail call i32 %15(ptr noundef %sf, ptr noundef %v) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !18, !20, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !38, !40, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/kernfs/file.c", i32 917, i32 9}
!2 = !{ptr @kernfs_notify.kernfs_notify_work, !1, !"kernfs_notify_work", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/kernfs/file.c", i32 921, i32 6}
!5 = !{ptr @__ksymtab_kernfs_notify, !6, !"__ksymtab_kernfs_notify", i1 false, i1 false}
!6 = !{!"../fs/kernfs/file.c", i32 943, i32 1}
!7 = !{ptr @kernfs_file_fops, !8, !"kernfs_file_fops", i1 false, i1 false}
!8 = !{!"../fs/kernfs/file.c", i32 945, i32 30}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/kernfs/file.c", i32 999, i32 34}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/kernfs/file.c", i32 32, i32 8}
!13 = !{ptr @kernfs_open_node_lock, !12, !"kernfs_open_node_lock", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/kernfs/file.c", i32 33, i32 8}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @kernfs_open_file_mutex, !15, !"kernfs_open_file_mutex", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/kernfs/file.c", i32 52, i32 8}
!20 = !{ptr @kernfs_notify_lock, !19, !"kernfs_notify_lock", i1 false, i1 false}
!21 = !{ptr @kernfs_notify_list, !22, !"kernfs_notify_list", i1 false, i1 false}
!22 = !{!"../fs/kernfs/file.c", i32 53, i32 28}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!28 = !{ptr @kernfs_vm_ops, !29, !"kernfs_vm_ops", i1 false, i1 false}
!29 = !{!"../fs/kernfs/file.c", i32 439, i32 42}
!30 = !{ptr @kernfs_fop_open.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../fs/kernfs/file.c", i32 648, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @kernfs_fop_open.__key.10, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/kernfs/file.c", i32 650, i32 3}
!35 = !{ptr @kernfs_fop_open.__key.11, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/kernfs/file.c", i32 675, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @kernfs_seq_ops, !39, !"kernfs_seq_ops", i1 false, i1 false}
!39 = !{!"../fs/kernfs/file.c", i32 171, i32 36}
!40 = !{ptr @kernfs_get_open_node.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../fs/kernfs/file.c", i32 558, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148676521, i64 2148676547, i64 2148676576, i64 2148676610, i64 2148676641, i64 2148676664}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2148764997}
!55 = !{i64 2148679706, i64 2148679738, i64 2148679767, i64 2148679801, i64 2148679832, i64 2148679855}
!56 = !{i64 2148765226}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i8 0, i8 2}
