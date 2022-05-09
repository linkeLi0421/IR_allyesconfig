; ModuleID = '/llk/IR_all_yes/fs/ext2/xattr.c_pt.bc'
source_filename = "../fs/ext2/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext2_xattr_header = type { i32, i32, i32, i32, [4 x i32] }
%struct.ext2_xattr_entry = type { i8, i8, i16, i32, i32, i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.mb_cache_entry = type { %struct.list_head, %struct.hlist_bl_node, %struct.atomic_t, i32, i8, i64 }
%struct.ext2_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, [190 x i32] }

@ext2_xattr_user_handler = external dso_local constant %struct.xattr_handler, align 4
@ext2_xattr_trusted_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@ext2_xattr_security_handler = external dso_local constant %struct.xattr_handler, align 4
@ext2_xattr_handlers = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @ext2_xattr_user_handler, ptr @ext2_xattr_trusted_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @ext2_xattr_security_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ext2_xattr_get\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inode %ld: bad block %d\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ext2_xattr_set\00", [17 x i8] zeroinitializer }, align 32
@ext2_xattr_delete_inode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ext2/xattr.c\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ext2_xattr_delete_inode\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"inode %ld: xattr block %d is out of data blocks range\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"inode %ld: block %d read error\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext2_xattr_list\00", [16 x i8] zeroinitializer }, align 32
@ext2_xattr_handler_map = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @ext2_xattr_user_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @ext2_xattr_trusted_handler, ptr null, ptr @ext2_xattr_security_handler], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ext2_xattr_cache_find\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"inode %ld: block %ld read error\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"ext2_xattr_handlers\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 113, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 229, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 230, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 457, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 805, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 811, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 812, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 820, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 315, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"ext2_xattr_handler_map\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 101, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 366, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 953, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [19 x i8] c"../fs/ext2/xattr.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 954, i32 5 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @ext2_xattr_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ext2_xattr_handler_map, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_xattr_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_xattr_handler_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_xattr_get(ptr noundef %inode, i32 noundef %name_index, ptr noundef readonly %name, ptr noundef writeonly %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_ea_block_cache = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_ea_block_cache, align 4
  %cmp = icmp eq ptr %name, null
  br i1 %cmp, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strlen(ptr noundef nonnull %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2)
  %cmp3 = icmp ugt i32 %call2, 255
  br i1 %cmp3, label %if.end.cleanup67_crit_edge, label %if.end5

if.end.cleanup67_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end5:                                          ; preds = %if.end
  %xattr_sem = getelementptr i8, ptr %inode, i32 -232
  tail call void @down_read(ptr noundef %xattr_sem) #10
  %i_file_acl = getelementptr i8, ptr %inode, i32 -256
  %6 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end5.brelse.exit_crit_edge, label %if.end9

if.end5.brelse.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.end9:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %conv = zext i32 %7 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %conv, i32 noundef %13, i32 noundef 8) #10
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end9.brelse.exit_crit_edge, label %if.end17

if.end9.brelse.exit_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.end17:                                         ; preds = %if.end9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b_size, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 746
  br i1 %cmp.not.i, label %ext2_xattr_header_valid.exit, label %if.end17.bad_block_crit_edge

if.end17.bad_block_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

ext2_xattr_header_valid.exit:                     ; preds = %if.end17
  %h_blocks.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %h_blocks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %h_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %21)
  %cmp1.not.i = icmp eq i32 %21, 16777216
  br i1 %cmp1.not.i, label %if.end25, label %ext2_xattr_header_valid.exit.bad_block_crit_edge

ext2_xattr_header_valid.exit.bad_block_crit_edge: ; preds = %ext2_xattr_header_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

bad_block:                                        ; preds = %ext2_xattr_entry_valid.exit.bad_block_crit_edge, %if.end7.i.bad_block_crit_edge, %if.end.i.bad_block_crit_edge, %while.body.bad_block_crit_edge, %ext2_xattr_header_valid.exit.bad_block_crit_edge, %if.end17.bad_block_crit_edge
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %26 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_file_acl, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %27) #10
  br label %if.then.i

if.end25:                                         ; preds = %ext2_xattr_header_valid.exit
  %add.ptr27 = getelementptr %struct.ext2_xattr_header, ptr %15, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end37.while.cond_crit_edge, %if.end25
  %entry1.0 = phi ptr [ %add.ptr27, %if.end25 ], [ %add.ptr.i109, %if.end37.while.cond_crit_edge ]
  %28 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entry1.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp28.not = icmp eq i32 %29, 0
  br i1 %cmp28.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize, align 16
  %34 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %entry1.0, align 4
  %conv.i = zext i8 %35 to i32
  %add2.i = add nuw nsw i32 %conv.i, 19
  %and.i = and i32 %add2.i, 508
  %add.ptr.i109 = getelementptr i8, ptr %entry1.0, i32 %and.i
  %cmp.not.i110 = icmp ult ptr %add.ptr.i109, %add.ptr
  br i1 %cmp.not.i110, label %if.end.i, label %while.body.bad_block_crit_edge

while.body.bad_block_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

if.end.i:                                         ; preds = %while.body
  %e_value_block.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0, i32 0, i32 3
  %36 = ptrtoint ptr %e_value_block.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %e_value_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp4.not.i = icmp eq i32 %37, 0
  br i1 %cmp4.not.i, label %if.end7.i, label %if.end.i.bad_block_crit_edge

if.end.i.bad_block_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

if.end7.i:                                        ; preds = %if.end.i
  %e_value_size.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0, i32 0, i32 4
  %38 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %e_value_size.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %33)
  %cmp8.i = icmp ugt i32 %40, %33
  br i1 %cmp8.i, label %if.end7.i.bad_block_crit_edge, label %ext2_xattr_entry_valid.exit

if.end7.i.bad_block_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

ext2_xattr_entry_valid.exit:                      ; preds = %if.end7.i
  %e_value_offs.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0, i32 0, i32 2
  %41 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %e_value_offs.i, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #10
  %conv10.i = zext i16 %43 to i32
  %add11.i = add i32 %40, %conv10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %33)
  %cmp12.i.not = icmp ugt i32 %add11.i, %33
  br i1 %cmp12.i.not, label %ext2_xattr_entry_valid.exit.bad_block_crit_edge, label %if.end33

ext2_xattr_entry_valid.exit.bad_block_crit_edge:  ; preds = %ext2_xattr_entry_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

if.end33:                                         ; preds = %ext2_xattr_entry_valid.exit
  %e_name_index.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0, i32 0, i32 1
  %44 = ptrtoint ptr %e_name_index.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %e_name_index.i, align 1
  %conv.i113 = zext i8 %45 to i32
  %sub.i = sub i32 %name_index, %conv.i113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.i114, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end.i114:                                      ; preds = %if.end33
  %sub3.i = sub i32 %call2, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool4.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool4.not.i, label %ext2_xattr_cmp_entry.exit, label %if.end.i114.if.end37_crit_edge

if.end.i114.if.end37_crit_edge:                   ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

ext2_xattr_cmp_entry.exit:                        ; preds = %if.end.i114
  %e_name.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0, i32 0, i32 6
  %call.i115 = tail call i32 @memcmp(ptr noundef nonnull %name, ptr noundef %e_name.i, i32 noundef %call2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool35.not = icmp eq i32 %call.i115, 0
  br i1 %tobool35.not, label %found, label %ext2_xattr_cmp_entry.exit.if.end37_crit_edge

ext2_xattr_cmp_entry.exit.if.end37_crit_edge:     ; preds = %ext2_xattr_cmp_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %ext2_xattr_cmp_entry.exit.if.end37_crit_edge, %if.end.i114.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %cmp.1.i124 = phi i32 [ %call.i115, %ext2_xattr_cmp_entry.exit.if.end37_crit_edge ], [ %sub.i, %if.end33.if.end37_crit_edge ], [ %sub3.i, %if.end.i114.if.end37_crit_edge ]
  %cmp38 = icmp slt i32 %cmp.1.i124, 0
  br i1 %cmp38, label %if.end37.while.end_crit_edge, label %if.end37.while.cond_crit_edge

if.end37.while.cond_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end37.while.end_crit_edge, %while.cond.while.end_crit_edge
  %h_hash.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %15, i32 0, i32 3
  %46 = ptrtoint ptr %h_hash.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %h_hash.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %49 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %b_blocknr.i, align 8
  %call.i116 = tail call i32 @mb_cache_entry_create(ptr noundef %5, i32 noundef 3136, i32 noundef %48, i64 noundef %50, i1 noundef zeroext true) #10
  br label %if.then.i

found:                                            ; preds = %ext2_xattr_cmp_entry.exit
  %e_value_size.i.le = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0, i32 0, i32 4
  %e_value_offs.i.le = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0, i32 0, i32 2
  %51 = ptrtoint ptr %e_value_size.i.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %e_value_size.i.le, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %call50 = tail call fastcc i32 @ext2_xattr_cache_insert(ptr noundef %5, ptr noundef nonnull %call.i)
  %tobool55.not = icmp eq ptr %buffer, null
  br i1 %tobool55.not, label %found.if.then.i_crit_edge, label %if.then56

found.if.then.i_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then56:                                        ; preds = %found
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %buffer_size)
  %cmp57 = icmp ugt i32 %53, %buffer_size
  br i1 %cmp57, label %if.then56.if.then.i_crit_edge, label %if.end60

if.then56.if.then.i_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end60:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data, align 4
  %56 = ptrtoint ptr %e_value_offs.i.le to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %e_value_offs.i.le, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %conv62 = zext i16 %58 to i32
  %add.ptr63 = getelementptr i8, ptr %55, i32 %conv62
  %59 = call ptr @memcpy(ptr %buffer, ptr %add.ptr63, i32 %53)
  br label %if.then.i

if.then.i:                                        ; preds = %if.end60, %if.then56.if.then.i_crit_edge, %found.if.then.i_crit_edge, %while.end, %bad_block
  %error.0 = phi i32 [ -34, %if.then56.if.then.i_crit_edge ], [ -5, %bad_block ], [ %53, %if.end60 ], [ %53, %found.if.then.i_crit_edge ], [ -61, %while.end ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end9.brelse.exit_crit_edge, %if.end5.brelse.exit_crit_edge
  %error.0128 = phi i32 [ %error.0, %if.then.i ], [ -61, %if.end5.brelse.exit_crit_edge ], [ -5, %if.end9.brelse.exit_crit_edge ]
  tail call void @up_read(ptr noundef %xattr_sem) #10
  br label %cleanup67

cleanup67:                                        ; preds = %brelse.exit, %if.end.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ %error.0128, %brelse.exit ], [ -22, %entry.cleanup67_crit_edge ], [ -34, %if.end.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_xattr_cache_insert(ptr noundef %cache, ptr nocapture noundef readonly %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %h_hash = getelementptr inbounds %struct.ext2_xattr_header, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_hash, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %5 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %b_blocknr, align 8
  %call = tail call i32 @mb_cache_entry_create(ptr noundef %cache, i32 noundef 3136, i32 noundef %4, i64 noundef %6, i1 noundef zeroext true) #10
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.if.end3_crit_edge [
    i32 0, label %if.else
    i32 -16, label %if.then1
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1, %entry.if.end3_crit_edge
  %error.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.else ], [ %call, %entry.if.end3_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_listxattr(ptr noundef %dentry, ptr noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ea_block_cache.i = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %s_ea_block_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_ea_block_cache.i, align 4
  %xattr_sem.i = getelementptr i8, ptr %1, i32 -232
  tail call void @down_read(ptr noundef %xattr_sem.i) #10
  %i_file_acl.i = getelementptr i8, ptr %1, i32 -256
  %8 = ptrtoint ptr %i_file_acl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_file_acl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.ext2_xattr_list.exit_crit_edge, label %if.end.i

entry.ext2_xattr_list.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_list.exit

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %conv.i = zext i32 %9 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %13, i64 noundef %conv.i, i32 noundef %15, i32 noundef 8) #10
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.end.i.ext2_xattr_list.exit_crit_edge, label %if.end12.i

if.end.i.ext2_xattr_list.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_list.exit

if.end12.i:                                       ; preds = %if.end.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_size.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 %19
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %21)
  %cmp.not.i.i = icmp eq i32 %21, 746
  br i1 %cmp.not.i.i, label %ext2_xattr_header_valid.exit.i, label %if.end12.i.bad_block.i_crit_edge

if.end12.i.bad_block.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block.i

ext2_xattr_header_valid.exit.i:                   ; preds = %if.end12.i
  %h_blocks.i.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %h_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %23)
  %cmp1.not.i.i = icmp eq i32 %23, 16777216
  br i1 %cmp1.not.i.i, label %if.end20.i, label %ext2_xattr_header_valid.exit.i.bad_block.i_crit_edge

ext2_xattr_header_valid.exit.i.bad_block.i_crit_edge: ; preds = %ext2_xattr_header_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block.i

bad_block.i:                                      ; preds = %ext2_xattr_entry_valid.exit.i.bad_block.i_crit_edge, %if.end7.i.i.bad_block.i_crit_edge, %if.end.i.i.bad_block.i_crit_edge, %while.body.i.bad_block.i_crit_edge, %ext2_xattr_header_valid.exit.i.bad_block.i_crit_edge, %if.end12.i.bad_block.i_crit_edge
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino.i, align 8
  %28 = ptrtoint ptr %i_file_acl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_file_acl.i, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %25, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %27, i32 noundef %29) #10
  br label %if.then.i148.i

