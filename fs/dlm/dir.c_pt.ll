; ModuleID = '/llk/IR_all_yes/fs/dlm/dir.c_pt.bc'
source_filename = "../fs/dlm/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.41, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.41 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.42 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_member = type { %struct.list_head, i32, i32, i32, i32, i32, i32 }
%struct.dlm_rcom = type { %struct.dlm_header, i32, i32, i64, i64, i64, [0 x i8] }
%struct.dlm_rsbtable = type { %struct.rb_root, %struct.rb_root, %struct.spinlock, i32 }
%struct.rb_root = type { ptr }

@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@dlm_recover_directory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016dlm: %s: dlm_recover_directory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlm_recover_directory\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/dlm/dir.c\00", [19 x i8] zeroinitializer }, align 32
@dlm_recover_directory._entry_ptr = internal global ptr @dlm_recover_directory._entry, section ".printk_index", align 4
@dlm_recover_directory._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017dlm: %s: dlm_recover_directory\0A\00", [62 x i8] zeroinitializer }, align 32
@dlm_recover_directory._entry_ptr.5 = internal global ptr @dlm_recover_directory._entry.3, section ".printk_index", align 4
@dlm_recover_directory._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013dlm: %s: recover_dir lookup %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dlm_recover_directory._entry_ptr.8 = internal global ptr @dlm_recover_directory._entry.6, section ".printk_index", align 4
@dlm_recover_directory._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dlm: %s: recover_dir lookup %d nodeid %d memb %d bad %u\0A\00", [37 x i8] zeroinitializer }, align 32
@dlm_recover_directory._entry_ptr.11 = internal global ptr @dlm_recover_directory._entry.9, section ".printk_index", align 4
@dlm_recover_directory.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dlm\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_recover_dir \00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@dlm_recover_directory._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016dlm: %s: dlm_recover_directory %u in %u new\0A\00", [49 x i8] zeroinitializer }, align 32
@dlm_recover_directory._entry_ptr.17 = internal global ptr @dlm_recover_directory._entry.15, section ".printk_index", align 4
@dlm_recover_directory._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017dlm: %s: dlm_recover_directory %u in %u new\0A\00", [49 x i8] zeroinitializer }, align 32
@dlm_recover_directory._entry_ptr.20 = internal global ptr @dlm_recover_directory._entry.18, section ".printk_index", align 4
@dlm_copy_master_names._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dlm: %s: copy_master_names from %d start %d %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlm_copy_master_names\00", [42 x i8] zeroinitializer }, align 32
@dlm_copy_master_names._entry_ptr = internal global ptr @dlm_copy_master_names._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@find_rsb_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dlm: %s: find_rsb_root revert to root_list %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"find_rsb_root\00", [18 x i8] zeroinitializer }, align 32
@find_rsb_root._entry_ptr = internal global ptr @find_rsb_root._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 15, i64 18]
@__sancov_gen_cov_switch_values.26 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 69, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 139, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 152, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 156, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 191, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 249, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [16 x i8] c"../fs/dlm/dir.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 222, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @dlm_copy_master_names._entry, ptr @dlm_copy_master_names._entry_ptr, ptr @dlm_recover_directory._entry, ptr @dlm_recover_directory._entry.15, ptr @dlm_recover_directory._entry.18, ptr @dlm_recover_directory._entry.3, ptr @dlm_recover_directory._entry.6, ptr @dlm_recover_directory._entry.9, ptr @dlm_recover_directory._entry_ptr, ptr @dlm_recover_directory._entry_ptr.11, ptr @dlm_recover_directory._entry_ptr.17, ptr @dlm_recover_directory._entry_ptr.20, ptr @dlm_recover_directory._entry_ptr.5, ptr @dlm_recover_directory._entry_ptr.8, ptr @find_rsb_root._entry, ptr @find_rsb_root._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_directory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_directory._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_directory._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_directory._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_directory._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_directory._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_copy_master_names._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_rsb_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_hash2nodeid(ptr nocapture noundef readonly %ls, i32 noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_num_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %0 = ptrtoint ptr %ls_num_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_num_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @dlm_our_nodeid() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %hash, 16
  %ls_total_weight = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 35
  %2 = ptrtoint ptr %ls_total_weight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_total_weight, align 4
  %rem = urem i32 %shr, %3
  %ls_node_array = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 36
  %4 = ptrtoint ptr %ls_node_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_node_array, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %rem
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %7, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dlm_dir_nodeid(ptr nocapture noundef readonly %r) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res_dir_nodeid = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 7
  %0 = ptrtoint ptr %res_dir_nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res_dir_nodeid, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_recover_dir_nodeid(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_root_sem = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 87
  tail call void @down_read(ptr noundef %ls_root_sem) #8
  %ls_root_list = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %0 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %ls_root_list, align 4
  %cmp.not16 = icmp eq ptr %.pn15, %ls_root_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ls_num_nodes.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %ls_total_weight.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 35
  %ls_node_array.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %dlm_hash2nodeid.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn17 = phi ptr [ %.pn15, %for.body.lr.ph ], [ %.pn, %dlm_hash2nodeid.exit.for.body_crit_edge ]
  %1 = ptrtoint ptr %ls_num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ls_num_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp eq i32 %2, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @dlm_our_nodeid() #8
  br label %dlm_hash2nodeid.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %res_hash = getelementptr i8, ptr %.pn17, i32 -60
  %3 = ptrtoint ptr %res_hash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res_hash, align 4
  %shr.i = lshr i32 %4, 16
  %5 = ptrtoint ptr %ls_total_weight.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ls_total_weight.i, align 4
  %rem.i = urem i32 %shr.i, %6
  %7 = ptrtoint ptr %ls_node_array.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ls_node_array.i, align 8
  %arrayidx.i = getelementptr i32, ptr %8, i32 %rem.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  br label %dlm_hash2nodeid.exit

dlm_hash2nodeid.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %10, %if.else.i ]
  %res_dir_nodeid = getelementptr i8, ptr %.pn17, i32 -72
  %11 = ptrtoint ptr %res_dir_nodeid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %res_dir_nodeid, align 4
  %12 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, %ls_root_list
  br i1 %cmp.not, label %dlm_hash2nodeid.exit.for.end_crit_edge, label %dlm_hash2nodeid.exit.for.body_crit_edge

