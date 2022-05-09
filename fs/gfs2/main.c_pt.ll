; ModuleID = '/llk/IR_all_yes/fs/gfs2/main.c_pt.bc'
source_filename = "../fs/gfs2/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.3 = type { i32, i32 }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.73, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.73 = type { %struct.delayed_work, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@gfs2_qd_shrinker = external dso_local global %struct.shrinker, align 4
@gfs2_fs_type = external dso_local global %struct.file_system_type, align 4
@gfs2meta_fs_type = external dso_local global %struct.file_system_type, align 4
@gfs_recovery_wq = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_control_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@gfs2_freeze_wq = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_qd_lru = external dso_local global %struct.list_lru, align 4
@gfs2_page_pool = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_trans_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_qadata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_quotad_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_rgrpd_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_bufdata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_inode_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_glock_aspace_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_glock_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__UNIQUE_ID_description291 = internal constant [36 x i8] c"gfs2.description=Global File System\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [26 x i8] c"gfs2.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [23 x i8] c"gfs2.file=fs/gfs2/gfs2\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [17 x i8] c"gfs2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gfs2__295_264_init_gfs2_fs6 = internal global ptr @init_gfs2_fs, section ".initcall6.init", align 4
@__exitcall_exit_gfs2_fs = internal global ptr @exit_gfs2_fs, section ".exitcall.exit", align 4
@gfs2_qdot = external dso_local local_unnamed_addr global %struct.qstr, align 8
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@gfs2_qdotdot = external dso_local local_unnamed_addr global %struct.qstr, align 8
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfs2_glock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfs2_glock(aspace)\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfs2_inode\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gfs2_bufdata\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfs2_rgrpd\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gfs2_quotad\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gfs2_qadata\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfs2_trans\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gfs_recovery\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gfs2_control\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"freeze_workqueue\00", [47 x i8] zeroinitializer }, align 32
@init_gfs2_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016gfs2: GFS2 installed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_gfs2_fs\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/main.c\00", [17 x i8] zeroinitializer }, align 32
@init_gfs2_fs._entry_ptr = internal global ptr @init_gfs2_fs._entry, section ".printk_index", align 4
@gfs2_init_glock_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&gl->gl_lockref.lock\00", [43 x i8] zeroinitializer }, align 32
@gfs2_init_inode_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ip->i_rw_mutex\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"gfs2_control_wq\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 32, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 82, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 83, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 99, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 106, i32 47 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 114, i32 40 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 123, i32 42 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 129, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 135, i32 41 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 141, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 147, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 166, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 171, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 176, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 187, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 55, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [18 x i8] c"../fs/gfs2/main.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 40, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_exit_gfs2_fs, ptr @__initcall__kmod_gfs2__295_264_init_gfs2_fs6, ptr @exit_gfs2_fs, ptr @init_gfs2_fs._entry, ptr @init_gfs2_fs._entry_ptr, ptr @gfs2_control_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @gfs2_init_glock_once.__key, ptr @.str.16, ptr @gfs2_init_inode_once.__key, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_control_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_gfs2_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_init_glock_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_init_inode_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_gfs2_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @unregister_shrinker(ptr noundef nonnull @gfs2_qd_shrinker) #5
  tail call void @gfs2_glock_exit() #5
  tail call void @gfs2_unregister_debugfs() #5
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @gfs2_fs_type) #5
  %call1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @gfs2meta_fs_type) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs_recovery_wq to i32))
  %0 = load ptr, ptr @gfs_recovery_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #5
  %1 = load ptr, ptr @gfs2_control_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_freeze_wq to i32))
  %2 = load ptr, ptr @gfs2_freeze_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #5
  tail call void @list_lru_destroy(ptr noundef nonnull @gfs2_qd_lru) #5
  tail call void @rcu_barrier() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  %3 = load ptr, ptr @gfs2_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_trans_cachep to i32))
  %4 = load ptr, ptr @gfs2_trans_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %5 = load ptr, ptr @gfs2_qadata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_quotad_cachep to i32))
  %6 = load ptr, ptr @gfs2_quotad_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_rgrpd_cachep to i32))
  %7 = load ptr, ptr @gfs2_rgrpd_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %8 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_inode_cachep to i32))
  %9 = load ptr, ptr @gfs2_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_glock_aspace_cachep to i32))
  %10 = load ptr, ptr @gfs2_glock_aspace_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_glock_cachep to i32))
  %11 = load ptr, ptr @gfs2_glock_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %11) #5
  tail call void @gfs2_sys_uninit() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_unregister_debugfs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_sys_uninit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_gfs2_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdot, i32 0, i32 1) to i32))
  store ptr @.str, ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdot, i32 0, i32 1), align 8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_qdot to i32))
  store i32 1, ptr @gfs2_qdot, align 8
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 1) #8
  %xor.i.i = xor i32 %call.i.i, -1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.anon.3, ptr @gfs2_qdot, i32 0, i32 1) to i32))
  store i32 %xor.i.i, ptr getelementptr inbounds (%struct.anon.3, ptr @gfs2_qdot, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdotdot, i32 0, i32 1) to i32))
  store ptr @.str.1, ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdotdot, i32 0, i32 1), align 8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_qdotdot to i32))
  store i32 2, ptr @gfs2_qdotdot, align 8
  %call.i.i80 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull @.str.1, i32 noundef 2) #8
  %xor.i.i81 = xor i32 %call.i.i80, -1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.anon.3, ptr @gfs2_qdotdot, i32 0, i32 1) to i32))
  store i32 %xor.i.i81, ptr getelementptr inbounds (%struct.anon.3, ptr @gfs2_qdotdot, i32 0, i32 1), align 4
  tail call void @gfs2_quota_hash_init() #9
  %call = tail call i32 @gfs2_sys_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__list_lru_init(ptr noundef nonnull @gfs2_qd_lru, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.fail_lru_crit_edge

if.end.fail_lru_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_lru

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @gfs2_glock_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.fail_glock_crit_edge

if.end4.fail_glock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_glock

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 448, i32 noundef 0, i32 noundef 131072, ptr noundef nonnull @gfs2_init_glock_once) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_glock_cachep to i32))
  store ptr %call9, ptr @gfs2_glock_cachep, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.fail_cachep1_crit_edge, label %if.end12

