; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_lease.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_lease.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_create_lease = type { i64, i32, i32, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_mode_list_lessees = type { i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_mode_get_lease = type { i32, i32, i64 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drm_lease_destroy %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/drm_lease.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"remove master %d from device list of lessees\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drm_lease_destroy done %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid flags\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"recursive leasing not allowed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lease object lookup failed: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Creating lease\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Allocating lease file\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Returning fd %d id %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drm_mode_create_lease_ioctl succeeded\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drm_mode_create_lease_ioctl failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"List lessees for %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Add lessee %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Lessor leases to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get lease for %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adding object %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lease holds %d objects\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"revoke lease for %d\0A\00", [43 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"revoke leases for %p %d\0A\00", [39 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid object for lease\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lease validation failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Adding object %d to lease\0A\00", [37 x i8] zeroinitializer }, align 32
@drm_lease_idr_object = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Object %d cannot be inserted into leases (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Object primary plane %d cannot be inserted into leases (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Object cursor plane %d cannot be inserted into leases (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lessor %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drm_master_create failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"object %d failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"new lessee %d %p, lessor %d %p\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 271, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 276, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 280, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 295, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 493, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 500, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 523, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 537, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 548, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 563, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 571, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 582, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 604, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 613, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 622, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 654, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 668, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 676, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 699, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 311, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 378, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 403, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 411, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 421, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"drm_lease_idr_object\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 72, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 433, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 442, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 449, i32 6 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 216, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 220, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 234, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [31 x i8] c"../drivers/gpu/drm/drm_lease.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 252, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @xa_init_flags.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @drm_lease_idr_object, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_lease_idr_object to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_lease_owner(ptr noundef readonly %master) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %master.addr.0 = phi ptr [ %master, %entry ], [ %1, %while.cond.while.cond_crit_edge ]
  %lessor = getelementptr inbounds %struct.drm_master, ptr %master.addr.0, i32 0, i32 6
  %0 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lessor, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  ret ptr %master.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @_drm_lease_held(ptr noundef %file_priv, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  %master = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master) #7
  %tobool.not = icmp eq ptr %file_priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @drm_file_get_master(ptr noundef nonnull %file_priv) #7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %master, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end3.if.end.i_crit_edge, label %land.rhs.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end3
  %dev.i = getelementptr inbounds %struct.drm_master, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %dep_map.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !75

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge
  %lessor.i = getelementptr inbounds %struct.drm_master, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %lessor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lessor.i, align 4
  %tobool24.not.i = icmp eq ptr %5, null
  br i1 %tobool24.not.i, label %if.end.i._drm_lease_held_master.exit_crit_edge, label %if.then25.i

if.end.i._drm_lease_held_master.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_drm_lease_held_master.exit

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %leases.i = getelementptr inbounds %struct.drm_master, ptr %call, i32 0, i32 10
  %call26.i = tail call ptr @idr_find(ptr noundef %leases.i, i32 noundef %id) #7
  %cmp27.i = icmp ne ptr %call26.i, null
  br label %_drm_lease_held_master.exit

_drm_lease_held_master.exit:                      ; preds = %if.then25.i, %if.end.i._drm_lease_held_master.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp27.i, %if.then25.i ], [ true, %if.end.i._drm_lease_held_master.exit_crit_edge ]
  call void @drm_master_put(ptr noundef nonnull %master) #7
  br label %cleanup

cleanup:                                          ; preds = %_drm_lease_held_master.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %retval.0.i, %_drm_lease_held_master.exit ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master) #7
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_file_get_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_master_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_lease_held(ptr noundef %file_priv, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  %master = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master) #7
  %tobool.not = icmp eq ptr %file_priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @drm_file_get_master(ptr noundef nonnull %file_priv) #7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %master, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lessor = getelementptr inbounds %struct.drm_master, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lessor, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.out_crit_edge, label %if.end6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.drm_master, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #7
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %land.rhs.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end6
  %dev.i = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %dep_map.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !75

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  %lessor.i = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %lessor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lessor.i, align 4
  %tobool24.not.i = icmp eq ptr %11, null
  br i1 %tobool24.not.i, label %if.end.i._drm_lease_held_master.exit_crit_edge, label %if.then25.i

if.end.i._drm_lease_held_master.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_drm_lease_held_master.exit

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %leases.i = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 10
  %call26.i = tail call ptr @idr_find(ptr noundef %leases.i, i32 noundef %id) #7
  %cmp27.i = icmp ne ptr %call26.i, null
  br label %_drm_lease_held_master.exit

_drm_lease_held_master.exit:                      ; preds = %if.then25.i, %if.end.i._drm_lease_held_master.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp27.i, %if.then25.i ], [ true, %if.end.i._drm_lease_held_master.exit_crit_edge ]
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %dev9 = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev9, align 4
  %idr_mutex11 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 3
  tail call void @mutex_unlock(ptr noundef %idr_mutex11) #7
  br label %out

out:                                              ; preds = %_drm_lease_held_master.exit, %if.end3.out_crit_edge
  %ret.0.off0 = phi i1 [ %retval.0.i, %_drm_lease_held_master.exit ], [ true, %if.end3.out_crit_edge ]
  call void @drm_master_put(ptr noundef nonnull %master) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %out ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_lease_filter_crtcs(ptr noundef %file_priv, i32 noundef %crtcs_in) local_unnamed_addr #1 align 64 {
entry:
  %master = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master) #7
  %tobool.not = icmp eq ptr %file_priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @drm_file_get_master(ptr noundef nonnull %file_priv) #7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %master, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lessor = getelementptr inbounds %struct.drm_master, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lessor, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.out_crit_edge, label %if.end6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %if.end3
  %dev7 = getelementptr inbounds %struct.drm_master, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev7, align 4
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #7
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 20
  %5 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn46 = load ptr, ptr %crtc_list, align 4
  %cmp.not47 = icmp eq ptr %.pn46, %crtc_list
  br i1 %cmp.not47, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %dev.i = getelementptr inbounds %struct.drm_master, ptr %7, i32 0, i32 1
  %lessor.i = getelementptr inbounds %struct.drm_master, ptr %7, i32 0, i32 6
  %leases.i = getelementptr inbounds %struct.drm_master, ptr %7, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %.pn52 = phi ptr [ %.pn46, %for.body.lr.ph ], [ %.pn, %if.end19.for.body_crit_edge ]
  %count_in.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %if.end19.for.body_crit_edge ]
  %count_out.049 = phi i32 [ 0, %for.body.lr.ph ], [ %count_out.1, %if.end19.for.body_crit_edge ]
  %crtcs_out.048 = phi i32 [ 0, %for.body.lr.ph ], [ %crtcs_out.2, %if.end19.for.body_crit_edge ]
  %base = getelementptr i8, ptr %.pn52, i32 120
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.rhs.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %for.body
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %dep_map.i = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 30, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !75

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %13 = ptrtoint ptr %lessor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lessor.i, align 4
  %tobool24.not.i = icmp eq ptr %14, null
  br i1 %tobool24.not.i, label %if.end.i.if.then14_crit_edge, label %_drm_lease_held_master.exit

