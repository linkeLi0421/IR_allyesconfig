; ModuleID = '/llk/IR_all_yes/fs/jfs/xattr.c_pt.bc'
source_filename = "../fs/jfs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.ea_buffer = type { i32, i32, %struct.dxd_t, ptr, ptr }
%struct.dxd_t = type { i8, [3 x i8], i32, %struct.pxd_t }
%struct.pxd_t = type { i32, i32 }
%struct.jfs_ea_list = type { i32, [0 x %struct.jfs_ea] }
%struct.jfs_ea = type { i8, i8, i16, [0 x i8] }
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.xattr = type { ptr, ptr, i32 }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }

@__jfs_setxattr._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 769, ptr null, ptr null }, align 1
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013__jfs_setxattr: xattr_size = %d, new_size = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__jfs_setxattr\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/jfs/xattr.c\00", [17 x i8] zeroinitializer }, align 32
@__jfs_setxattr._entry_ptr = internal global ptr @__jfs_setxattr._entry, section ".printk_index", align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@jfs_os2_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.20, i32 0, ptr null, ptr @jfs_xattr_get_os2, ptr @jfs_xattr_set_os2 }, [40 x i8] zeroinitializer }, align 32
@jfs_user_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.18, i32 0, ptr null, ptr @jfs_xattr_get, ptr @jfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@jfs_security_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.19, i32 0, ptr null, ptr @jfs_xattr_get, ptr @jfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@jfs_trusted_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.16, i32 0, ptr null, ptr @jfs_xattr_get, ptr @jfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@jfs_xattr_handlers = dso_local global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @jfs_os2_xattr_handler, ptr @jfs_user_xattr_handler, ptr @jfs_security_xattr_handler, ptr @jfs_trusted_xattr_handler, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid ea.flag\0A\00", [47 x i8] zeroinitializer }, align 32
@ea_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ea_get: invalid extended attribute\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ea_get\00", [25 x i8] zeroinitializer }, align 32
@ea_get._entry_ptr = internal global ptr @ea_get._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbytes is 0\0A\00", [19 x i8] zeroinitializer }, align 32
@ea_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ea_release\00", [21 x i8] zeroinitializer }, align 32
@ea_release._entry_ptr = internal global ptr @ea_release._entry, section ".printk_index", align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ea_buf->mp\00", [21 x i8] zeroinitializer }, align 32
@ea_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ea_put\00", [25 x i8] zeroinitializer }, align 32
@ea_put._entry_ptr = internal global ptr @ea_put._entry, section ".printk_index", align 4
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"new_size <= sizeof (ji->i_inline_ea)\00", [59 x i8] zeroinitializer }, align 32
@ea_write_inline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ea_write_inline\00", [16 x i8] zeroinitializer }, align 32
@ea_write_inline._entry_ptr = internal global ptr @ea_write_inline._entry, section ".printk_index", align 4
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"size <= sizeof (ji->i_inline_ea)\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"system.\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"os2.\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 767, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"jfs_os2_xattr_handler\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 970, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"jfs_user_xattr_handler\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 964, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"jfs_security_xattr_handler\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 976, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"jfs_trusted_xattr_handler\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 982, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"jfs_xattr_handlers\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 988, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 470, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 560, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 561, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 561, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 370, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 583, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 603, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 153, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 850, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 86, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 87, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 88, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [18 x i8] c"../fs/jfs/xattr.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 108, i32 18 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__jfs_setxattr._entry, ptr @__jfs_setxattr._entry_ptr, ptr @ea_get._entry, ptr @ea_get._entry_ptr, ptr @ea_put._entry, ptr @ea_put._entry_ptr, ptr @ea_release._entry, ptr @ea_release._entry_ptr, ptr @ea_write_inline._entry, ptr @ea_write_inline._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @jfs_os2_xattr_handler, ptr @jfs_user_xattr_handler, ptr @jfs_security_xattr_handler, ptr @jfs_trusted_xattr_handler, ptr @jfs_xattr_handlers, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_os2_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_user_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_security_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_trusted_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_xattr_handlers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ea_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ea_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ea_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ea_write_inline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__jfs_setxattr(i16 noundef zeroext %tid, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef readonly %value, i32 noundef %value_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %tmp103.i = alloca %struct.timespec64, align 8
  %ea_buf = alloca %struct.ea_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ea_buf) #10
  %0 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 2
  %3 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3
  %4 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3, i32 1
  %5 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %7 = call ptr @memset(ptr %ea_buf, i32 255, i32 32)
  %call = tail call i32 @strlen(ptr noundef %name) #13
  %xattr_sem = getelementptr i8, ptr %inode, i32 -500
  tail call void @down_write(ptr noundef %xattr_sem) #10
  %call2 = call fastcc i32 @ea_get(ptr noundef %inode, ptr noundef nonnull %ea_buf, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %again.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

again.preheader:                                  ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %and51 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp ne i32 %and51, 0
  %cmp55 = icmp eq ptr %value, null
  %add63 = add i32 %value_len, 5
  %add64 = add i32 %add63, %call
  %add65 = select i1 %cmp55, i32 0, i32 %add64
  %add20 = add nuw nsw i32 %call, 5
  %brmerge = or i1 %tobool52.not, %cmp55
  br label %again

again:                                            ; preds = %if.then69.again_crit_edge, %again.preheader
  %old_ea.0 = phi ptr [ %old_ea.3, %if.then69.again_crit_edge ], [ null, %again.preheader ]
  %next_ea.0 = phi ptr [ %next_ea.3, %if.then69.again_crit_edge ], [ null, %again.preheader ]
  %old_ea_size.0 = phi i32 [ %old_ea_size.3, %if.then69.again_crit_edge ], [ 0, %again.preheader ]
  %xattr_size.0 = phi i32 [ %call70, %if.then69.again_crit_edge ], [ %call2, %again.preheader ]
  %found.0 = phi i32 [ %found.3, %if.then69.again_crit_edge ], [ 0, %again.preheader ]
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xattr_size.0)
  %tobool.not = icmp eq i32 %xattr_size.0, 0
  br i1 %tobool.not, label %again.if.end48_crit_edge, label %if.then3

again.if.end48_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then3:                                         ; preds = %again
  %ea4 = getelementptr inbounds %struct.jfs_ea_list, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr = getelementptr i8, ptr %9, i32 %12
  %cmp5225 = icmp ult ptr %ea4, %add.ptr
  br i1 %cmp5225, label %if.then3.for.body_crit_edge, label %if.then3.if.end48_crit_edge

if.then3.if.end48_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then3.for.body_crit_edge
  %found.1233 = phi i32 [ %found.2, %for.inc.for.body_crit_edge ], [ %found.0, %if.then3.for.body_crit_edge ]
  %new_size.0232 = phi i32 [ %new_size.1, %for.inc.for.body_crit_edge ], [ 4, %if.then3.for.body_crit_edge ]
  %old_ea_size.1231 = phi i32 [ %old_ea_size.2, %for.inc.for.body_crit_edge ], [ %old_ea_size.0, %if.then3.for.body_crit_edge ]
  %next_ea.1230 = phi ptr [ %next_ea.2, %for.inc.for.body_crit_edge ], [ %next_ea.0, %if.then3.for.body_crit_edge ]
  %old_ea.1229 = phi ptr [ %old_ea.2, %for.inc.for.body_crit_edge ], [ %old_ea.0, %if.then3.for.body_crit_edge ]
  %ea.0226 = phi ptr [ %add.ptr47, %for.inc.for.body_crit_edge ], [ %ea4, %if.then3.for.body_crit_edge ]
  %namelen6 = getelementptr inbounds %struct.jfs_ea, ptr %ea.0226, i32 0, i32 1
  %13 = ptrtoint ptr %namelen6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %namelen6, align 1
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp7 = icmp eq i32 %call, %conv
  br i1 %cmp7, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %name9 = getelementptr inbounds %struct.jfs_ea, ptr %ea.0226, i32 0, i32 3
  %bcmp = call i32 @bcmp(ptr %name, ptr %name9, i32 %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp12 = icmp eq i32 %bcmp, 0
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true
  br i1 %tobool15.not, label %if.end17, label %if.then14.release_crit_edge

if.then14.release_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end17:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %valuelen = getelementptr inbounds %struct.jfs_ea, ptr %ea.0226, i32 0, i32 2
  %15 = ptrtoint ptr %valuelen to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %valuelen, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv21 = zext i16 %17 to i32
  %add22 = add nuw nsw i32 %add20, %conv21
  %add.ptr30 = getelementptr i8, ptr %ea.0226, i32 %add22
  %.pre = add nuw nsw i32 %conv, 5
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %add34 = add nuw nsw i32 %conv, 5
  %valuelen35 = getelementptr inbounds %struct.jfs_ea, ptr %ea.0226, i32 0, i32 2
  %18 = ptrtoint ptr %valuelen35 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %valuelen35, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv36 = zext i16 %20 to i32
  %add37 = add i32 %add34, %new_size.0232
  %add38 = add i32 %add37, %conv36
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end17
  %add43.pre-phi = phi i32 [ %.pre, %if.end17 ], [ %add34, %if.else ]
  %old_ea.2 = phi ptr [ %ea.0226, %if.end17 ], [ %old_ea.1229, %if.else ]
  %next_ea.2 = phi ptr [ %add.ptr30, %if.end17 ], [ %next_ea.1230, %if.else ]
  %old_ea_size.2 = phi i32 [ %add22, %if.end17 ], [ %old_ea_size.1231, %if.else ]
  %new_size.1 = phi i32 [ %new_size.0232, %if.end17 ], [ %add38, %if.else ]
  %found.2 = phi i32 [ 1, %if.end17 ], [ %found.1233, %if.else ]
  %valuelen44 = getelementptr inbounds %struct.jfs_ea, ptr %ea.0226, i32 0, i32 2
  %21 = ptrtoint ptr %valuelen44 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %valuelen44, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv45 = zext i16 %23 to i32
  %add46 = add nuw nsw i32 %add43.pre-phi, %conv45
  %add.ptr47 = getelementptr i8, ptr %ea.0226, i32 %add46
  %cmp5 = icmp ult ptr %add.ptr47, %add.ptr
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.if.end48_crit_edge

for.inc.if.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end48:                                         ; preds = %for.inc.if.end48_crit_edge, %if.then3.if.end48_crit_edge, %again.if.end48_crit_edge
  %old_ea.3 = phi ptr [ %old_ea.0, %again.if.end48_crit_edge ], [ %old_ea.0, %if.then3.if.end48_crit_edge ], [ %old_ea.2, %for.inc.if.end48_crit_edge ]
  %next_ea.3 = phi ptr [ %next_ea.0, %again.if.end48_crit_edge ], [ %next_ea.0, %if.then3.if.end48_crit_edge ], [ %next_ea.2, %for.inc.if.end48_crit_edge ]
  %old_ea_size.3 = phi i32 [ %old_ea_size.0, %again.if.end48_crit_edge ], [ %old_ea_size.0, %if.then3.if.end48_crit_edge ], [ %old_ea_size.2, %for.inc.if.end48_crit_edge ]
  %new_size.2 = phi i32 [ 4, %again.if.end48_crit_edge ], [ 4, %if.then3.if.end48_crit_edge ], [ %new_size.1, %for.inc.if.end48_crit_edge ]
  %found.3 = phi i32 [ %found.0, %again.if.end48_crit_edge ], [ %found.0, %if.then3.if.end48_crit_edge ], [ %found.2, %for.inc.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.3)
  %tobool49.not = icmp eq i32 %found.3, 0
  br i1 %tobool49.not, label %if.then50, label %if.end59.thread

if.then50:                                        ; preds = %if.end48
  br i1 %brmerge, label %release.loopexit238, label %if.end59

if.end59:                                         ; preds = %if.then50
  %new_size.3 = add i32 %new_size.2, %add65
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.3, i32 %25)
  %cmp67 = icmp sgt i32 %new_size.3, %25
  br i1 %cmp67, label %if.end59.if.then69_crit_edge, label %if.end59.if.end84_crit_edge

