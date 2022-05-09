; ModuleID = '/llk/IR_all_yes/kernel/gcov/fs.c_pt.bc'
source_filename = "../kernel/gcov/fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gcov_node = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, [0 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.gcov_link = type { i32, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.64 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.gcov_iterator = type { ptr, i32, i64, [0 x i8] }

@__setup_str_gcov_persist_setup = internal constant [14 x i8] c"gcov_persist=\00", section ".init.rodata", align 1
@__setup_gcov_persist_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_gcov_persist_setup, ptr @gcov_persist_setup, i32 0 }, section ".init.setup", align 4
@node_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @node_lock, i64 52), ptr getelementptr (i8, ptr @node_lock, i64 52) }, ptr @node_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@gcov_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014gcov: could not remove '%s' (not found)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gcov_event\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/gcov/fs.c\00", [47 x i8] zeroinitializer }, align 32
@gcov_event._entry_ptr = internal global ptr @gcov_event._entry, section ".printk_index", align 4
@__initcall__kmod_fs__226_882_gcov_fs_init6 = internal global ptr @gcov_fs_init, section ".initcall6.init", align 4
@gcov_persist_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014gcov: invalid gcov_persist parameter '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcov_persist_setup\00", [45 x i8] zeroinitializer }, align 32
@gcov_persist_setup._entry_ptr = internal global ptr @gcov_persist_setup._entry, section ".printk_index", align 4
@gcov_persist = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@gcov_persist_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016gcov: setting gcov_persist to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@gcov_persist_setup._entry_ptr.7 = internal global ptr @gcov_persist_setup._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"node_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_lock\00", [22 x i8] zeroinitializer }, align 32
@all_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @all_head, ptr @all_head }, [24 x i8] zeroinitializer }, align 32
@add_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014gcov: could not add '%s' (out of memory)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_info\00", [23 x i8] zeroinitializer }, align 32
@add_info._entry_ptr = internal global ptr @add_info._entry, section ".printk_index", align 4
@add_info._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014gcov: discarding saved data for %s (incompatible version)\0A\00", [35 x i8] zeroinitializer }, align 32
@add_info._entry_ptr.14 = internal global ptr @add_info._entry.12, section ".printk_index", align 4
@add_info._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014gcov: could not add '%s' (incompatible version)\0A\00", [45 x i8] zeroinitializer }, align 32
@add_info._entry_ptr.17 = internal global ptr @add_info._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@root_node = internal global { %struct.gcov_node, [48 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@gcov_data_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @gcov_seq_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @gcov_seq_open, ptr null, ptr @gcov_seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@new_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014gcov: out of memory\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"new_node\00", [23 x i8] zeroinitializer }, align 32
@new_node._entry_ptr = internal global ptr @new_node._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".tmp_\00", [26 x i8] zeroinitializer }, align 32
@gcov_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @gcov_seq_start, ptr @gcov_seq_stop, ptr @gcov_seq_next, ptr @gcov_seq_show }, [16 x i8] zeroinitializer }, align 32
@gcov_link = external dso_local local_unnamed_addr constant [0 x %struct.gcov_link], align 4
@objtree = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@srctree = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s/%s.%s\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@remove_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remove_info\00", [20 x i8] zeroinitializer }, align 32
@remove_info._entry_ptr = internal global ptr @remove_info._entry, section ".printk_index", align 4
@save_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014gcov: could not save data for '%s' (out of memory)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"save_info\00", [22 x i8] zeroinitializer }, align 32
@save_info._entry_ptr = internal global ptr @save_info._entry, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gcov\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@gcov_reset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @reset_read, ptr @reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"node_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 855, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 79, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"gcov_persist\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 72, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 83, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 69, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"all_head\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 68, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 736, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 750, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 762, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"root_node\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 67, i32 25 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 691, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 693, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"gcov_data_fops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 511, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 569, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 467, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"gcov_seq_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 243, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"objtree\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 65, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [8 x i8] c"srctree\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 66, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 426, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 428, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 815, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 798, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 871, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 876, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"gcov_reset_fops\00", align 1
@___asan_gen_.154 = private constant [20 x i8] c"../kernel/gcov/fs.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 664, i32 37 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__initcall__kmod_fs__226_882_gcov_fs_init6, ptr @__setup_gcov_persist_setup, ptr @add_info._entry, ptr @add_info._entry.12, ptr @add_info._entry.15, ptr @add_info._entry_ptr, ptr @add_info._entry_ptr.14, ptr @add_info._entry_ptr.17, ptr @gcov_event._entry, ptr @gcov_event._entry_ptr, ptr @gcov_persist_setup._entry, ptr @gcov_persist_setup._entry.5, ptr @gcov_persist_setup._entry_ptr, ptr @gcov_persist_setup._entry_ptr.7, ptr @new_node._entry, ptr @new_node._entry_ptr, ptr @remove_info._entry, ptr @remove_info._entry_ptr, ptr @save_info._entry, ptr @save_info._entry_ptr, ptr @node_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gcov_persist, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @all_head, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @root_node, ptr @.str.18, ptr @.str.19, ptr @gcov_data_fops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @gcov_seq_ops, ptr @objtree, ptr @srctree, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @gcov_reset_fops], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_persist_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_persist to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_persist_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_info._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_info._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_node to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_data_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @objtree to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srctree to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_reset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gcov_persist_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !90
  %call.i = call i32 @_kstrtoul(ptr noundef %str, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %str) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  store i32 %2, ptr @gcov_persist, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gcov_event(i32 noundef %action, ptr noundef %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @node_lock, i32 noundef 0) #13
  %call = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %.pn15.i = load ptr, ptr @all_head, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, @all_head
  br i1 %cmp.not16.i, label %entry.get_node_by_name.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.get_node_by_name.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_node_by_name.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %entry.for.body.i_crit_edge ]
  %num_loaded.i.i = getelementptr i8, ptr %.pn17.i, i32 28
  %0 = ptrtoint ptr %num_loaded.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_loaded.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %loaded_info.i.i = getelementptr i8, ptr %.pn17.i, i32 12
  %2 = ptrtoint ptr %loaded_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %loaded_info.i.i, align 4
  br label %get_node_info.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %unloaded_info.i.i = getelementptr i8, ptr %.pn17.i, i32 16
  br label %get_node_info.exit.i

get_node_info.exit.i:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %3, %if.then.i.i ], [ %unloaded_info.i.i, %if.end.i.i ]
  %4 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %get_node_info.exit.i.for.inc.i_crit_edge, label %land.lhs.true.i