if.end.i.if.then14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

_drm_lease_held_master.exit:                      ; preds = %if.end.i
  %call26.i = tail call ptr @idr_find(ptr noundef %leases.i, i32 noundef %9) #7
  %cmp27.i.not = icmp eq ptr %call26.i, null
  br i1 %cmp27.i.not, label %_drm_lease_held_master.exit.if.end19_crit_edge, label %_drm_lease_held_master.exit.if.then14_crit_edge

_drm_lease_held_master.exit.if.then14_crit_edge:  ; preds = %_drm_lease_held_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

_drm_lease_held_master.exit.if.end19_crit_edge:   ; preds = %_drm_lease_held_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14:                                        ; preds = %_drm_lease_held_master.exit.if.then14_crit_edge, %if.end.i.if.then14_crit_edge
  %shl = shl nuw i32 1, %count_in.051
  %and = and i32 %shl, %crtcs_in
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15.not = icmp eq i32 %and, 0
  %shl17 = shl nuw i32 1, %count_out.049
  %or = select i1 %cmp15.not, i32 0, i32 %shl17
  %crtcs_out.1 = or i32 %or, %crtcs_out.048
  %inc = add i32 %count_out.049, 1
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %_drm_lease_held_master.exit.if.end19_crit_edge
  %crtcs_out.2 = phi i32 [ %crtcs_out.1, %if.then14 ], [ %crtcs_out.048, %_drm_lease_held_master.exit.if.end19_crit_edge ]
  %count_out.1 = phi i32 [ %inc, %if.then14 ], [ %count_out.049, %_drm_lease_held_master.exit.if.end19_crit_edge ]
  %inc20 = add i32 %count_in.051, 1
  %15 = ptrtoint ptr %.pn52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn52, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %if.end6.for.end_crit_edge
  %crtcs_out.0.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %crtcs_out.2, %if.end19.for.end_crit_edge ]
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %dev26 = getelementptr inbounds %struct.drm_master, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev26, align 4
  %idr_mutex28 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 3
  tail call void @mutex_unlock(ptr noundef %idr_mutex28) #7
  br label %out

out:                                              ; preds = %for.end, %if.end3.out_crit_edge
  %crtcs_out.3 = phi i32 [ %crtcs_out.0.lcssa, %for.end ], [ %crtcs_in, %if.end3.out_crit_edge ]
  call void @drm_master_put(ptr noundef nonnull %master) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %crtcs_out.3, %out ], [ %crtcs_in, %entry.cleanup_crit_edge ], [ %crtcs_in, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_lease_destroy(ptr noundef %master) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #7
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 7
  %2 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lessee_id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str, i32 noundef %3) #7
  %lessees = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 9
  %4 = ptrtoint ptr %lessees to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lessees, align 4
  %cmp.i.not = icmp eq ptr %5, %lessees
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !76

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lessee_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.if.end28_crit_edge, label %if.then23

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then23:                                        ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.2, i32 noundef %7) #7
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then23
  %master.addr.0.i = phi ptr [ %master, %if.then23 ], [ %9, %while.cond.i.while.cond.i_crit_edge ]
  %lessor.i = getelementptr inbounds %struct.drm_master, ptr %master.addr.0.i, i32 0, i32 6
  %8 = ptrtoint ptr %lessor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lessor.i, align 4
  %cmp.not.i = icmp eq ptr %9, null
  br i1 %cmp.not.i, label %drm_lease_owner.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

drm_lease_owner.exit:                             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %lessee_idr = getelementptr inbounds %struct.drm_master, ptr %master.addr.0.i, i32 0, i32 11
  %10 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lessee_id, align 4
  %call27 = tail call ptr @idr_remove(ptr noundef %lessee_idr, i32 noundef %11) #7
  br label %if.end28

if.end28:                                         ; preds = %drm_lease_owner.exit, %if.end.if.end28_crit_edge
  %lessee_list = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lessee_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_del.exit_crit_edge

if.end28.list_del.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %lessee_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lessee_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end28.list_del.exit_crit_edge
  %18 = ptrtoint ptr %lessee_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %lessee_list, align 4
  %prev.i = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %idr_mutex) #7
  %lessor = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 6
  %20 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lessor, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %list_del.exit.if.end34_crit_edge, label %if.then32

list_del.exit.if.end34_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sysfs_lease_event(ptr noundef %1) #7
  tail call void @drm_master_put(ptr noundef %lessor) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %list_del.exit.if.end34_crit_edge
  %22 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lessee_id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef %23) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sysfs_lease_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_lease_revoke(ptr noundef %top) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_master, ptr %top, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #7
  tail call fastcc void @_drm_lease_revoke(ptr noundef %top)
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %idr_mutex3 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 3
  tail call void @mutex_unlock(ptr noundef %idr_mutex3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_drm_lease_revoke(ptr noundef %top) unnamed_addr #1 align 64 {
entry:
  %object = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %object) #7
  %0 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %object, align 4, !annotation !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.cond.preheader_crit_edge, label %land.rhs

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

land.rhs:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_master, ptr %top, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dep_map = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.for.cond.preheader_crit_edge, !prof !75

land.rhs.for.cond.preheader_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 304, i32 noundef 9, ptr noundef null) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end, %land.rhs.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.end51, %for.cond.preheader
  %master.0 = phi ptr [ %master.2, %if.end51 ], [ %top, %for.cond.preheader ]
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %master.0, i32 0, i32 7
  %4 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lessee_id, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %master.0, i32 noundef %5) #7
  %leases = getelementptr inbounds %struct.drm_master, ptr %master.0, i32 0, i32 10
  %6 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %object, align 4
  %call2669 = call ptr @idr_get_next(ptr noundef %leases, ptr noundef nonnull %object) #7
  %cmp27.not70 = icmp eq ptr %call2669, null
  br i1 %cmp27.not70, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.for.body_crit_edge
  %7 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %object, align 4
  %call29 = call ptr @idr_remove(ptr noundef %leases, i32 noundef %8) #7
  %9 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %object, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr %object, align 4
  %call26 = call ptr @idr_get_next(ptr noundef %leases, ptr noundef nonnull %object) #7
  %cmp27.not = icmp eq ptr %call26, null
  br i1 %cmp27.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %lessees = getelementptr inbounds %struct.drm_master, ptr %master.0, i32 0, i32 9
  %11 = ptrtoint ptr %lessees to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %lessees, align 4
  %cmp.i.not = icmp eq ptr %12, %lessees
  br i1 %cmp.i.not, label %for.end.while.cond_crit_edge, label %for.end.if.end51_crit_edge

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.end.while.cond_crit_edge:                     ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %land.rhs36.while.cond_crit_edge, %for.end.while.cond_crit_edge
  %master.1 = phi ptr [ %14, %land.rhs36.while.cond_crit_edge ], [ %master.0, %for.end.while.cond_crit_edge ]
  %cmp35.not = icmp eq ptr %master.1, %top
  br i1 %cmp35.not, label %for.end52, label %land.rhs36