if.end20.i:                                       ; preds = %ext2_xattr_header_valid.exit.i
  %add.ptr22.i = getelementptr %struct.ext2_xattr_header, ptr %17, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %ext2_xattr_entry_valid.exit.i.while.cond.i_crit_edge, %if.end20.i
  %entry1.0.i = phi ptr [ %add.ptr22.i, %if.end20.i ], [ %add.ptr.i142.i, %ext2_xattr_entry_valid.exit.i.while.cond.i_crit_edge ]
  %30 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entry1.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i = icmp eq i32 %31, 0
  br i1 %cmp.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %32 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize.i, align 16
  %36 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %entry1.0.i, align 4
  %conv.i.i = zext i8 %37 to i32
  %add2.i.i = add nuw nsw i32 %conv.i.i, 19
  %and.i.i = and i32 %add2.i.i, 508
  %add.ptr.i142.i = getelementptr i8, ptr %entry1.0.i, i32 %and.i.i
  %cmp.not.i143.i = icmp ult ptr %add.ptr.i142.i, %add.ptr.i
  br i1 %cmp.not.i143.i, label %if.end.i.i, label %while.body.i.bad_block.i_crit_edge

while.body.i.bad_block.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block.i

if.end.i.i:                                       ; preds = %while.body.i
  %e_value_block.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0.i, i32 0, i32 3
  %38 = ptrtoint ptr %e_value_block.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %e_value_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp4.not.i.i, label %if.end7.i.i, label %if.end.i.i.bad_block.i_crit_edge

if.end.i.i.bad_block.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %e_value_size.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0.i, i32 0, i32 4
  %40 = ptrtoint ptr %e_value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %e_value_size.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %35)
  %cmp8.i.i = icmp ugt i32 %42, %35
  br i1 %cmp8.i.i, label %if.end7.i.i.bad_block.i_crit_edge, label %ext2_xattr_entry_valid.exit.i

if.end7.i.i.bad_block.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block.i

ext2_xattr_entry_valid.exit.i:                    ; preds = %if.end7.i.i
  %e_value_offs.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.0.i, i32 0, i32 2
  %43 = ptrtoint ptr %e_value_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %e_value_offs.i.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #10
  %conv10.i.i = zext i16 %45 to i32
  %add11.i.i = add i32 %42, %conv10.i.i
  %cmp12.i.not.i = icmp ugt i32 %add11.i.i, %35
  br i1 %cmp12.i.not.i, label %ext2_xattr_entry_valid.exit.i.bad_block.i_crit_edge, label %ext2_xattr_entry_valid.exit.i.while.cond.i_crit_edge

ext2_xattr_entry_valid.exit.i.while.cond.i_crit_edge: ; preds = %ext2_xattr_entry_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

ext2_xattr_entry_valid.exit.i.bad_block.i_crit_edge: ; preds = %ext2_xattr_entry_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block.i

while.end.i:                                      ; preds = %while.cond.i
  %h_hash.i.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %17, i32 0, i32 3
  %46 = ptrtoint ptr %h_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %h_hash.i.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %b_blocknr.i.i, align 8
  %call.i146.i = tail call i32 @mb_cache_entry_create(ptr noundef %7, i32 noundef 3136, i32 noundef %48, i64 noundef %50, i1 noundef zeroext true) #10
  %51 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i, align 4
  %add.ptr37.i = getelementptr %struct.ext2_xattr_header, ptr %52, i32 1
  %53 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp38.not172.i = icmp eq i32 %54, 0
  br i1 %cmp38.not172.i, label %while.end.i.for.end.i_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  br label %for.body.i

while.end.i.for.end.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.end.i.for.body.i_crit_edge
  %buffer.addr.0176.i = phi ptr [ %buffer.addr.4.ph.i, %for.inc.i.for.body.i_crit_edge ], [ %buffer, %while.end.i.for.body.i_crit_edge ]
  %rest.0174.i = phi i32 [ %rest.3.ph.i, %for.inc.i.for.body.i_crit_edge ], [ %size, %while.end.i.for.body.i_crit_edge ]
  %entry1.1173.i = phi ptr [ %add.ptr80.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr37.i, %while.end.i.for.body.i_crit_edge ]
  %e_name_index.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.1173.i, i32 0, i32 1
  %55 = ptrtoint ptr %e_name_index.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %e_name_index.i, align 1
  %conv41.i = zext i8 %56 to i32
  %57 = add nsw i32 %conv41.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %58 = icmp ult i32 %57, 6
  br i1 %58, label %ext2_xattr_handler.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

ext2_xattr_handler.exit.i:                        ; preds = %for.body.i
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @ext2_xattr_handler_map, i32 0, i32 %conv41.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %61 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %56, label %land.lhs.true.i [
    i8 5, label %ext2_xattr_handler.exit.i.for.inc.i_crit_edge
    i8 0, label %ext2_xattr_handler.exit.i.for.inc.i_crit_edge1
  ]

ext2_xattr_handler.exit.i.for.inc.i_crit_edge1:   ; preds = %ext2_xattr_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

ext2_xattr_handler.exit.i.for.inc.i_crit_edge:    ; preds = %ext2_xattr_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %ext2_xattr_handler.exit.i
  %list.i = getelementptr inbounds %struct.xattr_handler, ptr %60, i32 0, i32 3
  %62 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %list.i, align 4
  %tobool44.not.i = icmp eq ptr %63, null
  br i1 %tobool44.not.i, label %land.lhs.true.i.if.then48.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then48.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %call46.i = tail call zeroext i1 %63(ptr noundef %dentry) #10
  br i1 %call46.i, label %lor.lhs.false.i.if.then48.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i.if.then48.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false.i.if.then48.i_crit_edge, %land.lhs.true.i.if.then48.i_crit_edge
  %prefix49.i = getelementptr inbounds %struct.xattr_handler, ptr %60, i32 0, i32 1
  %64 = ptrtoint ptr %prefix49.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prefix49.i, align 4
  %tobool50.not.i = icmp eq ptr %65, null
  br i1 %tobool50.not.i, label %cond.false.i, label %if.then48.i.cond.end.i_crit_edge

if.then48.i.cond.end.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %60, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then48.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %67, %cond.false.i ], [ %65, %if.then48.i.cond.end.i_crit_edge ]
  %call51.i = tail call i32 @strlen(ptr noundef %cond.i) #14
  %68 = ptrtoint ptr %entry1.1173.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %entry1.1173.i, align 4
  %conv53.i = zext i8 %69 to i32
  %add54.i = add i32 %call51.i, 1
  %add55.i = add i32 %add54.i, %conv53.i
  %tobool56.not.i = icmp eq ptr %buffer.addr.0176.i, null
  br i1 %tobool56.not.i, label %cond.end.i.cleanup.thread.i_crit_edge, label %if.then57.i

cond.end.i.cleanup.thread.i_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.then57.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rest.0174.i, i32 %add55.i)
  %cmp58.i = icmp ult i32 %rest.0174.i, %add55.i
  br i1 %cmp58.i, label %if.then57.i.if.then.i148.i_crit_edge, label %if.end61.i

if.then57.i.if.then.i148.i_crit_edge:             ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i148.i

if.end61.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = call ptr @memcpy(ptr %buffer.addr.0176.i, ptr %cond.i, i32 %call51.i)
  %add.ptr62.i = getelementptr i8, ptr %buffer.addr.0176.i, i32 %call51.i
  %e_name.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.1173.i, i32 0, i32 6
  %71 = ptrtoint ptr %entry1.1173.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %entry1.1173.i, align 4
  %conv64.i = zext i8 %72 to i32
  %73 = call ptr @memcpy(ptr %add.ptr62.i, ptr %e_name.i, i32 %conv64.i)
  %74 = load i8, ptr %entry1.1173.i, align 4
  %conv66.i = zext i8 %74 to i32
  %add.ptr67.i = getelementptr i8, ptr %add.ptr62.i, i32 %conv66.i
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr67.i, i32 1
  %75 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %add.ptr67.i, align 1
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end61.i, %cond.end.i.cleanup.thread.i_crit_edge
  %buffer.addr.1.i = phi ptr [ %incdec.ptr.i, %if.end61.i ], [ null, %cond.end.i.cleanup.thread.i_crit_edge ]
  %sub.i = sub i32 %rest.0174.i, %add55.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.thread.i, %lor.lhs.false.i.for.inc.i_crit_edge, %ext2_xattr_handler.exit.i.for.inc.i_crit_edge, %ext2_xattr_handler.exit.i.for.inc.i_crit_edge1, %for.body.i.for.inc.i_crit_edge
  %rest.3.ph.i = phi i32 [ %sub.i, %cleanup.thread.i ], [ %rest.0174.i, %ext2_xattr_handler.exit.i.for.inc.i_crit_edge ], [ %rest.0174.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %rest.0174.i, %for.body.i.for.inc.i_crit_edge ], [ %rest.0174.i, %ext2_xattr_handler.exit.i.for.inc.i_crit_edge1 ]
  %buffer.addr.4.ph.i = phi ptr [ %buffer.addr.1.i, %cleanup.thread.i ], [ %buffer.addr.0176.i, %ext2_xattr_handler.exit.i.for.inc.i_crit_edge ], [ %buffer.addr.0176.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %buffer.addr.0176.i, %for.body.i.for.inc.i_crit_edge ], [ %buffer.addr.0176.i, %ext2_xattr_handler.exit.i.for.inc.i_crit_edge1 ]
  %76 = ptrtoint ptr %entry1.1173.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %entry1.1173.i, align 4
  %conv76.i = zext i8 %77 to i32
  %add78.i = add nuw nsw i32 %conv76.i, 19
  %and79.i = and i32 %add78.i, 508
  %add.ptr80.i = getelementptr i8, ptr %entry1.1173.i, i32 %and79.i
  %78 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr80.i, align 4
  %cmp38.not.i = icmp eq i32 %79, 0
  br i1 %cmp38.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.end.i.for.end.i_crit_edge
  %rest.0.lcssa.i = phi i32 [ %size, %while.end.i.for.end.i_crit_edge ], [ %rest.3.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %sub81.i = sub i32 %size, %rest.0.lcssa.i
  br label %if.then.i148.i

if.then.i148.i:                                   ; preds = %for.end.i, %if.then57.i.if.then.i148.i_crit_edge, %bad_block.i
  %error.4.i = phi i32 [ -5, %bad_block.i ], [ %sub81.i, %for.end.i ], [ -34, %if.then57.i.if.then.i148.i_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #10
  br label %ext2_xattr_list.exit

ext2_xattr_list.exit:                             ; preds = %if.then.i148.i, %if.end.i.ext2_xattr_list.exit_crit_edge, %entry.ext2_xattr_list.exit_crit_edge
  %error.4170.i = phi i32 [ %error.4.i, %if.then.i148.i ], [ 0, %entry.ext2_xattr_list.exit_crit_edge ], [ -5, %if.end.i.ext2_xattr_list.exit_crit_edge ]
  tail call void @up_read(ptr noundef %xattr_sem.i) #10
  ret i32 %error.4170.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_xattr_set(ptr noundef %inode, i32 noundef %name_index, ptr noundef readonly %name, ptr noundef readonly %value, i32 noundef %value_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %cmp = icmp eq ptr %value, null
  %spec.select = select i1 %cmp, i32 0, i32 %value_len
  %cmp1 = icmp eq ptr %name, null
  br i1 %cmp1, label %entry.cleanup277_crit_edge, label %if.end3

entry.cleanup277_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup277

if.end3:                                          ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp4 = icmp ugt i32 %call, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %3)
  %cmp6 = icmp ugt i32 %spec.select, %3
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.end3.cleanup277_crit_edge, label %if.end8

if.end3.cleanup277_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup277

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @dquot_initialize(ptr noundef %inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup277_crit_edge

if.end8.cleanup277_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup277

if.end11:                                         ; preds = %if.end8
  %xattr_sem = getelementptr i8, ptr %inode, i32 -232
  tail call void @down_write(ptr noundef %xattr_sem) #10
  %i_file_acl = getelementptr i8, ptr %inode, i32 -256
  %4 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %if.end65.thread, label %if.then15

if.then15:                                        ; preds = %if.end11
  %conv = zext i32 %5 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %7, i64 noundef %conv, i32 noundef %9, i32 noundef 8) #10
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.then15.if.end274.thread521_crit_edge, label %if.end21

if.then15.if.end274.thread521_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end274.thread521

if.end21:                                         ; preds = %if.then15
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %b_size, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 746
  br i1 %cmp.not.i, label %ext2_xattr_header_valid.exit, label %if.end21.bad_block_crit_edge

if.end21.bad_block_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

ext2_xattr_header_valid.exit:                     ; preds = %if.end21
  %h_blocks.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %h_blocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %17)
  %cmp1.not.i = icmp eq i32 %17, 16777216
  br i1 %cmp1.not.i, label %if.end28, label %ext2_xattr_header_valid.exit.bad_block_crit_edge

ext2_xattr_header_valid.exit.bad_block_crit_edge: ; preds = %ext2_xattr_header_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

bad_block:                                        ; preds = %ext2_xattr_entry_valid.exit.bad_block_crit_edge, %if.end7.i.bad_block_crit_edge, %if.end.i.bad_block_crit_edge, %while.body.bad_block_crit_edge, %ext2_xattr_header_valid.exit.bad_block_crit_edge, %if.end21.bad_block_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %20 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_file_acl, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %21) #10
  br label %cleanup267