get_node_info.exit.i.for.inc.i_crit_edge:         ; preds = %get_node_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %get_node_info.exit.i
  %call1.i = tail call ptr @gcov_info_filename(ptr noundef nonnull %retval.0.i.i) #13
  %call2.i = tail call i32 @strcmp(ptr noundef %call1.i, ptr noundef %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %cleanup.split.loop.exit13.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %get_node_info.exit.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @all_head
  br i1 %cmp.not.i, label %for.inc.i.get_node_by_name.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.get_node_by_name.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_node_by_name.exit

cleanup.split.loop.exit13.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %node.0.le.i = getelementptr i8, ptr %.pn17.i, i32 -16
  br label %get_node_by_name.exit

get_node_by_name.exit:                            ; preds = %cleanup.split.loop.exit13.i, %for.inc.i.get_node_by_name.exit_crit_edge, %entry.get_node_by_name.exit_crit_edge
  %retval.0.i = phi ptr [ %node.0.le.i, %cleanup.split.loop.exit13.i ], [ null, %entry.get_node_by_name.exit_crit_edge ], [ null, %for.inc.i.get_node_by_name.exit_crit_edge ]
  %6 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %get_node_by_name.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

get_node_by_name.exit.sw.epilog_crit_edge:        ; preds = %get_node_by_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %get_node_by_name.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %num_loaded.i = getelementptr inbounds %struct.gcov_node, ptr %retval.0.i, i32 0, i32 8
  %7 = ptrtoint ptr %num_loaded.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_loaded.i, align 4
  %add.i = add i32 %8, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #13
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.then.do.end.i_crit_edge, label %if.end7.i.i.i, !prof !91

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end7.i.i.i:                                    ; preds = %if.then
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #18
  %tobool.not.i16 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i16, label %if.end7.i.i.i.do.end.i_crit_edge, label %if.end.i

if.end7.i.i.i.do.end.i_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.end7.i.i.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %call1.i17 = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %call2.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %call1.i17) #16
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end7.i.i.i
  %loaded_info3.i = getelementptr inbounds %struct.gcov_node, ptr %retval.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %loaded_info3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %loaded_info3.i, align 4
  %mul.i = shl i32 %8, 2
  %14 = call ptr @memcpy(ptr %call8.i.i.i, ptr %13, i32 %mul.i)
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i.i, i32 %8
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %info, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  %unloaded_info.i = getelementptr inbounds %struct.gcov_node, ptr %retval.0.i, i32 0, i32 5
  %16 = ptrtoint ptr %unloaded_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unloaded_info.i, align 4
  %call5.i = tail call i32 @gcov_info_is_compatible(ptr noundef %17, ptr noundef %info) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.end10.i, label %if.then4.i.if.end29.i_crit_edge

if.then4.i.if.end29.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

do.end10.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call12.i) #16
  %18 = ptrtoint ptr %unloaded_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unloaded_info.i, align 4
  tail call void @gcov_info_free(ptr noundef %19) #13
  %20 = ptrtoint ptr %unloaded_info.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %unloaded_info.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %loaded_info3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %loaded_info3.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call19.i = tail call i32 @gcov_info_is_compatible(ptr noundef %24, ptr noundef %info) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %do.end24.i, label %if.else.i.if.end29.i_crit_edge

if.else.i.if.end29.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

do.end24.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call26.i = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %call26.i) #16
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #13
  br label %sw.epilog

if.end29.i:                                       ; preds = %if.else.i.if.end29.i_crit_edge, %do.end10.i, %if.then4.i.if.end29.i_crit_edge
  %25 = ptrtoint ptr %loaded_info3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %loaded_info3.i, align 4
  tail call void @kfree(ptr noundef %26) #13
  %27 = ptrtoint ptr %loaded_info3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i.i.i, ptr %loaded_info3.i, align 4
  %28 = ptrtoint ptr %num_loaded.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %num_loaded.i, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %call.i = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %call1.i19 = tail call noalias ptr @kstrdup(ptr noundef %call.i, i32 noundef 3264) #13
  %tobool.not.i20 = icmp eq ptr %call1.i19, null
  br i1 %tobool.not.i20, label %if.else.sw.epilog_crit_edge, label %for.cond.preheader.i

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %if.else
  %call260.i = tail call ptr @strchr(ptr noundef nonnull %call1.i19, i32 noundef 47) #13
  %tobool3.not61.i = icmp eq ptr %call260.i, null
  br i1 %tobool3.not61.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i22_crit_edge

for.cond.preheader.i.for.body.i22_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i22

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i22:                                     ; preds = %for.inc.i25.for.body.i22_crit_edge, %for.cond.preheader.i.for.body.i22_crit_edge
  %call265.i = phi ptr [ %call2.i24, %for.inc.i25.for.body.i22_crit_edge ], [ %call260.i, %for.cond.preheader.i.for.body.i22_crit_edge ]
  %parent.064.i = phi ptr [ %parent.1.i, %for.inc.i25.for.body.i22_crit_edge ], [ @root_node, %for.cond.preheader.i.for.body.i22_crit_edge ]
  %curr.062.i = phi ptr [ %add.ptr.i, %for.inc.i25.for.body.i22_crit_edge ], [ %call1.i19, %for.cond.preheader.i.for.body.i22_crit_edge ]
  %cmp.i21 = icmp eq ptr %curr.062.i, %call265.i
  br i1 %cmp.i21, label %for.body.i22.for.inc.i25_crit_edge, label %if.end5.i

for.body.i22.for.inc.i25_crit_edge:               ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i25