dlm_hash2nodeid.exit.for.body_crit_edge:          ; preds = %dlm_hash2nodeid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

dlm_hash2nodeid.exit.for.end_crit_edge:           ; preds = %dlm_hash2nodeid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %dlm_hash2nodeid.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef %ls_root_sem) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_directory(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  %nodeid = alloca i32, align 4
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodeid) #8
  %0 = ptrtoint ptr %nodeid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nodeid, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #8
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %result, align 4, !annotation !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.do.end13.sink.split_crit_edge

entry.do.end13.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.sink.split

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.else.do.end13_crit_edge, label %if.else.do.end13.sink.split_crit_edge

if.else.do.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.sink.split

if.else.do.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end13.sink.split:                              ; preds = %if.else.do.end13.sink.split_crit_edge, %entry.do.end13.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %entry.do.end13.sink.split_crit_edge ], [ @.str.4, %if.else.do.end13.sink.split_crit_edge ]
  %ls_name8 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, ptr noundef %ls_name8) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end13.sink.split, %if.else.do.end13_crit_edge
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %4 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ls_flags.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.end17, label %do.end13.out_status_crit_edge

do.end13.out_status_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_status

if.end17:                                         ; preds = %do.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3136, i32 noundef 64) #12
  %tobool19.not = icmp eq ptr %call7.i, null
  br i1 %tobool19.not, label %if.end17.cleanup162_crit_edge, label %if.end21

if.end17.cleanup162_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

if.end21:                                         ; preds = %if.end17
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  %8 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %memb.0317 = load ptr, ptr %ls_nodes, align 4
  %cmp.not318 = icmp eq ptr %memb.0317, %ls_nodes
  br i1 %cmp.not318, label %if.end21.out_status_crit_edge, label %for.body.lr.ph

if.end21.out_status_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_status

for.body.lr.ph:                                   ; preds = %if.end21
  %ls_recover_buf = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  %ls_name91 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %memb.0323 = phi ptr [ %memb.0317, %for.body.lr.ph ], [ %memb.0, %for.inc.for.body_crit_edge ]
  %count.0322 = phi i32 [ 0, %for.body.lr.ph ], [ %count.5, %for.inc.for.body_crit_edge ]
  %count_bad.0320 = phi i32 [ 0, %for.body.lr.ph ], [ %count_bad.6, %for.inc.for.body_crit_edge ]
  %count_add.0319 = phi i32 [ 0, %for.body.lr.ph ], [ %count_add.6, %for.inc.for.body_crit_edge ]
  %nodeid24 = getelementptr inbounds %struct.dlm_member, ptr %memb.0323, i32 0, i32 1
  %9 = ptrtoint ptr %nodeid24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nodeid24, align 4
  %call25 = call i32 @dlm_our_nodeid() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call25)
  %cmp26 = icmp eq i32 %10, %call25
  br i1 %cmp26, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %11 = call ptr @memset(ptr %call7.i, i32 0, i32 64)
  br label %for.cond29

for.cond29:                                       ; preds = %cleanup129.for.cond29_crit_edge, %if.end28
  %count_add.1 = phi i32 [ %count_add.0319, %if.end28 ], [ %count_add.2293, %cleanup129.for.cond29_crit_edge ]
  %count_bad.1 = phi i32 [ %count_bad.0320, %if.end28 ], [ %count_bad.2294, %cleanup129.for.cond29_crit_edge ]
  %count.1 = phi i32 [ %count.0322, %if.end28 ], [ %count.2297, %cleanup129.for.cond29_crit_edge ]
  %last_len.0 = phi i32 [ 0, %if.end28 ], [ %last_len.1298, %cleanup129.for.cond29_crit_edge ]
  %12 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i230 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i230)
  %tobool31.not = icmp eq i32 %and1.i.i230, 0
  br i1 %tobool31.not, label %if.end33, label %for.cond29.out_free_crit_edge