if.end59.if.end84_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end59.if.then69_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

if.end59.thread:                                  ; preds = %if.end48
  %new_size.3254 = add i32 %new_size.2, %add65
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.3254, i32 %27)
  %cmp67255 = icmp sgt i32 %new_size.3254, %27
  br i1 %cmp67255, label %if.end59.thread.if.then69_crit_edge, label %if.then77

if.end59.thread.if.then69_crit_edge:              ; preds = %if.end59.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

if.then69:                                        ; preds = %if.end59.thread.if.then69_crit_edge, %if.end59.if.then69_crit_edge
  %new_size.3256 = phi i32 [ %new_size.3254, %if.end59.thread.if.then69_crit_edge ], [ %new_size.3, %if.end59.if.then69_crit_edge ]
  call fastcc void @ea_release(ptr noundef %inode, ptr noundef nonnull %ea_buf)
  %call70 = call fastcc i32 @ea_get(ptr noundef %inode, ptr noundef nonnull %ea_buf, i32 noundef %new_size.3256)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then69.out_crit_edge, label %if.then69.again_crit_edge

if.then69.again_crit_edge:                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

if.then69.out_crit_edge:                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then77:                                        ; preds = %if.end59.thread
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %9, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %add.ptr79 = getelementptr i8, ptr %9, i32 %30
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr79 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %next_ea.3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp80 = icmp sgt i32 %sub.ptr.sub, 0
  br i1 %cmp80, label %if.then82, label %if.then77.if.end83_crit_edge

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call ptr @memmove(ptr %old_ea.3, ptr %next_ea.3, i32 %sub.ptr.sub)
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then77.if.end83_crit_edge
  %sub = sub i32 %xattr_size.0, %old_ea_size.3
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end59.if.end84_crit_edge
  %new_size.3257260 = phi i32 [ %new_size.3254, %if.end83 ], [ %new_size.3, %if.end59.if.end84_crit_edge ]
  %xattr_size.1 = phi i32 [ %sub, %if.end83 ], [ %xattr_size.0, %if.end59.if.end84_crit_edge ]
  br i1 %cmp55, label %if.end84.if.end117_crit_edge, label %if.then86

if.end84.if.end117_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xattr_size.1)
  %cmp87 = icmp eq i32 %xattr_size.1, 0
  %spec.store.select = select i1 %cmp87, i32 4, i32 %xattr_size.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %value_len)
  %cmp91 = icmp ugt i32 %value_len, 65534
  br i1 %cmp91, label %if.then86.release_crit_edge, label %if.end94

if.then86.release_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end94:                                         ; preds = %if.then86
  %add.ptr95 = getelementptr i8, ptr %9, i32 %spec.store.select
  %32 = ptrtoint ptr %add.ptr95 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %add.ptr95, align 2
  %conv96 = trunc i32 %call to i8
  %namelen97 = getelementptr inbounds %struct.jfs_ea, ptr %add.ptr95, i32 0, i32 1
  %33 = ptrtoint ptr %namelen97 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv96, ptr %namelen97, align 1
  %conv98 = trunc i32 %value_len to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv98)
  %valuelen99 = getelementptr inbounds %struct.jfs_ea, ptr %add.ptr95, i32 0, i32 2
  %35 = ptrtoint ptr %valuelen99 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %valuelen99, align 2
  %name100 = getelementptr inbounds %struct.jfs_ea, ptr %add.ptr95, i32 0, i32 3
  %36 = call ptr @memcpy(ptr %name100, ptr %name, i32 %call)
  %arrayidx = getelementptr [0 x i8], ptr %name100, i32 0, i32 %call
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value_len)
  %tobool103.not = icmp eq i32 %value_len, 0
  br i1 %tobool103.not, label %if.end94.if.end108_crit_edge, label %if.then104

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then104:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %add106 = add i32 %call, 1
  %arrayidx107 = getelementptr [0 x i8], ptr %name100, i32 0, i32 %add106
  %38 = call ptr @memcpy(ptr %arrayidx107, ptr %value, i32 %value_len)
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.end94.if.end108_crit_edge
  %39 = ptrtoint ptr %namelen97 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %namelen97, align 1
  %conv110 = zext i8 %40 to i32
  %41 = ptrtoint ptr %valuelen99 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %valuelen99, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %conv114 = zext i16 %43 to i32
  %add112 = add i32 %spec.store.select, 5
  %add115 = add i32 %add112, %conv110
  %add116 = add i32 %add115, %conv114
  br label %if.end117

if.end117:                                        ; preds = %if.end108, %if.end84.if.end117_crit_edge
  %xattr_size.2 = phi i32 [ %add116, %if.end108 ], [ %xattr_size.1, %if.end84.if.end117_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %xattr_size.2, i32 %new_size.3257260)
  %cmp118.not = icmp eq i32 %xattr_size.2, %new_size.3257260
  br i1 %cmp118.not, label %if.end122, label %do.end

do.end:                                           ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %xattr_size.2, i32 noundef %new_size.3257260) #14
  br label %release

if.end122:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %new_size.3257260)
  %cmp123 = icmp eq i32 %new_size.3257260, 4
  %spec.store.select131 = select i1 %cmp123, i32 0, i32 %new_size.3257260
  %44 = call i32 @llvm.bswap.i32(i32 %spec.store.select131)
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select131)
  %cmp.i = icmp eq i32 %spec.store.select131, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ea_release(ptr noundef %inode, ptr noundef nonnull %ea_buf) #10
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end122
  %46 = ptrtoint ptr %ea_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ea_buf, align 4
  %and.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else20.i, label %do.body.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %spec.store.select131)
  %cmp2.i = icmp ult i32 %spec.store.select131, 129
  br i1 %cmp2.i, label %do.end13.i, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 603, ptr noundef nonnull @.str.13) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 603, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

do.end13.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode2.i = getelementptr i8, ptr %inode, i32 -844
  %48 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode2.i, align 4
  %and14.i = and i32 %49, -262145
  store i32 %and14.i, ptr %mode2.i, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 64, ptr %1, align 4
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %44, ptr %2, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %4, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %3, align 4
  br label %if.end44.i

if.else20.i:                                      ; preds = %if.else.i
  %and22.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else28.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %6, align 4
  %call26.i = call fastcc i32 @ea_write(ptr noundef %inode, ptr noundef %55, i32 noundef %spec.store.select131, ptr noundef %1) #10
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %57) #10
  br label %if.end41.i

if.else28.i:                                      ; preds = %if.else20.i
  %and30.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else33.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %flag.i.i = getelementptr inbounds %struct.metapage, ptr %59, i32 0, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %flag.i.i) #10
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i.i) #10
  call void @release_metapage(ptr noundef %59) #10
  br label %if.end44.i