if.end5.i:                                        ; preds = %for.body.i22
  %29 = ptrtoint ptr %call265.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call265.i, align 1
  %call6.i = tail call i32 @strcmp(ptr noundef %curr.062.i, ptr noundef nonnull dereferenceable(2) @.str.18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.for.inc.i25_crit_edge, label %if.end9.i

if.end5.i.for.inc.i25_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i25

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call i32 @strcmp(ptr noundef %curr.062.i, ptr noundef nonnull dereferenceable(3) @.str.19) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end18.i

if.then12.i:                                      ; preds = %if.end9.i
  %parent13.i = getelementptr inbounds %struct.gcov_node, ptr %parent.064.i, i32 0, i32 3
  %30 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent13.i, align 4
  %tobool14.not.i = icmp eq ptr %31, null
  br i1 %tobool14.not.i, label %if.then12.i.err_remove.i_crit_edge, label %if.then12.i.for.inc.i25_crit_edge

if.then12.i.for.inc.i25_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i25

if.then12.i.err_remove.i_crit_edge:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_remove.i

if.end18.i:                                       ; preds = %if.end9.i
  %children.i.i = getelementptr inbounds %struct.gcov_node, ptr %parent.064.i, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end18.i
  %node.0.in.i.i = phi ptr [ %children.i.i, %if.end18.i ], [ %node.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %32 = ptrtoint ptr %node.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %node.0.i.i = load ptr, ptr %node.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %node.0.i.i, %children.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then21.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then21.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %name2.i.i = getelementptr inbounds %struct.gcov_node, ptr %node.0.i.i, i32 0, i32 9
  %call.i.i = tail call i32 @strcmp(ptr noundef %name2.i.i, ptr noundef %curr.062.i) #17
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %get_child_by_name.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

get_child_by_name.exit.i:                         ; preds = %for.body.i.i
  %tobool20.not.i23 = icmp eq ptr %node.0.i.i, null
  br i1 %tobool20.not.i23, label %get_child_by_name.exit.i.if.then21.i_crit_edge, label %get_child_by_name.exit.i.for.inc.i25_crit_edge

get_child_by_name.exit.i.for.inc.i25_crit_edge:   ; preds = %get_child_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i25

get_child_by_name.exit.i.if.then21.i_crit_edge:   ; preds = %get_child_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.then21.i:                                      ; preds = %get_child_by_name.exit.i.if.then21.i_crit_edge, %for.cond.i.i.if.then21.i_crit_edge
  %call22.i = tail call fastcc ptr @new_node(ptr noundef %parent.064.i, ptr noundef null, ptr noundef %curr.062.i) #13
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.then21.i.err_remove.i_crit_edge, label %if.then21.i.for.inc.i25_crit_edge

if.then21.i.for.inc.i25_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i25

if.then21.i.err_remove.i_crit_edge:               ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_remove.i

for.inc.i25:                                      ; preds = %if.then21.i.for.inc.i25_crit_edge, %get_child_by_name.exit.i.for.inc.i25_crit_edge, %if.then12.i.for.inc.i25_crit_edge, %if.end5.i.for.inc.i25_crit_edge, %for.body.i22.for.inc.i25_crit_edge
  %parent.1.i = phi ptr [ %parent.064.i, %for.body.i22.for.inc.i25_crit_edge ], [ %parent.064.i, %if.end5.i.for.inc.i25_crit_edge ], [ %31, %if.then12.i.for.inc.i25_crit_edge ], [ %node.0.i.i, %get_child_by_name.exit.i.for.inc.i25_crit_edge ], [ %call22.i, %if.then21.i.for.inc.i25_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call265.i, i32 1
  %call2.i24 = tail call ptr @strchr(ptr noundef %add.ptr.i, i32 noundef 47) #13
  %tobool3.not.i = icmp eq ptr %call2.i24, null
  br i1 %tobool3.not.i, label %for.inc.i25.for.end.i_crit_edge, label %for.inc.i25.for.body.i22_crit_edge

for.inc.i25.for.body.i22_crit_edge:               ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i22

for.inc.i25.for.end.i_crit_edge:                  ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i25.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %curr.0.lcssa.i = phi ptr [ %call1.i19, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.ptr.i, %for.inc.i25.for.end.i_crit_edge ]
  %parent.0.lcssa.i = phi ptr [ @root_node, %for.cond.preheader.i.for.end.i_crit_edge ], [ %parent.1.i, %for.inc.i25.for.end.i_crit_edge ]
  %call27.i26 = tail call fastcc ptr @new_node(ptr noundef %parent.0.lcssa.i, ptr noundef %info, ptr noundef %curr.0.lcssa.i) #13
  %tobool28.not.i = icmp eq ptr %call27.i26, null
  br i1 %tobool28.not.i, label %for.end.i.err_remove.i_crit_edge, label %for.end.i.out.i_crit_edge

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.end.i.err_remove.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_remove.i

out.i:                                            ; preds = %err_remove.i, %for.end.i.out.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1.i19) #13
  br label %sw.epilog

err_remove.i:                                     ; preds = %for.end.i.err_remove.i_crit_edge, %if.then21.i.err_remove.i_crit_edge, %if.then12.i.err_remove.i_crit_edge
  %parent.058.i = phi ptr [ %parent.0.lcssa.i, %for.end.i.err_remove.i_crit_edge ], [ %parent.064.i, %if.then12.i.err_remove.i_crit_edge ], [ %parent.064.i, %if.then21.i.err_remove.i_crit_edge ]
  tail call fastcc void @remove_node(ptr noundef %parent.058.i) #13
  br label %out.i

sw.bb2:                                           ; preds = %get_node_by_name.exit
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %sw.bb2
  %num_loaded.i.i27 = getelementptr inbounds %struct.gcov_node, ptr %retval.0.i, i32 0, i32 8
  %33 = ptrtoint ptr %num_loaded.i.i27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_loaded.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.i.i = icmp sgt i32 %34, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.then4.do.end.i32_crit_edge

if.then4.do.end.i32_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i32

for.body.lr.ph.i.i:                               ; preds = %if.then4
  %loaded_info.i.i28 = getelementptr inbounds %struct.gcov_node, ptr %retval.0.i, i32 0, i32 4
  %35 = ptrtoint ptr %loaded_info.i.i28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %loaded_info.i.i28, align 4
  br label %for.body.i.i29

for.body.i.i29:                                   ; preds = %for.inc.i.i.for.body.i.i29_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i29_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %36, i32 %i.07.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %38, %info
  br i1 %cmp1.i.i, label %if.end.i34, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i29
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %34
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i32_crit_edge, label %for.inc.i.i.for.body.i.i29_crit_edge

for.inc.i.i.for.body.i.i29_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i29

for.inc.i.i.do.end.i32_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i32

do.end.i32:                                       ; preds = %for.inc.i.i.do.end.i32_crit_edge, %if.then4.do.end.i32_crit_edge
  %call1.i30 = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %call2.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call1.i30) #16
  br label %sw.epilog

if.end.i34:                                       ; preds = %for.body.i.i29
  %39 = load i32, ptr @gcov_persist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i33 = icmp eq i32 %39, 0
  br i1 %tobool.not.i33, label %if.end.i34.if.end4.i_crit_edge, label %if.then3.i

if.end.i34.if.end4.i_crit_edge:                   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i34
  %unloaded_info.i.i35 = getelementptr inbounds %struct.gcov_node, ptr %retval.0.i, i32 0, i32 5
  %40 = ptrtoint ptr %unloaded_info.i.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %unloaded_info.i.i35, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i36

if.then.i.i36:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gcov_info_add(ptr noundef nonnull %41, ptr noundef %info) #13
  br label %if.end4.i

if.else.i.i:                                      ; preds = %if.then3.i
  %call.i.i37 = tail call ptr @gcov_info_dup(ptr noundef %info) #13
  %42 = ptrtoint ptr %unloaded_info.i.i35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i37, ptr %unloaded_info.i.i35, align 4
  %tobool4.not.i.i = icmp eq ptr %call.i.i37, null
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %if.else.i.i.if.end4.i_crit_edge

if.else.i.i.if.end4.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %call6.i.i) #16
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i.i, %if.else.i.i.if.end4.i_crit_edge, %if.then.i.i36, %if.end.i34.if.end4.i_crit_edge
  %43 = ptrtoint ptr %loaded_info.i.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %loaded_info.i.i28, align 4
  %45 = ptrtoint ptr %num_loaded.i.i27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_loaded.i.i27, align 4
  %sub.i = add i32 %46, -1
  %arrayidx.i38 = getelementptr ptr, ptr %44, i32 %sub.i
  %47 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i38, align 4
  %arrayidx6.i = getelementptr ptr, ptr %44, i32 %i.07.i.i
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %arrayidx6.i, align 4
  %50 = load i32, ptr %num_loaded.i.i27, align 4
  %dec.i = add i32 %50, -1
  store i32 %dec.i, ptr %num_loaded.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp9.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp9.i, label %if.end4.i.sw.epilog_crit_edge, label %if.end11.i

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end4.i
  %51 = ptrtoint ptr %loaded_info.i.i28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %loaded_info.i.i28, align 4
  tail call void @kfree(ptr noundef %52) #13
  %53 = ptrtoint ptr %loaded_info.i.i28 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %loaded_info.i.i28, align 4
  %54 = ptrtoint ptr %num_loaded.i.i27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %num_loaded.i.i27, align 4
  %unloaded_info.i39 = getelementptr inbounds %struct.gcov_node, ptr %retval.0.i, i32 0, i32 5
  %55 = ptrtoint ptr %unloaded_info.i39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %unloaded_info.i39, align 4
  %tobool15.not.i = icmp eq ptr %56, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end11.i.sw.epilog_crit_edge

if.end11.i.sw.epilog_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @remove_node(ptr noundef nonnull %retval.0.i) #13
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call ptr @gcov_info_filename(ptr noundef %info) #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call6) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then16.i, %if.end11.i.sw.epilog_crit_edge, %if.end4.i.sw.epilog_crit_edge, %do.end.i32, %out.i, %if.else.sw.epilog_crit_edge, %if.end29.i, %do.end24.i, %do.end.i, %get_node_by_name.exit.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @node_lock) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gcov_info_filename(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gcov_fs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @root_node, ptr @root_node, align 4
  store ptr @root_node, ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 1), ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 1), ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 1, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 2), ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 2), ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 2, i32 1), align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 4), align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.init_node.exit_crit_edge, label %if.then.i

entry.init_node.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_node.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %0, align 4
  store i32 1, ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 8), align 4
  br label %init_node.exit

init_node.exit:                                   ; preds = %if.then.i, %entry.init_node.exit_crit_edge
  store ptr null, ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 3), align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.28, ptr noundef null) #13
  store ptr %call, ptr getelementptr inbounds (%struct.gcov_node, ptr @root_node, i32 0, i32 6), align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 384, ptr noundef %call, ptr noundef null, ptr noundef nonnull @gcov_reset_fops) #13
  tail call void @gcov_enable_events() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gcov_info_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gcov_info_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @new_node(ptr noundef %parent, ptr noundef %info, ptr noundef readonly %name) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #19
  %add1 = add i32 %call, 49
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.err_nomem_crit_edge, label %if.end