land.rhs36:                                       ; preds = %while.cond
  %lessor = getelementptr inbounds %struct.drm_master, ptr %master.1, i32 0, i32 6
  %13 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lessor, align 4
  %prev = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev, align 4
  %add.ptr40 = getelementptr i8, ptr %16, i32 -88
  %cmp41 = icmp eq ptr %master.1, %add.ptr40
  br i1 %cmp41, label %land.rhs36.while.cond_crit_edge, label %if.end46

land.rhs36.while.cond_crit_edge:                  ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end46:                                         ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #9
  %lessee_list = getelementptr inbounds %struct.drm_master, ptr %master.1, i32 0, i32 8
  br label %if.end51

if.end51:                                         ; preds = %if.end46, %for.end.if.end51_crit_edge
  %.pn.in = phi ptr [ %lessee_list, %if.end46 ], [ %lessees, %for.end.if.end51_crit_edge ]
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %master.2 = getelementptr i8, ptr %.pn, i32 -88
  br label %for.cond

for.end52:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %object) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_create_lease_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %lessor_priv) local_unnamed_addr #1 align 64 {
entry:
  %lessee.i = alloca ptr, align 4
  %object.i = alloca i32, align 4
  %leases = alloca %struct.idr, align 4
  %lessor = alloca ptr, align 4
  %lessee = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %leases) #7
  %0 = call ptr @memset(ptr %leases, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lessor) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lessee) #7
  %1 = ptrtoint ptr %lessee to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %lessee, align 4
  %filp = getelementptr inbounds %struct.drm_file, ptr %lessor_priv, i32 0, i32 18
  %2 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filp, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %7, 2
  %and2.i.i = and i32 %and.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_mode_create_lease, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -526337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @drm_file_get_master(ptr noundef %lessor_priv) #7
  %12 = ptrtoint ptr %lessor to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %lessor, align 4
  %lessor6 = getelementptr inbounds %struct.drm_master, ptr %call5, i32 0, i32 6
  %13 = ptrtoint ptr %lessor6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lessor6, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.5) #7
  br label %out_lessor

if.end9:                                          ; preds = %if.end4
  %object_count10 = getelementptr inbounds %struct.drm_mode_create_lease, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %object_count10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %object_count10, align 8
  call void @__raw_spin_lock_init(ptr noundef nonnull %leases, ptr noundef nonnull @.str.20, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i = getelementptr inbounds %struct.xarray, ptr %leases, i32 0, i32 1
  %17 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.xarray, ptr %leases, i32 0, i32 2
  %18 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.idr, ptr %leases, i32 0, i32 1
  %19 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.idr, ptr %leases, i32 0, i32 2
  %20 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %idr_next.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %if.end9.if.end26_crit_edge, label %if.then11

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then11:                                        ; preds = %if.end9
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %data, align 8
  %conv15 = trunc i64 %22 to i32
  %23 = inttoptr i32 %conv15 to ptr
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #7
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  %retval.0.i = select i1 %25, i32 -1, i32 %26
  %call17 = call ptr @memdup_user(ptr noundef %23, i32 noundef %retval.0.i) #7
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call17 to i32
  call void @idr_destroy(ptr noundef nonnull %leases) #7
  br label %out_lessor

if.end21:                                         ; preds = %if.then11
  %universal_planes1.i = getelementptr inbounds %struct.drm_file, ptr %lessor_priv, i32 0, i32 2
  %28 = ptrtoint ptr %universal_planes1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %universal_planes1.i, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i = icmp ne i8 %29, 0
  br i1 %25, label %if.end21.fill_object_idr.exit.thread_crit_edge, label %if.end7.i.i.i, !prof !75

if.end21.fill_object_idr.exit.thread_crit_edge:   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_object_idr.exit.thread

if.end7.i.i.i:                                    ; preds = %if.end21
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #10
  %tobool4.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.i.fill_object_idr.exit.thread_crit_edge, label %if.end7.i.i.i.for.body.i_crit_edge

if.end7.i.i.i.for.body.i_crit_edge:               ; preds = %if.end7.i.i.i
  br label %for.body.i

if.end7.i.i.i.fill_object_idr.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_object_idr.exit.thread

for.cond.i:                                       ; preds = %if.end10.i
  %inc.i = add nuw i32 %o.0152.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end7.i.i.i.for.body.i_crit_edge
  %o.0152.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end7.i.i.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call17, i32 %o.0152.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %call5.i = call ptr @drm_mode_object_find(ptr noundef %dev, ptr noundef %lessor_priv, i32 noundef %31, i32 noundef 0) #7
  %arrayidx6.i = getelementptr ptr, ptr %call8.i.i.i, i32 %o.0152.i
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i, ptr %arrayidx6.i, align 4
  %tobool8.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool8.not.i, label %for.body.i.out_free_objects.i_crit_edge, label %if.end10.i

for.body.i.out_free_objects.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_objects.i

if.end10.i:                                       ; preds = %for.body.i
  %type.i = getelementptr inbounds %struct.drm_mode_object, ptr %call5.i, i32 0, i32 1
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 4
  %call12.i = call zeroext i1 @drm_mode_object_lease_required(i32 noundef %34) #7
  br i1 %call12.i, label %for.cond.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21) #7
  br label %out_free_objects.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.i.i = icmp sgt i32 %16, 0
  br i1 %cmp6.i.i, label %for.end.i.for.body.i.i_crit_edge, label %for.end.i.if.then18.i_crit_edge

for.end.i.if.then18.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %has_plane.010.i.i = phi i32 [ %has_plane.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %for.end.i.for.body.i.i_crit_edge ]
  %has_connector.09.i.i = phi i32 [ %has_connector.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %for.end.i.for.body.i.i_crit_edge ]
  %has_crtc.08.i.i = phi i32 [ %has_crtc.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %for.end.i.for.body.i.i_crit_edge ]
  %o.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %o.07.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.drm_mode_object, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -858993460, i32 %38)
  %cmp1.i.i = icmp eq i32 %38, -858993460
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %has_crtc.08.i.i)
  %cmp2.i.i = icmp eq i32 %has_crtc.08.i.i, -1
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp2.i.i, i1 false
  %has_crtc.1.i.i = select i1 %or.cond.i.i, i32 %o.07.i.i, i32 %has_crtc.08.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1061109568, i32 %38)
  %cmp5.i.i = icmp eq i32 %38, -1061109568
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %has_connector.09.i.i)
  %cmp7.i.i = icmp eq i32 %has_connector.09.i.i, -1
  %or.cond1.i.i = select i1 %cmp5.i.i, i1 %cmp7.i.i, i1 false
  %has_connector.1.i.i = select i1 %or.cond1.i.i, i32 %o.07.i.i, i32 %has_connector.09.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -286331154, i32 %38)
  %cmp13.i.i = icmp eq i32 %38, -286331154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %has_plane.010.i.i)
  %cmp15.i.i = icmp eq i32 %has_plane.010.i.i, -1
  %39 = select i1 %tobool.i, i1 %cmp13.i.i, i1 false
  %40 = select i1 %39, i1 %cmp15.i.i, i1 false
  %has_plane.1.i.i = select i1 %40, i32 %o.07.i.i, i32 %has_plane.010.i.i
  %inc.i.i = add nuw nsw i32 %o.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %16
  br i1 %exitcond.not.i.i, label %validate_lease.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