for.cond29.out_free_crit_edge:                    ; preds = %for.cond29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end33:                                         ; preds = %for.cond29
  %14 = ptrtoint ptr %nodeid24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nodeid24, align 4
  %call35 = call i32 @dlm_rcom_names(ptr noundef %ls, i32 noundef %15, ptr noundef nonnull %call7.i, i32 noundef %last_len.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.out_free_crit_edge

if.end33.out_free_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end38:                                         ; preds = %if.end33
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 97, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %16 = ptrtoint ptr %ls_recover_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ls_recover_buf, align 8
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_length, align 4
  %conv = zext i16 %19 to i32
  %sub = add nsw i32 %conv, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp44292 = icmp ult i32 %sub, 2
  br i1 %cmp44292, label %if.end38.out_free_crit_edge, label %if.end47.preheader

if.end38.out_free_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end47.preheader:                               ; preds = %if.end38
  %rc_buf = getelementptr inbounds %struct.dlm_rcom, ptr %17, i32 0, i32 6
  br label %if.end47

if.end47:                                         ; preds = %if.end107.if.end47_crit_edge, %if.end47.preheader
  %b.0299 = phi ptr [ %add.ptr125, %if.end107.if.end47_crit_edge ], [ %rc_buf, %if.end47.preheader ]
  %last_len.1298 = phi i32 [ %conv50, %if.end107.if.end47_crit_edge ], [ %last_len.0, %if.end47.preheader ]
  %count.2297 = phi i32 [ %inc128, %if.end107.if.end47_crit_edge ], [ %count.1, %if.end47.preheader ]
  %left.0295 = phi i32 [ %sub127, %if.end107.if.end47_crit_edge ], [ %sub, %if.end47.preheader ]
  %count_bad.2294 = phi i32 [ %count_bad.3, %if.end107.if.end47_crit_edge ], [ %count_bad.1, %if.end47.preheader ]
  %count_add.2293 = phi i32 [ %spec.select228, %if.end107.if.end47_crit_edge ], [ %count_add.1, %if.end47.preheader ]
  %20 = ptrtoint ptr %b.0299 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %v.0.copyload = load i16, ptr %b.0299, align 1
  %add.ptr48 = getelementptr i8, ptr %b.0299, i32 2
  %sub49 = add i32 %left.0295, -2
  %conv50 = zext i16 %v.0.copyload to i32
  %21 = zext i16 %v.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %v.0.copyload, label %if.end57 [
    i16 -1, label %if.end47.cleanup129_crit_edge
    i16 0, label %cleanup129.loopexit
  ]

if.end47.cleanup129_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %sub49, i32 %conv50)
  %cmp59 = icmp slt i32 %sub49, %conv50
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %v.0.copyload)
  %cmp64 = icmp ugt i16 %v.0.copyload, 64
  %or.cond = or i1 %cmp64, %cmp59
  br i1 %or.cond, label %if.end57.cleanup129_crit_edge, label %if.end67

if.end57.cleanup129_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end67:                                         ; preds = %if.end57
  %22 = ptrtoint ptr %nodeid24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nodeid24, align 4
  %call70 = call i32 @dlm_master_lookup(ptr noundef %ls, i32 noundef %23, ptr noundef %add.ptr48, i32 noundef %conv50, i32 noundef 1, ptr noundef nonnull %nodeid, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end80, label %do.end75

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %ls_name91, i32 noundef %call70) #11
  br label %out_free

if.end80:                                         ; preds = %if.end67
  %24 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp81 = icmp eq i32 %25, 1
  br i1 %cmp81, label %land.lhs.true, label %if.end80.if.end107_crit_edge

if.end80.if.end107_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

land.lhs.true:                                    ; preds = %if.end80
  %26 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nodeid, align 4
  %28 = ptrtoint ptr %nodeid24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nodeid24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp84.not = icmp eq i32 %27, %29
  br i1 %cmp84.not, label %land.lhs.true.if.end107_crit_edge, label %if.then86

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %count_bad.2294, 1
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %ls_name91, i32 noundef 1, i32 noundef %27, i32 noundef %29, i32 noundef %inc) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_recover_directory.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_recover_directory, %if.then102)) #8
          to label %if.end107 [label %if.then102], !srcloc !49

if.then102:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr48, i32 noundef %conv50, i1 noundef zeroext true) #8
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.then86, %land.lhs.true.if.end107_crit_edge, %if.end80.if.end107_crit_edge
  %count_bad.3 = phi i32 [ %inc, %if.then102 ], [ %count_bad.2294, %land.lhs.true.if.end107_crit_edge ], [ %count_bad.2294, %if.end80.if.end107_crit_edge ], [ %inc, %if.then86 ]
  %30 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp117 = icmp eq i32 %31, 2
  %inc120 = zext i1 %cmp117 to i32
  %spec.select228 = add i32 %count_add.2293, %inc120
  %32 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr48, i32 %conv50)
  %add.ptr125 = getelementptr i8, ptr %add.ptr48, i32 %conv50
  %sub127 = sub i32 %sub49, %conv50
  %inc128 = add i32 %count.2297, 1
  %cmp44 = icmp ult i32 %sub127, 2
  br i1 %cmp44, label %if.end107.out_free_crit_edge, label %if.end107.if.end47_crit_edge

if.end107.if.end47_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end107.out_free_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

cleanup129.loopexit:                              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

cleanup129:                                       ; preds = %cleanup129.loopexit, %if.end57.cleanup129_crit_edge, %if.end47.cleanup129_crit_edge
  %cleanup.dest.slot.1 = phi i32 [ 0, %cleanup129.loopexit ], [ 15, %if.end57.cleanup129_crit_edge ], [ 18, %if.end47.cleanup129_crit_edge ]
  %33 = zext i32 %cleanup.dest.slot.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cleanup.dest.slot.1, label %cleanup129.cleanup162_crit_edge [
    i32 0, label %cleanup129.for.cond29_crit_edge
    i32 18, label %cleanup129.for.inc_crit_edge
    i32 15, label %cleanup129.out_free_crit_edge
  ]

cleanup129.out_free_crit_edge:                    ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

cleanup129.for.inc_crit_edge:                     ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup129.for.cond29_crit_edge:                  ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond29

cleanup129.cleanup162_crit_edge:                  ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