if.else33.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %6, align 4
  %call36.i = call fastcc i32 @ea_write(ptr noundef %inode, ptr noundef %61, i32 noundef %spec.store.select131, ptr noundef %1) #10
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %5, align 4
  %flag.i156.i = getelementptr inbounds %struct.metapage, ptr %63, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag.i156.i) #10
  call void @_set_bit(i32 noundef 4, ptr noundef %flag.i156.i) #10
  call void @release_metapage(ptr noundef %63) #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else33.i, %if.then24.i
  %rc.0.i = phi i32 [ %call26.i, %if.then24.i ], [ %call36.i, %if.else33.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool42.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool42.not.i, label %if.end41.i.if.end44.i_crit_edge, label %if.end41.i.out_crit_edge

if.end41.i.out_crit_edge:                         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end41.i.if.end44.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end41.i.if.end44.i_crit_edge, %if.then32.i, %do.end13.i, %if.then.i
  %ea_buf.addr.0162.i = phi ptr [ %ea_buf, %if.end41.i.if.end44.i_crit_edge ], [ %ea_buf, %if.then32.i ], [ %ea_buf, %do.end13.i ], [ null, %if.then.i ]
  %ea.i = getelementptr i8, ptr %inode, i32 -808
  %64 = ptrtoint ptr %ea.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ea.i, align 8
  %66 = and i8 %65, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool47.not.i = icmp eq i8 %66, 0
  br i1 %tobool47.not.i, label %if.end44.i.if.end58.i_crit_edge, label %if.then48.i

if.end44.i.if.end58.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  %loc50.i = getelementptr i8, ptr %inode, i32 -800
  %67 = ptrtoint ptr %loc50.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %loc50.i, align 4
  %69 = shl i32 %68, 24
  %conv.i.i = zext i32 %69 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 8
  %addr2.i157.i = getelementptr i8, ptr %inode, i32 -796
  %70 = ptrtoint ptr %addr2.i157.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr2.i157.i, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #10
  %conv1.i.i = zext i32 %72 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %73 = and i32 %68, -256
  %74 = call i32 @llvm.bswap.i32(i32 %73) #10
  call void @__invalidate_metapages(ptr noundef %inode, i64 noundef %add.i.i, i32 noundef %74) #10
  %75 = ptrtoint ptr %loc50.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %loc50.i, align 4
  %77 = and i32 %76, -256
  %78 = call i32 @llvm.bswap.i32(i32 %77) #10
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then48.i, %if.end44.i.if.end58.i_crit_edge
  %old_blocks.0.i = phi i32 [ %78, %if.then48.i ], [ 0, %if.end44.i.if.end58.i_crit_edge ]
  %tobool59.not.i = icmp eq ptr %ea_buf.addr.0162.i, null
  br i1 %tobool59.not.i, label %if.else83.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end58.i
  %new_ea62.i = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf.addr.0162.i, i32 0, i32 2
  call void @txEA(i16 noundef zeroext %tid, ptr noundef %inode, ptr noundef %ea.i, ptr noundef %new_ea62.i) #10
  %79 = ptrtoint ptr %new_ea62.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %new_ea62.i, align 4
  %81 = and i8 %80, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool67.not.i = icmp eq i8 %81, 0
  br i1 %tobool67.not.i, label %if.then60.i.if.end80.i_crit_edge, label %if.then68.i

if.then60.i.if.end80.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.then68.i:                                      ; preds = %if.then60.i
  %82 = ptrtoint ptr %ea.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ea.i, align 8
  %84 = and i8 %83, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool76.not.i = icmp eq i8 %84, 0
  br i1 %tobool76.not.i, label %if.then68.i.if.end80.i_crit_edge, label %if.then77.i

if.then68.i.if.end80.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.then77.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode278.i = getelementptr i8, ptr %inode, i32 -844
  %85 = ptrtoint ptr %mode278.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mode278.i, align 4
  %or.i = or i32 %86, 262144
  store i32 %or.i, ptr %mode278.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then77.i, %if.then68.i.if.end80.i_crit_edge, %if.then60.i.if.end80.i_crit_edge
  %87 = call ptr @memcpy(ptr %ea.i, ptr %new_ea62.i, i32 16)
  br label %if.end98.i

if.else83.i:                                      ; preds = %if.end58.i
  call void @txEA(i16 noundef zeroext %tid, ptr noundef %inode, ptr noundef %ea.i, ptr noundef null) #10
  %88 = ptrtoint ptr %ea.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ea.i, align 8
  %90 = and i8 %89, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool89.not.i = icmp eq i8 %90, 0
  br i1 %tobool89.not.i, label %if.else83.i.if.end93.i_crit_edge, label %if.then90.i

if.else83.i.if.end93.i_crit_edge:                 ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i

if.then90.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode291.i = getelementptr i8, ptr %inode, i32 -844
  %91 = ptrtoint ptr %mode291.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mode291.i, align 4
  %or92.i = or i32 %92, 262144
  store i32 %or92.i, ptr %mode291.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then90.i, %if.else83.i.if.end93.i_crit_edge
  %93 = ptrtoint ptr %ea.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %ea.i, align 8
  %size97.i = getelementptr i8, ptr %inode, i32 -804
  %94 = ptrtoint ptr %size97.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %size97.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.end93.i, %if.end80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_blocks.0.i)
  %tobool99.not.i = icmp eq i32 %old_blocks.0.i, 0
  br i1 %tobool99.not.i, label %if.end98.i.if.end102.i_crit_edge, label %if.then100.i

if.end98.i.if.end102.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102.i

if.then100.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv101.i = zext i32 %old_blocks.0.i to i64
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %95 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %i_blkbits.i.i, align 2
  %sh_prom.i.i = zext i8 %96 to i64
  %shl.i158.i = shl i64 %conv101.i, %sh_prom.i.i
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i158.i, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #10
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then100.i, %if.end98.i.if.end102.i_crit_edge
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp103.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp103.i, ptr noundef %inode) #10
  %97 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp103.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp103.i) #10
  br label %out

release.loopexit238:                              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %.mux = select i1 %tobool52.not, i32 -61, i32 0
  br label %release

release:                                          ; preds = %release.loopexit238, %do.end, %if.then86.release_crit_edge, %if.then14.release_crit_edge
  %rc.0 = phi i32 [ -22, %do.end ], [ -7, %if.then86.release_crit_edge ], [ %.mux, %release.loopexit238 ], [ -17, %if.then14.release_crit_edge ]
  call fastcc void @ea_release(ptr noundef %inode, ptr noundef nonnull %ea_buf)
  br label %out

out:                                              ; preds = %release, %if.end102.i, %if.end41.i.out_crit_edge, %if.then69.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ %rc.0, %release ], [ %call2, %entry.out_crit_edge ], [ 0, %if.end102.i ], [ %rc.0.i, %if.end41.i.out_crit_edge ], [ %call70, %if.then69.out_crit_edge ]
  call void @up_write(ptr noundef %xattr_sem) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ea_buf) #10
  ret i32 %rc.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_get(ptr noundef %inode, ptr noundef %ea_buf, i32 noundef %min_size) unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %ea = getelementptr i8, ptr %inode, i32 -808
  %size1 = getelementptr i8, ptr %inode, i32 -804
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno) #10
  %5 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %blkno, align 8, !annotation !65
  %6 = ptrtoint ptr %ea to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ea, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  %spec.select = select i1 %cmp, i32 0, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp4 = icmp eq i32 %spec.select, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_size)
  %cmp7 = icmp eq i32 %min_size, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %ea_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ea_buf, align 4
  %max_size = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 1
  %9 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %max_size, align 4
  %xattr = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %10 = ptrtoint ptr %xattr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xattr, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %min_size)
  %cmp12 = icmp ult i32 %min_size, 129
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.end51_crit_edge

if.end11.if.end51_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end11
  %mode2 = getelementptr i8, ptr %inode, i32 -844
  %11 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode2, align 4
  %and = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end51_crit_edge, label %if.then14

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ea_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %ea_buf, align 4
  %max_size16 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 1
  %14 = ptrtoint ptr %max_size16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %max_size16, align 4
  %_inline_ea = getelementptr i8, ptr %inode, i32 -240
  %xattr17 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %15 = ptrtoint ptr %xattr17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %_inline_ea, ptr %xattr17, align 4
  %new_ea = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2
  %loc = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %loc, align 4
  %addr2.i = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3, i32 1
  %17 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %addr2.i, align 4
  %18 = ptrtoint ptr %new_ea to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 64, ptr %new_ea, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %min_size)
  %size23 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %size23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %size23, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %conv27 = zext i8 %7 to i32
  %and28 = and i32 %conv27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else41, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %min_size)
  %cmp31 = icmp ult i32 %min_size, 129
  br i1 %cmp31, label %if.then33, label %if.then30.if.end51_crit_edge

if.then30.if.end51_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %ea_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %ea_buf, align 4
  %max_size35 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 1
  %22 = ptrtoint ptr %max_size35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 128, ptr %max_size35, align 4
  %_inline_ea37 = getelementptr i8, ptr %inode, i32 -240
  %xattr39 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %23 = ptrtoint ptr %xattr39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %_inline_ea37, ptr %xattr39, align 4
  br label %size_check