validate_lease.exit.i:                            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %has_crtc.1.i.i)
  %phi.cmp.i.i = icmp eq i32 %has_crtc.1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %has_connector.1.i.i)
  %phi.cmp13.i.i = icmp eq i32 %has_connector.1.i.i, -1
  %phi.sel.i.i = select i1 %phi.cmp.i.i, i1 true, i1 %phi.cmp13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %has_plane.1.i.i)
  %phi.cmp14.i.i = icmp eq i32 %has_plane.1.i.i, -1
  %or.cond4.i.i = select i1 %tobool.i, i1 %phi.cmp14.i.i, i1 false
  %or.cond5.i.i = select i1 %phi.sel.i.i, i1 true, i1 %or.cond4.i.i
  br i1 %or.cond5.i.i, label %validate_lease.exit.i.if.then18.i_crit_edge, label %validate_lease.exit.i.for.body22.i_crit_edge

validate_lease.exit.i.for.body22.i_crit_edge:     ; preds = %validate_lease.exit.i
  br label %for.body22.i

validate_lease.exit.i.if.then18.i_crit_edge:      ; preds = %validate_lease.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

if.then18.i:                                      ; preds = %validate_lease.exit.i.if.then18.i_crit_edge, %for.end.i.if.then18.i_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.22) #7
  br label %out_free_objects.i

for.body22.i:                                     ; preds = %for.inc62.i.for.body22.i_crit_edge, %validate_lease.exit.i.for.body22.i_crit_edge
  %o.1154.i = phi i32 [ %inc63.i, %for.inc62.i.for.body22.i_crit_edge ], [ 0, %validate_lease.exit.i.for.body22.i_crit_edge ]
  %arrayidx23.i = getelementptr ptr, ptr %call8.i.i.i, i32 %o.1154.i
  %41 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx23.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.23, i32 noundef %44) #7
  %add.i = add i32 %44, 1
  %call25.i = call i32 @idr_alloc(ptr noundef nonnull %leases, ptr noundef nonnull @drm_lease_idr_object, i32 noundef %44, i32 noundef %add.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.24, i32 noundef %44, i32 noundef %call25.i) #7
  br label %out_free_objects.i

if.end28.i:                                       ; preds = %for.body22.i
  %type29.i = getelementptr inbounds %struct.drm_mode_object, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %type29.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -858993460, i32 %46)
  %cmp30.i = icmp ne i32 %46, -858993460
  %brmerge.i = select i1 %cmp30.i, i1 true, i1 %tobool.i
  br i1 %brmerge.i, label %if.end28.i.for.inc62.i_crit_edge, label %if.then32.i

if.end28.i.for.inc62.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62.i

if.then32.i:                                      ; preds = %if.end28.i
  %primary.i = getelementptr i8, ptr %42, i32 20
  %47 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %primary.i, align 4
  %base.i = getelementptr inbounds %struct.drm_plane, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base.i, align 4
  %add38.i = add i32 %50, 1
  %call39.i = call i32 @idr_alloc(ptr noundef nonnull %leases, ptr noundef nonnull @drm_lease_idr_object, i32 noundef %50, i32 noundef %add38.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.25, i32 noundef %44, i32 noundef %call39.i) #7
  br label %out_free_objects.i

if.end42.i:                                       ; preds = %if.then32.i
  %cursor.i = getelementptr i8, ptr %42, i32 24
  %51 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cursor.i, align 8
  %tobool43.not.i = icmp eq ptr %52, null
  br i1 %tobool43.not.i, label %if.end42.i.for.inc62.i_crit_edge, label %if.then44.i

if.end42.i.for.inc62.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62.i

if.then44.i:                                      ; preds = %if.end42.i
  %base46.i = getelementptr inbounds %struct.drm_plane, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %base46.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base46.i, align 4
  %add51.i = add i32 %54, 1
  %call52.i = call i32 @idr_alloc(ptr noundef nonnull %leases, ptr noundef nonnull @drm_lease_idr_object, i32 noundef %54, i32 noundef %add51.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %if.then54.i, label %if.then44.i.for.inc62.i_crit_edge

if.then44.i.for.inc62.i_crit_edge:                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62.i

if.then54.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.26, i32 noundef %44, i32 noundef %call52.i) #7
  br label %out_free_objects.i

for.inc62.i:                                      ; preds = %if.then44.i.for.inc62.i_crit_edge, %if.end42.i.for.inc62.i_crit_edge, %if.end28.i.for.inc62.i_crit_edge
  %inc63.i = add nuw nsw i32 %o.1154.i, 1
  %exitcond165.not.i = icmp eq i32 %inc63.i, %16
  br i1 %exitcond165.not.i, label %for.inc62.i.out_free_objects.i_crit_edge, label %for.inc62.i.for.body22.i_crit_edge

for.inc62.i.for.body22.i_crit_edge:               ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22.i

for.inc62.i.out_free_objects.i_crit_edge:         ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_objects.i

out_free_objects.i:                               ; preds = %for.inc62.i.out_free_objects.i_crit_edge, %if.then54.i, %if.then41.i, %if.then27.i, %if.then18.i, %if.then13.i, %for.body.i.out_free_objects.i_crit_edge
  %ret.4.i = phi i32 [ -22, %if.then13.i ], [ -22, %if.then18.i ], [ %call52.i, %if.then54.i ], [ %call39.i, %if.then41.i ], [ %call25.i, %if.then27.i ], [ 0, %for.inc62.i.out_free_objects.i_crit_edge ], [ -2, %for.body.i.out_free_objects.i_crit_edge ]
  br label %for.body67.i

for.body67.i:                                     ; preds = %for.inc73.i.for.body67.i_crit_edge, %out_free_objects.i
  %o.2156.i = phi i32 [ %inc74.i, %for.inc73.i.for.body67.i_crit_edge ], [ 0, %out_free_objects.i ]
  %arrayidx68.i = getelementptr ptr, ptr %call8.i.i.i, i32 %o.2156.i
  %55 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx68.i, align 4
  %tobool69.not.i = icmp eq ptr %56, null
  br i1 %tobool69.not.i, label %for.body67.i.for.inc73.i_crit_edge, label %if.then70.i