entry.err_nomem_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nomem

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %info, null
  br i1 %tobool3.not, label %if.else.critedge, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #20
  %loaded_info = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %loaded_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %loaded_info, align 4
  %tobool7.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not, label %if.then4.err_nomem_crit_edge, label %if.end.i

if.then4.err_nomem_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nomem

if.end.i:                                         ; preds = %if.then4
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %prev.i.i, align 4
  %children.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %children.i, ptr %children.i, align 8
  %prev.i15.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %children.i, ptr %prev.i15.i, align 4
  %all.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %all.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %all.i, ptr %all.i, align 16
  %prev.i16.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %all.i, ptr %prev.i16.i, align 4
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %info, ptr %call7.i.i.i, align 8
  %num_loaded.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %num_loaded.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %num_loaded.i, align 4
  %parent2.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %parent2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent, ptr %parent2.i, align 8
  %tobool3.not.i = icmp eq ptr %name, null
  br i1 %tobool3.not.i, label %if.end.i.init_node.exit_crit_edge, label %if.then4.i

if.end.i.init_node.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_node.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %name5.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 9
  %call.i = tail call ptr @strcpy(ptr noundef %name5.i, ptr noundef nonnull %name) #17
  br label %init_node.exit

init_node.exit:                                   ; preds = %if.then4.i, %if.end.i.init_node.exit_crit_edge
  %name13 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 9
  %call.i51 = tail call i32 @strncmp(ptr noundef %name13, ptr noundef nonnull dereferenceable(6) @.str.22, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i = icmp eq i32 %call.i51, 0
  %retval.0.idx.i = select i1 %cmp.i, i32 5, i32 0
  %retval.0.i = getelementptr i8, ptr %name13, i32 %retval.0.idx.i
  %dentry = getelementptr inbounds %struct.gcov_node, ptr %parent, i32 0, i32 6
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry, align 4
  %call15 = tail call ptr @debugfs_create_file(ptr noundef %retval.0.i, i16 noundef zeroext 384, ptr noundef %12, ptr noundef nonnull %call9.i.i, ptr noundef nonnull @gcov_data_fops) #13
  %dentry16 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %dentry16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %dentry16, align 4
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %init_node.exit
  %num.0.i = phi i32 [ 0, %init_node.exit ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %ext.i = getelementptr [0 x %struct.gcov_link], ptr @gcov_link, i32 0, i32 %num.0.i, i32 1
  %16 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext.i, align 4
  %tobool.not.i52 = icmp eq ptr %17, null
  %inc.i = add i32 %num.0.i, 1
  br i1 %tobool.not.i52, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.i, i32 4) #13
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !91

kcalloc.exit.thread.i:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %links59.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 7
  br label %cleanup.sink.split.i

if.end7.i.i.i:                                    ; preds = %for.end.i
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #18
  %links.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %links.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i, ptr %links.i, align 8
  %tobool2.not.i = icmp ne ptr %call8.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.i)
  %cmp66.i = icmp ne i32 %num.0.i, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp66.i, i1 false
  br i1 %or.cond.i, label %for.body4.lr.ph.i, label %if.end7.i.i.i.if.end26_crit_edge

if.end7.i.i.i.if.end26_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

for.body4.lr.ph.i:                                ; preds = %if.end7.i.i.i
  %unloaded_info.i.i = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 5
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end15.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.067.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc21.i, %if.end15.i.for.body4.i_crit_edge ]
  %22 = ptrtoint ptr %num_loaded.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_loaded.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i54 = icmp sgt i32 %23, 0
  br i1 %cmp.i.i54, label %if.then.i.i55, label %for.body4.i.get_node_info.exit.i_crit_edge

for.body4.i.get_node_info.exit.i_crit_edge:       ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_node_info.exit.i

if.then.i.i55:                                    ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %loaded_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %loaded_info, align 4
  br label %get_node_info.exit.i

get_node_info.exit.i:                             ; preds = %if.then.i.i55, %for.body4.i.get_node_info.exit.i_crit_edge
  %retval.0.in.i.i = phi ptr [ %25, %if.then.i.i55 ], [ %unloaded_info.i.i, %for.body4.i.get_node_info.exit.i_crit_edge ]
  %26 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %call6.i = tail call ptr @gcov_info_filename(ptr noundef %retval.0.i.i) #13
  %27 = ptrtoint ptr %call6.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %lhsc.i.i = load i8, ptr %call6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %lhsc.i.i)
  %cmp.i51.i = icmp eq i8 %lhsc.i.i, 46
  br i1 %cmp.i51.i, label %if.then.i52.i, label %if.else10.i.i

if.then.i52.i:                                    ; preds = %get_node_info.exit.i
  %arrayidx7.i = getelementptr [0 x %struct.gcov_link], ptr @gcov_link, i32 0, i32 %i.067.i
  %add.ptr3.i.i = getelementptr i8, ptr %call6.i, i32 2
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp4.i.i = icmp eq i32 %29, 1
  %ext6.i.i = getelementptr [0 x %struct.gcov_link], ptr @gcov_link, i32 0, i32 %i.067.i, i32 1
  %30 = ptrtoint ptr %ext6.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ext6.i.i, align 4
  %call.i.i.i = tail call noalias ptr @kstrdup(ptr noundef %add.ptr3.i.i, i32 noundef 3264) #13
  %tobool.not.i.i.i56 = icmp eq ptr %call.i.i.i, null
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.then.i52.i
  br i1 %tobool.not.i.i.i56, label %if.then5.i.i.out_err.i_crit_edge, label %if.end.i.i53.i

if.then5.i.i.out_err.i_crit_edge:                 ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

if.end.i.i53.i:                                   ; preds = %if.then5.i.i
  %call1.i.i.i57 = tail call ptr @strrchr(ptr noundef nonnull %call.i.i.i, i32 noundef 46) #13
  %tobool2.not.i.i.i = icmp eq ptr %call1.i.i.i57, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i53.i.if.end4.i.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i53.i.if.end4.i.i.i_crit_edge:           ; preds = %if.end.i.i53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i53.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %call1.i.i.i57 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %call1.i.i.i57, align 1
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.end.i.i53.i.if.end4.i.i.i_crit_edge
  %call7.i.i.i58 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.23, ptr noundef nonnull @srctree, ptr noundef nonnull %call.i.i.i, ptr noundef %31) #13
  br label %get_link_target.exit.i

if.else.i.i:                                      ; preds = %if.then.i52.i
  br i1 %tobool.not.i.i.i56, label %if.else.i.i.out_err.i_crit_edge, label %if.end.i24.i.i

if.else.i.i.out_err.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

if.end.i24.i.i:                                   ; preds = %if.else.i.i
  %call1.i22.i.i = tail call ptr @strrchr(ptr noundef nonnull %call.i.i.i, i32 noundef 46) #13
  %tobool2.not.i23.i.i = icmp eq ptr %call1.i22.i.i, null
  br i1 %tobool2.not.i23.i.i, label %if.end.i24.i.i.if.end4.i26.i.i_crit_edge, label %if.then3.i25.i.i

if.end.i24.i.i.if.end4.i26.i.i_crit_edge:         ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i26.i.i

if.then3.i25.i.i:                                 ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %call1.i22.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %call1.i22.i.i, align 1
  br label %if.end4.i26.i.i

if.end4.i26.i.i:                                  ; preds = %if.then3.i25.i.i, %if.end.i24.i.i.if.end4.i26.i.i_crit_edge
  %call7.i27.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.23, ptr noundef nonnull @objtree, ptr noundef nonnull %call.i.i.i, ptr noundef %31) #13
  br label %get_link_target.exit.i