for.inc:                                          ; preds = %cleanup129.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count_add.6 = phi i32 [ %count_add.0319, %for.body.for.inc_crit_edge ], [ %count_add.2293, %cleanup129.for.inc_crit_edge ]
  %count_bad.6 = phi i32 [ %count_bad.0320, %for.body.for.inc_crit_edge ], [ %count_bad.2294, %cleanup129.for.inc_crit_edge ]
  %count.5 = phi i32 [ %count.0322, %for.body.for.inc_crit_edge ], [ %count.2297, %cleanup129.for.inc_crit_edge ]
  %34 = ptrtoint ptr %memb.0323 to i32
  call void @__asan_load4_noabort(i32 %34)
  %memb.0 = load ptr, ptr %memb.0323, align 4
  %cmp.not = icmp eq ptr %memb.0, %ls_nodes
  br i1 %cmp.not, label %for.inc.out_status_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_status_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_status

out_status:                                       ; preds = %for.inc.out_status_crit_edge, %if.end21.out_status_crit_edge, %do.end13.out_status_crit_edge
  %count_add.7 = phi i32 [ 0, %do.end13.out_status_crit_edge ], [ 0, %if.end21.out_status_crit_edge ], [ %count_add.6, %for.inc.out_status_crit_edge ]
  %count.6 = phi i32 [ 0, %do.end13.out_status_crit_edge ], [ 0, %if.end21.out_status_crit_edge ], [ %count.5, %for.inc.out_status_crit_edge ]
  %last_name.0 = phi ptr [ null, %do.end13.out_status_crit_edge ], [ %call7.i, %if.end21.out_status_crit_edge ], [ %call7.i, %for.inc.out_status_crit_edge ]
  call void @dlm_set_recover_status(ptr noundef %ls, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %35 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool139.not = icmp eq i32 %35, 0
  br i1 %tobool139.not, label %if.else148, label %do.end143

do.end143:                                        ; preds = %out_status
  call void @__sanitizer_cov_trace_pc() #10
  %ls_name145 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %ls_name145, i32 noundef %count.6, i32 noundef %count_add.7) #11
  br label %out_free

if.else148:                                       ; preds = %out_status
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %36 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool149.not = icmp eq i32 %36, 0
  br i1 %tobool149.not, label %if.else148.out_free_crit_edge, label %do.end153

if.else148.out_free_crit_edge:                    ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

do.end153:                                        ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #10
  %ls_name155 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ls_name155, i32 noundef %count.6, i32 noundef %count_add.7) #11
  br label %out_free

out_free:                                         ; preds = %do.end153, %if.else148.out_free_crit_edge, %do.end143, %cleanup129.out_free_crit_edge, %if.end107.out_free_crit_edge, %do.end75, %if.end38.out_free_crit_edge, %if.end33.out_free_crit_edge, %for.cond29.out_free_crit_edge
  %error.2 = phi i32 [ 0, %do.end143 ], [ 0, %do.end153 ], [ 0, %if.else148.out_free_crit_edge ], [ %call70, %do.end75 ], [ -22, %if.end107.out_free_crit_edge ], [ -22, %if.end38.out_free_crit_edge ], [ -4, %for.cond29.out_free_crit_edge ], [ %call35, %if.end33.out_free_crit_edge ], [ -22, %cleanup129.out_free_crit_edge ]
  %last_name.1 = phi ptr [ %last_name.0, %do.end143 ], [ %last_name.0, %do.end153 ], [ %last_name.0, %if.else148.out_free_crit_edge ], [ %call7.i, %do.end75 ], [ %call7.i, %if.end107.out_free_crit_edge ], [ %call7.i, %cleanup129.out_free_crit_edge ], [ %call7.i, %for.cond29.out_free_crit_edge ], [ %call7.i, %if.end33.out_free_crit_edge ], [ %call7.i, %if.end38.out_free_crit_edge ]
  call void @kfree(ptr noundef %last_name.1) #8
  br label %cleanup162

cleanup162:                                       ; preds = %out_free, %cleanup129.cleanup162_crit_edge, %if.end17.cleanup162_crit_edge
  %retval.0 = phi i32 [ %error.2, %out_free ], [ -12, %if.end17.cleanup162_crit_edge ], [ undef, %cleanup129.cleanup162_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodeid) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_rcom_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_master_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_set_recover_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_copy_master_names(ptr noundef %ls, ptr noundef %inbuf, i32 noundef %inlen, ptr nocapture noundef writeonly %outbuf, i32 noundef %outlen, i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  %r.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_root_sem = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 87
  tail call void @down_read(ptr noundef %ls_root_sem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inlen)
  %cmp = icmp sgt i32 %inlen, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r.i) #8
  %0 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %r.i, align 4, !annotation !48
  %add.i.i = add nsw i32 %inlen, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %inlen)
  %cmp13.i.i = icmp ugt i32 %inlen, 12
  br i1 %cmp13.i.i, label %if.then.while.body.i.i_crit_edge, label %if.then.while.end.i.i_crit_edge

