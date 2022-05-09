; ModuleID = '/llk/IR_all_yes/fs/afs/xattr.c_pt.bc'
source_filename = "../fs/afs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.124, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.125, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.126, ptr, %struct.address_space, %struct.list_head, %union.anon.127, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.125 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.127 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.161, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%union.anon.161 = type { %struct.anon.170 }
%struct.anon.170 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_acl = type { i32, [0 x i8] }
%struct.afs_volume = type { %union.anon.152, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.152 = type { i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.afs_cell = type { %union.anon.151, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.151 = type { %struct.rb_node }
%struct.hlist_head = type { ptr }
%struct.yfs_acl = type { ptr, ptr, i32, i32, i32 }

@afs_xattr_afs_acl_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str, ptr null, i32 0, ptr null, ptr @afs_xattr_get_acl, ptr @afs_xattr_set_acl }, [40 x i8] zeroinitializer }, align 32
@afs_xattr_afs_cell_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.1, ptr null, i32 0, ptr null, ptr @afs_xattr_get_cell, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_xattr_afs_fid_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.2, ptr null, i32 0, ptr null, ptr @afs_xattr_get_fid, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_xattr_afs_volume_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.7, ptr null, i32 0, ptr null, ptr @afs_xattr_get_volume, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_xattr_yfs_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.8, i32 0, ptr null, ptr @afs_xattr_get_yfs, ptr @afs_xattr_set_yfs }, [40 x i8] zeroinitializer }, align 32
@afs_xattr_handlers = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @afs_xattr_afs_acl_handler, ptr @afs_xattr_afs_cell_handler, ptr @afs_xattr_afs_fid_handler, ptr @afs_xattr_afs_volume_handler, ptr @afs_xattr_yfs_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"afs.acl\00", [24 x i8] zeroinitializer }, align 32
@afs_fetch_acl_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_fetch_acl, ptr null, ptr @afs_acl_success, ptr null, ptr null, ptr null, ptr @afs_acl_put }, [36 x i8] zeroinitializer }, align 32
@afs_store_acl_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_store_acl, ptr null, ptr @afs_acl_success, ptr null, ptr null, ptr null, ptr @afs_acl_put }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afs.cell\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"afs.fid\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llx:\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%x%016llx\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llx\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c":%x\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afs.volume\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afs.yfs.\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acl_inherited\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"acl_num_cleaned\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vol_acl\00", [24 x i8] zeroinitializer }, align 32
@yfs_fetch_opaque_acl_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr null, ptr @yfs_fs_fetch_opaque_acl, ptr @afs_acl_success, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@yfs_store_opaque_acl2_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr null, ptr @yfs_fs_store_opaque_acl2, ptr @afs_acl_success, ptr null, ptr null, ptr null, ptr @afs_acl_put }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"afs_xattr_afs_acl_handler\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 123, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"afs_xattr_afs_cell_handler\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 286, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"afs_xattr_afs_fid_handler\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 325, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [29 x i8] c"afs_xattr_afs_volume_handler\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 351, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"afs_xattr_yfs_handler\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 259, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"afs_xattr_handlers\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 356, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 124, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"afs_fetch_acl_operation\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 27, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"afs_store_acl_operation\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 90, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 287, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 326, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 307, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 309, i32 52 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 312, i32 52 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 314, i32 51 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 352, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 260, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 149, i32 19 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 151, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 153, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 155, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"yfs_fetch_opaque_acl_operation\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 129, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 189, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"yfs_store_opaque_acl2_operation\00", align 1
@___asan_gen_.84 = private constant [18 x i8] c"../fs/afs/xattr.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 221, i32 39 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @afs_xattr_afs_acl_handler, ptr @afs_xattr_afs_cell_handler, ptr @afs_xattr_afs_fid_handler, ptr @afs_xattr_afs_volume_handler, ptr @afs_xattr_yfs_handler, ptr @afs_xattr_handlers, ptr @.str, ptr @afs_fetch_acl_operation, ptr @afs_store_acl_operation, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @yfs_fetch_opaque_acl_operation, ptr @.str.13, ptr @yfs_store_opaque_acl2_operation], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_xattr_afs_acl_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_xattr_afs_cell_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_xattr_afs_fid_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_xattr_afs_volume_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_xattr_yfs_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_xattr_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fetch_acl_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_store_acl_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_fetch_opaque_acl_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yfs_store_opaque_acl2_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_xattr_get_acl(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef writeonly %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 8
  %call1 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %1) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 5
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inode, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 5, i32 0, i32 6
  %3 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @afs_fetch_acl_operation, ptr %ops, align 4
  %call3 = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call1) #8
  tail call void @afs_wait_for_operation(ptr noundef %call1) #8
  %5 = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 17
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  store ptr null, ptr %5, align 8
  %call4 = tail call i32 @afs_put_operation(ptr noundef %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp7.not = icmp eq i32 %size, 0
  br i1 %cmp7.not, label %if.then5.if.end15_crit_edge, label %if.then8

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %size)
  %cmp10.not = icmp ugt i32 %9, %size
  br i1 %cmp10.not, label %if.then8.if.end15_crit_edge, label %if.then11

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.afs_acl, ptr %7, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %buffer, ptr %data, i32 %9)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then8.if.end15_crit_edge, %if.then5.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %ret.0 = phi i32 [ %9, %if.then11 ], [ %9, %if.then5.if.end15_crit_edge ], [ %call4, %if.end.if.end15_crit_edge ], [ -34, %if.then8.if.end15_crit_edge ]
  tail call void @kfree(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_xattr_set_acl(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dentry, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef readonly %buffer, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flags)
  %cmp = icmp eq i32 %flags, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 8
  %call1 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %1) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 5
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inode, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 5, i32 0, i32 6
  %3 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %add.i = add i32 %size, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %error.i.i = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 13
  %4 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -12, ptr %error.i.i, align 2
  %call7 = tail call i32 @afs_put_operation(ptr noundef %call1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %call9.i.i, align 128
  %data.i = getelementptr inbounds %struct.afs_acl, ptr %call9.i.i, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %data.i, ptr %buffer, i32 %size)
  %7 = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 17
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %7, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call1, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @afs_store_acl_operation, ptr %ops, align 4
  %call9 = tail call i32 @afs_do_sync_operation(ptr noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call7, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vnode_operation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_wait_for_operation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_put_operation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_fetch_acl(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_acl_success(ptr noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_acl_put(ptr nocapture noundef readonly %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @kfree(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_vnode_commit_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_do_sync_operation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_store_acl(ptr noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_xattr_get_cell(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef writeonly %buffer, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 8
  %cell1 = getelementptr inbounds %struct.afs_volume, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cell1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cell1, align 8
  %name_len = getelementptr inbounds %struct.afs_cell, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %name_len, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %size)
  %cmp3 = icmp ugt i32 %conv, %size
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name7 = getelementptr inbounds %struct.afs_cell, ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name7, align 8
  %8 = call ptr @memcpy(ptr %buffer, ptr %7, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end6 ], [ %conv, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_xattr_get_fid(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef writeonly %buffer, i32 noundef %size) #0 align 64 {
entry:
  %text = alloca [51 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 51, ptr nonnull %text) #8
  %0 = call ptr @memset(ptr %text, i32 255, i32 51)
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %1 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %fid, align 8
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %text, i32 noundef 51, ptr noundef nonnull @.str.3, i64 noundef %2) #8
  %vnode_hi = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %vnode_hi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vnode_hi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %add.ptr10 = getelementptr i8, ptr %text, i32 %call1
  %sub11 = sub i32 51, %call1
  %vnode13 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %vnode13 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %vnode13, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.4, i32 noundef %4, i64 noundef %6) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.5, i64 noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call8.pn = phi i32 [ %call8, %if.then ], [ %call14, %if.else ]
  %len.0 = add i32 %call8.pn, %call1
  %add.ptr17 = getelementptr i8, ptr %text, i32 %len.0
  %sub18 = sub i32 51, %len.0
  %unique = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %unique, align 4
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.6, i32 noundef %8) #8
  %add21 = add i32 %call20, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %size)
  %cmp24 = icmp ugt i32 %add21, %size
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buffer, ptr %text, i32 %add21)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %add21, %if.end26 ], [ %add21, %if.end.cleanup_crit_edge ], [ -34, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 51, ptr nonnull %text) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @afs_xattr_get_volume(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef writeonly %buffer, i32 noundef %size) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 8
  %name1 = getelementptr inbounds %struct.afs_volume, ptr %1, i32 0, i32 17
  %call2 = tail call i32 @strlen(ptr noundef %name1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %size)
  %cmp3 = icmp ugt i32 %call2, %size
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memcpy(ptr %buffer, ptr %name1, i32 %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_xattr_get_yfs(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %buffer, i32 noundef %size) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.end16.thread, label %if.else

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(14) @.str.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.else.if.end16_crit_edge, label %if.else5

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else5.if.end16_crit_edge, label %if.else9

if.else5.if.end16_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else9:                                         ; preds = %if.else5
  %call10 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end16.thread115, label %if.else9.cleanup_crit_edge

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.else5.if.end16_crit_edge, %if.else.if.end16_crit_edge
  %which.0 = phi i32 [ 1, %if.else.if.end16_crit_edge ], [ 2, %if.else5.if.end16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16.thread115:                               ; preds = %if.else9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i118 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not119 = icmp eq ptr %call7.i.i118, null
  br i1 %tobool.not119, label %if.end16.thread115.cleanup_crit_edge, label %if.end16.thread115.if.end28.sink.split_crit_edge

if.end16.thread115.if.end28.sink.split_crit_edge: ; preds = %if.end16.thread115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split

if.end16.thread115.cleanup_crit_edge:             ; preds = %if.end16.thread115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16.thread:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i101 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not102 = icmp eq ptr %call7.i.i101, null
  br i1 %tobool.not102, label %if.end16.thread.cleanup_crit_edge, label %if.end16.thread.if.end28.sink.split_crit_edge

if.end16.thread.if.end28.sink.split_crit_edge:    ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split

if.end16.thread.cleanup_crit_edge:                ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.sink.split:                              ; preds = %if.end16.thread.if.end28.sink.split_crit_edge, %if.end16.thread115.if.end28.sink.split_crit_edge
  %call7.i.i101.sink = phi ptr [ %call7.i.i101, %if.end16.thread.if.end28.sink.split_crit_edge ], [ %call7.i.i118, %if.end16.thread115.if.end28.sink.split_crit_edge ]
  %.sink128 = phi i32 [ 1, %if.end16.thread.if.end28.sink.split_crit_edge ], [ 2, %if.end16.thread115.if.end28.sink.split_crit_edge ]
  %which.0104113.ph = phi i32 [ 0, %if.end16.thread.if.end28.sink.split_crit_edge ], [ 3, %if.end16.thread115.if.end28.sink.split_crit_edge ]
  %flags = getelementptr inbounds %struct.yfs_acl, ptr %call7.i.i101.sink, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or26 = or i32 %5, %.sink128
  store i32 %or26, ptr %flags, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.end16.if.end28_crit_edge
  %which.0104113 = phi i32 [ %which.0, %if.end16.if.end28_crit_edge ], [ %which.0104113.ph, %if.end28.sink.split ]
  %call7.i.i106 = phi ptr [ %call7.i.i, %if.end16.if.end28_crit_edge ], [ %call7.i.i101.sink, %if.end28.sink.split ]
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %6 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %volume, align 8
  %call29 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %7) #8
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.error_yacl_crit_edge, label %if.end32

if.end28.error_yacl_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_yacl

if.end32:                                         ; preds = %if.end28
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call29, i32 0, i32 5
  %8 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %inode, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call29, i32 0, i32 5, i32 0, i32 6
  %9 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %10 = getelementptr inbounds %struct.afs_operation, ptr %call29, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i106, ptr %10, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call29, i32 0, i32 3
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @yfs_fetch_opaque_acl_operation, ptr %ops, align 4
  %call33 = tail call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call29) #8
  tail call void @afs_wait_for_operation(ptr noundef %call29) #8
  %call34 = tail call i32 @afs_put_operation(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.else60

if.then36:                                        ; preds = %if.end32
  %13 = zext i32 %which.0104113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %which.0104113, label %if.then36.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
    i32 2, label %sw.bb44
    i32 3, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call7.i.i106 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i106, align 8
  %data37 = getelementptr inbounds %struct.afs_acl, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %inherit_flag = getelementptr inbounds %struct.yfs_acl, ptr %call7.i.i106, i32 0, i32 2
  %18 = ptrtoint ptr %inherit_flag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inherit_flag, align 8
  %call43 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %19) #8
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %num_cleaned = getelementptr inbounds %struct.yfs_acl, ptr %call7.i.i106, i32 0, i32 3
  %20 = ptrtoint ptr %num_cleaned to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cleaned, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %21) #8
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %vol_acl = getelementptr inbounds %struct.yfs_acl, ptr %call7.i.i106, i32 0, i32 1
  %22 = ptrtoint ptr %vol_acl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vol_acl, align 4
  %data49 = getelementptr inbounds %struct.afs_acl, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  br label %sw.epilog