if.else10.i.i:                                    ; preds = %get_node_info.exit.i
  %ext11.i.i = getelementptr [0 x %struct.gcov_link], ptr @gcov_link, i32 0, i32 %i.067.i, i32 1
  %34 = ptrtoint ptr %ext11.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ext11.i.i, align 4
  %call.i30.i.i = tail call noalias ptr @kstrdup(ptr noundef %call6.i, i32 noundef 3264) #13
  %tobool.not.i31.i.i = icmp eq ptr %call.i30.i.i, null
  br i1 %tobool.not.i31.i.i, label %if.else10.i.i.out_err.i_crit_edge, label %if.end.i34.i.i

if.else10.i.i.out_err.i_crit_edge:                ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

if.end.i34.i.i:                                   ; preds = %if.else10.i.i
  %call1.i32.i.i = tail call ptr @strrchr(ptr noundef nonnull %call.i30.i.i, i32 noundef 46) #13
  %tobool2.not.i33.i.i = icmp eq ptr %call1.i32.i.i, null
  br i1 %tobool2.not.i33.i.i, label %if.end.i34.i.i.if.end4.i36.i.i_crit_edge, label %if.then3.i35.i.i

if.end.i34.i.i.if.end4.i36.i.i_crit_edge:         ; preds = %if.end.i34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i36.i.i

if.then3.i35.i.i:                                 ; preds = %if.end.i34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %call1.i32.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %call1.i32.i.i, align 1
  br label %if.end4.i36.i.i

if.end4.i36.i.i:                                  ; preds = %if.then3.i35.i.i, %if.end.i34.i.i.if.end4.i36.i.i_crit_edge
  %call8.i.i54.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef nonnull %call.i30.i.i, ptr noundef %35) #13
  br label %get_link_target.exit.i

get_link_target.exit.i:                           ; preds = %if.end4.i36.i.i, %if.end4.i26.i.i, %if.end4.i.i.i
  %call.i30.sink.i.i = phi ptr [ %call.i30.i.i, %if.end4.i36.i.i ], [ %call.i.i.i, %if.end4.i26.i.i ], [ %call.i.i.i, %if.end4.i.i.i ]
  %result.0.ph.i.i = phi ptr [ %call8.i.i54.i, %if.end4.i36.i.i ], [ %call7.i27.i.i, %if.end4.i26.i.i ], [ %call7.i.i.i58, %if.end4.i.i.i ]
  tail call void @kfree(ptr noundef nonnull %call.i30.sink.i.i) #13
  %tobool9.not.i = icmp eq ptr %result.0.ph.i.i, null
  br i1 %tobool9.not.i, label %get_link_target.exit.i.out_err.i_crit_edge, label %if.end11.i

get_link_target.exit.i.out_err.i_crit_edge:       ; preds = %get_link_target.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

if.end11.i:                                       ; preds = %get_link_target.exit.i
  %call.i.i = tail call ptr @strrchr(ptr noundef nonnull %result.0.ph.i.i, i32 noundef 47) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 1
  %cond.i.i = select i1 %tobool.not.i.i, ptr %result.0.ph.i.i, ptr %add.ptr.i.i
  %cmp13.i = icmp eq ptr %cond.i.i, %result.0.ph.i.i
  br i1 %cmp13.i, label %if.end11.i.out_err.i_crit_edge, label %if.end15.i

if.end11.i.out_err.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

if.end15.i:                                       ; preds = %if.end11.i
  %call.i55.i = tail call i32 @strncmp(ptr noundef %cond.i.i, ptr noundef nonnull dereferenceable(6) @.str.22, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %cmp.i56.i = icmp eq i32 %call.i55.i, 0
  %retval.0.idx.i.i = select i1 %cmp.i56.i, i32 5, i32 0
  %retval.0.i57.i = getelementptr i8, ptr %cond.i.i, i32 %retval.0.idx.i.i
  %call17.i = tail call ptr @debugfs_create_symlink(ptr noundef %retval.0.i57.i, ptr noundef %15, ptr noundef nonnull %result.0.ph.i.i) #13
  %37 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %links.i, align 8
  %arrayidx19.i = getelementptr ptr, ptr %38, i32 %i.067.i
  %39 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call17.i, ptr %arrayidx19.i, align 4
  tail call void @kfree(ptr noundef nonnull %result.0.ph.i.i) #13
  %inc21.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, %num.0.i
  br i1 %exitcond.not.i, label %if.end15.i.if.end26_crit_edge, label %if.end15.i.for.body4.i_crit_edge

if.end15.i.for.body4.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.i

if.end15.i.if.end26_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

out_err.i:                                        ; preds = %if.end11.i.out_err.i_crit_edge, %get_link_target.exit.i.out_err.i_crit_edge, %if.else10.i.i.out_err.i_crit_edge, %if.else.i.i.out_err.i_crit_edge, %if.then5.i.i.out_err.i_crit_edge
  %result.0.i64.i = phi ptr [ %result.0.ph.i.i, %if.end11.i.out_err.i_crit_edge ], [ null, %get_link_target.exit.i.out_err.i_crit_edge ], [ null, %if.then5.i.i.out_err.i_crit_edge ], [ null, %if.else.i.i.out_err.i_crit_edge ], [ null, %if.else10.i.i.out_err.i_crit_edge ]
  tail call void @kfree(ptr noundef %result.0.i64.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.067.i)
  %cmp2368.not.i = icmp eq i32 %i.067.i, 0
  br i1 %cmp2368.not.i, label %out_err.i.while.end.i_crit_edge, label %out_err.i.while.body.i_crit_edge

out_err.i.while.body.i_crit_edge:                 ; preds = %out_err.i
  br label %while.body.i

out_err.i.while.end.i_crit_edge:                  ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %out_err.i.while.body.i_crit_edge
  %i.169.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.067.i, %out_err.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.169.i, -1
  %40 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %links.i, align 8
  %arrayidx25.i = getelementptr ptr, ptr %41, i32 %dec.i
  %42 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25.i, align 4
  tail call void @debugfs_remove(ptr noundef %43) #13
  %cmp23.i = icmp sgt i32 %i.169.i, 1
  br i1 %cmp23.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %out_err.i.while.end.i_crit_edge
  %44 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %links.i, align 8
  tail call void @kfree(ptr noundef %45) #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %while.end.i, %kcalloc.exit.thread.i
  %links59.sink.i = phi ptr [ %links59.i, %kcalloc.exit.thread.i ], [ %links.i, %while.end.i ]
  %46 = ptrtoint ptr %links59.sink.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %links59.sink.i, align 4
  br label %if.end26

if.else.critedge:                                 ; preds = %if.end
  %47 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128
  %prev.i.i59 = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i.i, ptr %prev.i.i59, align 4
  %children.i60 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %children.i60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %children.i60, ptr %children.i60, align 8
  %prev.i15.i61 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i15.i61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %children.i60, ptr %prev.i15.i61, align 4
  %all.i62 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %all.i62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %all.i62, ptr %all.i62, align 16
  %prev.i16.i63 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i16.i63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %all.i62, ptr %prev.i16.i63, align 4
  %loaded_info.i64 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %loaded_info.i64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %loaded_info.i64, align 4
  %tobool.not.i65 = icmp eq ptr %54, null
  br i1 %tobool.not.i65, label %if.else.critedge.if.end.i70_crit_edge, label %if.then.i67

if.else.critedge.if.end.i70_crit_edge:            ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i70

if.then.i67:                                      ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %54, align 4
  %num_loaded.i66 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %num_loaded.i66 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %num_loaded.i66, align 4
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then.i67, %if.else.critedge.if.end.i70_crit_edge
  %parent2.i68 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %parent2.i68 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %parent, ptr %parent2.i68, align 8
  %tobool3.not.i69 = icmp eq ptr %name, null
  br i1 %tobool3.not.i69, label %if.end.i70.init_node.exit74_crit_edge, label %if.then4.i73

if.end.i70.init_node.exit74_crit_edge:            ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_node.exit74

if.then4.i73:                                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #15
  %name5.i71 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 9
  %call.i72 = tail call ptr @strcpy(ptr noundef %name5.i71, ptr noundef nonnull %name) #17
  br label %init_node.exit74

init_node.exit74:                                 ; preds = %if.then4.i73, %if.end.i70.init_node.exit74_crit_edge
  %name17 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 9
  %dentry19 = getelementptr inbounds %struct.gcov_node, ptr %parent, i32 0, i32 6
  %58 = ptrtoint ptr %dentry19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dentry19, align 4
  %call20 = tail call ptr @debugfs_create_dir(ptr noundef %name17, ptr noundef %59) #13
  %dentry21 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %dentry21 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call20, ptr %dentry21, align 4
  br label %if.end26

if.end26:                                         ; preds = %init_node.exit74, %cleanup.sink.split.i, %if.end15.i.if.end26_crit_edge, %if.end7.i.i.i.if.end26_crit_edge
  %children = getelementptr inbounds %struct.gcov_node, ptr %parent, i32 0, i32 1
  %61 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %children, align 4
  %call.i.i75 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %children, ptr noundef %62) #13
  br i1 %call.i.i75, label %if.end.i.i76, label %if.end26.list_add.exit_crit_edge