for.body67.i.for.inc73.i_crit_edge:               ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc73.i

if.then70.i:                                      ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_mode_object_put(ptr noundef nonnull %56) #7
  br label %for.inc73.i

for.inc73.i:                                      ; preds = %if.then70.i, %for.body67.i.for.inc73.i_crit_edge
  %inc74.i = add nuw i32 %o.2156.i, 1
  %exitcond166.not.i = icmp eq i32 %inc74.i, %16
  br i1 %exitcond166.not.i, label %fill_object_idr.exit, label %for.inc73.i.for.body67.i_crit_edge

for.inc73.i.for.body67.i_crit_edge:               ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body67.i

fill_object_idr.exit.thread:                      ; preds = %if.end7.i.i.i.fill_object_idr.exit.thread_crit_edge, %if.end21.fill_object_idr.exit.thread_crit_edge
  call void @kfree(ptr noundef %call17) #7
  br label %if.then24

fill_object_idr.exit:                             ; preds = %for.inc73.i
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  call void @kfree(ptr noundef %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i)
  %tobool23.not = icmp eq i32 %ret.4.i, 0
  br i1 %tobool23.not, label %fill_object_idr.exit.if.end26_crit_edge, label %fill_object_idr.exit.if.then24_crit_edge

fill_object_idr.exit.if.then24_crit_edge:         ; preds = %fill_object_idr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

fill_object_idr.exit.if.end26_crit_edge:          ; preds = %fill_object_idr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %fill_object_idr.exit.if.then24_crit_edge, %fill_object_idr.exit.thread
  %retval.0.i87100 = phi i32 [ -12, %fill_object_idr.exit.thread ], [ %ret.4.i, %fill_object_idr.exit.if.then24_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i87100) #7
  call void @idr_destroy(ptr noundef nonnull %leases) #7
  br label %out_lessor

if.end26:                                         ; preds = %fill_object_idr.exit.if.end26_crit_edge, %if.end9.if.end26_crit_edge
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %and28 = and i32 %58, 526336
  %call29 = call i32 @get_unused_fd_flags(i32 noundef %and28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void @idr_destroy(ptr noundef nonnull %leases) #7
  br label %out_lessor

if.end33:                                         ; preds = %if.end26
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.7) #7
  %59 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lessor, align 4
  %dev1.i = getelementptr inbounds %struct.drm_master, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lessee.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %object.i) #7
  %lessee_id.i = getelementptr inbounds %struct.drm_master, ptr %60, i32 0, i32 7
  %63 = ptrtoint ptr %lessee_id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lessee_id.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.27, i32 noundef %64) #7
  %65 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1.i, align 4
  %call.i = call ptr @drm_master_create(ptr noundef %66) #7
  %67 = ptrtoint ptr %lessee.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %lessee.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %drm_lease_create.exit.thread, label %if.end.i

drm_lease_create.exit.thread:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.28) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %object.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lessee.i) #7
  %68 = ptrtoint ptr %lessee to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -12 to ptr), ptr %lessee, align 4
  br label %if.then36

if.end.i:                                         ; preds = %if.end33
  %idr_mutex.i = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 30, i32 3
  call void @mutex_lock_nested(ptr noundef %idr_mutex.i, i32 noundef 0) #7
  %69 = ptrtoint ptr %object.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %object.i, align 4
  %call565.i = call ptr @idr_get_next(ptr noundef nonnull %leases, ptr noundef nonnull %object.i) #7
  %cmp.not66.i = icmp eq ptr %call565.i, null
  br i1 %cmp.not66.i, label %if.end.i.while.cond.i.i.preheader_crit_edge, label %for.body.lr.ph.i

if.end.i.while.cond.i.i.preheader_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.preheader

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %object_idr.i = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 30, i32 4
  %lessees.i.i = getelementptr inbounds %struct.drm_master, ptr %60, i32 0, i32 9
  br label %for.body.i89

for.body.i89:                                     ; preds = %for.inc.i.for.body.i89_crit_edge, %for.body.lr.ph.i
  %70 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %object.i, align 4
  %call7.i = call ptr @idr_find(ptr noundef %object_idr.i, i32 noundef %71) #7
  %tobool8.not.i88 = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i88, label %for.body.i89.if.then15.i_crit_edge, label %if.else.i

for.body.i89.if.then15.i_crit_edge:               ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.else.i:                                        ; preds = %for.body.i89
  %72 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %object.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %74 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i, label %if.else.i.for.cond.i.i.preheader_crit_edge, label %land.rhs.i.i

if.else.i.for.cond.i.i.preheader_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

land.rhs.i.i:                                     ; preds = %if.else.i
  %75 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev1.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.drm_device, ptr %76, i32 0, i32 30, i32 3, i32 5
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, !prof !75

land.rhs.i.i.for.cond.i.i.preheader_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.preheader

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %do.end.i.i, %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, %if.else.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %_drm_lease_held_master.exit.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %_drm_lease_held_master.exit.i.i.for.cond.i.i_crit_edge ], [ %lessees.i.i, %for.cond.i.i.preheader ]
  %77 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %.pn.i.i, %lessees.i.i
  br i1 %cmp26.not.i.i, label %for.inc.i, label %for.body.i.i90

for.body.i.i90:                                   ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %78 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i90.if.end.i.i.i91_crit_edge, label %land.rhs.i.i.i

for.body.i.i90.if.end.i.i.i91_crit_edge:          ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i91

land.rhs.i.i.i:                                   ; preds = %for.body.i.i90
  %dev.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 -84
  %79 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 30, i32 3, i32 5
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i91_crit_edge, !prof !75

land.rhs.i.i.i.if.end.i.i.i91_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i91

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i.i91

if.end.i.i.i91:                                   ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i91_crit_edge, %for.body.i.i90.if.end.i.i.i91_crit_edge
  %lessor.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %81 = ptrtoint ptr %lessor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lessor.i.i.i, align 4
  %tobool24.not.i.i.i = icmp eq ptr %82, null
  br i1 %tobool24.not.i.i.i, label %if.end.i.i.i91.if.then15.i_crit_edge, label %_drm_lease_held_master.exit.i.i

if.end.i.i.i91.if.then15.i_crit_edge:             ; preds = %if.end.i.i.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

_drm_lease_held_master.exit.i.i:                  ; preds = %if.end.i.i.i91
  %leases.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 16
  %call26.i.i.i = call ptr @idr_find(ptr noundef %leases.i.i.i, i32 noundef %73) #7
  %cmp27.i.not.i.i = icmp eq ptr %call26.i.i.i, null
  br i1 %cmp27.i.not.i.i, label %_drm_lease_held_master.exit.i.i.for.cond.i.i_crit_edge, label %_drm_lease_held_master.exit.i.i.if.then15.i_crit_edge

_drm_lease_held_master.exit.i.i.if.then15.i_crit_edge: ; preds = %_drm_lease_held_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