if.then36.unreachabledefault:                     ; preds = %if.then36
  unreachable

sw.epilog:                                        ; preds = %sw.bb48, %sw.bb44, %sw.bb40, %sw.bb
  %data.0 = phi ptr [ %data49, %sw.bb48 ], [ %buf, %sw.bb44 ], [ %buf, %sw.bb40 ], [ %data37, %sw.bb ]
  %dsize.0 = phi i32 [ %25, %sw.bb48 ], [ %call47, %sw.bb44 ], [ %call43, %sw.bb40 ], [ %17, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp53.not = icmp eq i32 %size, 0
  br i1 %cmp53.not, label %sw.epilog.error_yacl_crit_edge, label %if.then54

sw.epilog.error_yacl_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_yacl

if.then54:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp4(i32 %dsize.0, i32 %size)
  %cmp55.not = icmp ugt i32 %dsize.0, %size
  br i1 %cmp55.not, label %if.then54.error_yacl_crit_edge, label %if.then56

if.then54.error_yacl_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_yacl

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %26 = call ptr @memcpy(ptr %buffer, ptr %data.0, i32 %dsize.0)
  br label %error_yacl

if.else60:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call34)
  %cmp61 = icmp eq i32 %call34, -524
  %spec.store.select = select i1 %cmp61, i32 -61, i32 %call34
  br label %error_yacl