if.end26.list_add.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i76:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call9.i.i, ptr %prev1.i.i, align 4
  %64 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %children, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call9.i.i, ptr %children, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i76, %if.end26.list_add.exit_crit_edge
  %all = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 2
  %67 = load ptr, ptr @all_head, align 4
  %call.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %all, ptr noundef nonnull @all_head, ptr noundef %67) #13
  br i1 %call.i.i77, label %if.end.i.i80, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i80:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i78 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i78 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %all, ptr %prev1.i.i78, align 4
  %69 = ptrtoint ptr %all to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %all, align 16
  %prev3.i.i79 = getelementptr inbounds %struct.gcov_node, ptr %call9.i.i, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %prev3.i.i79 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @all_head, ptr %prev3.i.i79, align 4
  store volatile ptr %all, ptr @all_head, align 4
  br label %cleanup

err_nomem:                                        ; preds = %if.then4.err_nomem_crit_edge, %entry.err_nomem_crit_edge
  %retval.1.i.i85 = phi ptr [ %call9.i.i, %if.then4.err_nomem_crit_edge ], [ null, %entry.err_nomem_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i.i85) #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  br label %cleanup

cleanup:                                          ; preds = %err_nomem, %if.end.i.i80, %list_add.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_nomem ], [ %call9.i.i, %list_add.exit.cleanup_crit_edge ], [ %call9.i.i, %if.end.i.i80 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_node(ptr noundef %node) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not5 = icmp eq ptr %node, @root_node
  br i1 %cmp.not5, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %release_node.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %node.addr.06 = phi ptr [ %3, %release_node.exit.land.rhs_crit_edge ], [ %node, %entry.land.rhs_crit_edge ]
  %children = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 1
  %0 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %children, align 4
  %cmp.i.not = icmp eq ptr %1, %children
  br i1 %cmp.i.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %parent1 = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 3
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.addr.06) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.list_del.exit.i_crit_edge

while.body.list_del.exit.i_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.addr.06, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %node.addr.06 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node.addr.06, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %node.addr.06 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node.addr.06, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.addr.06, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %all.i = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 2
  %call.i.i9.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %all.i) #13
  br i1 %call.i.i9.i, label %if.end.i.i12.i, label %list_del.exit.i.list_del.exit14.i_crit_edge

list_del.exit.i.list_del.exit14.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit14.i

if.end.i.i12.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i10.i = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i10.i, align 4
  %14 = ptrtoint ptr %all.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %all.i, align 4
  %prev1.i.i.i11.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i11.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit14.i

list_del.exit14.i:                                ; preds = %if.end.i.i12.i, %list_del.exit.i.list_del.exit14.i_crit_edge
  %18 = ptrtoint ptr %all.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %all.i, align 4
  %prev.i13.i = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i13.i, align 4
  %dentry.i = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 6
  %20 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dentry.i, align 4
  tail call void @debugfs_remove(ptr noundef %21) #13
  %links.i.i = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 7
  %22 = ptrtoint ptr %links.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %links.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %list_del.exit14.i.remove_links.exit.i_crit_edge, label %for.cond.preheader.i.i

list_del.exit14.i.remove_links.exit.i_crit_edge:  ; preds = %list_del.exit14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_links.exit.i

for.cond.preheader.i.i:                           ; preds = %list_del.exit14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.gcov_link], ptr @gcov_link, i32 0, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([0 x %struct.gcov_link], ptr @gcov_link, i32 0, i32 0, i32 1), align 4
  %tobool1.not11.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not11.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %25 = ptrtoint ptr %links.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %links.i.i, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %26, i32 %i.012.i.i
  %27 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3.i.i, align 4
  tail call void @debugfs_remove(ptr noundef %28) #13
  %inc.i.i = add i32 %i.012.i.i, 1
  %ext.i.i = getelementptr [0 x %struct.gcov_link], ptr @gcov_link, i32 0, i32 %inc.i.i, i32 1
  %29 = ptrtoint ptr %ext.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ext.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %31 = ptrtoint ptr %links.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %links.i.i, align 4
  tail call void @kfree(ptr noundef %32) #13
  %33 = ptrtoint ptr %links.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %links.i.i, align 4
  br label %remove_links.exit.i

remove_links.exit.i:                              ; preds = %for.end.i.i, %list_del.exit14.i.remove_links.exit.i_crit_edge
  %loaded_info.i = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 4
  %34 = ptrtoint ptr %loaded_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %loaded_info.i, align 4
  tail call void @kfree(ptr noundef %35) #13
  %unloaded_info.i = getelementptr inbounds %struct.gcov_node, ptr %node.addr.06, i32 0, i32 5
  %36 = ptrtoint ptr %unloaded_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unloaded_info.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %remove_links.exit.i.release_node.exit_crit_edge, label %if.then.i

remove_links.exit.i.release_node.exit_crit_edge:  ; preds = %remove_links.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_node.exit

if.then.i:                                        ; preds = %remove_links.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gcov_info_free(ptr noundef nonnull %37) #13
  br label %release_node.exit

release_node.exit:                                ; preds = %if.then.i, %remove_links.exit.i.release_node.exit_crit_edge
  tail call void @kfree(ptr noundef %node.addr.06) #13
  %cmp.not = icmp eq ptr %3, @root_node
  br i1 %cmp.not, label %release_node.exit.while.end_crit_edge, label %release_node.exit.land.rhs_crit_edge

release_node.exit.land.rhs_crit_edge:             ; preds = %release_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

release_node.exit.while.end_crit_edge:            ; preds = %release_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %release_node.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcov_seq_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %addr, i32 noundef returned %len, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @node_lock, i32 noundef 0) #13
  %call1 = tail call ptr @gcov_info_filename(ptr noundef %5) #13
  %.pn15.i = load ptr, ptr @all_head, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, @all_head
  br i1 %cmp.not16.i, label %entry.if.end4_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn15.i, %entry.for.body.i_crit_edge ]
  %num_loaded.i.i = getelementptr i8, ptr %.pn17.i, i32 28
  %6 = ptrtoint ptr %num_loaded.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_loaded.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp sgt i32 %7, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %loaded_info.i.i = getelementptr i8, ptr %.pn17.i, i32 12
  %8 = ptrtoint ptr %loaded_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %loaded_info.i.i, align 4
  br label %get_node_info.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %unloaded_info.i.i = getelementptr i8, ptr %.pn17.i, i32 16
  br label %get_node_info.exit.i