if.end8.fail_cachep1_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep1

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 788, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gfs2_init_gl_aspace_once) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_glock_aspace_cachep to i32))
  store ptr %call13, ptr @gfs2_glock_aspace_cachep, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.fail_cachep2_crit_edge, label %if.end16

if.end12.fail_cachep2_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep2

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 1072, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @gfs2_init_inode_once) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_inode_cachep to i32))
  store ptr %call17, ptr @gfs2_inode_cachep, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.fail_cachep3_crit_edge, label %if.end20

if.end16.fail_cachep3_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep3

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  store ptr %call21, ptr @gfs2_bufdata_cachep, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.fail_cachep4_crit_edge, label %if.end24

if.end20.fail_cachep4_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep4

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_rgrpd_cachep to i32))
  store ptr %call25, ptr @gfs2_rgrpd_cachep, align 4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.fail_cachep5_crit_edge, label %if.end28

if.end24.fail_cachep5_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep5

if.end28:                                         ; preds = %if.end24
  %call29 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.7, i32 noundef 192, i32 noundef 0, i32 noundef 131072, ptr noundef null) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_quotad_cachep to i32))
  store ptr %call29, ptr @gfs2_quotad_cachep, align 4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.fail_cachep6_crit_edge, label %if.end32

if.end28.fail_cachep6_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep6

if.end32:                                         ; preds = %if.end28
  %call33 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 152, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  store ptr %call33, ptr @gfs2_qadata_cachep, align 4
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.fail_cachep7_crit_edge, label %if.end36

if.end32.fail_cachep7_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep7

if.end36:                                         ; preds = %if.end32
  %call37 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.9, i32 noundef 84, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_trans_cachep to i32))
  store ptr %call37, ptr @gfs2_trans_cachep, align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.fail_cachep8_crit_edge, label %if.end40

if.end36.fail_cachep8_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_cachep8

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @register_shrinker(ptr noundef nonnull @gfs2_qd_shrinker) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.fail_shrinker_crit_edge

if.end40.fail_shrinker_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_shrinker

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @register_filesystem(ptr noundef nonnull @gfs2_fs_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.fail_fs1_crit_edge

if.end44.fail_fs1_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_fs1

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @register_filesystem(ptr noundef nonnull @gfs2meta_fs_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.fail_fs2_crit_edge

if.end48.fail_fs2_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_fs2

if.end52:                                         ; preds = %if.end48
  %call53 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 12, i32 noundef 0) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs_recovery_wq to i32))
  store ptr %call53, ptr @gfs_recovery_wq, align 4
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end52.fail_wq1_crit_edge, label %if.end56