if.then.while.end.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  %k.018.i.i = phi ptr [ %add.ptr31.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %inbuf, %if.then.while.body.i.i_crit_edge ]
  %c.017.i.i = phi i32 [ %xor28.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %if.then.while.body.i.i_crit_edge ]
  %b.016.i.i = phi i32 [ %add29.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %if.then.while.body.i.i_crit_edge ]
  %a.015.i.i = phi i32 [ %add25.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %if.then.while.body.i.i_crit_edge ]
  %length.addr.014.i.i = phi i32 [ %sub30.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %inlen, %if.then.while.body.i.i_crit_edge ]
  %1 = ptrtoint ptr %k.018.i.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %k.018.i.i, align 1
  %add2.i.i = add i32 %2, %a.015.i.i
  %add.ptr.i.i = getelementptr i8, ptr %k.018.i.i, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr.i.i, align 1
  %add4.i.i = add i32 %4, %b.016.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %k.018.i.i, i32 8
  %5 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr5.i.i, align 1
  %add7.i.i = add i32 %6, %c.017.i.i
  %sub.i.i = sub i32 %add2.i.i, %add7.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i.i, i32 %add7.i.i, i32 4) #8
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add9.i.i = add i32 %add7.i.i, %add4.i.i
  %sub10.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #8
  %xor12.i.i = xor i32 %sub10.i.i, %or.i1.i.i
  %add13.i.i = add i32 %xor.i.i, %add9.i.i
  %sub14.i.i = sub i32 %add9.i.i, %xor12.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i.i, i32 %xor12.i.i, i32 8) #8
  %xor16.i.i = xor i32 %sub14.i.i, %or.i2.i.i
  %add17.i.i = add i32 %xor12.i.i, %add13.i.i
  %sub18.i.i = sub i32 %add13.i.i, %xor16.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i.i, i32 %xor16.i.i, i32 16) #8
  %xor20.i.i = xor i32 %sub18.i.i, %or.i3.i.i
  %add21.i.i = add i32 %xor16.i.i, %add17.i.i
  %sub22.i.i = sub i32 %add17.i.i, %xor20.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i.i, i32 %xor20.i.i, i32 19) #8
  %xor24.i.i = xor i32 %sub22.i.i, %or.i4.i.i
  %add25.i.i = add i32 %xor20.i.i, %add21.i.i
  %sub26.i.i = sub i32 %add21.i.i, %xor24.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i.i, i32 %xor24.i.i, i32 4) #8
  %xor28.i.i = xor i32 %sub26.i.i, %or.i5.i.i
  %add29.i.i = add i32 %xor24.i.i, %add25.i.i
  %sub30.i.i = add i32 %length.addr.014.i.i, -12
  %add.ptr31.i.i = getelementptr i8, ptr %k.018.i.i, i32 12
  %cmp.i.i = icmp ugt i32 %sub30.i.i, 12
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.then.while.end.i.i_crit_edge
  %length.addr.0.lcssa.i.i = phi i32 [ %inlen, %if.then.while.end.i.i_crit_edge ], [ %sub30.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %a.0.lcssa.i.i = phi i32 [ %add.i.i, %if.then.while.end.i.i_crit_edge ], [ %add25.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %b.0.lcssa.i.i = phi i32 [ %add.i.i, %if.then.while.end.i.i_crit_edge ], [ %add29.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %c.0.lcssa.i.i = phi i32 [ %add.i.i, %if.then.while.end.i.i_crit_edge ], [ %xor28.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %k.0.lcssa.i.i = phi ptr [ %inbuf, %if.then.while.end.i.i_crit_edge ], [ %add.ptr31.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %7 = zext i32 %length.addr.0.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %length.addr.0.lcssa.i.i, label %while.end.i.i.jhash.exit.i_crit_edge [
    i32 12, label %sw.bb.i.i
    i32 11, label %while.end.i.i.sw.bb33.i.i_crit_edge
    i32 10, label %while.end.i.i.sw.bb38.i.i_crit_edge
    i32 9, label %while.end.i.i.sw.bb43.i.i_crit_edge
    i32 8, label %while.end.i.i.sw.bb47.i.i_crit_edge
    i32 7, label %while.end.i.i.sw.bb52.i.i_crit_edge
    i32 6, label %while.end.i.i.sw.bb57.i.i_crit_edge
    i32 5, label %while.end.i.i.sw.bb62.i.i_crit_edge
    i32 4, label %while.end.i.i.sw.bb66.i.i_crit_edge
    i32 3, label %while.end.i.i.sw.bb71.i.i_crit_edge
    i32 2, label %while.end.i.i.sw.bb76.i.i_crit_edge
    i32 1, label %while.end.i.i.sw.bb81.i.i_crit_edge
  ]

while.end.i.i.sw.bb81.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81.i.i

while.end.i.i.sw.bb76.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb76.i.i

while.end.i.i.sw.bb71.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71.i.i

while.end.i.i.sw.bb66.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66.i.i

while.end.i.i.sw.bb62.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb62.i.i

while.end.i.i.sw.bb57.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb57.i.i

while.end.i.i.sw.bb52.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52.i.i

while.end.i.i.sw.bb47.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47.i.i

while.end.i.i.sw.bb43.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb43.i.i

while.end.i.i.sw.bb38.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38.i.i

while.end.i.i.sw.bb33.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33.i.i

while.end.i.i.jhash.exit.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jhash.exit.i

sw.bb.i.i:                                        ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 11
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %add32.i.i = add i32 %shl.i.i, %c.0.lcssa.i.i
  br label %sw.bb33.i.i

sw.bb33.i.i:                                      ; preds = %sw.bb.i.i, %while.end.i.i.sw.bb33.i.i_crit_edge
  %c.1.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb33.i.i_crit_edge ], [ %add32.i.i, %sw.bb.i.i ]
  %arrayidx34.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 10
  %10 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx34.i.i, align 1
  %conv35.i.i = zext i8 %11 to i32
  %shl36.i.i = shl nuw nsw i32 %conv35.i.i, 16
  %add37.i.i = add i32 %shl36.i.i, %c.1.i.i
  br label %sw.bb38.i.i

sw.bb38.i.i:                                      ; preds = %sw.bb33.i.i, %while.end.i.i.sw.bb38.i.i_crit_edge
  %c.2.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb38.i.i_crit_edge ], [ %add37.i.i, %sw.bb33.i.i ]
  %arrayidx39.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 9
  %12 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx39.i.i, align 1
  %conv40.i.i = zext i8 %13 to i32
  %shl41.i.i = shl nuw nsw i32 %conv40.i.i, 8
  %add42.i.i = add i32 %shl41.i.i, %c.2.i.i
  br label %sw.bb43.i.i

sw.bb43.i.i:                                      ; preds = %sw.bb38.i.i, %while.end.i.i.sw.bb43.i.i_crit_edge
  %c.3.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb43.i.i_crit_edge ], [ %add42.i.i, %sw.bb38.i.i ]
  %arrayidx44.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 8
  %14 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx44.i.i, align 1
  %conv45.i.i = zext i8 %15 to i32
  %add46.i.i = add i32 %c.3.i.i, %conv45.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb43.i.i, %while.end.i.i.sw.bb47.i.i_crit_edge
  %c.4.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb47.i.i_crit_edge ], [ %add46.i.i, %sw.bb43.i.i ]
  %arrayidx48.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 7
  %16 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %17 to i32
  %shl50.i.i = shl nuw i32 %conv49.i.i, 24
  %add51.i.i = add i32 %shl50.i.i, %b.0.lcssa.i.i
  br label %sw.bb52.i.i

sw.bb52.i.i:                                      ; preds = %sw.bb47.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge
  %b.1.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge ], [ %add51.i.i, %sw.bb47.i.i ]
  %c.5.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge ], [ %c.4.i.i, %sw.bb47.i.i ]
  %arrayidx53.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 6
  %18 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx53.i.i, align 1
  %conv54.i.i = zext i8 %19 to i32
  %shl55.i.i = shl nuw nsw i32 %conv54.i.i, 16
  %add56.i.i = add i32 %shl55.i.i, %b.1.i.i
  br label %sw.bb57.i.i