if.else41:                                        ; preds = %if.else
  %and45 = and i32 %conv27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %1, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end48:                                         ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize, align 16
  %add = add i32 %spec.select, -1
  %sub = add i32 %add, %25
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_blocksize_bits, align 4
  %conv49 = zext i8 %27 to i32
  %shr = lshr i32 %sub, %conv49
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.then30.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %if.end11.if.end51_crit_edge
  %current_blocks.0 = phi i32 [ %shr, %if.end48 ], [ 0, %land.lhs.true.if.end51_crit_edge ], [ 0, %if.end11.if.end51_crit_edge ], [ 0, %if.then30.if.end51_crit_edge ]
  %28 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %min_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %28)
  %cmp54 = icmp sgt i32 %28, 4096
  %s_blocksize57 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %s_blocksize57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize57, align 16
  br i1 %cmp54, label %if.then56, label %if.end84

if.then56:                                        ; preds = %if.end51
  %add58 = add nsw i32 %28, -1
  %sub59 = add i32 %add58, %30
  %neg = sub i32 0, %30
  %and62 = and i32 %sub59, %neg
  %max_size63 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 1
  %31 = ptrtoint ptr %max_size63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and62, ptr %max_size63, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and62, i32 noundef 3264) #15
  %xattr66 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %32 = ptrtoint ptr %xattr66 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i, ptr %xattr66, align 4
  %cmp68 = icmp eq ptr %call9.i, null
  br i1 %cmp68, label %if.then56.cleanup_crit_edge, label %if.end71

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end71:                                         ; preds = %if.then56
  %33 = ptrtoint ptr %ea_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %ea_buf, align 4
  br i1 %cmp4, label %if.end71.cleanup_crit_edge, label %if.end76

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %call78 = tail call fastcc i32 @ea_read(ptr noundef %inode, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end76.size_check_crit_edge, label %if.then80

if.end76.size_check_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %size_check

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %xattr66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xattr66, align 4
  tail call void @kfree(ptr noundef %35) #10
  %36 = ptrtoint ptr %xattr66 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %xattr66, align 4
  br label %cleanup

if.end84:                                         ; preds = %if.end51
  %add86 = add i32 %min_size, -1
  %sub87 = add i32 %add86, %30
  %s_blocksize_bits88 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %s_blocksize_bits88 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %s_blocksize_bits88, align 4
  %conv89 = zext i8 %38 to i32
  %shr90 = lshr i32 %sub87, %conv89
  call void @__sanitizer_cov_trace_cmp4(i32 %shr90, i32 %current_blocks.0)
  %cmp91 = icmp sgt i32 %shr90, %current_blocks.0
  br i1 %cmp91, label %if.then93, label %if.end154

if.then93:                                        ; preds = %if.end84
  %conv94 = sext i32 %shr90 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %39 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %40 to i64
  %shl.i = shl i64 %conv94, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i309 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i309, label %if.end98, label %if.then93.cleanup_crit_edge

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end98:                                         ; preds = %if.then93
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %ixpxd = getelementptr i8, ptr %inode, i32 -832
  %41 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ixpxd, align 4
  %43 = shl i32 %42, 24
  %conv.i = zext i32 %43 to i64
  %shl.i311 = shl nuw nsw i64 %conv.i, 8
  %addr2.i312 = getelementptr i8, ptr %inode, i32 -828
  %44 = ptrtoint ptr %addr2.i312 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr2.i312, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %conv1.i = zext i32 %46 to i64
  %47 = and i32 %42, -256
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %conv104 = zext i32 %48 to i64
  %add.i = add nsw i64 %conv1.i, -1
  %add105 = add nsw i64 %add.i, %shl.i311
  %sub106 = add nsw i64 %add105, %conv104
  %call108 = call i32 @dbAlloc(ptr noundef %inode, i64 noundef %sub106, i64 noundef %conv94, ptr noundef nonnull %blkno) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end98.clean_up_crit_edge

if.end98.clean_up_crit_edge:                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_up

if.end111:                                        ; preds = %if.end98
  %new_ea112 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2
  %loc113 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3
  %and1.i = and i32 %shr90, 16777215
  %49 = call i32 @llvm.bswap.i32(i32 %and1.i) #10
  %50 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %blkno, align 8
  %sum.shift.i = lshr i64 %51, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i316 = and i32 %conv7.i, 255
  %or.i317 = or i32 %conv.i316, %49
  %52 = ptrtoint ptr %loc113 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i317, ptr %loc113, align 4
  %conv3.i = trunc i64 %51 to i32
  %53 = call i32 @llvm.bswap.i32(i32 %conv3.i) #10
  %addr2.i318 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3, i32 1
  %54 = ptrtoint ptr %addr2.i318 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %addr2.i318, align 4
  %55 = ptrtoint ptr %new_ea112 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %new_ea112, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %min_size)
  %size119 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %size119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %size119, align 4
  %58 = ptrtoint ptr %ea_buf to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 6, ptr %ea_buf, align 4
  %59 = ptrtoint ptr %s_blocksize_bits88 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %s_blocksize_bits88, align 4
  %conv123 = zext i8 %60 to i32
  %shl = shl i32 %shr90, %conv123
  %call124 = call ptr @__get_metapage(ptr noundef %inode, i32 noundef %conv3.i, i32 noundef %shl, i32 noundef 1, i32 noundef 1) #10
  %mp = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 3
  %61 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call124, ptr %mp, align 4
  %cmp126 = icmp eq ptr %call124, null
  br i1 %cmp126, label %if.then128, label %if.end131

if.then128:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %blkno, align 8
  %call130 = call i32 @dbFree(ptr noundef %inode, i64 noundef %63, i64 noundef %conv94) #10
  br label %clean_up

if.end131:                                        ; preds = %if.end111
  %data = getelementptr inbounds %struct.metapage, ptr %call124, i32 0, i32 7
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %xattr133 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %66 = ptrtoint ptr %xattr133 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %xattr133, align 4
  %67 = ptrtoint ptr %s_blocksize57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize57, align 16
  %sub136 = add i32 %add86, %68
  %neg139 = sub i32 0, %68
  %and140 = and i32 %sub136, %neg139
  %max_size141 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 1
  %69 = ptrtoint ptr %max_size141 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and140, ptr %max_size141, align 4
  br i1 %cmp4, label %if.end131.cleanup_crit_edge, label %if.end145

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end145:                                        ; preds = %if.end131
  %call147 = call fastcc i32 @ea_read(ptr noundef %inode, ptr noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end145.size_check_crit_edge, label %if.then149

if.end145.size_check_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %size_check

if.then149:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mp, align 4
  call fastcc void @discard_metapage(ptr noundef %71)
  %72 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %blkno, align 8
  %call152 = call i32 @dbFree(ptr noundef %inode, i64 noundef %73, i64 noundef %conv94) #10
  br label %clean_up

if.end154:                                        ; preds = %if.end84
  %74 = ptrtoint ptr %ea_buf to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %ea_buf, align 4
  %loc157 = getelementptr i8, ptr %inode, i32 -800
  %75 = ptrtoint ptr %loc157 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %loc157, align 4
  %addr2.i321 = getelementptr i8, ptr %inode, i32 -796
  %77 = ptrtoint ptr %addr2.i321 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr2.i321, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  %80 = and i32 %76, -256
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  %82 = ptrtoint ptr %s_blocksize_bits88 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %s_blocksize_bits88, align 4
  %conv164 = zext i8 %83 to i32
  %shl165 = shl i32 %81, %conv164
  %call166 = tail call ptr @__get_metapage(ptr noundef %inode, i32 noundef %79, i32 noundef %shl165, i32 noundef 1, i32 noundef 0) #10
  %mp167 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 3
  %84 = ptrtoint ptr %mp167 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call166, ptr %mp167, align 4
  %cmp169 = icmp eq ptr %call166, null
  br i1 %cmp169, label %if.end154.cleanup_crit_edge, label %if.end172

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end172:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  %data174 = getelementptr inbounds %struct.metapage, ptr %call166, i32 0, i32 7
  %85 = ptrtoint ptr %data174 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data174, align 4
  %xattr175 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %87 = ptrtoint ptr %xattr175 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %xattr175, align 4
  %88 = ptrtoint ptr %s_blocksize57 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_blocksize57, align 16
  %add177 = add i32 %spec.select, -1
  %sub178 = add i32 %add177, %89
  %neg181 = sub i32 0, %89
  %and182 = and i32 %sub178, %neg181
  %max_size183 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 1
  %90 = ptrtoint ptr %max_size183 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and182, ptr %max_size183, align 4
  br label %size_check

size_check:                                       ; preds = %if.end172, %if.end145.size_check_crit_edge, %if.end76.size_check_crit_edge, %if.then33
  %quota_allocation.0 = phi i32 [ 0, %if.end76.size_check_crit_edge ], [ %shr90, %if.end145.size_check_crit_edge ], [ 0, %if.end172 ], [ 0, %if.then33 ]
  %xattr184 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %91 = ptrtoint ptr %xattr184 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xattr184, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %spec.select)
  %cmp186.not = icmp eq i32 %95, %spec.select
  br i1 %cmp186.not, label %size_check.cleanup_crit_edge, label %do.end

size_check.cleanup_crit_edge:                     ; preds = %size_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %size_check
  call void @__sanitizer_cov_trace_pc() #12
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %96 = ptrtoint ptr %xattr184 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %xattr184, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %97, i32 noundef %spec.select, i1 noundef zeroext true) #10
  call fastcc void @ea_release(ptr noundef %inode, ptr noundef %ea_buf)
  br label %clean_up