if.end52.fail_wq1_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_wq1

if.end56:                                         ; preds = %if.end52
  %call57 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 0) #5
  store ptr %call57, ptr @gfs2_control_wq, align 4
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end56.fail_wq2_crit_edge, label %if.end60

if.end56.fail_wq2_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_wq2

if.end60:                                         ; preds = %if.end56
  %call61 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_freeze_wq to i32))
  store ptr %call61, ptr @gfs2_freeze_wq, align 4
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end60.fail_wq3_crit_edge, label %if.end64

if.end60.fail_wq3_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_wq3

if.end64:                                         ; preds = %if.end60
  %call.i82 = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  store ptr %call.i82, ptr @gfs2_page_pool, align 4
  %tobool66.not = icmp eq ptr %call.i82, null
  br i1 %tobool66.not, label %fail_mempool, label %if.end68

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gfs2_register_debugfs() #5
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

fail_mempool:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_freeze_wq to i32))
  %0 = load ptr, ptr @gfs2_freeze_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #5
  br label %fail_wq3

fail_wq3:                                         ; preds = %fail_mempool, %if.end60.fail_wq3_crit_edge
  %1 = load ptr, ptr @gfs2_control_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #5
  br label %fail_wq2

fail_wq2:                                         ; preds = %fail_wq3, %if.end56.fail_wq2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs_recovery_wq to i32))
  %2 = load ptr, ptr @gfs_recovery_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #5
  br label %fail_wq1

fail_wq1:                                         ; preds = %fail_wq2, %if.end52.fail_wq1_crit_edge
  %call70 = tail call i32 @unregister_filesystem(ptr noundef nonnull @gfs2meta_fs_type) #5
  br label %fail_fs2

fail_fs2:                                         ; preds = %fail_wq1, %if.end48.fail_fs2_crit_edge
  %error.0 = phi i32 [ %call49, %if.end48.fail_fs2_crit_edge ], [ -12, %fail_wq1 ]
  %call71 = tail call i32 @unregister_filesystem(ptr noundef nonnull @gfs2_fs_type) #5
  br label %fail_fs1

fail_fs1:                                         ; preds = %fail_fs2, %if.end44.fail_fs1_crit_edge
  %error.1 = phi i32 [ %call45, %if.end44.fail_fs1_crit_edge ], [ %error.0, %fail_fs2 ]
  tail call void @unregister_shrinker(ptr noundef nonnull @gfs2_qd_shrinker) #5
  br label %fail_shrinker

fail_shrinker:                                    ; preds = %fail_fs1, %if.end40.fail_shrinker_crit_edge
  %error.2 = phi i32 [ %call41, %if.end40.fail_shrinker_crit_edge ], [ %error.1, %fail_fs1 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_trans_cachep to i32))
  %3 = load ptr, ptr @gfs2_trans_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #5
  br label %fail_cachep8

fail_cachep8:                                     ; preds = %fail_shrinker, %if.end36.fail_cachep8_crit_edge
  %error.3 = phi i32 [ %error.2, %fail_shrinker ], [ -12, %if.end36.fail_cachep8_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %4 = load ptr, ptr @gfs2_qadata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #5
  br label %fail_cachep7

fail_cachep7:                                     ; preds = %fail_cachep8, %if.end32.fail_cachep7_crit_edge
  %error.4 = phi i32 [ %error.3, %fail_cachep8 ], [ -12, %if.end32.fail_cachep7_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_quotad_cachep to i32))
  %5 = load ptr, ptr @gfs2_quotad_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #5
  br label %fail_cachep6

fail_cachep6:                                     ; preds = %fail_cachep7, %if.end28.fail_cachep6_crit_edge
  %error.5 = phi i32 [ %error.4, %fail_cachep7 ], [ -12, %if.end28.fail_cachep6_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_rgrpd_cachep to i32))
  %6 = load ptr, ptr @gfs2_rgrpd_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #5
  br label %fail_cachep5