if.end28:                                         ; preds = %ext2_xattr_header_valid.exit
  %add.ptr30 = getelementptr %struct.ext2_xattr_header, ptr %11, i32 1
  %22 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp31.not530 = icmp eq i32 %23, 0
  br i1 %cmp31.not530, label %if.end28..thread_crit_edge, label %while.body.lr.ph

if.end28..thread_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %.thread

while.body.lr.ph:                                 ; preds = %if.end28
  %24 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize, align 16
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %here.0535 = phi ptr [ null, %while.body.lr.ph ], [ %here.1, %if.end53.while.body_crit_edge ]
  %last.0533 = phi ptr [ %add.ptr30, %while.body.lr.ph ], [ %add.ptr.i456, %if.end53.while.body_crit_edge ]
  %min_offs.0532 = phi i32 [ %3, %while.body.lr.ph ], [ %min_offs.2, %if.end53.while.body_crit_edge ]
  %not_found.0531 = phi i32 [ 1, %while.body.lr.ph ], [ %not_found.1, %if.end53.while.body_crit_edge ]
  %26 = ptrtoint ptr %last.0533 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %last.0533, align 4
  %conv.i = zext i8 %27 to i32
  %add2.i = add nuw nsw i32 %conv.i, 19
  %and.i = and i32 %add2.i, 508
  %add.ptr.i456 = getelementptr i8, ptr %last.0533, i32 %and.i
  %cmp.not.i457 = icmp ult ptr %add.ptr.i456, %add.ptr
  br i1 %cmp.not.i457, label %if.end.i, label %while.body.bad_block_crit_edge

while.body.bad_block_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

if.end.i:                                         ; preds = %while.body
  %e_value_block.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %last.0533, i32 0, i32 3
  %28 = ptrtoint ptr %e_value_block.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %e_value_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.not.i = icmp eq i32 %29, 0
  br i1 %cmp4.not.i, label %if.end7.i, label %if.end.i.bad_block_crit_edge

if.end.i.bad_block_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

if.end7.i:                                        ; preds = %if.end.i
  %e_value_size.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %last.0533, i32 0, i32 4
  %30 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %e_value_size.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %25)
  %cmp8.i = icmp ugt i32 %32, %25
  br i1 %cmp8.i, label %if.end7.i.bad_block_crit_edge, label %ext2_xattr_entry_valid.exit

if.end7.i.bad_block_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

ext2_xattr_entry_valid.exit:                      ; preds = %if.end7.i
  %e_value_offs.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %last.0533, i32 0, i32 2
  %33 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %e_value_offs.i, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  %conv10.i = zext i16 %35 to i32
  %add11.i = add i32 %32, %conv10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %25)
  %cmp12.i.not = icmp ugt i32 %add11.i, %25
  br i1 %cmp12.i.not, label %ext2_xattr_entry_valid.exit.bad_block_crit_edge, label %if.end36

ext2_xattr_entry_valid.exit.bad_block_crit_edge:  ; preds = %ext2_xattr_entry_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_block

if.end36:                                         ; preds = %ext2_xattr_entry_valid.exit
  %36 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %e_value_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool37.not = icmp eq i32 %37, 0
  br i1 %tobool37.not, label %if.end36.if.end44_crit_edge, label %if.then38

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %e_value_offs.i, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv39 = zext i16 %40 to i32
  %41 = tail call i32 @llvm.umin.i32(i32 %min_offs.0532, i32 %conv39)
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end36.if.end44_crit_edge
  %min_offs.2 = phi i32 [ %41, %if.then38 ], [ %min_offs.0532, %if.end36.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %not_found.0531)
  %cmp45 = icmp sgt i32 %not_found.0531, 0
  br i1 %cmp45, label %if.then47, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  %e_name_index.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %last.0533, i32 0, i32 1
  %42 = ptrtoint ptr %e_name_index.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %e_name_index.i, align 1
  %conv.i460 = zext i8 %43 to i32
  %sub.i = sub i32 %name_index, %conv.i460
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.i461, label %if.then47.ext2_xattr_cmp_entry.exit_crit_edge

if.then47.ext2_xattr_cmp_entry.exit_crit_edge:    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_cmp_entry.exit

if.end.i461:                                      ; preds = %if.then47
  %sub3.i = sub i32 %call, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool4.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i461.ext2_xattr_cmp_entry.exit_crit_edge

if.end.i461.ext2_xattr_cmp_entry.exit_crit_edge:  ; preds = %if.end.i461
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_cmp_entry.exit

if.then5.i:                                       ; preds = %if.end.i461
  call void @__sanitizer_cov_trace_pc() #12
  %e_name.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %last.0533, i32 0, i32 6
  %call.i462 = tail call i32 @memcmp(ptr noundef nonnull %name, ptr noundef %e_name.i, i32 noundef %call) #14
  br label %ext2_xattr_cmp_entry.exit

ext2_xattr_cmp_entry.exit:                        ; preds = %if.then5.i, %if.end.i461.ext2_xattr_cmp_entry.exit_crit_edge, %if.then47.ext2_xattr_cmp_entry.exit_crit_edge
  %cmp.1.i = phi i32 [ %sub3.i, %if.end.i461.ext2_xattr_cmp_entry.exit_crit_edge ], [ %call.i462, %if.then5.i ], [ %sub.i, %if.then47.ext2_xattr_cmp_entry.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmp.1.i)
  %cmp49 = icmp slt i32 %cmp.1.i, 1
  %spec.select450 = select i1 %cmp49, ptr %last.0533, ptr %here.0535
  br label %if.end53

if.end53:                                         ; preds = %ext2_xattr_cmp_entry.exit, %if.end44.if.end53_crit_edge
  %not_found.1 = phi i32 [ %not_found.0531, %if.end44.if.end53_crit_edge ], [ %cmp.1.i, %ext2_xattr_cmp_entry.exit ]
  %here.1 = phi ptr [ %here.0535, %if.end44.if.end53_crit_edge ], [ %spec.select450, %ext2_xattr_cmp_entry.exit ]
  %44 = ptrtoint ptr %add.ptr.i456 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i456, align 4
  %cmp31.not = icmp eq i32 %45, 0
  br i1 %cmp31.not, label %if.end65, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end65.thread:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize, align 16
  %sub64 = add i32 %47, -36
  br label %if.then67

if.end65:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %not_found.1)
  %cmp57 = icmp sgt i32 %not_found.1, 0
  br i1 %cmp57, label %if.end65..thread_crit_edge, label %48

if.end65..thread_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %.thread

.thread:                                          ; preds = %if.end65..thread_crit_edge, %if.end28..thread_crit_edge
  %last.0.lcssa555 = phi ptr [ %add.ptr.i456, %if.end65..thread_crit_edge ], [ %add.ptr30, %if.end28..thread_crit_edge ]
  %min_offs.0.lcssa553 = phi i32 [ %min_offs.2, %if.end65..thread_crit_edge ], [ %3, %if.end28..thread_crit_edge ]
  %sub.ptr.lhs.cast559 = ptrtoint ptr %last.0.lcssa555 to i32
  %sub.ptr.rhs.cast560 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.neg561 = add i32 %sub.ptr.rhs.cast560, -4
  %sub562 = add i32 %sub.ptr.sub.neg561, %min_offs.0.lcssa553
  %sub61563 = sub i32 %sub562, %sub.ptr.lhs.cast559
  br label %if.then67

48:                                               ; preds = %if.end65
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i456 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub.neg = add i32 %sub.ptr.rhs.cast, -4
  %sub = add i32 %sub.ptr.sub.neg, %min_offs.2
  %sub61 = sub i32 %sub, %sub.ptr.lhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %not_found.1)
  %tobool66.not = icmp eq i32 %not_found.1, 0
  br i1 %tobool66.not, label %if.else76, label %.if.then67_crit_edge

.if.then67_crit_edge:                             ; preds = %48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

if.then67:                                        ; preds = %.if.then67_crit_edge, %.thread, %if.end65.thread
  %bh.0485 = phi ptr [ null, %if.end65.thread ], [ %call.i, %.if.then67_crit_edge ], [ %call.i, %.thread ]
  %header.0483 = phi ptr [ null, %if.end65.thread ], [ %11, %.if.then67_crit_edge ], [ %11, %.thread ]
  %here.3482 = phi ptr [ null, %if.end65.thread ], [ %here.1, %.if.then67_crit_edge ], [ %last.0.lcssa555, %.thread ]
  %last.1480 = phi ptr [ null, %if.end65.thread ], [ %add.ptr.i456, %.if.then67_crit_edge ], [ %last.0.lcssa555, %.thread ]
  %free.0478 = phi i32 [ %sub64, %if.end65.thread ], [ %sub61, %.if.then67_crit_edge ], [ %sub61563, %.thread ]
  %min_offs.3477 = phi i32 [ %3, %if.end65.thread ], [ %min_offs.2, %.if.then67_crit_edge ], [ %min_offs.0.lcssa553, %.thread ]
  %and68 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp ne i32 %and68, 0
  %brmerge = or i1 %cmp, %tobool69.not
  %.mux = select i1 %tobool69.not, i32 -61, i32 0
  br i1 %brmerge, label %if.then67.cleanup267_crit_edge, label %if.then67.if.end89_crit_edge

if.then67.cleanup267_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup267

if.then67.if.end89_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i32 %call, 19
  %.pre543 = and i32 %.pre, -4
  br label %if.end89

if.else76:                                        ; preds = %48
  %and77 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end80, label %if.else76.cleanup267_crit_edge

if.else76.cleanup267_crit_edge:                   ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup267

if.end80:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  %e_value_size81 = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.1, i32 0, i32 4
  %49 = ptrtoint ptr %e_value_size81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %e_value_size81, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %add82 = add i32 %51, 3
  %and83 = and i32 %add82, -4
  %add86 = add i32 %call, 19
  %and87 = and i32 %add86, -4
  %add84 = add i32 %sub61, %and87
  %add88 = add i32 %add84, %and83
  br label %if.end89

if.end89:                                         ; preds = %if.end80, %if.then67.if.end89_crit_edge
  %and92.pre-phi = phi i32 [ %.pre543, %if.then67.if.end89_crit_edge ], [ %and87, %if.end80 ]
  %tobool66.not488 = phi i1 [ false, %if.then67.if.end89_crit_edge ], [ true, %if.end80 ]
  %bh.0486 = phi ptr [ %bh.0485, %if.then67.if.end89_crit_edge ], [ %call.i, %if.end80 ]
  %header.0484 = phi ptr [ %header.0483, %if.then67.if.end89_crit_edge ], [ %11, %if.end80 ]
  %here.3481 = phi ptr [ %here.3482, %if.then67.if.end89_crit_edge ], [ %here.1, %if.end80 ]
  %last.1479 = phi ptr [ %last.1480, %if.then67.if.end89_crit_edge ], [ %add.ptr.i456, %if.end80 ]
  %min_offs.3476 = phi i32 [ %min_offs.3477, %if.then67.if.end89_crit_edge ], [ %min_offs.2, %if.end80 ]
  %free.1 = phi i32 [ %free.0478, %if.then67.if.end89_crit_edge ], [ %add88, %if.end80 ]
  %add93 = add i32 %spec.select, 3
  %and94 = and i32 %add93, -4
  %add95 = add i32 %and92.pre-phi, %and94
  call void @__sanitizer_cov_trace_cmp4(i32 %free.1, i32 %add95)
  %cmp96 = icmp ult i32 %free.1, %add95
  br i1 %cmp96, label %if.end89.cleanup267_crit_edge, label %if.end99

if.end89.cleanup267_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup267

if.end99:                                         ; preds = %if.end89
  %tobool100.not = icmp eq ptr %header.0484, null
  br i1 %tobool100.not, label %if.end8.i.i, label %if.then101

if.then101:                                       ; preds = %if.end99
  tail call fastcc void @lock_buffer(ptr noundef %bh.0486)
  %h_refcount = getelementptr inbounds %struct.ext2_xattr_header, ptr %header.0484, i32 0, i32 1
  %52 = ptrtoint ptr %h_refcount to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %h_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %53)
  %cmp102 = icmp eq i32 %53, 16777216
  br i1 %cmp102, label %if.then104, label %if.else108