clean_up:                                         ; preds = %do.end, %if.then149, %if.then128, %if.end98.clean_up_crit_edge
  %rc.0 = phi i32 [ -5, %do.end ], [ %call108, %if.end98.clean_up_crit_edge ], [ -5, %if.then128 ], [ %call147, %if.then149 ]
  %quota_allocation.1 = phi i32 [ %quota_allocation.0, %do.end ], [ %shr90, %if.end98.clean_up_crit_edge ], [ %shr90, %if.then128 ], [ %shr90, %if.then149 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota_allocation.1)
  %tobool193.not = icmp eq i32 %quota_allocation.1, 0
  br i1 %tobool193.not, label %clean_up.cleanup_crit_edge, label %if.then194

clean_up.cleanup_crit_edge:                       ; preds = %clean_up
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then194:                                       ; preds = %clean_up
  call void @__sanitizer_cov_trace_pc() #12
  %conv195 = sext i32 %quota_allocation.1 to i64
  %i_blkbits.i324 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %98 = ptrtoint ptr %i_blkbits.i324 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %i_blkbits.i324, align 2
  %sh_prom.i325 = zext i8 %99 to i64
  %shl.i326 = shl i64 %conv195, %sh_prom.i325
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i326, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then194, %clean_up.cleanup_crit_edge, %size_check.cleanup_crit_edge, %if.end154.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.then93.cleanup_crit_edge, %if.then80, %if.end71.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then47, %if.then14, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then14 ], [ %call78, %if.then80 ], [ -5, %if.then47 ], [ -12, %if.then56.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %if.end131.cleanup_crit_edge ], [ %spec.select, %size_check.cleanup_crit_edge ], [ %rc.0, %if.then194 ], [ %rc.0, %clean_up.cleanup_crit_edge ], [ -122, %if.then93.cleanup_crit_edge ], [ -5, %if.end154.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ea_release(ptr noundef %inode, ptr nocapture noundef readonly %ea_buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ea_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ea_buf, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xattr = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %2 = ptrtoint ptr %xattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xattr, align 4
  tail call void @kfree(ptr noundef %3) #10
  br label %if.end25

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.if.end25_crit_edge, label %do.body

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body:                                          ; preds = %if.else
  %mp = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 3
  %4 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mp, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end, label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 583, ptr noundef nonnull @.str.11) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 583, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.end12:                                         ; preds = %do.body
  tail call void @release_metapage(ptr noundef nonnull %5) #10
  %6 = ptrtoint ptr %ea_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ea_buf, align 4
  %and15 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end12.if.end25_crit_edge, label %if.then17

do.end12.if.end25_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %loc = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %loc, align 4
  %10 = shl i32 %9, 24
  %conv.i = zext i32 %10 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 2, i32 3, i32 1
  %11 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr2.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %conv1.i = zext i32 %13 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %14 = and i32 %9, -256
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %conv = zext i32 %15 to i64
  %call22 = tail call i32 @dbFree(ptr noundef %inode, i64 noundef %add.i, i64 noundef %conv) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %do.end12.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__jfs_getxattr(ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef writeonly %data, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  %ea_buf = alloca %struct.ea_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ea_buf) #10
  %0 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %1 = call ptr @memset(ptr %ea_buf, i32 255, i32 32)
  %call = tail call i32 @strlen(ptr noundef %name) #13
  %xattr_sem = getelementptr i8, ptr %inode, i32 -500
  tail call void @down_read(ptr noundef %xattr_sem) #10
  %call2 = call fastcc i32 @ea_get(ptr noundef %inode, ptr noundef nonnull %ea_buf, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end.release_crit_edge, label %if.end5

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %ea6 = getelementptr inbounds %struct.jfs_ea_list, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr = getelementptr i8, ptr %3, i32 %6
  %cmp862 = icmp ult ptr %ea6, %add.ptr
  br i1 %cmp862, label %if.end5.for.body_crit_edge, label %if.end5.release_crit_edge

if.end5.release_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %ea.063 = phi ptr [ %add.ptr37, %for.inc.for.body_crit_edge ], [ %ea6, %if.end5.for.body_crit_edge ]
  %namelen9 = getelementptr inbounds %struct.jfs_ea, ptr %ea.063, i32 0, i32 1
  %7 = ptrtoint ptr %namelen9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %namelen9, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp10 = icmp eq i32 %call, %conv
  br i1 %cmp10, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %name12 = getelementptr inbounds %struct.jfs_ea, ptr %ea.063, i32 0, i32 3
  %bcmp = call i32 @bcmp(ptr %name, ptr %name12, i32 %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp15 = icmp eq i32 %bcmp, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  %valuelen = getelementptr inbounds %struct.jfs_ea, ptr %ea.063, i32 0, i32 2
  %9 = ptrtoint ptr %valuelen to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %valuelen, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %conv18 = zext i16 %11 to i32
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.then17.release_crit_edge, label %if.else

if.then17.release_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18, i32 %buf_size)
  %cmp20 = icmp ugt i32 %conv18, %buf_size
  br i1 %cmp20, label %if.else.release_crit_edge, label %if.end24

if.else.release_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr28 = getelementptr i8, ptr %name12, i32 %call
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 1
  %12 = call ptr @memcpy(ptr %data, ptr %add.ptr29, i32 %conv18)
  br label %release

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add33 = add nuw nsw i32 %conv, 5
  %valuelen34 = getelementptr inbounds %struct.jfs_ea, ptr %ea.063, i32 0, i32 2
  %13 = ptrtoint ptr %valuelen34 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %valuelen34, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv35 = zext i16 %15 to i32
  %add36 = add nuw nsw i32 %add33, %conv35
  %add.ptr37 = getelementptr i8, ptr %ea.063, i32 %add36
  %cmp8 = icmp ult ptr %add.ptr37, %add.ptr
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.release_crit_edge

for.inc.release_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

release:                                          ; preds = %for.inc.release_crit_edge, %if.end24, %if.else.release_crit_edge, %if.then17.release_crit_edge, %if.end5.release_crit_edge, %if.end.release_crit_edge
  %size.0 = phi i32 [ %conv18, %if.end24 ], [ %conv18, %if.then17.release_crit_edge ], [ -34, %if.else.release_crit_edge ], [ -61, %if.end.release_crit_edge ], [ -61, %if.end5.release_crit_edge ], [ -61, %for.inc.release_crit_edge ]
  call fastcc void @ea_release(ptr noundef %inode, ptr noundef nonnull %ea_buf)
  br label %out

out:                                              ; preds = %release, %entry.out_crit_edge
  %size.1 = phi i32 [ %size.0, %release ], [ %call2, %entry.out_crit_edge ]
  call void @up_read(ptr noundef %xattr_sem) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ea_buf) #10
  ret i32 %size.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef writeonly %data, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  %ea_buf = alloca %struct.ea_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ea_buf) #10
  %2 = getelementptr inbounds %struct.ea_buffer, ptr %ea_buf, i32 0, i32 4
  %xattr_sem = getelementptr i8, ptr %1, i32 -500
  %3 = call ptr @memset(ptr %ea_buf, i32 255, i32 32)
  tail call void @down_read(ptr noundef %xattr_sem) #10
  %call2 = call fastcc i32 @ea_get(ptr noundef %1, ptr noundef nonnull %ea_buf, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end.release_crit_edge, label %if.end5

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %ea6 = getelementptr inbounds %struct.jfs_ea_list, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr107 = getelementptr i8, ptr %5, i32 %8
  %cmp8108 = icmp ult ptr %ea6, %add.ptr107
  br i1 %cmp8108, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %ea.0110 = phi ptr [ %add.ptr18, %for.inc.for.body_crit_edge ], [ %ea6, %if.end5.for.body_crit_edge ]
  %size.0109 = phi i32 [ %size.1, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %name.i = getelementptr inbounds %struct.jfs_ea, ptr %ea.0110, i32 0, i32 3
  %call.i = call i32 @strncmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(9) @.str.16, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %can_list.exit, label %for.body.if.then10_crit_edge

for.body.if.then10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

can_list.exit:                                    ; preds = %for.body
  %call1.i = call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call1.i, label %can_list.exit.if.then10_crit_edge, label %can_list.exit.for.inc_crit_edge

can_list.exit.for.inc_crit_edge:                  ; preds = %can_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

can_list.exit.if.then10_crit_edge:                ; preds = %can_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %can_list.exit.if.then10_crit_edge, %for.body.if.then10_crit_edge
  %call.i.i = call i32 @strncmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(8) @.str.17, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.if.then.i_crit_edge, label %land.lhs.true.i.i

if.then10.if.then.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.i:                                ; preds = %if.then10
  %call1.i.i = call i32 @strncmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(6) @.str.18, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %call4.i.i = call i32 @strncmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(10) @.str.19, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true3.i.i.if.then.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true3.i.i.if.then.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %call7.i.i = call i32 @strncmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(9) @.str.16, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true6.i.i.if.then.i_crit_edge, label %if.else.i

land.lhs.true6.i.i.if.then.i_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true6.i.i.if.then.i_crit_edge, %land.lhs.true3.i.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge, %if.then10.if.then.i_crit_edge
  %namelen.i = getelementptr inbounds %struct.jfs_ea, ptr %ea.0110, i32 0, i32 1
  %9 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %namelen.i, align 1
  %conv.i = zext i8 %10 to i32
  br label %name_size.exit

if.else.i:                                        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %namelen1.i = getelementptr inbounds %struct.jfs_ea, ptr %ea.0110, i32 0, i32 1
  %11 = ptrtoint ptr %namelen1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %namelen1.i, align 1
  %conv2.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv2.i, 4
  br label %name_size.exit

name_size.exit:                                   ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %add.i, %if.else.i ]
  %add = add i32 %size.0109, 1
  %add12 = add i32 %add, %retval.0.i
  br label %for.inc

for.inc:                                          ; preds = %name_size.exit, %can_list.exit.for.inc_crit_edge
  %size.1 = phi i32 [ %add12, %name_size.exit ], [ %size.0109, %can_list.exit.for.inc_crit_edge ]
  %namelen = getelementptr inbounds %struct.jfs_ea, ptr %ea.0110, i32 0, i32 1
  %13 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %namelen, align 1
  %conv = zext i8 %14 to i32
  %add15 = add nuw nsw i32 %conv, 5
  %valuelen = getelementptr inbounds %struct.jfs_ea, ptr %ea.0110, i32 0, i32 2
  %15 = ptrtoint ptr %valuelen to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %valuelen, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv16 = zext i16 %17 to i32
  %add17 = add nuw nsw i32 %add15, %conv16
  %add.ptr18 = getelementptr i8, ptr %ea.0110, i32 %add17
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %add.ptr = getelementptr i8, ptr %5, i32 %20
  %cmp8 = icmp ult ptr %add.ptr18, %add.ptr
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %size.1, %for.inc.for.end_crit_edge ]
  %tobool19.not = icmp eq ptr %data, null
  br i1 %tobool19.not, label %for.end.release_crit_edge, label %if.end21