fail_cachep5:                                     ; preds = %fail_cachep6, %if.end24.fail_cachep5_crit_edge
  %error.6 = phi i32 [ %error.5, %fail_cachep6 ], [ -12, %if.end24.fail_cachep5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %7 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #5
  br label %fail_cachep4

fail_cachep4:                                     ; preds = %fail_cachep5, %if.end20.fail_cachep4_crit_edge
  %error.7 = phi i32 [ %error.6, %fail_cachep5 ], [ -12, %if.end20.fail_cachep4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_inode_cachep to i32))
  %8 = load ptr, ptr @gfs2_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #5
  br label %fail_cachep3

fail_cachep3:                                     ; preds = %fail_cachep4, %if.end16.fail_cachep3_crit_edge
  %error.8 = phi i32 [ %error.7, %fail_cachep4 ], [ -12, %if.end16.fail_cachep3_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_glock_aspace_cachep to i32))
  %9 = load ptr, ptr @gfs2_glock_aspace_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #5
  br label %fail_cachep2

fail_cachep2:                                     ; preds = %fail_cachep3, %if.end12.fail_cachep2_crit_edge
  %error.9 = phi i32 [ %error.8, %fail_cachep3 ], [ -12, %if.end12.fail_cachep2_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_glock_cachep to i32))
  %10 = load ptr, ptr @gfs2_glock_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #5
  br label %fail_cachep1

fail_cachep1:                                     ; preds = %fail_cachep2, %if.end8.fail_cachep1_crit_edge
  %error.10 = phi i32 [ %error.9, %fail_cachep2 ], [ -12, %if.end8.fail_cachep1_crit_edge ]
  tail call void @gfs2_glock_exit() #5
  br label %fail_glock

fail_glock:                                       ; preds = %fail_cachep1, %if.end4.fail_glock_crit_edge
  %error.11 = phi i32 [ %call5, %if.end4.fail_glock_crit_edge ], [ %error.10, %fail_cachep1 ]
  tail call void @list_lru_destroy(ptr noundef nonnull @gfs2_qd_lru) #5
  br label %fail_lru

fail_lru:                                         ; preds = %fail_glock, %if.end.fail_lru_crit_edge
  %error.12 = phi i32 [ %call1, %if.end.fail_lru_crit_edge ], [ %error.11, %fail_glock ]
  tail call void @gfs2_sys_uninit() #5
  br label %cleanup

cleanup:                                          ; preds = %fail_lru, %if.end68, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.12, %fail_lru ], [ 0, %if.end68 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @gfs2_quota_hash_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_sys_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @gfs2_glock_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_init_glock_once(ptr noundef %foo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_lockref = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %gl_lockref, ptr noundef nonnull @.str.16, ptr noundef nonnull @gfs2_init_glock_once.__key, i16 noundef signext 3) #5
  %gl_holders = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 6
  %0 = ptrtoint ptr %gl_holders to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %gl_holders, ptr %gl_holders, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gl_holders, ptr %prev.i, align 4
  %gl_lru = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 13
  %2 = ptrtoint ptr %gl_lru to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %gl_lru, ptr %gl_lru, align 4
  %prev.i7 = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %gl_lru, ptr %prev.i7, align 4
  %gl_ail_list = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 14
  %4 = ptrtoint ptr %gl_ail_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %gl_ail_list, ptr %gl_ail_list, align 4
  %prev.i8 = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %gl_ail_list, ptr %prev.i8, align 4
  %gl_ail_count = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_ail_count, i32 noundef 4) #5
  %6 = ptrtoint ptr %gl_ail_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %gl_ail_count, align 4
  %gl_revokes = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 16
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_revokes, i32 noundef 4) #5
  %7 = ptrtoint ptr %gl_revokes to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %gl_revokes, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_init_gl_aspace_once(ptr noundef %foo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.gfs2_glock, ptr %foo, i32 1
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %gl_lockref.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @gfs2_init_glock_once.__key, i16 noundef signext 3) #5
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 6
  %0 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %gl_holders.i, ptr %gl_holders.i, align 4
  %prev.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gl_holders.i, ptr %prev.i.i, align 4
  %gl_lru.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 13
  %2 = ptrtoint ptr %gl_lru.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %gl_lru.i, ptr %gl_lru.i, align 4
  %prev.i7.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %gl_lru.i, ptr %prev.i7.i, align 4
  %gl_ail_list.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 14
  %4 = ptrtoint ptr %gl_ail_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %gl_ail_list.i, ptr %gl_ail_list.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %gl_ail_list.i, ptr %prev.i8.i, align 4
  %gl_ail_count.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_ail_count.i, i32 noundef 4) #5
  %6 = ptrtoint ptr %gl_ail_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %gl_ail_count.i, align 4
  %gl_revokes.i = getelementptr inbounds %struct.gfs2_glock, ptr %foo, i32 0, i32 16
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_revokes.i, i32 noundef 4) #5
  %7 = ptrtoint ptr %gl_revokes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %gl_revokes.i, align 4
  tail call void @address_space_init_once(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_init_inode_once(ptr noundef %foo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inode_init_once(ptr noundef %foo) #5
  %i_sizehint = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_sizehint, i32 noundef 4) #5
  %0 = ptrtoint ptr %i_sizehint to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %i_sizehint, align 4
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 13
  tail call void @__init_rwsem(ptr noundef %i_rw_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @gfs2_init_inode_once.__key) #5
  %i_trunc_list = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 15
  %1 = ptrtoint ptr %i_trunc_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %i_trunc_list, ptr %i_trunc_list, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i_trunc_list, ptr %prev.i, align 4
  %i_ordered = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 14
  %3 = ptrtoint ptr %i_ordered to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %i_ordered, ptr %i_ordered, align 4
  %prev.i15 = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i_ordered, ptr %prev.i15, align 4
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 8
  %5 = ptrtoint ptr %i_qadata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %i_qadata, align 8
  %gh_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gh_gl.i, align 4
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 10
  %7 = call ptr @memset(ptr %i_res, i32 0, i32 32)
  %8 = ptrtoint ptr %i_res to i32
  %9 = ptrtoint ptr %i_res to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %i_res, align 8
  %i_hash_cache = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 16
  %10 = ptrtoint ptr %i_hash_cache to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %i_hash_cache, align 4
  %gh_gl.i16 = getelementptr inbounds %struct.gfs2_inode, ptr %foo, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %gh_gl.i16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %gh_gl.i16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_register_debugfs() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @address_space_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__UNIQUE_ID_description291, !1, !"__UNIQUE_ID_description291", i1 false, i1 false}