if.then104:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  %h_hash = getelementptr inbounds %struct.ext2_xattr_header, ptr %header.0484, i32 0, i32 3
  %54 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %h_hash, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 33
  %59 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i, align 16
  %s_ea_block_cache = getelementptr inbounds %struct.ext2_sb_info, ptr %60, i32 0, i32 37
  %61 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_ea_block_cache, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0486, i32 0, i32 3
  %63 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %b_blocknr, align 8
  tail call void @mb_cache_entry_delete(ptr noundef %62, i32 noundef %56, i64 noundef %64) #10
  br label %if.end140

if.else108:                                       ; preds = %if.then101
  tail call void @unlock_buffer(ptr noundef %bh.0486) #10
  %b_data110 = getelementptr inbounds %struct.buffer_head, ptr %bh.0486, i32 0, i32 5
  %65 = ptrtoint ptr %b_data110 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data110, align 4
  %b_size111 = getelementptr inbounds %struct.buffer_head, ptr %bh.0486, i32 0, i32 4
  %67 = ptrtoint ptr %b_size111 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %b_size111, align 8
  %call112 = tail call ptr @kmemdup(ptr noundef %66, i32 noundef %68, i32 noundef 3264) #10
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %if.else108.cleanup267_crit_edge, label %cleanup.thread

if.else108.cleanup267_crit_edge:                  ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup267

cleanup.thread:                                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #12
  %h_refcount117 = getelementptr inbounds %struct.ext2_xattr_header, ptr %call112, i32 0, i32 1
  %69 = ptrtoint ptr %h_refcount117 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16777216, ptr %h_refcount117, align 4
  %70 = ptrtoint ptr %b_data110 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data110, align 4
  %sub.ptr.lhs.cast119 = ptrtoint ptr %here.3481 to i32
  %sub.ptr.rhs.cast120 = ptrtoint ptr %71 to i32
  %sub.ptr.sub121 = sub i32 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %add.ptr122 = getelementptr i8, ptr %call112, i32 %sub.ptr.sub121
  %sub.ptr.lhs.cast124 = ptrtoint ptr %last.1479 to i32
  %sub.ptr.sub126 = sub i32 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast120
  %add.ptr127 = getelementptr i8, ptr %call112, i32 %sub.ptr.sub126
  br label %if.end140

if.end8.i.i:                                      ; preds = %if.end99
  %72 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_blocksize, align 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %73, i32 noundef 3520) #15
  %cmp132 = icmp eq ptr %call9.i.i, null
  br i1 %cmp132, label %if.end8.i.i.cleanup267_crit_edge, label %if.end135

if.end8.i.i.cleanup267_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup267

if.end135:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 746, ptr %call9.i.i, align 128
  %h_refcount138 = getelementptr inbounds %struct.ext2_xattr_header, ptr %call9.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %h_refcount138 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 16777216, ptr %h_refcount138, align 4
  %h_blocks = getelementptr inbounds %struct.ext2_xattr_header, ptr %call9.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %h_blocks to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 16777216, ptr %h_blocks, align 8
  %add.ptr139 = getelementptr %struct.ext2_xattr_header, ptr %call9.i.i, i32 1
  br label %if.end140

if.end140:                                        ; preds = %if.end135, %cleanup.thread, %if.then104
  %last.3 = phi ptr [ %last.1479, %if.then104 ], [ %add.ptr139, %if.end135 ], [ %add.ptr127, %cleanup.thread ]
  %here.5 = phi ptr [ %here.3481, %if.then104 ], [ %add.ptr139, %if.end135 ], [ %add.ptr122, %cleanup.thread ]
  %header.1 = phi ptr [ %header.0484, %if.then104 ], [ %call9.i.i, %if.end135 ], [ %call112, %cleanup.thread ]
  br i1 %tobool66.not488, label %if.else153, label %if.end223

if.else153:                                       ; preds = %if.end140
  %e_value_size154 = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.5, i32 0, i32 4
  %77 = ptrtoint ptr %e_value_size154 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %e_value_size154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool155.not = icmp eq i32 %78, 0
  br i1 %tobool155.not, label %if.else153.if.end209_crit_edge, label %if.then156

if.else153.if.end209_crit_edge:                   ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.then156:                                       ; preds = %if.else153
  %e_value_offs159 = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.5, i32 0, i32 2
  %79 = ptrtoint ptr %e_value_offs159 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %e_value_offs159, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %conv160 = zext i16 %81 to i32
  %add.ptr161 = getelementptr i8, ptr %header.1, i32 %conv160
  %82 = tail call i32 @llvm.bswap.i32(i32 %78)
  %add164 = add i32 %82, 3
  %and165 = and i32 %add164, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and165, i32 %and94)
  %cmp168 = icmp eq i32 %and165, %and94
  br i1 %cmp168, label %cleanup203, label %if.end174

if.end174:                                        ; preds = %if.then156
  %add.ptr157 = getelementptr i8, ptr %header.1, i32 %min_offs.3476
  %add.ptr175 = getelementptr i8, ptr %add.ptr157, i32 %and165
  %sub.ptr.lhs.cast176 = ptrtoint ptr %add.ptr161 to i32
  %sub.ptr.rhs.cast177 = ptrtoint ptr %add.ptr157 to i32
  %sub.ptr.sub178 = sub i32 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %83 = call ptr @memmove(ptr %add.ptr175, ptr %add.ptr157, i32 %sub.ptr.sub178)
  %84 = call ptr @memset(ptr %add.ptr157, i32 0, i32 %and165)
  %add179 = add i32 %and165, %min_offs.3476
  %add.ptr180 = getelementptr %struct.ext2_xattr_header, ptr %header.1, i32 1
  %85 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp182.not539 = icmp eq i32 %86, 0
  br i1 %cmp182.not539, label %if.end174.cleanup203.thread_crit_edge, label %while.body185.lr.ph

if.end174.cleanup203.thread_crit_edge:            ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup203.thread

while.body185.lr.ph:                              ; preds = %if.end174
  %87 = trunc i32 %and165 to i16
  br label %while.body185

while.body185:                                    ; preds = %if.end194.while.body185_crit_edge, %while.body185.lr.ph
  %last.4540 = phi ptr [ %add.ptr180, %while.body185.lr.ph ], [ %add.ptr200, %if.end194.while.body185_crit_edge ]
  %e_value_offs186 = getelementptr inbounds %struct.ext2_xattr_entry, ptr %last.4540, i32 0, i32 2
  %88 = ptrtoint ptr %e_value_offs186 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %e_value_offs186, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %81)
  %cmp188 = icmp ult i16 %90, %81
  br i1 %cmp188, label %if.then190, label %while.body185.if.end194_crit_edge

while.body185.if.end194_crit_edge:                ; preds = %while.body185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then190:                                       ; preds = %while.body185
  call void @__sanitizer_cov_trace_pc() #12
  %conv192 = add i16 %90, %87
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv192)
  %92 = ptrtoint ptr %e_value_offs186 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %e_value_offs186, align 2
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %while.body185.if.end194_crit_edge
  %93 = ptrtoint ptr %last.4540 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %last.4540, align 4
  %conv196 = zext i8 %94 to i32
  %add198 = add nuw nsw i32 %conv196, 19
  %and199 = and i32 %add198, 508
  %add.ptr200 = getelementptr i8, ptr %last.4540, i32 %and199
  %95 = ptrtoint ptr %add.ptr200 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr200, align 4
  %cmp182.not = icmp eq i32 %96, 0
  br i1 %cmp182.not, label %if.end194.cleanup203.thread_crit_edge, label %if.end194.while.body185_crit_edge

if.end194.while.body185_crit_edge:                ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body185

if.end194.cleanup203.thread_crit_edge:            ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup203.thread

cleanup203.thread:                                ; preds = %if.end194.cleanup203.thread_crit_edge, %if.end174.cleanup203.thread_crit_edge
  %last.4.lcssa = phi ptr [ %add.ptr180, %if.end174.cleanup203.thread_crit_edge ], [ %add.ptr200, %if.end194.cleanup203.thread_crit_edge ]
  %97 = ptrtoint ptr %e_value_offs159 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %e_value_offs159, align 2
  br label %if.end209

cleanup203:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  %98 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %99 = ptrtoint ptr %e_value_size154 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %e_value_size154, align 4
  %add.ptr172 = getelementptr i8, ptr %add.ptr161, i32 %and94
  %add.ptr173 = getelementptr i8, ptr %add.ptr172, i32 -4
  %100 = ptrtoint ptr %add.ptr173 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 0, ptr %add.ptr173, align 1
  %101 = call ptr @memcpy(ptr %add.ptr161, ptr %value, i32 %spec.select)
  br label %skip_replace

if.end209:                                        ; preds = %cleanup203.thread, %if.else153.if.end209_crit_edge
  %min_offs.5 = phi i32 [ %min_offs.3476, %if.else153.if.end209_crit_edge ], [ %add179, %cleanup203.thread ]
  %last.6 = phi ptr [ %last.3, %if.else153.if.end209_crit_edge ], [ %last.4.lcssa, %cleanup203.thread ]
  br i1 %cmp, label %if.end223.thread, label %if.end209.if.then226_crit_edge

if.end209.if.then226_crit_edge:                   ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then226

if.end223.thread:                                 ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg = sub i32 0, %and92.pre-phi
  %add.ptr217 = getelementptr i8, ptr %last.6, i32 %idx.neg
  %add.ptr218 = getelementptr i8, ptr %here.5, i32 %and92.pre-phi
  %sub.ptr.lhs.cast219 = ptrtoint ptr %add.ptr217 to i32
  %sub.ptr.rhs.cast220 = ptrtoint ptr %here.5 to i32
  %sub.ptr.sub221 = sub i32 %sub.ptr.lhs.cast219, %sub.ptr.rhs.cast220
  %102 = call ptr @memmove(ptr %here.5, ptr %add.ptr218, i32 %sub.ptr.sub221)
  %103 = call ptr @memset(ptr %add.ptr217, i32 0, i32 %and92.pre-phi)
  br label %skip_replace

if.end223:                                        ; preds = %if.end140
  %sub.ptr.lhs.cast146 = ptrtoint ptr %last.3 to i32
  %sub.ptr.rhs.cast147 = ptrtoint ptr %here.5 to i32
  %sub.ptr.sub148 = sub i32 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %add.ptr149 = getelementptr i8, ptr %here.5, i32 %and92.pre-phi
  %104 = call ptr @memmove(ptr %add.ptr149, ptr %here.5, i32 %sub.ptr.sub148)
  %105 = call ptr @memset(ptr %here.5, i32 0, i32 %and92.pre-phi)
  %conv150 = trunc i32 %name_index to i8
  %e_name_index = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.5, i32 0, i32 1
  %106 = ptrtoint ptr %e_name_index to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv150, ptr %e_name_index, align 1
  %conv151 = trunc i32 %call to i8
  %107 = ptrtoint ptr %here.5 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv151, ptr %here.5, align 4
  %e_name = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.5, i32 0, i32 6
  %108 = call ptr @memcpy(ptr %e_name, ptr %name, i32 %call)
  br i1 %cmp, label %if.end223.skip_replace_crit_edge, label %if.end223.if.then226_crit_edge

if.end223.if.then226_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then226

if.end223.skip_replace_crit_edge:                 ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_replace

if.then226:                                       ; preds = %if.end223.if.then226_crit_edge, %if.end209.if.then226_crit_edge
  %min_offs.6503 = phi i32 [ %min_offs.3476, %if.end223.if.then226_crit_edge ], [ %min_offs.5, %if.end209.if.then226_crit_edge ]
  %109 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %e_value_size227 = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.5, i32 0, i32 4
  %110 = ptrtoint ptr %e_value_size227 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %e_value_size227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool228.not = icmp eq i32 %spec.select, 0
  br i1 %tobool228.not, label %if.then226.skip_replace_crit_edge, label %if.then229

if.then226.skip_replace_crit_edge:                ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_replace

if.then229:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr234 = getelementptr i8, ptr %header.1, i32 %min_offs.6503
  %idx.neg235 = sub i32 0, %and94
  %add.ptr236 = getelementptr i8, ptr %add.ptr234, i32 %idx.neg235
  %sub.ptr.lhs.cast237 = ptrtoint ptr %add.ptr236 to i32
  %sub.ptr.rhs.cast238 = ptrtoint ptr %header.1 to i32
  %sub.ptr.sub239 = sub i32 %sub.ptr.lhs.cast237, %sub.ptr.rhs.cast238
  %conv240 = trunc i32 %sub.ptr.sub239 to i16
  %111 = tail call i16 @llvm.bswap.i16(i16 %conv240)
  %e_value_offs241 = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.5, i32 0, i32 2
  %112 = ptrtoint ptr %e_value_offs241 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %e_value_offs241, align 2
  %add.ptr242 = getelementptr i8, ptr %add.ptr236, i32 %and94
  %add.ptr243 = getelementptr i8, ptr %add.ptr242, i32 -4
  %113 = ptrtoint ptr %add.ptr243 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 0, ptr %add.ptr243, align 1
  %114 = call ptr @memcpy(ptr %add.ptr236, ptr %value, i32 %spec.select)
  br label %skip_replace