for.end.release_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

if.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa, i32 %buf_size)
  %cmp22 = icmp ugt i32 %size.0.lcssa, %buf_size
  br i1 %cmp22, label %if.end21.release_crit_edge, label %for.cond28.preheader

if.end21.release_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

for.cond28.preheader:                             ; preds = %if.end21
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %add.ptr30113 = getelementptr i8, ptr %5, i32 %23
  %cmp31114 = icmp ult ptr %ea6, %add.ptr30113
  br i1 %cmp31114, label %for.cond28.preheader.for.body33_crit_edge, label %for.cond28.preheader.release_crit_edge

for.cond28.preheader.release_crit_edge:           ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

for.cond28.preheader.for.body33_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body33

for.body33:                                       ; preds = %for.inc42.for.body33_crit_edge, %for.cond28.preheader.for.body33_crit_edge
  %ea.1117 = phi ptr [ %add.ptr50, %for.inc42.for.body33_crit_edge ], [ %ea6, %for.cond28.preheader.for.body33_crit_edge ]
  %buffer.0115 = phi ptr [ %buffer.1, %for.inc42.for.body33_crit_edge ], [ %data, %for.cond28.preheader.for.body33_crit_edge ]
  %name.i80 = getelementptr inbounds %struct.jfs_ea, ptr %ea.1117, i32 0, i32 3
  %call.i81 = call i32 @strncmp(ptr noundef %name.i80, ptr noundef nonnull dereferenceable(9) @.str.16, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %can_list.exit86, label %for.body33.if.then36_crit_edge

for.body33.if.then36_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

can_list.exit86:                                  ; preds = %for.body33
  %call1.i83 = call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call1.i83, label %can_list.exit86.if.then36_crit_edge, label %can_list.exit86.for.inc42_crit_edge

can_list.exit86.for.inc42_crit_edge:              ; preds = %can_list.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42

can_list.exit86.if.then36_crit_edge:              ; preds = %can_list.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %can_list.exit86.if.then36_crit_edge, %for.body33.if.then36_crit_edge
  %namelen.i87 = getelementptr inbounds %struct.jfs_ea, ptr %ea.1117, i32 0, i32 1
  %24 = ptrtoint ptr %namelen.i87 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %namelen.i87, align 1
  %conv.i88 = zext i8 %25 to i32
  %call.i.i90 = call i32 @strncmp(ptr noundef %name.i80, ptr noundef nonnull dereferenceable(8) @.str.17, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %call.i.i90, 0
  br i1 %tobool.not.i.i91, label %if.then36.copy_name.exit_crit_edge, label %land.lhs.true.i.i94

if.then36.copy_name.exit_crit_edge:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_name.exit

land.lhs.true.i.i94:                              ; preds = %if.then36
  %call1.i.i92 = call i32 @strncmp(ptr noundef %name.i80, ptr noundef nonnull dereferenceable(6) @.str.18, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i92)
  %tobool2.not.i.i93 = icmp eq i32 %call1.i.i92, 0
  br i1 %tobool2.not.i.i93, label %land.lhs.true.i.i94.copy_name.exit_crit_edge, label %land.lhs.true3.i.i97

land.lhs.true.i.i94.copy_name.exit_crit_edge:     ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_name.exit

land.lhs.true3.i.i97:                             ; preds = %land.lhs.true.i.i94
  %call4.i.i95 = call i32 @strncmp(ptr noundef %name.i80, ptr noundef nonnull dereferenceable(10) @.str.19, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i95)
  %tobool5.not.i.i96 = icmp eq i32 %call4.i.i95, 0
  br i1 %tobool5.not.i.i96, label %land.lhs.true3.i.i97.copy_name.exit_crit_edge, label %land.lhs.true6.i.i100

land.lhs.true3.i.i97.copy_name.exit_crit_edge:    ; preds = %land.lhs.true3.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_name.exit

land.lhs.true6.i.i100:                            ; preds = %land.lhs.true3.i.i97
  %call7.i.i98 = call i32 @strncmp(ptr noundef %name.i80, ptr noundef nonnull dereferenceable(9) @.str.16, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i98)
  %tobool8.not.i.i99 = icmp eq i32 %call7.i.i98, 0
  br i1 %tobool8.not.i.i99, label %land.lhs.true6.i.i100.copy_name.exit_crit_edge, label %if.then.i103

land.lhs.true6.i.i100.copy_name.exit_crit_edge:   ; preds = %land.lhs.true6.i.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_name.exit

if.then.i103:                                     ; preds = %land.lhs.true6.i.i100
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %buffer.0115 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 1869820462, ptr %buffer.0115, align 1
  %add.ptr.i101 = getelementptr i8, ptr %buffer.0115, i32 4
  %add.i102 = add nuw nsw i32 %conv.i88, 4
  br label %copy_name.exit

copy_name.exit:                                   ; preds = %if.then.i103, %land.lhs.true6.i.i100.copy_name.exit_crit_edge, %land.lhs.true3.i.i97.copy_name.exit_crit_edge, %land.lhs.true.i.i94.copy_name.exit_crit_edge, %if.then36.copy_name.exit_crit_edge
  %buffer.addr.0.i = phi ptr [ %add.ptr.i101, %if.then.i103 ], [ %buffer.0115, %if.then36.copy_name.exit_crit_edge ], [ %buffer.0115, %land.lhs.true.i.i94.copy_name.exit_crit_edge ], [ %buffer.0115, %land.lhs.true3.i.i97.copy_name.exit_crit_edge ], [ %buffer.0115, %land.lhs.true6.i.i100.copy_name.exit_crit_edge ]
  %len.0.i = phi i32 [ %add.i102, %if.then.i103 ], [ %conv.i88, %if.then36.copy_name.exit_crit_edge ], [ %conv.i88, %land.lhs.true.i.i94.copy_name.exit_crit_edge ], [ %conv.i88, %land.lhs.true3.i.i97.copy_name.exit_crit_edge ], [ %conv.i88, %land.lhs.true6.i.i100.copy_name.exit_crit_edge ]
  %27 = ptrtoint ptr %namelen.i87 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %namelen.i87, align 1
  %conv4.i = zext i8 %28 to i32
  %29 = call ptr @memcpy(ptr %buffer.addr.0.i, ptr %name.i80, i32 %conv4.i)
  %30 = load i8, ptr %namelen.i87, align 1
  %idxprom.i = zext i8 %30 to i32
  %arrayidx.i = getelementptr i8, ptr %buffer.addr.0.i, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx.i, align 1
  %add39 = add nuw nsw i32 %len.0.i, 1
  %add.ptr40 = getelementptr i8, ptr %buffer.0115, i32 %add39
  br label %for.inc42

for.inc42:                                        ; preds = %copy_name.exit, %can_list.exit86.for.inc42_crit_edge
  %buffer.1 = phi ptr [ %add.ptr40, %copy_name.exit ], [ %buffer.0115, %can_list.exit86.for.inc42_crit_edge ]
  %namelen43 = getelementptr inbounds %struct.jfs_ea, ptr %ea.1117, i32 0, i32 1
  %32 = ptrtoint ptr %namelen43 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %namelen43, align 1
  %conv44 = zext i8 %33 to i32
  %add46 = add nuw nsw i32 %conv44, 5
  %valuelen47 = getelementptr inbounds %struct.jfs_ea, ptr %ea.1117, i32 0, i32 2
  %34 = ptrtoint ptr %valuelen47 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %valuelen47, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv48 = zext i16 %36 to i32
  %add49 = add nuw nsw i32 %add46, %conv48
  %add.ptr50 = getelementptr i8, ptr %ea.1117, i32 %add49
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %5, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %add.ptr30 = getelementptr i8, ptr %5, i32 %39
  %cmp31 = icmp ult ptr %add.ptr50, %add.ptr30
  br i1 %cmp31, label %for.inc42.for.body33_crit_edge, label %for.inc42.release_crit_edge

for.inc42.release_crit_edge:                      ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

for.inc42.for.body33_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

release:                                          ; preds = %for.inc42.release_crit_edge, %for.cond28.preheader.release_crit_edge, %if.end21.release_crit_edge, %for.end.release_crit_edge, %if.end.release_crit_edge
  %size.2 = phi i32 [ 0, %if.end.release_crit_edge ], [ %size.0.lcssa, %for.end.release_crit_edge ], [ -34, %if.end21.release_crit_edge ], [ %size.0.lcssa, %for.cond28.preheader.release_crit_edge ], [ %size.0.lcssa, %for.inc42.release_crit_edge ]
  call fastcc void @ea_release(ptr noundef %1, ptr noundef nonnull %ea_buf)
  br label %out

out:                                              ; preds = %release, %entry.out_crit_edge
  %size.3 = phi i32 [ %size.2, %release ], [ %call2, %entry.out_crit_edge ]
  call void @up_read(ptr noundef %xattr_sem) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ea_buf) #10
  ret i32 %size.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_init_security(i16 noundef zeroext %tid, ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr) local_unnamed_addr #0 align 64 {
entry:
  %tid.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tid.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %tid, ptr %tid.addr, align 2
  %call = call i32 @security_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull @jfs_initxattrs, ptr noundef nonnull %tid.addr) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_initxattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr nocapture noundef readonly %fs_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_array, align 4
  %cmp.not25 = icmp eq ptr %1, null
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  br label %if.end8.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %if.end
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.026, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.if.end8.i_crit_edge