sw.bb57.i.i:                                      ; preds = %sw.bb52.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge
  %b.2.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge ], [ %add56.i.i, %sw.bb52.i.i ]
  %c.6.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge ], [ %c.5.i.i, %sw.bb52.i.i ]
  %arrayidx58.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 5
  %20 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %21 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add i32 %shl60.i.i, %b.2.i.i
  br label %sw.bb62.i.i

sw.bb62.i.i:                                      ; preds = %sw.bb57.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge
  %b.3.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge ], [ %add61.i.i, %sw.bb57.i.i ]
  %c.7.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge ], [ %c.6.i.i, %sw.bb57.i.i ]
  %arrayidx63.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 4
  %22 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %23 to i32
  %add65.i.i = add i32 %b.3.i.i, %conv64.i.i
  br label %sw.bb66.i.i

sw.bb66.i.i:                                      ; preds = %sw.bb62.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge
  %b.4.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge ], [ %add65.i.i, %sw.bb62.i.i ]
  %c.8.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge ], [ %c.7.i.i, %sw.bb62.i.i ]
  %arrayidx67.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 3
  %24 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %25 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, %a.0.lcssa.i.i
  br label %sw.bb71.i.i

sw.bb71.i.i:                                      ; preds = %sw.bb66.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge
  %a.1.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %add70.i.i, %sw.bb66.i.i ]
  %b.5.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %b.4.i.i, %sw.bb66.i.i ]
  %c.9.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %c.8.i.i, %sw.bb66.i.i ]
  %arrayidx72.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 2
  %26 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %27 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %shl74.i.i, %a.1.i.i
  br label %sw.bb76.i.i

sw.bb76.i.i:                                      ; preds = %sw.bb71.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge
  %a.2.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %add75.i.i, %sw.bb71.i.i ]
  %b.6.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %b.5.i.i, %sw.bb71.i.i ]
  %c.10.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %c.9.i.i, %sw.bb71.i.i ]
  %arrayidx77.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 1
  %28 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %29 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %shl79.i.i, %a.2.i.i
  br label %sw.bb81.i.i

sw.bb81.i.i:                                      ; preds = %sw.bb76.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge
  %a.3.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %add80.i.i, %sw.bb76.i.i ]
  %b.7.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %b.6.i.i, %sw.bb76.i.i ]
  %c.11.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %c.10.i.i, %sw.bb76.i.i ]
  %30 = ptrtoint ptr %k.0.lcssa.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %k.0.lcssa.i.i, align 1
  %conv83.i.i = zext i8 %31 to i32
  %add84.i.i = add i32 %a.3.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %c.11.i.i, %b.7.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i.i, i32 %b.7.i.i, i32 14) #8
  %sub87.i.i = sub i32 %xor85.i.i, %or.i6.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #8
  %sub90.i.i = sub i32 %xor88.i.i, %or.i7.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %b.7.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #8
  %sub93.i.i = sub i32 %xor91.i.i, %or.i8.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #8
  %sub96.i.i = sub i32 %xor94.i.i, %or.i9.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #8
  %sub99.i.i = sub i32 %xor97.i.i, %or.i10.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #8
  %sub102.i.i = sub i32 %xor100.i.i, %or.i11.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #8
  %sub105.i.i = sub i32 %xor103.i.i, %or.i12.i.i
  br label %jhash.exit.i