_drm_lease_held_master.exit.i.i.for.cond.i.i_crit_edge: ; preds = %_drm_lease_held_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then15.i:                                      ; preds = %_drm_lease_held_master.exit.i.i.if.then15.i_crit_edge, %if.end.i.i.i91.if.then15.i_crit_edge, %for.body.i89.if.then15.i_crit_edge
  %error.060.i = phi i32 [ -16, %if.end.i.i.i91.if.then15.i_crit_edge ], [ -16, %_drm_lease_held_master.exit.i.i.if.then15.i_crit_edge ], [ -2, %for.body.i89.if.then15.i_crit_edge ]
  %83 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %object.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.29, i32 noundef %84, i32 noundef %error.060.i) #7
  br label %out_lessee.i

for.inc.i:                                        ; preds = %for.cond.i.i
  %85 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %object.i, align 4
  %add.i92 = add i32 %86, 1
  store i32 %add.i92, ptr %object.i, align 4
  %call5.i93 = call ptr @idr_get_next(ptr noundef nonnull %leases, ptr noundef nonnull %object.i) #7
  %cmp.not.i = icmp eq ptr %call5.i93, null
  br i1 %cmp.not.i, label %for.inc.i.while.cond.i.i.preheader_crit_edge, label %for.inc.i.for.body.i89_crit_edge

for.inc.i.for.body.i89_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i89

for.inc.i.while.cond.i.i.preheader_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %for.inc.i.while.cond.i.i.preheader_crit_edge, %if.end.i.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %master.addr.0.i.i = phi ptr [ %88, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %60, %while.cond.i.i.preheader ]
  %lessor.i.i = getelementptr inbounds %struct.drm_master, ptr %master.addr.0.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %lessor.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lessor.i.i, align 4
  %cmp.not.i55.i = icmp eq ptr %88, null
  br i1 %cmp.not.i55.i, label %drm_lease_owner.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

drm_lease_owner.exit.i:                           ; preds = %while.cond.i.i
  %lessee_idr.i = getelementptr inbounds %struct.drm_master, ptr %master.addr.0.i.i, i32 0, i32 11
  %89 = ptrtoint ptr %lessee.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lessee.i, align 4
  %call18.i = call i32 @idr_alloc(ptr noundef %lessee_idr.i, ptr noundef %90, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %drm_lease_owner.exit.i.out_lessee.i_crit_edge, label %if.end21.i

drm_lease_owner.exit.i.out_lessee.i_crit_edge:    ; preds = %drm_lease_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_lessee.i

if.end21.i:                                       ; preds = %drm_lease_owner.exit.i
  %91 = ptrtoint ptr %lessee.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lessee.i, align 4
  %lessee_id22.i = getelementptr inbounds %struct.drm_master, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %lessee_id22.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call18.i, ptr %lessee_id22.i, align 4
  %call23.i = call ptr @drm_master_get(ptr noundef %60) #7
  %lessor24.i = getelementptr inbounds %struct.drm_master, ptr %92, i32 0, i32 6
  %94 = ptrtoint ptr %lessor24.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call23.i, ptr %lessor24.i, align 4
  %lessee_list.i = getelementptr inbounds %struct.drm_master, ptr %92, i32 0, i32 8
  %lessees.i = getelementptr inbounds %struct.drm_master, ptr %60, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.drm_master, ptr %60, i32 0, i32 9, i32 1
  %95 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i, align 4
  %call.i.i56.i = call zeroext i1 @__list_add_valid(ptr noundef %lessee_list.i, ptr noundef %96, ptr noundef %lessees.i) #7
  br i1 %call.i.i56.i, label %if.end.i.i57.i, label %if.end21.i.list_add_tail.exit.i_crit_edge

if.end21.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i57.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %lessee_list.i, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %lessee_list.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %lessees.i, ptr %lessee_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.drm_master, ptr %92, i32 0, i32 8, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %lessee_list.i, ptr %96, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i57.i, %if.end21.i.list_add_tail.exit.i_crit_edge
  %101 = ptrtoint ptr %lessee.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lessee.i, align 4
  %leases25.i = getelementptr inbounds %struct.drm_master, ptr %102, i32 0, i32 10
  %103 = call ptr @memcpy(ptr %leases25.i, ptr %leases, i32 60)
  %lessee_id26.i = getelementptr inbounds %struct.drm_master, ptr %102, i32 0, i32 7
  %104 = ptrtoint ptr %lessee_id26.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lessee_id26.i, align 4
  %106 = ptrtoint ptr %lessee_id.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lessee_id.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.30, i32 noundef %105, ptr noundef %102, i32 noundef %107, ptr noundef %60) #7
  call void @mutex_unlock(ptr noundef %idr_mutex.i) #7
  br label %drm_lease_create.exit

out_lessee.i:                                     ; preds = %drm_lease_owner.exit.i.out_lessee.i_crit_edge, %if.then15.i
  %error.1.i = phi i32 [ %error.060.i, %if.then15.i ], [ %call18.i, %drm_lease_owner.exit.i.out_lessee.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %idr_mutex.i) #7
  call void @drm_master_put(ptr noundef nonnull %lessee.i) #7
  %108 = inttoptr i32 %error.1.i to ptr
  br label %drm_lease_create.exit

drm_lease_create.exit:                            ; preds = %out_lessee.i, %list_add_tail.exit.i
  %retval.0.i94 = phi ptr [ %108, %out_lessee.i ], [ %102, %list_add_tail.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %object.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lessee.i) #7
  %109 = ptrtoint ptr %lessee to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %retval.0.i94, ptr %lessee, align 4
  %cmp.i95 = icmp ugt ptr %retval.0.i94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %drm_lease_create.exit.if.then36_crit_edge, label %if.end38

drm_lease_create.exit.if.then36_crit_edge:        ; preds = %drm_lease_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then36:                                        ; preds = %drm_lease_create.exit.if.then36_crit_edge, %drm_lease_create.exit.thread
  %retval.0.i94103 = phi ptr [ inttoptr (i32 -12 to ptr), %drm_lease_create.exit.thread ], [ %retval.0.i94, %drm_lease_create.exit.if.then36_crit_edge ]
  call void @idr_destroy(ptr noundef nonnull %leases) #7
  br label %out_leases