for.cond.if.end8.i_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end8.i:                                        ; preds = %for.cond.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %4 = phi ptr [ %3, %for.cond.if.end8.i_crit_edge ], [ %1, %entry.if.end8.i_crit_edge ]
  %xattr.026 = phi ptr [ %incdec.ptr, %for.cond.if.end8.i_crit_edge ], [ %xattr_array, %entry.if.end8.i_crit_edge ]
  %call = tail call i32 @strlen(ptr noundef nonnull %4) #13
  %add3 = add i32 %call, 10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3, i32 noundef 3136) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.for.end_crit_edge, label %if.end

if.end8.i.for.end_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %if.end8.i
  %5 = call ptr @memcpy(ptr %call9.i, ptr @.str.19, i32 10)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 9
  %6 = ptrtoint ptr %xattr.026 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xattr.026, align 4
  %call7 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %7) #13
  %8 = ptrtoint ptr %fs_info to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fs_info, align 2
  %value = getelementptr inbounds %struct.xattr, ptr %xattr.026, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.026, i32 0, i32 2
  %12 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value_len, align 4
  %call8 = tail call i32 @__jfs_setxattr(i16 noundef zeroext %9, ptr noundef %inode, ptr noundef nonnull %call9.i, ptr noundef %11, i32 noundef %13, i32 noundef 0)
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.for.end_crit_edge, label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end8.i.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -12, %if.end8.i.for.end_crit_edge ], [ %call8, %if.end.for.end_crit_edge ], [ %call8, %for.cond.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_read(ptr noundef %ip, ptr nocapture noundef writeonly %ealist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ea = getelementptr i8, ptr %ip, i32 -808
  %4 = ptrtoint ptr %ea to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ea, align 8
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %size = getelementptr i8, ptr %ip, i32 -804
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ealist to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ealist, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %cmp4.i = icmp ugt i32 %9, 128
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %_inline_ea.i = getelementptr i8, ptr %ip, i32 -240
  %11 = ptrtoint ptr %_inline_ea.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_inline_ea.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp8.not.i = icmp eq i32 %12, %8
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = call ptr @memcpy(ptr %ealist, ptr %_inline_ea.i, i32 %9)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %loc = getelementptr i8, ptr %ip, i32 -800
  %14 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %loc, align 4
  %16 = and i32 %15, -256
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %l2nbperpage, align 2
  %conv966 = zext i16 %19 to i32
  %shl = shl i32 %17, %conv966
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp68 = icmp sgt i32 %shl, 0
  br i1 %cmp68, label %for.body.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %addr2.i = getelementptr i8, ptr %ip, i32 -796
  %20 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr2.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %conv1.i = zext i32 %22 to i64
  %conv14 = sext i16 %19 to i32
  %sh_prom = zext i32 %conv14 to i64
  %shl15 = shl i64 %conv1.i, %sh_prom
  %23 = tail call i32 @llvm.bswap.i32(i32 %8)
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %24 = trunc i64 %shl15 to i32
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.lr.ph
  %nbytes.071 = phi i32 [ %23, %for.body.lr.ph ], [ %sub30, %if.end29.for.body_crit_edge ]
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %add32, %if.end29.for.body_crit_edge ]
  %cp.069 = phi ptr [ %ealist, %for.body.lr.ph ], [ %add.ptr, %if.end29.for.body_crit_edge ]
  %25 = tail call i32 @llvm.smin.i32(i32 %nbytes.071, i32 4096)
  %26 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize, align 16
  %add = add i32 %25, -1
  %sub = add i32 %add, %27
  %28 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_blocksize_bits, align 4
  %conv19 = zext i8 %29 to i32
  %30 = shl nsw i32 -1, %conv19
  %shl22 = and i32 %30, %sub
  %conv25 = add i32 %i.070, %24
  %call26 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv25, i32 noundef %shl22, i32 noundef 1, i32 noundef 0) #10
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %for.body.cleanup_crit_edge, label %if.end29

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.metapage, ptr %call26, i32 0, i32 7
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = call ptr @memcpy(ptr %cp.069, ptr %32, i32 %25)
  tail call void @release_metapage(ptr noundef nonnull %call26) #10
  %add.ptr = getelementptr i8, ptr %cp.069, i32 4096
  %sub30 = sub i32 %nbytes.071, %25
  %34 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nbperpage, align 4
  %conv31 = sext i16 %35 to i32
  %add32 = add i32 %i.070, %conv31
  %cmp = icmp slt i32 %add32, %shl
  br i1 %cmp, label %if.end29.for.body_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %if.end10.i, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ -5, %if.then5 ], [ 0, %if.then.i ], [ 0, %if.end10.i ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %if.end6.i.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbAlloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_metapage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbFree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @discard_metapage(ptr noundef %mp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flag) #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag) #10
  tail call void @release_metapage(ptr noundef %mp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_metapage(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_write(ptr noundef %ip, ptr noundef readonly %ealist, i32 noundef %size, ptr nocapture noundef %ea) unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno) #10
  %4 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %blkno, align 8, !annotation !65
  %tobool.not = icmp eq ptr %ealist, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %size)
  %cmp = icmp ult i32 %size, 129
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp ne ptr %ealist, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp.i = icmp ugt i32 %size, 4
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then
  br i1 %cmp, label %do.end12.i, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 153, ptr noundef nonnull @.str.15) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %mode2.i = getelementptr i8, ptr %ip, i32 -844
  %5 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode2.i, align 4
  %and.i = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true14.i, label %do.end12.i.if.end19.i_crit_edge

do.end12.i.if.end19.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

land.lhs.true14.i:                                ; preds = %do.end12.i
  %ea15.i = getelementptr i8, ptr %ip, i32 -808
  %7 = ptrtoint ptr %ea15.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ea15.i, align 8
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not.i = icmp eq i8 %9, 0
  br i1 %tobool17.not.i, label %land.lhs.true14.i.if.end5_crit_edge, label %land.lhs.true14.i.if.end19.i_crit_edge

land.lhs.true14.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