skip_replace:                                     ; preds = %if.then229, %if.then226.skip_replace_crit_edge, %if.end223.skip_replace_crit_edge, %if.end223.thread, %cleanup203
  %add.ptr246 = getelementptr %struct.ext2_xattr_header, ptr %header.1, i32 1
  %115 = ptrtoint ptr %add.ptr246 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp247 = icmp eq i32 %116, 0
  br i1 %cmp247, label %if.then249, label %if.else257

if.then249:                                       ; preds = %skip_replace
  %tobool250.not = icmp eq ptr %bh.0486, null
  br i1 %tobool250.not, label %if.then249.if.end255_crit_edge, label %land.lhs.true

if.then249.if.end255_crit_edge:                   ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

land.lhs.true:                                    ; preds = %if.then249
  %b_data251 = getelementptr inbounds %struct.buffer_head, ptr %bh.0486, i32 0, i32 5
  %117 = ptrtoint ptr %b_data251 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %b_data251, align 4
  %cmp252 = icmp eq ptr %header.1, %118
  br i1 %cmp252, label %if.then254, label %land.lhs.true.if.end255_crit_edge

land.lhs.true.if.end255_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

if.then254:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_buffer(ptr noundef nonnull %bh.0486) #10
  br label %if.end255

if.end255:                                        ; preds = %if.then254, %land.lhs.true.if.end255_crit_edge, %if.then249.if.end255_crit_edge
  %call256 = tail call fastcc i32 @ext2_xattr_set2(ptr noundef %inode, ptr noundef %bh.0486, ptr noundef null)
  br label %cleanup267

if.else257:                                       ; preds = %skip_replace
  tail call fastcc void @ext2_xattr_rehash(ptr noundef nonnull %header.1, ptr noundef %here.5)
  %tobool258.not = icmp eq ptr %bh.0486, null
  br i1 %tobool258.not, label %if.else257.if.end264_crit_edge, label %land.lhs.true259

if.else257.if.end264_crit_edge:                   ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end264

land.lhs.true259:                                 ; preds = %if.else257
  %b_data260 = getelementptr inbounds %struct.buffer_head, ptr %bh.0486, i32 0, i32 5
  %119 = ptrtoint ptr %b_data260 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %b_data260, align 4
  %cmp261 = icmp eq ptr %header.1, %120
  br i1 %cmp261, label %if.then263, label %land.lhs.true259.if.end264_crit_edge

land.lhs.true259.if.end264_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end264

if.then263:                                       ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_buffer(ptr noundef nonnull %bh.0486) #10
  br label %if.end264

if.end264:                                        ; preds = %if.then263, %land.lhs.true259.if.end264_crit_edge, %if.else257.if.end264_crit_edge
  %call265 = tail call fastcc i32 @ext2_xattr_set2(ptr noundef %inode, ptr noundef %bh.0486, ptr noundef nonnull %header.1)
  br label %cleanup267

cleanup267:                                       ; preds = %if.end264, %if.end255, %if.end8.i.i.cleanup267_crit_edge, %if.else108.cleanup267_crit_edge, %if.end89.cleanup267_crit_edge, %if.else76.cleanup267_crit_edge, %if.then67.cleanup267_crit_edge, %bad_block
  %error.0 = phi i32 [ -5, %bad_block ], [ %.mux, %if.then67.cleanup267_crit_edge ], [ -28, %if.end89.cleanup267_crit_edge ], [ %call256, %if.end255 ], [ %call265, %if.end264 ], [ -12, %if.end8.i.i.cleanup267_crit_edge ], [ -17, %if.else76.cleanup267_crit_edge ], [ -12, %if.else108.cleanup267_crit_edge ]
  %header.2 = phi ptr [ %11, %bad_block ], [ %header.0483, %if.then67.cleanup267_crit_edge ], [ %header.0484, %if.end89.cleanup267_crit_edge ], [ %header.1, %if.end255 ], [ %header.1, %if.end264 ], [ null, %if.end8.i.i.cleanup267_crit_edge ], [ %11, %if.else76.cleanup267_crit_edge ], [ null, %if.else108.cleanup267_crit_edge ]
  %bh.1 = phi ptr [ %call.i, %bad_block ], [ %bh.0485, %if.then67.cleanup267_crit_edge ], [ %bh.0486, %if.end89.cleanup267_crit_edge ], [ %bh.0486, %if.end255 ], [ %bh.0486, %if.end264 ], [ %bh.0486, %if.end8.i.i.cleanup267_crit_edge ], [ %call.i, %if.else76.cleanup267_crit_edge ], [ %bh.0486, %if.else108.cleanup267_crit_edge ]
  %tobool268.not = icmp eq ptr %bh.1, null
  br i1 %tobool268.not, label %cleanup267.if.end274.thread521_crit_edge, label %land.lhs.true269

cleanup267.if.end274.thread521_crit_edge:         ; preds = %cleanup267
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end274.thread521

land.lhs.true269:                                 ; preds = %cleanup267
  %b_data270 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %121 = ptrtoint ptr %b_data270 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data270, align 4
  %cmp271 = icmp eq ptr %header.2, %122
  br i1 %cmp271, label %land.lhs.true269.if.then.i_crit_edge, label %if.end274

land.lhs.true269.if.then.i_crit_edge:             ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end274.thread521:                              ; preds = %cleanup267.if.end274.thread521_crit_edge, %if.then15.if.end274.thread521_crit_edge
  %header.2510.ph = phi ptr [ %header.2, %cleanup267.if.end274.thread521_crit_edge ], [ null, %if.then15.if.end274.thread521_crit_edge ]
  %error.0509.ph = phi i32 [ %error.0, %cleanup267.if.end274.thread521_crit_edge ], [ -5, %if.then15.if.end274.thread521_crit_edge ]
  tail call void @kfree(ptr noundef %header.2510.ph) #10
  br label %brelse.exit

if.end274:                                        ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %header.2) #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.end274, %land.lhs.true269.if.then.i_crit_edge
  tail call void @__brelse(ptr noundef nonnull %bh.1) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end274.thread521
  %error.0508520 = phi i32 [ %error.0, %if.then.i ], [ %error.0509.ph, %if.end274.thread521 ]
  tail call void @up_write(ptr noundef %xattr_sem) #10
  br label %cleanup277

cleanup277:                                       ; preds = %brelse.exit, %if.end8.cleanup277_crit_edge, %if.end3.cleanup277_crit_edge, %entry.cleanup277_crit_edge
  %retval.0 = phi i32 [ %error.0508520, %brelse.exit ], [ -22, %entry.cleanup277_crit_edge ], [ -34, %if.end3.cleanup277_crit_edge ], [ %call9, %if.end8.cleanup277_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 366) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #10
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_entry_delete(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_xattr_set2(ptr noundef %inode, ptr noundef %old_bh, ptr noundef readonly %header) unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  %tmp56 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #10
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %error, align 4, !annotation !38
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_ea_block_cache = getelementptr inbounds %struct.ext2_sb_info, ptr %4, i32 0, i32 37
  %5 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_ea_block_cache, align 4
  %tobool.not = icmp eq ptr %header, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %if.then

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.then:                                          ; preds = %entry
  %h_hash.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %header, i32 0, i32 3
  %7 = ptrtoint ptr %h_hash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_hash.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i179 = icmp eq i32 %8, 0
  br i1 %tobool.not.i179, label %if.then.if.else12_crit_edge, label %again.preheader.i

if.then.if.else12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

again.preheader.i:                                ; preds = %if.then
  %add.ptr.i.i = getelementptr %struct.ext2_xattr_header, ptr %header, i32 1
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %call2.i256 = tail call ptr @mb_cache_entry_find_first(ptr noundef %6, i32 noundef %9) #10
  %tobool3.not.i251257 = icmp eq ptr %call2.i256, null
  br i1 %tobool3.not.i251257, label %again.preheader.i.if.else12_crit_edge, label %again.preheader.i.while.body.i_crit_edge

again.preheader.i.while.body.i_crit_edge:         ; preds = %again.preheader.i
  br label %while.body.i

again.preheader.i.if.else12_crit_edge:            ; preds = %again.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

again.loopexit.i:                                 ; preds = %if.end.i.i, %if.then11.i.again.loopexit.i_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call.i.i) #10
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #10
  %call2.i = tail call ptr @mb_cache_entry_find_first(ptr noundef %6, i32 noundef %9) #10
  %tobool3.not.i251 = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i251, label %again.loopexit.i.if.else12_crit_edge, label %again.loopexit.i.while.body.i.backedge_crit_edge

again.loopexit.i.while.body.i.backedge_crit_edge: ; preds = %again.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.backedge

again.loopexit.i.if.else12_crit_edge:             ; preds = %again.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

while.body.i:                                     ; preds = %while.body.i.backedge, %again.preheader.i.while.body.i_crit_edge
  %ce.0.i252 = phi ptr [ %ce.0.i252.be, %while.body.i.backedge ], [ %call2.i256, %again.preheader.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %e_value.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.0.i252, i32 0, i32 5
  %12 = ptrtoint ptr %e_value.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %e_value.i, align 8
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %13, i32 noundef %17, i32 noundef 8) #10
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %22 = ptrtoint ptr %e_value.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %e_value.i, align 8
  %conv.i = trunc i64 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %19, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %21, i32 noundef %conv.i) #10
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 366) #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #10
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call.i.i, align 4
  %and.i.i.i.i.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.else.i.if.then.i.i_crit_edge

if.else.i.if.then.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

trylock_buffer.exit.i.i:                          ; preds = %if.else.i
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 4, ptr nonnull elementtype(i32) %call.i.i) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %27 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i.i_crit_edge

trylock_buffer.exit.i.i.if.then.i.i_crit_edge:    ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit.i

if.then.i.i:                                      ; preds = %trylock_buffer.exit.i.i.if.then.i.i_crit_edge, %if.else.i.if.then.i.i_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i.i) #10
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.0.i252, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %lock_buffer.exit.i
  %e_refcnt.i.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.0.i252, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i.i, ptr %e_refcnt.i.i, i32 1, ptr elementtype(i32) %e_refcnt.i.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i, label %if.then11.i.again.loopexit.i_crit_edge

if.then11.i.again.loopexit.i_crit_edge:           ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.loopexit.i

if.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mb_cache_entry_free(ptr noundef nonnull %ce.0.i252) #10
  br label %again.loopexit.i

if.else13.i:                                      ; preds = %lock_buffer.exit.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data.i, align 4
  %h_refcount.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %h_refcount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %h_refcount.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %35)
  %cmp.i = icmp ugt i32 %35, 1024
  br i1 %cmp.i, label %if.else13.i.brelse.exit70.i_crit_edge, label %if.else17.i

if.else13.i.brelse.exit70.i_crit_edge:            ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

if.else17.i:                                      ; preds = %if.else13.i
  %add.ptr1.i.i = getelementptr %struct.ext2_xattr_header, ptr %32, i32 1
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not84.i.i = icmp eq i32 %37, 0
  br i1 %cmp.not84.i.i, label %if.else17.i.ext2_xattr_cmp.exit.i_crit_edge, label %if.else17.i.while.body.i.i_crit_edge

if.else17.i.while.body.i.i_crit_edge:             ; preds = %if.else17.i
  br label %while.body.i.i

if.else17.i.ext2_xattr_cmp.exit.i_crit_edge:      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_cmp.exit.i