jhash.exit.i:                                     ; preds = %sw.bb81.i.i, %while.end.i.i.jhash.exit.i_crit_edge
  %c.12.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.jhash.exit.i_crit_edge ], [ %sub105.i.i, %sw.bb81.i.i ]
  %ls_rsbtbl_size.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 15
  %32 = ptrtoint ptr %ls_rsbtbl_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ls_rsbtbl_size.i, align 4
  %sub.i = add i32 %33, -1
  %and.i = and i32 %sub.i, %c.12.i.i
  %ls_rsbtbl.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 14
  %34 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ls_rsbtbl.i, align 8
  %lock.i = getelementptr %struct.dlm_rsbtable, ptr %35, i32 %and.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %36 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ls_rsbtbl.i, align 8
  %arrayidx2.i = getelementptr %struct.dlm_rsbtable, ptr %37, i32 %and.i
  %call3.i = call i32 @dlm_search_rsb_tree(ptr noundef %arrayidx2.i, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef nonnull %r.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %38 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ls_rsbtbl.i, align 8
  br i1 %tobool.not.i, label %if.then11.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %jhash.exit.i
  %toss.i = getelementptr %struct.dlm_rsbtable, ptr %39, i32 %and.i, i32 1
  %call6.i = call i32 @dlm_search_rsb_tree(ptr noundef %toss.i, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef nonnull %r.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %phi.cmp.i = icmp eq i32 %call6.i, 0
  %40 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ls_rsbtbl.i, align 8
  %lock9.i = getelementptr %struct.dlm_rsbtable, ptr %41, i32 %and.i, i32 2
  call void @_raw_spin_unlock(ptr noundef %lock9.i) #8
  br i1 %phi.cmp.i, label %if.then.i.find_rsb_root.exit_crit_edge, label %if.end12.i

if.then.i.find_rsb_root.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_rsb_root.exit

if.then11.critedge.i:                             ; preds = %jhash.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock9.c.i = getelementptr %struct.dlm_rsbtable, ptr %39, i32 %and.i, i32 2
  call void @_raw_spin_unlock(ptr noundef %lock9.c.i) #8
  br label %find_rsb_root.exit

if.end12.i:                                       ; preds = %if.then.i
  call void @down_read(ptr noundef %ls_root_sem) #8
  %ls_root_list.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %42 = ptrtoint ptr %ls_root_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn61.i = load ptr, ptr %ls_root_list.i, align 4
  %storemerge62.i = getelementptr i8, ptr %.pn61.i, i32 -188
  %43 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %storemerge62.i, ptr %r.i, align 4
  %cmp.not63.i = icmp eq ptr %.pn61.i, %ls_root_list.i
  br i1 %cmp.not63.i, label %if.end12.i.find_rsb_root.exit.thread_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.find_rsb_root.exit.thread_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_rsb_root.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %.pn64.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn61.i, %if.end12.i.for.body.i_crit_edge ]
  %res_length.i = getelementptr i8, ptr %.pn64.i, i32 -84
  %44 = ptrtoint ptr %res_length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %res_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %inlen)
  %cmp14.i = icmp eq i32 %45, %inlen
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %res_name.i = getelementptr i8, ptr %.pn64.i, i32 24
  %bcmp.i = call i32 @bcmp(ptr %inbuf, ptr %res_name.i, i32 %inlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool16.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @up_read(ptr noundef %ls_root_sem) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %46 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool19.not.i = icmp eq i32 %46, 0
  br i1 %tobool19.not.i, label %if.then17.i.find_rsb_root.exit_crit_edge, label %do.end.i

if.then17.i.find_rsb_root.exit_crit_edge:         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_rsb_root.exit

do.end.i:                                         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %47 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %r.i, align 4
  %res_name24.i = getelementptr inbounds %struct.dlm_rsb, ptr %48, i32 0, i32 23
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %ls_name.i, ptr noundef %res_name24.i) #11
  br label %find_rsb_root.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %49 = ptrtoint ptr %.pn64.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i = load ptr, ptr %.pn64.i, align 4
  %storemerge.i = getelementptr i8, ptr %.pn.i, i32 -188
  %50 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %storemerge.i, ptr %r.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ls_root_list.i
  br i1 %cmp.not.i, label %for.inc.i.find_rsb_root.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.find_rsb_root.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_rsb_root.exit.thread

find_rsb_root.exit.thread:                        ; preds = %for.inc.i.find_rsb_root.exit.thread_crit_edge, %if.end12.i.find_rsb_root.exit.thread_crit_edge
  call void @up_read(ptr noundef %ls_root_sem) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #8
  br label %if.then1

find_rsb_root.exit:                               ; preds = %do.end.i, %if.then17.i.find_rsb_root.exit_crit_edge, %if.then11.critedge.i, %if.then.i.find_rsb_root.exit_crit_edge
  %51 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %retval.0.i = load ptr, ptr %r.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #8
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %find_rsb_root.exit.if.then1_crit_edge, label %if.end

find_rsb_root.exit.if.then1_crit_edge:            ; preds = %find_rsb_root.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.then1:                                         ; preds = %find_rsb_root.exit.if.then1_crit_edge, %find_rsb_root.exit.thread
  %sub = add i32 %inlen, -1
  %arrayidx = getelementptr i8, ptr %inbuf, i32 %sub
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx, align 1
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %ls_name, i32 noundef %nodeid, i32 noundef %inlen, ptr noundef %inbuf) #11
  br label %out