land.lhs.true14.i.if.end5_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end19.i:                                       ; preds = %land.lhs.true14.i.if.end19.i_crit_edge, %do.end12.i.if.end19.i_crit_edge
  %10 = tail call i32 @llvm.bswap.i32(i32 %size) #10
  %size20.i = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 2
  %11 = ptrtoint ptr %size20.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %size20.i, align 4
  %loc.i = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 3
  %12 = ptrtoint ptr %loc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %loc.i, align 4
  %addr2.i.i = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %addr2.i.i, align 4
  %_inline_ea.i = getelementptr i8, ptr %ip, i32 -240
  %14 = call ptr @memcpy(ptr %_inline_ea.i, ptr %ealist, i32 %size)
  %15 = ptrtoint ptr %ea to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %ea, align 4
  %16 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode2.i, align 4
  %and24.i = and i32 %17, -262145
  store i32 %and24.i, ptr %mode2.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %18 = ptrtoint ptr %ea to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ea, align 4
  %size26.i = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 2
  %19 = ptrtoint ptr %size26.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %size26.i, align 4
  %loc27.i = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 3
  %20 = ptrtoint ptr %loc27.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %loc27.i, align 4
  %addr2.i57.i = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %addr2.i57.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %addr2.i57.i, align 4
  %ea29.i = getelementptr i8, ptr %ip, i32 -808
  %22 = ptrtoint ptr %ea29.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ea29.i, align 8
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not.i = icmp eq i8 %24, 0
  br i1 %tobool33.not.i, label %if.else.i.cleanup_crit_edge, label %if.then34.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode235.i = getelementptr i8, ptr %ip, i32 -844
  %25 = ptrtoint ptr %mode235.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode235.i, align 4
  %or.i = or i32 %26, 262144
  store i32 %or.i, ptr %mode235.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true14.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %size, -1
  %add = add i32 %sub, %28
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %30 to i32
  %shr = lshr i32 %add, %conv
  %conv6 = sext i32 %shr to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %31 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %32 to i64
  %shl.i = shl i64 %conv6, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  tail call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #10
  %ixpxd = getelementptr i8, ptr %ip, i32 -832
  %33 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ixpxd, align 4
  %35 = shl i32 %34, 24
  %conv.i = zext i32 %35 to i64
  %shl.i117 = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr i8, ptr %ip, i32 -828
  %36 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr2.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %conv1.i = zext i32 %38 to i64
  %39 = and i32 %34, -256
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %conv16 = zext i32 %40 to i64
  %add.i = add nsw i64 %conv1.i, -1
  %add17 = add nsw i64 %add.i, %shl.i117
  %sub18 = add nsw i64 %add17, %conv16
  %call20 = call i32 @dbAlloc(ptr noundef %ip, i64 noundef %sub18, i64 noundef %conv6, ptr noundef nonnull %blkno) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond.preheader, label %if.then22

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp25133 = icmp sgt i32 %shr, 0
  br i1 %cmp25133, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  br label %for.body

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i120 = zext i8 %42 to i64
  %shl.i121 = shl i64 %conv6, %sh_prom.i120
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i121, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #10
  br label %cleanup

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %nbytes.0136 = phi i32 [ %size, %for.body.lr.ph ], [ %sub44, %if.end43.for.body_crit_edge ]
  %cp.0135 = phi ptr [ %ealist, %for.body.lr.ph ], [ %add.ptr, %if.end43.for.body_crit_edge ]
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %add46, %if.end43.for.body_crit_edge ]
  %43 = call i32 @llvm.smin.i32(i32 %nbytes.0136, i32 4096)
  %44 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_blocksize, align 16
  %add30 = add i32 %43, -1
  %sub31 = add i32 %add30, %45
  %46 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %s_blocksize_bits, align 4
  %conv33 = zext i8 %47 to i32
  %48 = shl nsw i32 -1, %conv33
  %shl = and i32 %48, %sub31
  %49 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %blkno, align 8
  %51 = trunc i64 %50 to i32
  %conv39 = add i32 %i.0134, %51
  %call40 = call ptr @__get_metapage(ptr noundef %ip, i32 noundef %conv39, i32 noundef %shl, i32 noundef 1, i32 noundef 1) #10
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i123 = zext i8 %53 to i64
  %shl.i124 = shl i64 %conv6, %sh_prom.i123
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i124, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #10
  %54 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %blkno, align 8
  %call58 = call i32 @dbFree(ptr noundef %ip, i64 noundef %55, i64 noundef %conv6) #10
  br label %cleanup

if.end43:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.metapage, ptr %call40, i32 0, i32 7
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %58 = call ptr @memcpy(ptr %57, ptr %cp.0135, i32 %43)
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call40, i32 0, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %flag.i) #10
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  call void @release_metapage(ptr noundef nonnull %call40) #10
  %add.ptr = getelementptr i8, ptr %cp.0135, i32 4096
  %sub44 = sub i32 %nbytes.0136, %43
  %59 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %nbperpage, align 4
  %conv45 = sext i16 %60 to i32
  %add46 = add i32 %i.0134, %conv45
  %cmp25 = icmp slt i32 %add46, %shr
  br i1 %cmp25, label %if.end43.for.body_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %61 = ptrtoint ptr %ea to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 32, ptr %ea, align 4
  %62 = ptrtoint ptr %ealist to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ealist, align 4
  %size48 = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 2
  %64 = ptrtoint ptr %size48 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %size48, align 4
  %loc = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 3
  %and1.i = and i32 %shr, 16777215
  %65 = call i32 @llvm.bswap.i32(i32 %and1.i) #10
  %66 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %blkno, align 8
  %sum.shift.i = lshr i64 %67, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i128 = and i32 %conv7.i, 255
  %or.i129 = or i32 %conv.i128, %65
  %68 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or.i129, ptr %loc, align 4
  %conv3.i = trunc i64 %67 to i32
  %69 = call i32 @llvm.bswap.i32(i32 %conv3.i) #10
  %addr2.i130 = getelementptr inbounds %struct.dxd_t, ptr %ea, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %addr2.i130 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %addr2.i130, align 4
  %ea50 = getelementptr i8, ptr %ip, i32 -808
  %71 = ptrtoint ptr %ea50 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ea50, align 8
  %73 = and i8 %72, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool53.not = icmp eq i8 %73, 0
  br i1 %tobool53.not, label %for.end.cleanup_crit_edge, label %if.then54

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %mode2 = getelementptr i8, ptr %ip, i32 -844
  %74 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mode2, align 4
  %or = or i32 %75, 262144
  store i32 %or, ptr %mode2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %for.end.cleanup_crit_edge, %if.then42, %if.then22, %if.end5.cleanup_crit_edge, %if.then34.i, %if.else.i.cleanup_crit_edge, %if.end19.i
  %retval.0 = phi i32 [ %call20, %if.then22 ], [ -5, %if.then42 ], [ 0, %if.then54 ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i.i.i, %if.end5.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.then34.i ], [ 0, %if.end19.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalidate_metapages(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEA(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_xattr_get_os2(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.17, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %land.lhs.true.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.18, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.19, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.return_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.return_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %call7.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.16, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.return_crit_edge, label %if.end

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @__jfs_getxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size)
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true6.i.return_crit_edge, %land.lhs.true3.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.return_crit_edge ], [ -95, %land.lhs.true.i.return_crit_edge ], [ -95, %land.lhs.true3.i.return_crit_edge ], [ -95, %land.lhs.true6.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_xattr_set_os2(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.17, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %land.lhs.true.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.18, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.19, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.return_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.return_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %call7.i = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.16, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.return_crit_edge, label %if.end

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @__jfs_xattr_set(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true6.i.return_crit_edge, %land.lhs.true3.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.return_crit_edge ], [ -95, %land.lhs.true.i.return_crit_edge ], [ -95, %land.lhs.true3.i.return_crit_edge ], [ -95, %land.lhs.true6.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__jfs_xattr_set(ptr noundef %inode, ptr nocapture noundef readonly %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %inode.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %inode.addr, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call1 = tail call zeroext i16 @txBegin(ptr noundef %2, i32 noundef 0) #10
  %commit_mutex = getelementptr i8, ptr %inode, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #10
  %call2 = tail call i32 @__jfs_setxattr(i16 noundef zeroext %call1, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 @txCommit(i16 noundef zeroext %call1, i32 noundef 1, ptr noundef nonnull %inode.addr, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call2, %entry.if.end_crit_edge ], [ %call3, %if.then ]
  call void @txEnd(i16 noundef zeroext %call1) #10
  call void @mutex_unlock(ptr noundef %commit_mutex) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @txBegin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txCommit(i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEnd(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_xattr_get(ptr noundef %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #10
  %call1 = tail call i32 @__jfs_getxattr(ptr noundef %inode, ptr noundef %call, ptr noundef %value, i32 noundef %size)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jfs_xattr_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #10
  %call1 = tail call fastcc i32 @__jfs_xattr_set(ptr noundef %inode, ptr noundef %call, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/xattr.c", i32 767, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__jfs_setxattr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__jfs_setxattr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @jfs_xattr_handlers, !7, !"jfs_xattr_handlers", i1 false, i1 false}
!7 = !{!"../fs/jfs/xattr.c", i32 988, i32 29}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jfs/xattr.c", i32 470, i32 18}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jfs/xattr.c", i32 560, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ea_get._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ea_get._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/jfs/xattr.c", i32 561, i32 18}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/jfs/xattr.c", i32 561, i32 28}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jfs/xattr.c", i32 370, i32 17}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/jfs/xattr.c", i32 583, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ea_release._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ea_release._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/jfs/xattr.c", i32 603, i32 3}
!29 = !{ptr @ea_put._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ea_put._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/jfs/xattr.c", i32 153, i32 3}
!34 = !{ptr @ea_write_inline._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ea_write_inline._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/jfs/xattr.c", i32 850, i32 28}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/jfs/xattr.c", i32 86, i32 20}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/jfs/xattr.c", i32 87, i32 20}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/jfs/xattr.c", i32 88, i32 20}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/jfs/xattr.c", i32 108, i32 18}
!47 = !{ptr @jfs_os2_xattr_handler, !48, !"jfs_os2_xattr_handler", i1 false, i1 false}
!48 = !{!"../fs/jfs/xattr.c", i32 970, i32 35}
!49 = !{ptr @jfs_user_xattr_handler, !50, !"jfs_user_xattr_handler", i1 false, i1 false}
!50 = !{!"../fs/jfs/xattr.c", i32 964, i32 35}
!51 = !{ptr @jfs_security_xattr_handler, !52, !"jfs_security_xattr_handler", i1 false, i1 false}
!52 = !{!"../fs/jfs/xattr.c", i32 976, i32 35}
!53 = !{ptr @jfs_trusted_xattr_handler, !54, !"jfs_trusted_xattr_handler", i1 false, i1 false}
!54 = !{!"../fs/jfs/xattr.c", i32 982, i32 35}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2154027631, i64 2154028110, i64 2154027668, i64 2154027724, i64 2154027758, i64 2154027782, i64 2154027823, i64 2154027844, i64 2154027872, i64 2154027906}
!65 = !{!"auto-init"}
!66 = !{i64 2154024278, i64 2154024757, i64 2154024315, i64 2154024371, i64 2154024405, i64 2154024429, i64 2154024470, i64 2154024491, i64 2154024519, i64 2154024553}
!67 = !{i64 2154007575, i64 2154008054, i64 2154007612, i64 2154007668, i64 2154007702, i64 2154007726, i64 2154007767, i64 2154007788, i64 2154007816, i64 2154007850}