!1 = !{!"../fs/gfs2/main.c", i32 260, i32 1}
!2 = !{ptr @__UNIQUE_ID_author292, !3, !"__UNIQUE_ID_author292", i1 false, i1 false}
!3 = !{!"../fs/gfs2/main.c", i32 261, i32 1}
!4 = !{ptr @__UNIQUE_ID_file293, !5, !"__UNIQUE_ID_file293", i1 false, i1 false}
!5 = !{!"../fs/gfs2/main.c", i32 262, i32 1}
!6 = !{ptr @__UNIQUE_ID_license294, !5, !"__UNIQUE_ID_license294", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gfs2__295_264_init_gfs2_fs6, !8, !"__initcall__kmod_gfs2__295_264_init_gfs2_fs6", i1 false, i1 false}
!8 = !{!"../fs/gfs2/main.c", i32 264, i32 1}
!9 = !{ptr @__exitcall_exit_gfs2_fs, !10, !"__exitcall_exit_gfs2_fs", i1 false, i1 false}
!10 = !{!"../fs/gfs2/main.c", i32 265, i32 1}
!11 = !{ptr @gfs2_control_wq, !12, !"gfs2_control_wq", i1 false, i1 false}
!12 = !{!"../fs/gfs2/main.c", i32 32, i32 26}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/gfs2/main.c", i32 82, i32 28}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/gfs2/main.c", i32 83, i32 31}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/gfs2/main.c", i32 99, i32 40}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/gfs2/main.c", i32 106, i32 47}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/gfs2/main.c", i32 114, i32 40}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/gfs2/main.c", i32 123, i32 42}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/gfs2/main.c", i32 129, i32 40}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/gfs2/main.c", i32 135, i32 41}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/gfs2/main.c", i32 141, i32 41}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/gfs2/main.c", i32 147, i32 40}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/gfs2/main.c", i32 166, i32 36}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/gfs2/main.c", i32 171, i32 36}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/gfs2/main.c", i32 176, i32 35}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/gfs2/main.c", i32 187, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @init_gfs2_fs._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @init_gfs2_fs._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @gfs2_init_glock_once.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../fs/gfs2/main.c", i32 55, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gfs2_init_inode_once.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../fs/gfs2/main.c", i32 40, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