while.body.i.i:                                   ; preds = %if.end43.i.i.while.body.i.i_crit_edge, %if.else17.i.while.body.i.i_crit_edge
  %entry2.086.i.i = phi ptr [ %add.ptr53.i.i, %if.end43.i.i.while.body.i.i_crit_edge ], [ %add.ptr1.i.i, %if.else17.i.while.body.i.i_crit_edge ]
  %entry1.085.i.i = phi ptr [ %add.ptr47.i.i, %if.end43.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.else17.i.while.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %entry2.086.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entry2.086.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp2.i.i = icmp eq i32 %39, 0
  br i1 %cmp2.i.i, label %while.body.i.i.brelse.exit70.i_crit_edge, label %if.end.i59.i

while.body.i.i.brelse.exit70.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

if.end.i59.i:                                     ; preds = %while.body.i.i
  %e_hash.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %e_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %e_hash.i.i, align 4
  %e_hash3.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry2.086.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %e_hash3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %e_hash3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp4.not.i.i = icmp eq i32 %41, %43
  br i1 %cmp4.not.i.i, label %lor.lhs.false.i.i, label %if.end.i59.i.brelse.exit70.i_crit_edge

if.end.i59.i.brelse.exit70.i_crit_edge:           ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

lor.lhs.false.i.i:                                ; preds = %if.end.i59.i
  %e_name_index.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %e_name_index.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %e_name_index.i.i, align 1
  %e_name_index5.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry2.086.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %e_name_index5.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %e_name_index5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp7.not.i.i = icmp eq i8 %45, %47
  br i1 %cmp7.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i.brelse.exit70.i_crit_edge

lor.lhs.false.i.i.brelse.exit70.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false.i.i
  %48 = ptrtoint ptr %entry1.085.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %entry1.085.i.i, align 4
  %conv10.i.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %entry2.086.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %entry2.086.i.i, align 4
  %conv12.i.i = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp13.not.i.i = icmp eq i8 %49, %51
  br i1 %cmp13.not.i.i, label %lor.lhs.false15.i.i, label %lor.lhs.false9.i.i.brelse.exit70.i_crit_edge

lor.lhs.false9.i.i.brelse.exit70.i_crit_edge:     ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

lor.lhs.false15.i.i:                              ; preds = %lor.lhs.false9.i.i
  %e_value_size.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %e_value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %e_value_size.i.i, align 4
  %e_value_size16.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry2.086.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %e_value_size16.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %e_value_size16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp17.not.i.i = icmp eq i32 %53, %55
  br i1 %cmp17.not.i.i, label %lor.lhs.false19.i.i, label %lor.lhs.false15.i.i.brelse.exit70.i_crit_edge

lor.lhs.false15.i.i.brelse.exit70.i_crit_edge:    ; preds = %lor.lhs.false15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

lor.lhs.false19.i.i:                              ; preds = %lor.lhs.false15.i.i
  %e_name.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 6
  %e_name20.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry2.086.i.i, i32 0, i32 6
  %bcmp.i.i = tail call i32 @bcmp(ptr %e_name.i.i, ptr %e_name20.i.i, i32 %conv10.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i60.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i60.i, label %if.end25.i.i, label %lor.lhs.false19.i.i.brelse.exit70.i_crit_edge

lor.lhs.false19.i.i.brelse.exit70.i_crit_edge:    ; preds = %lor.lhs.false19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

if.end25.i.i:                                     ; preds = %lor.lhs.false19.i.i
  %e_value_block.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %e_value_block.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %e_value_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp26.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp26.not.i.i, label %lor.lhs.false28.i.i, label %if.end25.i.i.brelse.exit70.i_crit_edge

if.end25.i.i.brelse.exit70.i_crit_edge:           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

lor.lhs.false28.i.i:                              ; preds = %if.end25.i.i
  %e_value_block29.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry2.086.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %e_value_block29.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %e_value_block29.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp30.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp30.not.i.i, label %if.end33.i.i, label %lor.lhs.false28.i.i.brelse.exit70.i_crit_edge

lor.lhs.false28.i.i.brelse.exit70.i_crit_edge:    ; preds = %lor.lhs.false28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

if.end33.i.i:                                     ; preds = %lor.lhs.false28.i.i
  %e_value_offs.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1.085.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %e_value_offs.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %e_value_offs.i.i, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #10
  %conv34.i.i = zext i16 %62 to i32
  %add.ptr35.i.i = getelementptr i8, ptr %header, i32 %conv34.i.i
  %e_value_offs36.i.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry2.086.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %e_value_offs36.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %e_value_offs36.i.i, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #10
  %conv37.i.i = zext i16 %65 to i32
  %add.ptr38.i.i = getelementptr i8, ptr %32, i32 %conv37.i.i
  %66 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  %bcmp82.i.i = tail call i32 @bcmp(ptr %add.ptr35.i.i, ptr %add.ptr38.i.i, i32 %66) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp82.i.i)
  %tobool41.not.i.i = icmp eq i32 %bcmp82.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end43.i.i, label %if.end33.i.i.brelse.exit70.i_crit_edge

if.end33.i.i.brelse.exit70.i_crit_edge:           ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

if.end43.i.i:                                     ; preds = %if.end33.i.i
  %add46.i.i = add nuw nsw i32 %conv10.i.i, 19
  %and.i.i = and i32 %add46.i.i, 508
  %add.ptr47.i.i = getelementptr i8, ptr %entry1.085.i.i, i32 %and.i.i
  %add51.i.i = add nuw nsw i32 %conv12.i.i, 19
  %and52.i.i = and i32 %add51.i.i, 508
  %add.ptr53.i.i = getelementptr i8, ptr %entry2.086.i.i, i32 %and52.i.i
  %67 = ptrtoint ptr %add.ptr47.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr47.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %68, 0
  br i1 %cmp.not.i.i, label %if.end43.i.i.ext2_xattr_cmp.exit.i_crit_edge, label %if.end43.i.i.while.body.i.i_crit_edge

if.end43.i.i.while.body.i.i_crit_edge:            ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end43.i.i.ext2_xattr_cmp.exit.i_crit_edge:     ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_cmp.exit.i

ext2_xattr_cmp.exit.i:                            ; preds = %if.end43.i.i.ext2_xattr_cmp.exit.i_crit_edge, %if.else17.i.ext2_xattr_cmp.exit.i_crit_edge
  %entry2.0.lcssa.i.i = phi ptr [ %add.ptr1.i.i, %if.else17.i.ext2_xattr_cmp.exit.i_crit_edge ], [ %add.ptr53.i.i, %if.end43.i.i.ext2_xattr_cmp.exit.i_crit_edge ]
  %69 = ptrtoint ptr %entry2.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %entry2.0.lcssa.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp54.i.not.i = icmp eq i32 %70, 0
  br i1 %cmp54.i.not.i, label %if.then21.i, label %ext2_xattr_cmp.exit.i.brelse.exit70.i_crit_edge

ext2_xattr_cmp.exit.i.brelse.exit70.i_crit_edge:  ; preds = %ext2_xattr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit70.i

if.then21.i:                                      ; preds = %ext2_xattr_cmp.exit.i
  %b_data.i.le = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  tail call void @mb_cache_entry_touch(ptr noundef %6, ptr noundef nonnull %ce.0.i252) #10
  %e_refcnt.i61.i = getelementptr inbounds %struct.mb_cache_entry, ptr %ce.0.i252, i32 0, i32 2
  %call.i.i.i62.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i61.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i61.i, i32 1, i32 3, i32 1) #10
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i61.i, ptr %e_refcnt.i61.i, i32 1, ptr elementtype(i32) %e_refcnt.i61.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i63.i = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i63.i)
  %cmp.i.i.i64.i = icmp eq i32 %asmresult.i.i.i.i.i.i63.i, 0
  br i1 %cmp.i.i.i64.i, label %if.end.i65.i, label %if.then21.i.if.then4_crit_edge

if.then21.i.if.then4_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.i65.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mb_cache_entry_free(ptr noundef nonnull %ce.0.i252) #10
  br label %if.then4

brelse.exit70.i:                                  ; preds = %ext2_xattr_cmp.exit.i.brelse.exit70.i_crit_edge, %if.end33.i.i.brelse.exit70.i_crit_edge, %lor.lhs.false28.i.i.brelse.exit70.i_crit_edge, %if.end25.i.i.brelse.exit70.i_crit_edge, %lor.lhs.false19.i.i.brelse.exit70.i_crit_edge, %lor.lhs.false15.i.i.brelse.exit70.i_crit_edge, %lor.lhs.false9.i.i.brelse.exit70.i_crit_edge, %lor.lhs.false.i.i.brelse.exit70.i_crit_edge, %if.end.i59.i.brelse.exit70.i_crit_edge, %while.body.i.i.brelse.exit70.i_crit_edge, %if.else13.i.brelse.exit70.i_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call.i.i) #10
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %brelse.exit70.i, %if.then7.i
  %call28.i = tail call ptr @mb_cache_entry_find_next(ptr noundef %6, ptr noundef nonnull %ce.0.i252) #10
  %tobool3.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool3.not.i, label %cleanup.i.if.else12_crit_edge, label %cleanup.i.while.body.i.backedge_crit_edge

cleanup.i.while.body.i.backedge_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.backedge

cleanup.i.if.else12_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

while.body.i.backedge:                            ; preds = %cleanup.i.while.body.i.backedge_crit_edge, %again.loopexit.i.while.body.i.backedge_crit_edge
  %ce.0.i252.be = phi ptr [ %call28.i, %cleanup.i.while.body.i.backedge_crit_edge ], [ %call2.i, %again.loopexit.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.then4:                                         ; preds = %if.end.i65.i, %if.then21.i.if.then4_crit_edge
  %cmp = icmp eq ptr %call.i.i, %old_bh
  br i1 %cmp, label %if.then4.if.end11_crit_edge, label %if.else

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.else:                                          ; preds = %if.then4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %72 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %73 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %call.i.i.i = tail call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i180 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i180, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i.i.i, ptr %error, align 4
  tail call void @unlock_buffer(ptr noundef nonnull %call.i.i) #10
  br label %if.then.i226

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %75 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %error, align 4
  %76 = ptrtoint ptr %b_data.i.le to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_data.i.le, align 4
  %h_refcount = getelementptr inbounds %struct.ext2_xattr_header, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %h_refcount to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %h_refcount, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #10
  %add.i = add i32 %80, 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %82 = ptrtoint ptr %h_refcount to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %h_refcount, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then4.if.end11_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call.i.i) #10
  br label %if.end37

if.else12:                                        ; preds = %cleanup.i.if.else12_crit_edge, %again.loopexit.i.if.else12_crit_edge, %again.preheader.i.if.else12_crit_edge, %if.then.if.else12_crit_edge
  %tobool13.not = icmp eq ptr %old_bh, null
  br i1 %tobool13.not, label %if.else12.if.else18_crit_edge, label %land.lhs.true

if.else12.if.else18_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

land.lhs.true:                                    ; preds = %if.else12
  %b_data14 = getelementptr inbounds %struct.buffer_head, ptr %old_bh, i32 0, i32 5
  %83 = ptrtoint ptr %b_data14 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_data14, align 4
  %cmp15 = icmp eq ptr %84, %header
  br i1 %cmp15, label %if.then16, label %land.lhs.true.if.else18_crit_edge

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %old_bh, i32 0, i32 11
  %call.i.i.i182 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #10
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #10, !srcloc !42
  %86 = ptrtoint ptr %b_data14 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b_data14, align 4
  %h_hash.i184 = getelementptr inbounds %struct.ext2_xattr_header, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %h_hash.i184 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %h_hash.i184, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %old_bh, i32 0, i32 3
  %91 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %b_blocknr.i, align 8
  %call.i = tail call i32 @mb_cache_entry_create(ptr noundef %6, i32 noundef 3136, i32 noundef %90, i64 noundef %92, i1 noundef zeroext true) #10
  br label %if.end37

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %if.else12.if.else18_crit_edge
  %i_block_group = getelementptr i8, ptr %inode, i32 -244
  %93 = ptrtoint ptr %i_block_group to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %i_block_group, align 4
  %95 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_blocks_per_group.i, align 8
  %mul.i = mul i32 %98, %94
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %96, i32 0, i32 13
  %99 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_first_data_block.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #10
  %add.i187 = add i32 %103, %mul.i
  %call21 = call i32 @ext2_new_block(ptr noundef %inode, i32 noundef %add.i187, ptr noundef nonnull %error) #10
  %104 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool22.not = icmp eq i32 %105, 0
  br i1 %tobool22.not, label %if.end24, label %if.else18.brelse.exit_crit_edge

if.else18.brelse.exit_crit_edge:                  ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.end24:                                         ; preds = %if.else18
  %conv = sext i32 %call21 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %106 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %108 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_blocksize.i, align 16
  %call.i188 = call ptr @__getblk_gfp(ptr noundef %107, i64 noundef %conv, i32 noundef %109, i32 noundef 8) #10
  %tobool27.not = icmp eq ptr %call.i188, null
  br i1 %tobool27.not, label %if.then31, label %if.end32, !prof !43

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %call21, i32 noundef 1) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %110 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -12, ptr %error, align 4
  br label %brelse.exit

if.end32:                                         ; preds = %if.end24
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 366) #10
  %call.i.i.i.i189 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i188, i32 noundef 4) #10
  %111 = ptrtoint ptr %call.i188 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %call.i188, align 4
  %and.i.i.i.i = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end32.if.then.i191_crit_edge

if.end32.if.then.i191_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i191

trylock_buffer.exit.i:                            ; preds = %if.end32
  call void @llvm.prefetch.p0(ptr nonnull %call.i188, i32 1, i32 3, i32 1) #10
  %113 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i188, ptr nonnull %call.i188, i32 4, ptr nonnull elementtype(i32) %call.i188) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i.i190 = extractvalue { i32, i32, i32 } %113, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %114 = and i32 %asmresult.i.i.i.i.i.i.i190, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.not.i = icmp eq i32 %114, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i191_crit_edge

trylock_buffer.exit.i.if.then.i191_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i191

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit

if.then.i191:                                     ; preds = %trylock_buffer.exit.i.if.then.i191_crit_edge, %if.end32.if.then.i191_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i188) #10
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i191, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data33 = getelementptr inbounds %struct.buffer_head, ptr %call.i188, i32 0, i32 5
  %115 = ptrtoint ptr %b_data33 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %b_data33, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call.i188, i32 0, i32 4
  %117 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %b_size, align 8
  %119 = call ptr @memcpy(ptr %116, ptr %header, i32 %118)
  %120 = ptrtoint ptr %call.i188 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %call.i188, align 4
  %and1.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i188) #10
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %call.i188) #10
  %122 = ptrtoint ptr %b_data33 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %b_data33, align 4
  %h_hash.i193 = getelementptr inbounds %struct.ext2_xattr_header, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %h_hash.i193 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %h_hash.i193, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125) #10
  %b_blocknr.i194 = getelementptr inbounds %struct.buffer_head, ptr %call.i188, i32 0, i32 3
  %127 = ptrtoint ptr %b_blocknr.i194 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %b_blocknr.i194, align 8
  %call.i195 = call i32 @mb_cache_entry_create(ptr noundef %6, i32 noundef 3136, i32 noundef %126, i64 noundef %128, i1 noundef zeroext true) #10
  %129 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i201 = getelementptr inbounds %struct.ext2_sb_info, ptr %130, i32 0, i32 13
  %131 = ptrtoint ptr %s_es.i201 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_es.i201, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext2_super_block, ptr %132, i32 0, i32 28
  %133 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %134, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i202 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i202, label %if.end.i, label %set_buffer_uptodate.exit.if.end37_crit_edge

set_buffer_uptodate.exit.if.end37_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end.i:                                         ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %s_lock.i = getelementptr inbounds %struct.ext2_sb_info, ptr %130, i32 0, i32 36
  call void @_raw_spin_lock(ptr noundef %s_lock.i) #10
  call void @ext2_update_dynamic_rev(ptr noundef %1) #10
  %135 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_fs_info.i, align 16
  %s_es3.i = getelementptr inbounds %struct.ext2_sb_info, ptr %136, i32 0, i32 13
  %137 = ptrtoint ptr %s_es3.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_es3.i, align 4
  %s_feature_compat4.i = getelementptr inbounds %struct.ext2_super_block, ptr %138, i32 0, i32 28
  %139 = ptrtoint ptr %s_feature_compat4.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %s_feature_compat4.i, align 4
  %or.i = or i32 %140, 134217728
  store i32 %or.i, ptr %s_feature_compat4.i, align 4
  %141 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock6.i = getelementptr inbounds %struct.ext2_sb_info, ptr %141, i32 0, i32 36
  call void @_raw_spin_unlock(ptr noundef %s_lock6.i) #10
  %142 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i, align 16
  %s_sbh.i = getelementptr inbounds %struct.ext2_sb_info, ptr %143, i32 0, i32 12
  %144 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_sbh.i, align 8
  call void @mark_buffer_dirty(ptr noundef %145) #10
  br label %if.end37

if.end37:                                         ; preds = %if.end.i, %set_buffer_uptodate.exit.if.end37_crit_edge, %if.then16, %if.end11
  %new_bh.1 = phi ptr [ %call.i.i, %if.end11 ], [ %old_bh, %if.then16 ], [ %call.i188, %set_buffer_uptodate.exit.if.end37_crit_edge ], [ %call.i188, %if.end.i ]
  call void @mark_buffer_dirty(ptr noundef nonnull %new_bh.1) #10
  %146 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %147, i32 0, i32 10
  %148 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %s_flags, align 4
  %and = and i32 %149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %if.end37.if.then42_crit_edge

if.end37.if.then42_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.end37
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %150 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %i_flags, align 4
  %and40 = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %lor.lhs.false.cond.true_crit_edge, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.end37.if.then42_crit_edge
  %call43 = call i32 @sync_dirty_buffer(ptr noundef nonnull %new_bh.1) #10
  %152 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -5, ptr %error, align 4
  %153 = ptrtoint ptr %new_bh.1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %new_bh.1, align 4
  %155 = and i32 %154, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool45.not = icmp eq i32 %155, 0
  br i1 %tobool45.not, label %if.then42.cond.true_crit_edge, label %land.lhs.true46

if.then42.cond.true_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

land.lhs.true46:                                  ; preds = %if.then42
  %156 = ptrtoint ptr %new_bh.1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %new_bh.1, align 4
  %and1.i.i178 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i178)
  %tobool48.not = icmp eq i32 %and1.i.i178, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.then.i226_crit_edge, label %land.lhs.true46.cond.true_crit_edge

land.lhs.true46.cond.true_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

land.lhs.true46.if.then.i226_crit_edge:           ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i226

cond.true:                                        ; preds = %land.lhs.true46.cond.true_crit_edge, %if.then42.cond.true_crit_edge, %lor.lhs.false.cond.true_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %new_bh.1, i32 0, i32 3
  %158 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %b_blocknr, align 8
  %extract.t = trunc i64 %159 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %new_bh.2237 = phi ptr [ %new_bh.1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %cond.off0 = phi i32 [ %extract.t, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %i_file_acl = getelementptr i8, ptr %inode, i32 -256
  %160 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %cond.off0, ptr %i_file_acl, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp56) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp56, ptr noundef %inode) #10
  %161 = call ptr @memcpy(ptr %i_ctime, ptr %tmp56, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp56) #10
  %162 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i_sb, align 4
  %s_flags58 = getelementptr inbounds %struct.super_block, ptr %163, i32 0, i32 10
  %164 = ptrtoint ptr %s_flags58 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %s_flags58, align 4
  %and59 = and i32 %165, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %cond.end.if.then65_crit_edge

cond.end.if.then65_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

lor.lhs.false61:                                  ; preds = %cond.end
  %i_flags62 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %166 = ptrtoint ptr %i_flags62 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %i_flags62, align 4
  %and63 = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else79, label %lor.lhs.false61.if.then65_crit_edge

lor.lhs.false61.if.then65_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false61.if.then65_crit_edge, %cond.end.if.then65_crit_edge
  %call66 = call i32 @sync_inode_metadata(ptr noundef %inode, i32 noundef 1) #10
  %168 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call66, ptr %error, align 4
  %169 = zext i32 %call66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call66, label %if.then71 [
    i32 0, label %if.then65.if.end80_crit_edge
    i32 -28, label %if.then65.if.end80_crit_edge280
  ]

if.then65.if.end80_crit_edge280:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then65.if.end80_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then71:                                        ; preds = %if.then65
  br i1 %tobool.not, label %if.then71.brelse.exit_crit_edge, label %land.lhs.true73

if.then71.brelse.exit_crit_edge:                  ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

land.lhs.true73:                                  ; preds = %if.then71
  %cmp74.not = icmp eq ptr %new_bh.2237, %old_bh
  br i1 %cmp74.not, label %land.lhs.true73.cleanup102_crit_edge, label %if.then76

land.lhs.true73.cleanup102_crit_edge:             ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  %i_blkbits.i204 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %170 = ptrtoint ptr %i_blkbits.i204 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %i_blkbits.i204, align 2
  %sh_prom.i205 = zext i8 %171 to i64
  %shl.i206 = shl nuw i64 1, %sh_prom.i205
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i206, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %cleanup102

if.else79:                                        ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then65.if.end80_crit_edge, %if.then65.if.end80_crit_edge280
  %172 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %error, align 4
  %tobool81.not = icmp eq ptr %old_bh, null
  %cmp83.not = icmp eq ptr %new_bh.2237, %old_bh
  %or.cond = or i1 %tobool81.not, %cmp83.not
  br i1 %or.cond, label %if.end80.cleanup102_crit_edge, label %if.then85

if.end80.cleanup102_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.then85:                                        ; preds = %if.end80
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 366) #10
  %call.i.i.i.i207 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old_bh, i32 noundef 4) #10
  %173 = ptrtoint ptr %old_bh to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %old_bh, align 4
  %and.i.i.i.i208 = and i32 %174, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i208)
  %tobool.not.i.i.i.i209 = icmp eq i32 %and.i.i.i.i208, 0
  br i1 %tobool.not.i.i.i.i209, label %trylock_buffer.exit.i212, label %if.then85.if.then.i213_crit_edge

if.then85.if.then.i213_crit_edge:                 ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i213

trylock_buffer.exit.i212:                         ; preds = %if.then85
  call void @llvm.prefetch.p0(ptr nonnull %old_bh, i32 1, i32 3, i32 1) #10
  %175 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %old_bh, ptr nonnull %old_bh, i32 4, ptr nonnull elementtype(i32) %old_bh) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i.i210 = extractvalue { i32, i32, i32 } %175, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %176 = and i32 %asmresult.i.i.i.i.i.i.i210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.not.i211 = icmp eq i32 %176, 0
  br i1 %tobool.not.not.i211, label %trylock_buffer.exit.i212.lock_buffer.exit215_crit_edge, label %trylock_buffer.exit.i212.if.then.i213_crit_edge

trylock_buffer.exit.i212.if.then.i213_crit_edge:  ; preds = %trylock_buffer.exit.i212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i213

trylock_buffer.exit.i212.lock_buffer.exit215_crit_edge: ; preds = %trylock_buffer.exit.i212
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit215

if.then.i213:                                     ; preds = %trylock_buffer.exit.i212.if.then.i213_crit_edge, %if.then85.if.then.i213_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %old_bh) #10
  br label %lock_buffer.exit215

lock_buffer.exit215:                              ; preds = %if.then.i213, %trylock_buffer.exit.i212.lock_buffer.exit215_crit_edge
  %b_data86 = getelementptr inbounds %struct.buffer_head, ptr %old_bh, i32 0, i32 5
  %177 = ptrtoint ptr %b_data86 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %b_data86, align 4
  %h_refcount87 = getelementptr inbounds %struct.ext2_xattr_header, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %h_refcount87 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %h_refcount87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %180)
  %cmp88 = icmp eq i32 %180, 16777216
  br i1 %cmp88, label %bforget.exit, label %if.else96

bforget.exit:                                     ; preds = %lock_buffer.exit215
  call void @__sanitizer_cov_trace_pc() #12
  %h_hash = getelementptr inbounds %struct.ext2_xattr_header, ptr %178, i32 0, i32 3
  %181 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %h_hash, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %182)
  %b_blocknr92 = getelementptr inbounds %struct.buffer_head, ptr %old_bh, i32 0, i32 3
  %184 = ptrtoint ptr %b_blocknr92 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %b_blocknr92, align 8
  call void @mb_cache_entry_delete(ptr noundef %6, i32 noundef %183, i64 noundef %185) #10
  %186 = ptrtoint ptr %b_blocknr92 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %b_blocknr92, align 8
  %conv95 = trunc i64 %187 to i32
  call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %conv95, i32 noundef 1) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %b_count.i216 = getelementptr inbounds %struct.buffer_head, ptr %old_bh, i32 0, i32 11
  %call.i.i.i217 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i216, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %b_count.i216, i32 1, i32 3, i32 1) #10
  %188 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i216, ptr %b_count.i216, i32 1, ptr elementtype(i32) %b_count.i216) #10, !srcloc !42
  call void @__bforget(ptr noundef nonnull %old_bh) #10
  br label %if.end100

if.else96:                                        ; preds = %lock_buffer.exit215
  call void @__sanitizer_cov_trace_pc() #12
  %189 = call i32 @llvm.bswap.i32(i32 %180) #10
  %add.i221 = add i32 %189, -1
  %190 = call i32 @llvm.bswap.i32(i32 %add.i221) #10
  %191 = ptrtoint ptr %h_refcount87 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %h_refcount87, align 4
  %i_blkbits.i222 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %192 = ptrtoint ptr %i_blkbits.i222 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %i_blkbits.i222, align 2
  %sh_prom.i223 = zext i8 %193 to i64
  %shl.i224 = shl nuw i64 1, %sh_prom.i223
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i224, i32 noundef 0) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  call void @mark_buffer_dirty(ptr noundef nonnull %old_bh) #10
  br label %if.end100

if.end100:                                        ; preds = %if.else96, %bforget.exit
  call void @unlock_buffer(ptr noundef nonnull %old_bh) #10
  br label %cleanup102

cleanup102:                                       ; preds = %if.end100, %if.end80.cleanup102_crit_edge, %if.then76, %land.lhs.true73.cleanup102_crit_edge
  %tobool.not.i225 = icmp eq ptr %new_bh.2237, null
  br i1 %tobool.not.i225, label %cleanup102.brelse.exit_crit_edge, label %cleanup102.if.then.i226_crit_edge

cleanup102.if.then.i226_crit_edge:                ; preds = %cleanup102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i226