get_node_info.exit.i:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %9, %if.then.i.i ], [ %unloaded_info.i.i, %if.end.i.i ]
  %10 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %get_node_info.exit.i.for.inc.i_crit_edge, label %land.lhs.true.i

get_node_info.exit.i.for.inc.i_crit_edge:         ; preds = %get_node_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %get_node_info.exit.i
  %call1.i = tail call ptr @gcov_info_filename(ptr noundef nonnull %retval.0.i.i) #13
  %call2.i = tail call i32 @strcmp(ptr noundef %call1.i, ptr noundef %call1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %get_node_by_name.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %get_node_info.exit.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @all_head
  br i1 %cmp.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

get_node_by_name.exit:                            ; preds = %land.lhs.true.i
  %num_loaded.i.i.le = getelementptr i8, ptr %.pn17.i, i32 28
  %node.0.le.i = getelementptr i8, ptr %.pn17.i, i32 -16
  %tobool.not = icmp eq ptr %node.0.le.i, null
  br i1 %tobool.not, label %get_node_by_name.exit.if.end4_crit_edge, label %if.then

get_node_by_name.exit.if.end4_crit_edge:          ; preds = %get_node_by_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %get_node_by_name.exit
  %12 = ptrtoint ptr %num_loaded.i.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_loaded.i.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @remove_node(ptr noundef nonnull %node.0.le.i)
  br label %if.end4

if.else:                                          ; preds = %if.then
  %unloaded_info.i = getelementptr i8, ptr %.pn17.i, i32 16
  %14 = ptrtoint ptr %unloaded_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unloaded_info.i, align 4
  %tobool.not.i9 = icmp eq ptr %15, null
  br i1 %tobool.not.i9, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gcov_info_reset(ptr noundef nonnull %15) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %16 = ptrtoint ptr %num_loaded.i.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_loaded.i.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.i = icmp sgt i32 %17, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %loaded_info.i = getelementptr i8, ptr %.pn17.i, i32 12
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i10.for.body.i10_crit_edge ]
  %18 = ptrtoint ptr %loaded_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %loaded_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.08.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  tail call void @gcov_info_reset(ptr noundef %21) #13
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %22 = ptrtoint ptr %num_loaded.i.i.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_loaded.i.i.le, align 4
  %cmp.i = icmp slt i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i10.for.body.i10_crit_edge, label %for.body.i10.if.end4_crit_edge

for.body.i10.if.end4_crit_edge:                   ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i10

if.end4:                                          ; preds = %for.body.i10.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %if.then3, %get_node_by_name.exit.if.end4_crit_edge, %for.inc.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @gcov_info_reset(ptr noundef %5) #13
  tail call void @mutex_unlock(ptr noundef nonnull @node_lock) #13
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcov_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @node_lock, i32 noundef 0) #13
  %unloaded_info.i = getelementptr inbounds %struct.gcov_node, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %unloaded_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unloaded_info.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @gcov_info_dup(ptr noundef nonnull %3) #13
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %loaded_info.i = getelementptr inbounds %struct.gcov_node, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %loaded_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %loaded_info.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2.i = tail call ptr @gcov_info_dup(ptr noundef %7) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %info.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %i.0.i = phi i32 [ 0, %if.then.i ], [ 1, %if.else.i ]
  %tobool3.not.i = icmp eq ptr %info.0.i, null
  br i1 %tobool3.not.i, label %if.end.i.out_unlock_crit_edge, label %for.cond.preheader.i

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

for.cond.preheader.i:                             ; preds = %if.end.i
  %num_loaded.i = getelementptr inbounds %struct.gcov_node, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %num_loaded.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_loaded.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %9)
  %cmp19.i = icmp slt i32 %i.0.i, %9
  br i1 %cmp19.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end_crit_edge

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %loaded_info6.i = getelementptr inbounds %struct.gcov_node, ptr %1, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.120.i = phi i32 [ %i.0.i, %for.body.lr.ph.i ], [ %inc8.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %loaded_info6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %loaded_info6.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %11, i32 %i.120.i
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @gcov_info_add(ptr noundef nonnull %info.0.i, ptr noundef %13) #13
  %inc8.i = add nuw nsw i32 %i.120.i, 1
  %14 = ptrtoint ptr %num_loaded.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_loaded.i, align 4
  %cmp.i = icmp slt i32 %inc8.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %call.i15 = tail call i32 @convert_to_gcda(ptr noundef null, ptr noundef nonnull %info.0.i) #13
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %call.i15, i32 16) #13
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %spec.select.i.i, i32 noundef 3264, i32 noundef -1) #18
  %tobool.not.i16 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i16, label %if.end.err_free_info_crit_edge, label %if.end4

if.end.err_free_info_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_info

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %info.0.i, ptr %call.i.i, align 8
  %size4.i = getelementptr inbounds %struct.gcov_iterator, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %size4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i15, ptr %size4.i, align 4
  %buffer.i = getelementptr inbounds %struct.gcov_iterator, ptr %call.i.i, i32 0, i32 3
  %call5.i = tail call i32 @convert_to_gcda(ptr noundef %buffer.i, ptr noundef nonnull %info.0.i) #13
  %call5 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @gcov_seq_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %err_free_iter_info

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %private, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %err_free_info, %if.end8, %if.end.i.out_unlock_crit_edge
  %rc.0 = phi i32 [ %rc.1, %err_free_info ], [ 0, %if.end8 ], [ -12, %if.end.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @node_lock) #13
  ret i32 %rc.0

err_free_iter_info:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #13
  br label %err_free_info

err_free_info:                                    ; preds = %err_free_iter_info, %if.end.err_free_info_crit_edge
  %rc.1 = phi i32 [ %call5, %err_free_iter_info ], [ -12, %if.end.err_free_info_crit_edge ]
  tail call void @gcov_info_free(ptr noundef nonnull %info.0.i) #13
  br label %out_unlock
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcov_seq_release(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @kvfree(ptr noundef %3) #13
  tail call void @gcov_info_free(ptr noundef %5) #13
  %call1 = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gcov_info_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gcov_info_dup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gcov_info_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @convert_to_gcda(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gcov_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pos.i = getelementptr inbounds %struct.gcov_iterator, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pos.i, align 8
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp7 = icmp sgt i64 %4, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %gcov_iter_next.exit
  %inc = add nuw nsw i64 %i.08, 1
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos, align 8
  %cmp = icmp slt i64 %inc, %6
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i64 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %pos.i6 = getelementptr inbounds %struct.gcov_iterator, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pos.i6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos.i6, align 8
  %size.i = getelementptr inbounds %struct.gcov_iterator, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  %conv.i = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv.i)
  %cmp.i = icmp slt i64 %10, %conv.i
  br i1 %cmp.i, label %if.then.i, label %for.body.gcov_iter_next.exit_crit_edge

for.body.gcov_iter_next.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %gcov_iter_next.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i64 %10, 4096
  %13 = ptrtoint ptr %pos.i6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add.i, ptr %pos.i6, align 8
  br label %gcov_iter_next.exit

gcov_iter_next.exit:                              ; preds = %if.then.i, %for.body.gcov_iter_next.exit_crit_edge
  %14 = ptrtoint ptr %pos.i6 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos.i6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv.i)
  %cmp6.not.i = icmp slt i64 %15, %conv.i
  br i1 %cmp6.not.i, label %for.cond, label %gcov_iter_next.exit.cleanup_crit_edge