if.end:                                           ; preds = %find_rsb_root.exit
  call void @__sanitizer_cov_trace_pc() #10
  %res_root_list = getelementptr inbounds %struct.dlm_rsb, ptr %retval.0.i, i32 0, i32 19
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ls_root_list = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %list.0.in = phi ptr [ %res_root_list, %if.end ], [ %ls_root_list, %if.else ]
  %ls_root_list5 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %53 = ptrtoint ptr %list.0.in to i32
  call void @__asan_load4_noabort(i32 %53)
  %list.188 = load ptr, ptr %list.0.in, align 4
  %cmp6.not89 = icmp eq ptr %list.188, %ls_root_list5
  br i1 %cmp6.not89, label %if.end4.land.lhs.true_crit_edge, label %for.body.lr.ph

if.end4.land.lhs.true_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.body.lr.ph:                                   ; preds = %if.end4
  %ls_recover_dir_sent_res = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 73
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list.191 = phi ptr [ %list.188, %for.body.lr.ph ], [ %list.1, %for.inc.for.body_crit_edge ]
  %offset.090 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %res_nodeid = getelementptr i8, ptr %list.191, i32 -80
  %54 = ptrtoint ptr %res_nodeid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %res_nodeid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool8.not = icmp eq i32 %55, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %res_dir_nodeid.i = getelementptr i8, ptr %list.191, i32 -72
  %56 = ptrtoint ptr %res_dir_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %res_dir_nodeid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %nodeid)
  %cmp12.not = icmp eq i32 %57, %nodeid
  br i1 %cmp12.not, label %if.end14, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end14:                                         ; preds = %if.end10
  %add = add i32 %offset.090, 4
  %res_length = getelementptr i8, ptr %list.191, i32 -84
  %58 = ptrtoint ptr %res_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %res_length, align 4
  %add15 = add i32 %add, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %outlen)
  %cmp16 = icmp ugt i32 %add15, %outlen
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr18 = getelementptr i8, ptr %outbuf, i32 %offset.090
  %60 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 0, ptr %add.ptr18, align 1
  %ls_recover_dir_sent_msg = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 74
  %61 = ptrtoint ptr %ls_recover_dir_sent_msg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ls_recover_dir_sent_msg, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %ls_recover_dir_sent_msg, align 4
  br label %out

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %59 to i16
  %add.ptr22 = getelementptr i8, ptr %outbuf, i32 %offset.090
  %63 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %conv, ptr %add.ptr22, align 1
  %add23 = add i32 %offset.090, 2
  %add.ptr24 = getelementptr i8, ptr %outbuf, i32 %add23
  %res_name = getelementptr i8, ptr %list.191, i32 24
  %64 = ptrtoint ptr %res_length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %res_length, align 4
  %66 = call ptr @memcpy(ptr %add.ptr24, ptr %res_name, i32 %65)
  %67 = load i32, ptr %res_length, align 4
  %add28 = add i32 %67, %add23
  %68 = ptrtoint ptr %ls_recover_dir_sent_res to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ls_recover_dir_sent_res, align 8
  %inc29 = add i32 %69, 1
  store i32 %inc29, ptr %ls_recover_dir_sent_res, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %offset.1 = phi i32 [ %offset.090, %for.body.for.inc_crit_edge ], [ %offset.090, %if.end10.for.inc_crit_edge ], [ %add28, %if.end20 ]
  %70 = ptrtoint ptr %list.191 to i32
  call void @__asan_load4_noabort(i32 %70)
  %list.1 = load ptr, ptr %list.191, align 4
  %cmp6.not = icmp eq ptr %list.1, %ls_root_list5
  br i1 %cmp6.not, label %for.inc.land.lhs.true_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %if.end4.land.lhs.true_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %if.end4.land.lhs.true_crit_edge ], [ %offset.1, %for.inc.land.lhs.true_crit_edge ]
  %add34 = add i32 %offset.0.lcssa, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %outlen)
  %cmp35.not = icmp ugt i32 %add34, %outlen
  br i1 %cmp35.not, label %land.lhs.true.out_crit_edge, label %if.then37

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr38 = getelementptr i8, ptr %outbuf, i32 %offset.0.lcssa
  %71 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 -1, ptr %add.ptr38, align 1
  %ls_recover_dir_sent_msg40 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 74
  %72 = ptrtoint ptr %ls_recover_dir_sent_msg40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ls_recover_dir_sent_msg40, align 4
  %inc41 = add i32 %73, 1
  store i32 %inc41, ptr %ls_recover_dir_sent_msg40, align 4
  br label %out

out:                                              ; preds = %if.then37, %land.lhs.true.out_crit_edge, %if.then17, %if.then1
  call void @up_read(ptr noundef %ls_root_sem) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_search_rsb_tree(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/dir.c", i32 69, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dlm_recover_directory._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dlm_recover_directory._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dlm_recover_directory._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @dlm_recover_directory._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/dlm/dir.c", i32 139, i32 6}
!11 = !{ptr @dlm_recover_directory._entry.6, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @dlm_recover_directory._entry_ptr.8, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/dlm/dir.c", i32 152, i32 6}
!15 = !{ptr @dlm_recover_directory._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @dlm_recover_directory._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/dlm/dir.c", i32 156, i32 6}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dlm_recover_directory.__UNIQUE_ID_ddebug189, !18, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!21 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/dlm/dir.c", i32 191, i32 2}
!24 = !{ptr @dlm_recover_directory._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dlm_recover_directory._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dlm_recover_directory._entry.18, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @dlm_recover_directory._entry_ptr.20, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/dlm/dir.c", i32 249, i32 4}
!31 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dlm_copy_master_names._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dlm_copy_master_names._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/dlm/dir.c", i32 222, i32 4}
!36 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @find_rsb_root._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @find_rsb_root._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 2148228018, i64 2148228023, i64 2148228036, i64 2148228080, i64 2148228114, i64 2148228135}