cleanup102.brelse.exit_crit_edge:                 ; preds = %cleanup102
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i226:                                     ; preds = %cleanup102.if.then.i226_crit_edge, %land.lhs.true46.if.then.i226_crit_edge, %if.then9
  %new_bh.3247 = phi ptr [ %new_bh.2237, %cleanup102.if.then.i226_crit_edge ], [ %call.i.i, %if.then9 ], [ %new_bh.1, %land.lhs.true46.if.then.i226_crit_edge ]
  call void @__brelse(ptr noundef nonnull %new_bh.3247) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i226, %cleanup102.brelse.exit_crit_edge, %if.then71.brelse.exit_crit_edge, %if.then31, %if.else18.brelse.exit_crit_edge
  %194 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #10
  ret i32 %195
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_xattr_rehash(ptr nocapture noundef %header, ptr nocapture noundef %entry1) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %entry1, align 4
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp36.not.i = icmp eq i8 %1, 0
  br i1 %cmp36.not.i, label %entry.for.end.i_crit_edge, label %for.body.preheader.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %entry
  %e_name.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %n.039.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %name.038.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %e_name.i, %for.body.preheader.i ]
  %hash.037.i = phi i32 [ %xor4.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %xor35.i = tail call i32 @llvm.fshl.i32(i32 %hash.037.i, i32 %hash.037.i, i32 5) #10
  %incdec.ptr.i = getelementptr i8, ptr %name.038.i, i32 1
  %2 = ptrtoint ptr %name.038.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %name.038.i, align 1
  %conv3.i = zext i8 %3 to i32
  %xor4.i = xor i32 %xor35.i, %conv3.i
  %inc.i = add nuw nsw i32 %n.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %hash.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %xor4.i, %for.body.i.for.end.i_crit_edge ]
  %e_value_block.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1, i32 0, i32 3
  %4 = ptrtoint ptr %e_value_block.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %e_value_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.i = icmp eq i32 %5, 0
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.end.i.ext2_xattr_hash_entry.exit_crit_edge

for.end.i.ext2_xattr_hash_entry.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_hash_entry.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  %e_value_size.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1, i32 0, i32 4
  %6 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %e_value_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.ext2_xattr_hash_entry.exit_crit_edge, label %if.then.i

land.lhs.true.i.ext2_xattr_hash_entry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_hash_entry.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %add.i = add i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %tobool.not40.i = icmp ult i32 %add.i, 4
  br i1 %tobool.not40.i, label %if.then.i.ext2_xattr_hash_entry.exit_crit_edge, label %for.body13.preheader.i

if.then.i.ext2_xattr_hash_entry.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_hash_entry.exit

for.body13.preheader.i:                           ; preds = %if.then.i
  %shr11.i = lshr i32 %add.i, 2
  %e_value_offs.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1, i32 0, i32 2
  %9 = ptrtoint ptr %e_value_offs.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %e_value_offs.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  %conv9.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %header, i32 %conv9.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.body13.preheader.i
  %value.043.i = phi ptr [ %incdec.ptr17.i, %for.body13.i.for.body13.i_crit_edge ], [ %add.ptr.i, %for.body13.preheader.i ]
  %n.142.i = phi i32 [ %dec.i, %for.body13.i.for.body13.i_crit_edge ], [ %shr11.i, %for.body13.preheader.i ]
  %hash.141.i = phi i32 [ %xor18.i, %for.body13.i.for.body13.i_crit_edge ], [ %hash.0.lcssa.i, %for.body13.preheader.i ]
  %xor1634.i = tail call i32 @llvm.fshl.i32(i32 %hash.141.i, i32 %hash.141.i, i32 16) #10
  %incdec.ptr17.i = getelementptr i32, ptr %value.043.i, i32 1
  %12 = ptrtoint ptr %value.043.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.043.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %xor18.i = xor i32 %14, %xor1634.i
  %dec.i = add nsw i32 %n.142.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body13.i.ext2_xattr_hash_entry.exit_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.body13.i.ext2_xattr_hash_entry.exit_crit_edge: ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_xattr_hash_entry.exit

ext2_xattr_hash_entry.exit:                       ; preds = %for.body13.i.ext2_xattr_hash_entry.exit_crit_edge, %if.then.i.ext2_xattr_hash_entry.exit_crit_edge, %land.lhs.true.i.ext2_xattr_hash_entry.exit_crit_edge, %for.end.i.ext2_xattr_hash_entry.exit_crit_edge
  %hash.2.i = phi i32 [ %hash.0.lcssa.i, %land.lhs.true.i.ext2_xattr_hash_entry.exit_crit_edge ], [ %hash.0.lcssa.i, %for.end.i.ext2_xattr_hash_entry.exit_crit_edge ], [ %hash.0.lcssa.i, %if.then.i.ext2_xattr_hash_entry.exit_crit_edge ], [ %xor18.i, %for.body13.i.ext2_xattr_hash_entry.exit_crit_edge ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %hash.2.i) #10
  %e_hash.i = getelementptr inbounds %struct.ext2_xattr_entry, ptr %entry1, i32 0, i32 5
  %16 = ptrtoint ptr %e_hash.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %e_hash.i, align 4
  %add.ptr = getelementptr %struct.ext2_xattr_header, ptr %header, i32 1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not15 = icmp eq i32 %18, 0
  br i1 %cmp.not15, label %ext2_xattr_hash_entry.exit.while.end_crit_edge, label %ext2_xattr_hash_entry.exit.while.body_crit_edge

ext2_xattr_hash_entry.exit.while.body_crit_edge:  ; preds = %ext2_xattr_hash_entry.exit
  br label %while.body

ext2_xattr_hash_entry.exit.while.end_crit_edge:   ; preds = %ext2_xattr_hash_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %ext2_xattr_hash_entry.exit.while.body_crit_edge
  %hash.017 = phi i32 [ %xor3, %if.end.while.body_crit_edge ], [ 0, %ext2_xattr_hash_entry.exit.while.body_crit_edge ]
  %here.016 = phi ptr [ %add.ptr5, %if.end.while.body_crit_edge ], [ %add.ptr, %ext2_xattr_hash_entry.exit.while.body_crit_edge ]
  %e_hash = getelementptr inbounds %struct.ext2_xattr_entry, ptr %here.016, i32 0, i32 5
  %19 = ptrtoint ptr %e_hash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %e_hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %xor14 = tail call i32 @llvm.fshl.i32(i32 %hash.017, i32 %hash.017, i32 16)
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %xor3 = xor i32 %21, %xor14
  %22 = ptrtoint ptr %here.016 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %here.016, align 4
  %conv = zext i8 %23 to i32
  %add4 = add nuw nsw i32 %conv, 19
  %and = and i32 %add4, 508
  %add.ptr5 = getelementptr i8, ptr %here.016, i32 %and
  %24 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr5, align 4
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %ext2_xattr_hash_entry.exit.while.end_crit_edge
  %hash.1 = phi i32 [ 0, %ext2_xattr_hash_entry.exit.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %xor3, %if.end.while.end_crit_edge ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %hash.1)
  %h_hash = getelementptr inbounds %struct.ext2_xattr_header, ptr %header, i32 0, i32 3
  %27 = ptrtoint ptr %h_hash to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %h_hash, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_xattr_delete_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %xattr_sem = getelementptr i8, ptr %inode, i32 -232
  %call2 = tail call i32 @down_write_trylock(ptr noundef %xattr_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b136 = load i1, ptr @ext2_xattr_delete_inode.__already_done, align 1
  br i1 %.b136, label %land.rhs.cleanup97_crit_edge, label %if.then, !prof !44

land.rhs.cleanup97_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup97

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ext2_xattr_delete_inode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 805, i32 noundef 9, ptr noundef null) #10
  br label %cleanup97

if.end41:                                         ; preds = %entry
  %i_file_acl = getelementptr i8, ptr %inode, i32 -256
  %4 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_file_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool43.not = icmp eq i32 %5, 0
  br i1 %tobool43.not, label %if.end41.brelse.exit_crit_edge, label %if.end45

if.end41.brelse.exit_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.end45:                                         ; preds = %if.end41
  %call48 = tail call i32 @ext2_data_block_valid(ptr noundef %3, i32 noundef %5, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  br i1 %tobool49.not, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %10 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_file_acl, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %9, i32 noundef %11) #10
  br label %brelse.exit

if.end54:                                         ; preds = %if.end45
  %12 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_file_acl, align 8
  %conv = zext i32 %13 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv, i32 noundef %17, i32 noundef 8) #10
  %tobool59.not = icmp eq ptr %call.i, null
  br i1 %tobool59.not, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %i_ino62 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino62, align 8
  %22 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_file_acl, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %21, i32 noundef %23) #10
  br label %brelse.exit

if.end65:                                         ; preds = %if.end54
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 746, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 746
  br i1 %cmp.not.i, label %ext2_xattr_header_valid.exit, label %if.end65.if.then68_crit_edge

if.end65.if.then68_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

ext2_xattr_header_valid.exit:                     ; preds = %if.end65
  %h_blocks.i = getelementptr inbounds %struct.ext2_xattr_header, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %h_blocks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %29)
  %cmp1.not.i = icmp eq i32 %29, 16777216
  br i1 %cmp1.not.i, label %if.end73, label %ext2_xattr_header_valid.exit.if.then68_crit_edge

ext2_xattr_header_valid.exit.if.then68_crit_edge: ; preds = %ext2_xattr_header_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.then68:                                        ; preds = %ext2_xattr_header_valid.exit.if.then68_crit_edge, %if.end65.if.then68_crit_edge
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %i_ino70 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino70, align 8
  %34 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_file_acl, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef %35) #10
  br label %if.then.i149

if.end73:                                         ; preds = %ext2_xattr_header_valid.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 366) #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end73.if.then.i_crit_edge

if.end73.if.then.i_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end73
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %39 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end73.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i) #10
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %40 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data, align 4
  %h_refcount = getelementptr inbounds %struct.ext2_xattr_header, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %h_refcount to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %h_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %43)
  %cmp = icmp eq i32 %43, 16777216
  br i1 %cmp, label %bforget.exit, label %if.else

bforget.exit:                                     ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  %h_hash = getelementptr inbounds %struct.ext2_xattr_header, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %h_hash to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %h_hash, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i144 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i144 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i144, align 16
  %s_ea_block_cache = getelementptr inbounds %struct.ext2_sb_info, ptr %50, i32 0, i32 37
  %51 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_ea_block_cache, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %53 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %b_blocknr, align 8
  tail call void @mb_cache_entry_delete(ptr noundef %52, i32 noundef %46, i64 noundef %54) #10
  %55 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_file_acl, align 8
  tail call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %56, i32 noundef 1) #10
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #10
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #10, !srcloc !42
  tail call void @__bforget(ptr noundef nonnull %call.i) #10
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #10
  br label %if.end92

if.else:                                          ; preds = %lock_buffer.exit
  %58 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  %add.i = add i32 %58, -1
  %59 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %60 = ptrtoint ptr %h_refcount to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %h_refcount, align 4
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #10
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #10
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_flags, align 4
  %and = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %if.else.if.then89_crit_edge

if.else.if.then89_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

lor.lhs.false:                                    ; preds = %if.else
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %65 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_flags, align 4
  %and87 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %lor.lhs.false.if.end91_crit_edge, label %lor.lhs.false.if.then89_crit_edge

lor.lhs.false.if.then89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then89:                                        ; preds = %lor.lhs.false.if.then89_crit_edge, %if.else.if.then89_crit_edge
  %call90 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %lor.lhs.false.if.end91_crit_edge
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %67 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %68 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i, i32 noundef 0) #10
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %bforget.exit
  %69 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %i_file_acl, align 8
  br label %if.then.i149

if.then.i149:                                     ; preds = %if.end92, %if.then68
  tail call void @__brelse(ptr noundef nonnull %call.i) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i149, %if.then60, %if.then50, %if.end41.brelse.exit_crit_edge
  tail call void @up_write(ptr noundef %xattr_sem) #10
  br label %cleanup97

cleanup97:                                        ; preds = %brelse.exit, %if.then, %land.rhs.cleanup97_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_data_block_valid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_free_blocks(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext2_xattr_create_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mb_cache_create(i32 noundef 10) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_xattr_destroy_cache(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cache, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mb_cache_destroy(ptr noundef nonnull %cache) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_new_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_find_first(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mb_cache_entry_touch(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mb_cache_entry_find_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mb_cache_entry_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_update_dynamic_rev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mb_cache_entry_create(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @ext2_xattr_handlers, !1, !"ext2_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/ext2/xattr.c", i32 113, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext2/xattr.c", i32 229, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext2/xattr.c", i32 230, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext2/xattr.c", i32 457, i32 19}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/ext2/xattr.c", i32 805, i32 6}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext2/xattr.c", i32 811, i32 27}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ext2/xattr.c", i32 812, i32 4}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext2/xattr.c", i32 820, i32 4}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ext2/xattr.c", i32 315, i32 27}
!19 = !{ptr @ext2_xattr_handler_map, !20, !"ext2_xattr_handler_map", i1 false, i1 false}
!20 = !{!"../fs/ext2/xattr.c", i32 101, i32 36}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ext2/xattr.c", i32 953, i32 28}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ext2/xattr.c", i32 954, i32 5}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148703063, i64 2148703095, i64 2148703124, i64 2148703158, i64 2148703189, i64 2148703212}
!37 = !{i64 2148792168}
!38 = !{!"auto-init"}
!39 = !{i64 2148782681}
!40 = !{i64 2148697390, i64 2148697422, i64 2148697451, i64 2148697485, i64 2148697516, i64 2148697539}
!41 = !{i64 2148782910}
!42 = !{i64 2148694205, i64 2148694231, i64 2148694260, i64 2148694294, i64 2148694325, i64 2148694348}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"branch_weights", i32 2000, i32 1}