gcov_iter_next.exit.cleanup_crit_edge:            ; preds = %gcov_iter_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %gcov_iter_next.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %for.end ], [ null, %gcov_iter_next.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gcov_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @gcov_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %data, ptr nocapture noundef %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %pos.i = getelementptr inbounds %struct.gcov_iterator, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos.i, align 8
  %size.i = getelementptr inbounds %struct.gcov_iterator, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv.i)
  %cmp.i = icmp slt i64 %3, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.gcov_iter_next.exit_crit_edge

entry.gcov_iter_next.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %gcov_iter_next.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i64 %3, 4096
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add.i, ptr %pos.i, align 8
  br label %gcov_iter_next.exit

gcov_iter_next.exit:                              ; preds = %if.then.i, %entry.gcov_iter_next.exit_crit_edge
  %7 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv.i)
  %cmp6.not.i = icmp slt i64 %8, %conv.i
  %data. = select i1 %cmp6.not.i, ptr %data, ptr null
  ret ptr %data.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcov_seq_show(ptr noundef %seq, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pos.i = getelementptr inbounds %struct.gcov_iterator, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos.i, align 8
  %size.i = getelementptr inbounds %struct.gcov_iterator, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %conv.i = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.not.i = icmp slt i64 %1, %conv.i
  br i1 %cmp.not.i, label %4, label %entry.gcov_iter_write.exit_crit_edge

entry.gcov_iter_write.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %gcov_iter_write.exit

4:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i64 %1, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp6.i = icmp sgt i64 %add.i, %conv.i
  %5 = trunc i64 %1 to i32
  %conv12.i = sub i32 %3, %5
  %len.0.i = select i1 %cmp6.i, i32 %conv12.i, i32 4096
  %buffer.i = getelementptr inbounds %struct.gcov_iterator, ptr %data, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %5
  %call.i = tail call i32 @seq_write(ptr noundef %seq, ptr noundef %add.ptr.i, i32 noundef %len.0.i) #13
  br label %gcov_iter_write.exit

gcov_iter_write.exit:                             ; preds = %4, %entry.gcov_iter_write.exit_crit_edge
  %6 = phi i32 [ 0, %4 ], [ -22, %entry.gcov_iter_write.exit_crit_edge ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gcov_enable_events() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reset_read(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %addr, i32 noundef %len, ptr nocapture noundef readnone %pos) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %addr, i32 noundef returned %len, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @node_lock, i32 noundef 0) #13
  %.pn1518 = load ptr, ptr @all_head, align 4
  %cmp.not1619 = icmp eq ptr %.pn1518, @all_head
  br i1 %cmp.not1619, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %entry.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn17.be, %for.body.backedge ], [ %.pn1518, %entry.for.body_crit_edge ]
  %num_loaded = getelementptr i8, ptr %.pn17, i32 28
  %0 = ptrtoint ptr %num_loaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %unloaded_info.i = getelementptr i8, ptr %.pn17, i32 16
  %2 = ptrtoint ptr %unloaded_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unloaded_info.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gcov_info_reset(ptr noundef nonnull %3) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %4 = ptrtoint ptr %num_loaded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.i = icmp sgt i32 %5, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %loaded_info.i = getelementptr i8, ptr %.pn17, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %loaded_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %loaded_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.08.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @gcov_info_reset(ptr noundef %9) #13
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %10 = ptrtoint ptr %num_loaded to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_loaded, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.inc_crit_edge

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.else:                                          ; preds = %for.body
  %children = getelementptr i8, ptr %.pn17, i32 -8
  %12 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %children, align 4
  %cmp.i13.not = icmp eq ptr %13, %children
  br i1 %cmp.i13.not, label %if.then2, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then2:                                         ; preds = %if.else
  %node.0.le = getelementptr i8, ptr %.pn17, i32 -16
  tail call fastcc void @remove_node(ptr noundef %node.0.le)
  %.pn15 = load ptr, ptr @all_head, align 4
  %cmp.not16 = icmp eq ptr %.pn15, @all_head
  br i1 %cmp.not16, label %if.then2.for.end_crit_edge, label %if.then2.for.body.backedge_crit_edge

if.then2.for.body.backedge_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %for.body.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, @all_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.then2.for.body.backedge_crit_edge
  %.pn17.be = phi ptr [ %.pn, %for.inc.for.body.backedge_crit_edge ], [ %.pn15, %if.then2.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then2.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @node_lock) #13
  ret i32 %len
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__setup_gcov_persist_setup, !1, !"__setup_gcov_persist_setup", i1 false, i1 false}
!1 = !{!"../kernel/gcov/fs.c", i32 87, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/gcov/fs.c", i32 855, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gcov_event._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gcov_event._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_fs__226_882_gcov_fs_init6, !9, !"__initcall__kmod_fs__226_882_gcov_fs_init6", i1 false, i1 false}
!9 = !{!"../kernel/gcov/fs.c", i32 882, i32 1}
!10 = !{ptr @__setup_str_gcov_persist_setup, !1, !"__setup_str_gcov_persist_setup", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/gcov/fs.c", i32 79, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gcov_persist_setup._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @gcov_persist_setup._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/gcov/fs.c", i32 83, i32 2}
!18 = !{ptr @gcov_persist_setup._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @gcov_persist_setup._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @gcov_persist, !21, !"gcov_persist", i1 false, i1 false}
!21 = !{!"../kernel/gcov/fs.c", i32 72, i32 12}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/gcov/fs.c", i32 69, i32 8}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @node_lock, !23, !"node_lock", i1 false, i1 false}
!26 = !{ptr @all_head, !27, !"all_head", i1 false, i1 false}
!27 = !{!"../kernel/gcov/fs.c", i32 68, i32 8}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/gcov/fs.c", i32 736, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @add_info._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @add_info._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/gcov/fs.c", i32 750, i32 4}
!35 = !{ptr @add_info._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @add_info._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/gcov/fs.c", i32 762, i32 4}
!39 = !{ptr @add_info._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @add_info._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/gcov/fs.c", i32 691, i32 20}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/gcov/fs.c", i32 693, i32 20}
!45 = !{ptr @root_node, !46, !"root_node", i1 false, i1 false}
!46 = !{!"../kernel/gcov/fs.c", i32 67, i32 25}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/gcov/fs.c", i32 569, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @new_node._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @new_node._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/gcov/fs.c", i32 467, i32 24}
!54 = !{ptr @gcov_data_fops, !55, !"gcov_data_fops", i1 false, i1 false}
!55 = !{!"../kernel/gcov/fs.c", i32 511, i32 37}
!56 = !{ptr @gcov_seq_ops, !57, !"gcov_seq_ops", i1 false, i1 false}
!57 = !{!"../kernel/gcov/fs.c", i32 243, i32 36}
!58 = !{ptr @objtree, !59, !"objtree", i1 false, i1 false}
!59 = !{!"../kernel/gcov/fs.c", i32 65, i32 19}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/gcov/fs.c", i32 426, i32 34}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/gcov/fs.c", i32 428, i32 34}
!64 = !{ptr @srctree, !65, !"srctree", i1 false, i1 false}
!65 = !{!"../kernel/gcov/fs.c", i32 66, i32 19}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/gcov/fs.c", i32 815, i32 3}
!68 = !{ptr @remove_info._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @remove_info._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/gcov/fs.c", i32 798, i32 4}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @save_info._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @save_info._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/gcov/fs.c", i32 871, i32 40}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/gcov/fs.c", i32 876, i32 22}
!79 = !{ptr @gcov_reset_fops, !80, !"gcov_reset_fops", i1 false, i1 false}
!80 = !{!"../kernel/gcov/fs.c", i32 664, i32 37}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 1, i32 2000}