if.end38:                                         ; preds = %drm_lease_create.exit
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.8) #7
  %f_path.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1
  %f_flags.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 7
  %110 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %f_flags.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %112 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %f_cred.i, align 8
  %call.i96 = call ptr @dentry_open(ptr noundef %f_path.i, i32 noundef %111, ptr noundef %113) #7
  %cmp.i97 = icmp ugt ptr %call.i96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_master_put(ptr noundef nonnull %lessee) #7
  br label %out_leases

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %call.i96, i32 0, i32 16
  %114 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %private_data, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %115, i32 0, i32 8
  call void @drm_master_put(ptr noundef %master) #7
  %116 = ptrtoint ptr %lessee to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %lessee, align 4
  %118 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %master, align 4
  %is_master = getelementptr inbounds %struct.drm_file, ptr %115, i32 0, i32 7
  %119 = ptrtoint ptr %is_master to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %is_master, align 1
  %120 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %115, align 4
  %121 = load ptr, ptr %lessee, align 4
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %121, i32 0, i32 7
  %122 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %lessee_id, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.9, i32 noundef %call29, i32 noundef %123) #7
  %fd45 = getelementptr inbounds %struct.drm_mode_create_lease, ptr %data, i32 0, i32 4
  %124 = ptrtoint ptr %fd45 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call29, ptr %fd45, align 4
  %125 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %lessee_id, align 4
  %lessee_id47 = getelementptr inbounds %struct.drm_mode_create_lease, ptr %data, i32 0, i32 3
  %127 = ptrtoint ptr %lessee_id47 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %lessee_id47, align 8
  call void @fd_install(i32 noundef %call29, ptr noundef %call.i96) #7
  call void @drm_master_put(ptr noundef nonnull %lessor) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.10) #7
  br label %cleanup

out_leases:                                       ; preds = %if.then41, %if.then36
  %ret.0.in = phi ptr [ %retval.0.i94103, %if.then36 ], [ %call.i96, %if.then41 ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  call void @put_unused_fd(i32 noundef %call29) #7
  br label %out_lessor

out_lessor:                                       ; preds = %out_leases, %if.then32, %if.then24, %if.then19, %if.then8
  %ret.1 = phi i32 [ -22, %if.then8 ], [ %27, %if.then19 ], [ %retval.0.i87100, %if.then24 ], [ %call29, %if.then32 ], [ %ret.0, %out_leases ]
  call void @drm_master_put(ptr noundef nonnull %lessor) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.11, i32 noundef %ret.1) #7
  br label %cleanup

cleanup:                                          ; preds = %out_lessor, %if.end43, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ %ret.1, %out_lessor ], [ 0, %if.end43 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lessee) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lessor) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %leases) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_list_lessees_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %lessor_priv) local_unnamed_addr #1 align 64 {
entry:
  %lessor = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lessees_ptr = getelementptr inbounds %struct.drm_mode_list_lessees, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %lessees_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lessees_ptr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lessor) #7
  %pad = getelementptr inbounds %struct.drm_mode_list_lessees, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %11 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %10, 2
  %and2.i.i = and i32 %and.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @drm_file_get_master(ptr noundef %lessor_priv) #7
  %13 = ptrtoint ptr %lessor to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4, ptr %lessor, align 4
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %call4, i32 0, i32 7
  %14 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lessee_id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.12, i32 noundef %15) #7
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #7
  %lessees = getelementptr inbounds %struct.drm_master, ptr %call4, i32 0, i32 9
  %16 = ptrtoint ptr %lessees to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn62 = load ptr, ptr %lessees, align 4
  %cmp.not63 = icmp eq ptr %.pn62, %lessees
  br i1 %cmp.not63, label %if.end3.if.then30_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.if.then30_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn66 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn62, %if.end3.for.body_crit_edge ]
  %count.064 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %xa_head.i.i = getelementptr i8, ptr %.pn66, i32 64
  %17 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i56 = icmp eq ptr %18, null
  br i1 %cmp.i.i56, label %idr_is_empty.exit, label %for.body.if.then8_crit_edge

for.body.if.then8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

idr_is_empty.exit:                                ; preds = %for.body
  %leases = getelementptr i8, ptr %.pn66, i32 16
  %call2.i = tail call i32 @radix_tree_tagged(ptr noundef %leases, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.i.not, label %idr_is_empty.exit.if.then8_crit_edge, label %idr_is_empty.exit.for.inc_crit_edge

idr_is_empty.exit.for.inc_crit_edge:              ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

idr_is_empty.exit.if.then8_crit_edge:             ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %idr_is_empty.exit.if.then8_crit_edge, %for.body.if.then8_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %count.064)
  %cmp9 = icmp ugt i32 %4, %count.064
  br i1 %cmp9, label %if.then11, label %if.then8.if.end21_crit_edge

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11:                                        ; preds = %if.then8
  %lessee_id12 = getelementptr i8, ptr %.pn66, i32 -4
  %19 = ptrtoint ptr %lessee_id12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lessee_id12, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.13, i32 noundef %20) #7
  %add.ptr13 = getelementptr i32, ptr %2, i32 %count.064
  %21 = ptrtoint ptr %lessee_id12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lessee_id12, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 614) #7
  %23 = tail call i32 @llvm.read_register.i32(metadata !65) #7
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !79
  %and.i = and i32 %25, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr13, i32 %22, i32 -1226833921) #7, !srcloc !82
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #7, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not = icmp eq i32 %26, 0
  br i1 %tobool18.not, label %if.then11.if.end21_crit_edge, label %for.end

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.then11.if.end21_crit_edge, %if.then8.if.end21_crit_edge
  %inc = add i32 %count.064, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %idr_is_empty.exit.for.inc_crit_edge
  %count.1 = phi i32 [ %count.064, %idr_is_empty.exit.for.inc_crit_edge ], [ %inc, %if.end21 ]
  %27 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn66, align 4
  %cmp.not = icmp eq ptr %.pn, %lessees
  br i1 %cmp.not, label %for.inc.if.then30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

for.end:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.14, i32 noundef %count.064) #7
  br label %if.end32

if.then30:                                        ; preds = %for.inc.if.then30_crit_edge, %if.end3.if.then30_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end3.if.then30_crit_edge ], [ %count.1, %for.inc.if.then30_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.14, i32 noundef %count.0.lcssa) #7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %count.0.lcssa, ptr %data, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end
  %ret.359 = phi i32 [ 0, %if.then30 ], [ %26, %for.end ]
  tail call void @mutex_unlock(ptr noundef %idr_mutex) #7
  call void @drm_master_put(ptr noundef nonnull %lessor) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.359, %if.end32 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lessor) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_get_lease_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %lessee_priv) local_unnamed_addr #1 align 64 {