error_yacl:                                       ; preds = %if.else60, %if.then56, %if.then54.error_yacl_crit_edge, %sw.epilog.error_yacl_crit_edge, %if.end28.error_yacl_crit_edge
  %ret.0 = phi i32 [ -12, %if.end28.error_yacl_crit_edge ], [ %dsize.0, %if.then56 ], [ %dsize.0, %sw.epilog.error_yacl_crit_edge ], [ %spec.store.select, %if.else60 ], [ -34, %if.then54.error_yacl_crit_edge ]
  call void @yfs_free_opaque_acl(ptr noundef nonnull %call7.i.i106) #8
  br label %cleanup

cleanup:                                          ; preds = %error_yacl, %if.end16.thread.cleanup_crit_edge, %if.end16.thread115.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.else9.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.else9.cleanup_crit_edge ], [ %ret.0, %error_yacl ], [ -12, %if.end16.cleanup_crit_edge ], [ -12, %if.end16.thread.cleanup_crit_edge ], [ -12, %if.end16.thread115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_xattr_set_yfs(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dentry, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr nocapture noundef readonly %buffer, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flags)
  %cmp = icmp eq i32 %flags, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 8
  %call3 = tail call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %1) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %file.i = getelementptr inbounds %struct.afs_operation, ptr %call3, i32 0, i32 5
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inode, ptr %file.i, align 8
  %need_io_lock.i = getelementptr inbounds %struct.afs_operation, ptr %call3, i32 0, i32 5, i32 0, i32 6
  %3 = ptrtoint ptr %need_io_lock.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %need_io_lock.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %need_io_lock.i, align 1
  %add.i = add i32 %size, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %error.i.i = getelementptr inbounds %struct.afs_operation, ptr %call3, i32 0, i32 13
  %4 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -12, ptr %error.i.i, align 2
  %call9 = tail call i32 @afs_put_operation(ptr noundef %call3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %call9.i.i, align 128
  %data.i = getelementptr inbounds %struct.afs_acl, ptr %call9.i.i, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %data.i, ptr %buffer, i32 %size)
  %7 = getelementptr inbounds %struct.afs_operation, ptr %call3, i32 0, i32 17
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %7, align 8
  %ops = getelementptr inbounds %struct.afs_operation, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @yfs_store_opaque_acl2_operation, ptr %ops, align 4
  %call11 = tail call i32 @afs_do_sync_operation(ptr noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call11)
  %cmp12 = icmp eq i32 %call11, -524
  %spec.store.select = select i1 %cmp12, i32 -61, i32 %call11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end10 ], [ %call9, %if.then8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_free_opaque_acl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_fetch_opaque_acl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_store_opaque_acl2(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @afs_xattr_handlers, !1, !"afs_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/afs/xattr.c", i32 356, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/afs/xattr.c", i32 124, i32 12}
!4 = !{ptr @afs_xattr_afs_acl_handler, !5, !"afs_xattr_afs_acl_handler", i1 false, i1 false}
!5 = !{!"../fs/afs/xattr.c", i32 123, i32 35}
!6 = !{ptr @afs_fetch_acl_operation, !7, !"afs_fetch_acl_operation", i1 false, i1 false}
!7 = !{!"../fs/afs/xattr.c", i32 27, i32 39}
!8 = !{ptr @afs_store_acl_operation, !9, !"afs_store_acl_operation", i1 false, i1 false}
!9 = !{!"../fs/afs/xattr.c", i32 90, i32 39}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/xattr.c", i32 287, i32 10}
!12 = !{ptr @afs_xattr_afs_cell_handler, !13, !"afs_xattr_afs_cell_handler", i1 false, i1 false}
!13 = !{!"../fs/afs/xattr.c", i32 286, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/xattr.c", i32 326, i32 10}
!16 = !{ptr @afs_xattr_afs_fid_handler, !17, !"afs_xattr_afs_fid_handler", i1 false, i1 false}
!17 = !{!"../fs/afs/xattr.c", i32 325, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/xattr.c", i32 307, i32 38}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/afs/xattr.c", i32 309, i32 52}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/xattr.c", i32 312, i32 52}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/afs/xattr.c", i32 314, i32 51}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/afs/xattr.c", i32 352, i32 10}
!28 = !{ptr @afs_xattr_afs_volume_handler, !29, !"afs_xattr_afs_volume_handler", i1 false, i1 false}
!29 = !{!"../fs/afs/xattr.c", i32 351, i32 35}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/afs/xattr.c", i32 260, i32 12}
!32 = !{ptr @afs_xattr_yfs_handler, !33, !"afs_xattr_yfs_handler", i1 false, i1 false}
!33 = !{!"../fs/afs/xattr.c", i32 259, i32 35}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/afs/xattr.c", i32 149, i32 19}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/afs/xattr.c", i32 151, i32 24}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/afs/xattr.c", i32 153, i32 24}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/afs/xattr.c", i32 155, i32 24}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/afs/xattr.c", i32 189, i32 40}
!44 = !{ptr @yfs_fetch_opaque_acl_operation, !45, !"yfs_fetch_opaque_acl_operation", i1 false, i1 false}
!45 = !{!"../fs/afs/xattr.c", i32 129, i32 39}
!46 = !{ptr @yfs_store_opaque_acl2_operation, !47, !"yfs_store_opaque_acl2_operation", i1 false, i1 false}
!47 = !{!"../fs/afs/xattr.c", i32 221, i32 39}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