entry:
  %lessee = alloca ptr, align 4
  %object = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %objects_ptr = getelementptr inbounds %struct.drm_mode_get_lease, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %objects_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %objects_ptr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lessee) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %object) #7
  %pad = getelementptr inbounds %struct.drm_mode_get_lease, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %11 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %10, 2
  %and2.i.i = and i32 %and.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @drm_file_get_master(ptr noundef %lessee_priv) #7
  %13 = ptrtoint ptr %lessee to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %lessee, align 4
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %call5, i32 0, i32 7
  %14 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lessee_id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.15, i32 noundef %15) #7
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #7
  %lessor = getelementptr inbounds %struct.drm_master, ptr %call5, i32 0, i32 6
  %16 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lessor, align 4
  %cmp = icmp eq ptr %17, null
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.drm_master, ptr %call5, i32 0, i32 1
  %18 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev8, align 4
  %object_idr10 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 4
  br label %if.end11

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %leases = getelementptr inbounds %struct.drm_master, ptr %call5, i32 0, i32 10
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %object_idr.0 = phi ptr [ %object_idr10, %if.then7 ], [ %leases, %if.else ]
  %20 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %object, align 4
  %call1255 = call ptr @idr_get_next(ptr noundef %object_idr.0, ptr noundef nonnull %object) #7
  %cmp13.not56 = icmp eq ptr %call1255, null
  br i1 %cmp13.not56, label %if.end11.if.then26_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.if.then26_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %if.end11.for.body_crit_edge
  %count.057 = phi i32 [ %inc, %if.end23.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %count.057)
  %cmp15 = icmp ugt i32 %4, %count.057
  br i1 %cmp15, label %if.then17, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then17:                                        ; preds = %for.body
  %21 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %object, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.16, i32 noundef %22) #7
  %add.ptr = getelementptr i32, ptr %2, i32 %count.057
  %23 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %object, align 4
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 669) #7
  %25 = call i32 @llvm.read_register.i32(metadata !65) #7
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !79
  %and.i = and i32 %27, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %28 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i32 %24, i32 -1226833921) #7, !srcloc !83
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #7, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not = icmp eq i32 %28, 0
  br i1 %tobool20.not, label %if.then17.if.end23_crit_edge, label %for.end

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %inc = add i32 %count.057, 1
  %29 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %object, align 4
  %add = add i32 %30, 1
  store i32 %add, ptr %object, align 4
  %call12 = call ptr @idr_get_next(ptr noundef %object_idr.0, ptr noundef nonnull %object) #7
  %cmp13.not = icmp eq ptr %call12, null
  br i1 %cmp13.not, label %if.end23.if.then26_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

for.end:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %count.057) #7
  br label %if.end28

if.then26:                                        ; preds = %if.end23.if.then26_crit_edge, %if.end11.if.then26_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end11.if.then26_crit_edge ], [ %inc, %if.end23.if.then26_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %count.0.lcssa) #7
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %count.0.lcssa, ptr %data, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end
  %ret.252 = phi i32 [ 0, %if.then26 ], [ %28, %for.end ]
  call void @mutex_unlock(ptr noundef %idr_mutex) #7
  call void @drm_master_put(ptr noundef nonnull %lessee) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.252, %if.end28 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %object) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lessee) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_revoke_lease_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %lessor_priv) local_unnamed_addr #1 align 64 {
entry:
  %lessor = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lessor) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %1) #7
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, 2
  %and2.i.i = and i32 %and.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @drm_file_get_master(ptr noundef %lessor_priv) #7
  %8 = ptrtoint ptr %lessor to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %lessor, align 4
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @mutex_lock_nested(ptr noundef %idr_mutex, i32 noundef 0) #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.while.cond.i.i.preheader_crit_edge, label %land.rhs.i

if.end.while.cond.i.i.preheader_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.preheader

land.rhs.i:                                       ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.drm_master, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %dep_map.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.while.cond.i.i.preheader_crit_edge, !prof !75

land.rhs.i.while.cond.i.i.preheader_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef 9, ptr noundef null) #7
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %do.end.i, %land.rhs.i.while.cond.i.i.preheader_crit_edge, %if.end.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %master.addr.0.i.i = phi ptr [ %15, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %call1, %while.cond.i.i.preheader ]
  %lessor.i.i = getelementptr inbounds %struct.drm_master, ptr %master.addr.0.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %lessor.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lessor.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %15, null
  br i1 %cmp.not.i.i, label %_drm_find_lessee.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

_drm_find_lessee.exit:                            ; preds = %while.cond.i.i
  %lessee_idr.i = getelementptr inbounds %struct.drm_master, ptr %master.addr.0.i.i, i32 0, i32 11
  %call25.i = tail call ptr @idr_find(ptr noundef %lessee_idr.i, i32 noundef %10) #7
  %tobool.not = icmp eq ptr %call25.i, null
  br i1 %tobool.not, label %_drm_find_lessee.exit.fail_crit_edge, label %if.end5

_drm_find_lessee.exit.fail_crit_edge:             ; preds = %_drm_find_lessee.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end5:                                          ; preds = %_drm_find_lessee.exit
  %lessor6 = getelementptr inbounds %struct.drm_master, ptr %call25.i, i32 0, i32 6
  %16 = ptrtoint ptr %lessor6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lessor6, align 4
  %18 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lessor, align 4
  %cmp.not = icmp eq ptr %17, %19
  br i1 %cmp.not, label %if.end8, label %if.end5.fail_crit_edge

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_drm_lease_revoke(ptr noundef nonnull %call25.i)
  br label %fail

fail:                                             ; preds = %if.end8, %if.end5.fail_crit_edge, %_drm_find_lessee.exit.fail_crit_edge
  %ret.0 = phi i32 [ 0, %if.end8 ], [ -2, %_drm_find_lessee.exit.fail_crit_edge ], [ -13, %if.end5.fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %idr_mutex) #7
  call void @drm_master_put(ptr noundef nonnull %lessor) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lessor) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_object_lease_required(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_master_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_master_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_lease.c", i32 271, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_lease.c", i32 276, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_lease.c", i32 280, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_lease.c", i32 295, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_lease.c", i32 493, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_lease.c", i32 500, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_lease.c", i32 523, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_lease.c", i32 537, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_lease.c", i32 548, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_lease.c", i32 563, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_lease.c", i32 571, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_lease.c", i32 582, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_lease.c", i32 604, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_lease.c", i32 613, i32 5}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/drm_lease.c", i32 622, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/drm_lease.c", i32 654, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/drm_lease.c", i32 668, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/drm_lease.c", i32 676, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/drm_lease.c", i32 699, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/drm_lease.c", i32 311, i32 3}
!40 = !{ptr @xa_init_flags.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/drm_lease.c", i32 403, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/drm_lease.c", i32 411, i32 3}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/drm_lease.c", i32 421, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/drm_lease.c", i32 433, i32 4}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/drm_lease.c", i32 442, i32 5}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/drm_lease.c", i32 449, i32 6}
!55 = !{ptr @drm_lease_idr_object, !56, !"drm_lease_idr_object", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/drm_lease.c", i32 72, i32 17}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/drm_lease.c", i32 216, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/drm_lease.c", i32 220, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/drm_lease.c", i32 234, i32 4}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/drm_lease.c", i32 252, i32 2}
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
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{!"auto-init"}
!78 = !{i8 0, i8 2}
!79 = !{i64 3015799}
!80 = !{i64 3015996}
!81 = !{i64 2150501229}
!82 = !{i64 2156638692, i64 2156638972, i64 2156639306, i64 2156639640}
!83 = !{i64 2156647969, i64 2156648249, i64 2156648583, i64 2156648917}
