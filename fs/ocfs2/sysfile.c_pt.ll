; ModuleID = '/llk/IR_all_yes/fs/ocfs2/sysfile.c_pt.bc'
source_filename = "../fs/ocfs2/sysfile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ocfs2_system_inode_info = type { ptr, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.88, ptr }
%union.anon.88 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@__func__.get_local_system_inode = private unnamed_addr constant [23 x i8] c"get_local_system_inode\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__._ocfs2_get_system_file_inode = private unnamed_addr constant [29 x i8] c"_ocfs2_get_system_file_inode\00", align 1
@ocfs2_system_inodes = internal constant { [15 x %struct.ocfs2_system_inode_info], [44 x i8] } { [15 x %struct.ocfs2_system_inode_info] [%struct.ocfs2_system_inode_info { ptr @.str.2, i32 0, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.3, i32 1152, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.4, i32 0, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.5, i32 512, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.6, i32 0, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.7, i32 4096, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.8, i32 4096, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.9, i32 0, i32 16877 }, %struct.ocfs2_system_inode_info { ptr @.str.10, i32 1152, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.11, i32 1152, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.12, i32 256, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.13, i32 192, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.14, i32 2048, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.15, i32 4096, i32 33188 }, %struct.ocfs2_system_inode_info { ptr @.str.16, i32 4096, i32 33188 }], [44 x i8] zeroinitializer }, align 32
@ocfs2_sysfile_cluster_lock_key = internal global { [15 x %struct.lock_class_key], [40 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad_blocks\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"global_inode_alloc\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slot_map\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"heartbeat\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"global_bitmap\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aquota.user\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aquota.group\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orphan_dir:%04d\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"extent_alloc:%04d\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inode_alloc:%04d\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal:%04d\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"local_alloc:%04d\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"truncate_log:%04d\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aquota.user:%04d\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aquota.group:%04d\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 13, i64 14]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 62, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"ocfs2_system_inodes\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 350, i32 39 }
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"ocfs2_sysfile_cluster_lock_key\00", align 1
@___asan_gen_.25 = private constant [22 x i8] c"../fs/ocfs2/sysfile.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 31, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1578, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 353, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 354, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 357, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 358, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 359, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 360, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 361, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 364, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 365, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 366, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 367, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 368, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 369, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 370, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"../fs/ocfs2/ocfs2_fs.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 371, i32 39 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @ocfs2_system_inodes, ptr @ocfs2_sysfile_cluster_lock_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_system_inodes to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_sysfile_cluster_lock_key to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef %type, i32 noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  %namebuf.i = alloca [40 x i8], align 1
  %blkno.i = alloca i64, align 8
  %_m.i66 = alloca i64, align 8
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %type, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %0)
  %1 = icmp ult i32 %0, -6
  br i1 %1, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.ocfs2_super, ptr %osb, i32 0, i32 4, i32 %type
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %slot)
  %cmp.i = icmp eq i32 %slot, 65535
  br i1 %cmp.i, label %do.body2.i, label %do.body8.i, !prof !50

do.body2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/sysfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body8.i:                                       ; preds = %if.else
  %2 = add i32 %type, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %2)
  %3 = icmp ult i32 %2, -8
  br i1 %3, label %do.body18.i, label %do.end26.i, !prof !50

do.body18.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/sysfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 49, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.end26.i:                                       ; preds = %do.body8.i
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #7
  %local_system_inodes27.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 5
  %4 = ptrtoint ptr %local_system_inodes27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_system_inodes27.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #7
  %tobool29.not.i = icmp eq ptr %5, null
  br i1 %tobool29.not.i, label %if.end8.i.i.i, label %do.end26.i.if.end67.i_crit_edge, !prof !50

do.end26.i.if.end67.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.end8.i.i.i:                                    ; preds = %do.end26.i
  %max_slots.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %6 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_slots.i, align 8
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 32) #7
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i.i = select i1 %9, i32 -1, i32 %10
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i, i32 noundef 3392) #10
  %tobool40.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool40.not.i, label %if.end18.thread, label %if.end58.i

if.end18.thread:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #7
  %11 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.get_local_system_inode, i32 noundef 62, ptr noundef nonnull @.str, i64 noundef -12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #7
  %system_file_mutex70 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 100
  call void @mutex_lock_nested(ptr noundef %system_file_mutex70, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %namebuf.i) #7
  %12 = call ptr @memset(ptr %namebuf.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno.i) #7
  %13 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %blkno.i, align 8, !annotation !53
  %arrayidx.i.i79 = getelementptr [15 x %struct.ocfs2_system_inode_info], ptr @ocfs2_system_inodes, i32 0, i32 %type
  %14 = ptrtoint ptr %arrayidx.i.i79 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i79, align 4
  br label %if.else.i.i

if.end58.i:                                       ; preds = %if.end8.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #7
  %16 = ptrtoint ptr %local_system_inodes27.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local_system_inodes27.i, align 4
  %tobool61.not.i = icmp eq ptr %17, null
  br i1 %tobool61.not.i, label %if.else.i, label %if.end58.i.if.end65.i_crit_edge

if.end58.i.if.end65.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.else.i:                                        ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %local_system_inodes27.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.i, ptr %local_system_inodes27.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else.i, %if.end58.i.if.end65.i_crit_edge
  %local_system_inodes.0.i = phi ptr [ %call9.i.i.i, %if.else.i ], [ %17, %if.end58.i.if.end65.i_crit_edge ]
  %free.0.i = phi ptr [ null, %if.else.i ], [ %call9.i.i.i, %if.end58.i.if.end65.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #7
  tail call void @kfree(ptr noundef %free.0.i) #7
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end65.i, %do.end26.i.if.end67.i_crit_edge
  %local_system_inodes.1.i = phi ptr [ %local_system_inodes.0.i, %if.end65.i ], [ %5, %do.end26.i.if.end67.i_crit_edge ]
  %mul.i = shl i32 %slot, 3
  %add.i = add nuw i32 %0, %mul.i
  %arrayidx.i = getelementptr ptr, ptr %local_system_inodes.1.i, i32 %add.i
  br label %if.end

if.end:                                           ; preds = %if.end67.i, %if.then
  %arr.0 = phi ptr [ %arrayidx, %if.then ], [ %arrayidx.i, %if.end67.i ]
  %system_file_mutex = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 100
  tail call void @mutex_lock_nested(ptr noundef %system_file_mutex, i32 noundef 0) #7
  %tobool2.not = icmp eq ptr %arr.0, null
  br i1 %tobool2.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %19 = ptrtoint ptr %arr.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arr.0, align 4
  %cmp.not = icmp eq ptr %20, null
  br i1 %cmp.not, label %land.lhs.true.if.end18_crit_edge, label %if.then3

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then3:                                         ; preds = %land.lhs.true
  %call4 = tail call ptr @igrab(ptr noundef nonnull %20) #7
  tail call void @mutex_unlock(ptr noundef %system_file_mutex) #7
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.body11, label %if.then3.cleanup_crit_edge, !prof !50

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/sysfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 106, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %namebuf.i) #7
  %21 = call ptr @memset(ptr %namebuf.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno.i) #7
  %22 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %blkno.i, align 8, !annotation !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp.i.i = icmp ult i32 %type, 7
  %arrayidx.i.i = getelementptr [15 x %struct.ocfs2_system_inode_info], ptr @ocfs2_system_inodes, i32 0, i32 %type
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end18.if.else.i.i_crit_edge

if.end18.if.else.i.i_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %namebuf.i, i32 noundef 40, ptr noundef nonnull @.str.1, ptr noundef %24) #7
  br label %ocfs2_sprintf_system_inode_name.exit.i

if.else.i.i:                                      ; preds = %if.end18.if.else.i.i_crit_edge, %if.end18.thread
  %25 = phi ptr [ %15, %if.end18.thread ], [ %24, %if.end18.if.else.i.i_crit_edge ]
  %arr.07285 = phi ptr [ null, %if.end18.thread ], [ %arr.0, %if.end18.if.else.i.i_crit_edge ]
  %system_file_mutex7383 = phi ptr [ %system_file_mutex70, %if.end18.thread ], [ %system_file_mutex, %if.end18.if.else.i.i_crit_edge ]
  %tobool2.not7481 = phi i1 [ true, %if.end18.thread ], [ %tobool2.not, %if.end18.if.else.i.i_crit_edge ]
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %namebuf.i, i32 noundef 40, ptr noundef %25, i32 noundef %slot) #7
  br label %ocfs2_sprintf_system_inode_name.exit.i

ocfs2_sprintf_system_inode_name.exit.i:           ; preds = %if.else.i.i, %if.then.i.i
  %26 = phi ptr [ %25, %if.else.i.i ], [ %24, %if.then.i.i ]
  %arr.07284 = phi ptr [ %arr.07285, %if.else.i.i ], [ %arr.0, %if.then.i.i ]
  %system_file_mutex7382 = phi ptr [ %system_file_mutex7383, %if.else.i.i ], [ %system_file_mutex, %if.then.i.i ]
  %tobool2.not7480 = phi i1 [ %tobool2.not7481, %if.else.i.i ], [ %tobool2.not, %if.then.i.i ]
  %sys_root_inode.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 3
  %27 = ptrtoint ptr %sys_root_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sys_root_inode.i, align 4
  %call3.i = call i32 @strlen(ptr noundef nonnull %namebuf.i) #11
  %call4.i = call i32 @ocfs2_lookup_ino_from_name(ptr noundef %28, ptr noundef nonnull %namebuf.i, i32 noundef %call3.i, ptr noundef nonnull %blkno.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i67 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i67, label %ocfs2_sprintf_system_inode_name.exit.i._ocfs2_get_system_file_inode.exit.thread_crit_edge, label %if.end.i

ocfs2_sprintf_system_inode_name.exit.i._ocfs2_get_system_file_inode.exit.thread_crit_edge: ; preds = %ocfs2_sprintf_system_inode_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ocfs2_get_system_file_inode.exit.thread

if.end.i:                                         ; preds = %ocfs2_sprintf_system_inode_name.exit.i
  %29 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %blkno.i, align 8
  %call5.i = call ptr @ocfs2_iget(ptr noundef %osb, i64 noundef %30, i32 noundef 1, i32 noundef %type) #7
  %cmp.i53.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53.i, label %if.then7.i, label %if.end21.i

if.then7.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %call5.i to i32
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %do.body.i [
    i32 -512, label %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge
    i32 -4, label %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge90
    i32 524289, label %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge91
    i32 -28, label %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge92
    i32 -122, label %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge93
  ]

if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge93: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ocfs2_get_system_file_inode.exit.thread

if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge92: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ocfs2_get_system_file_inode.exit.thread

if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge91: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ocfs2_get_system_file_inode.exit.thread

if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge90: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ocfs2_get_system_file_inode.exit.thread

if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ocfs2_get_system_file_inode.exit.thread

do.body.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i66) #7
  %33 = ptrtoint ptr %_m.i66 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m.i66, align 8
  %conv.i = sext i32 %31 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i66, ptr noundef nonnull @__func__._ocfs2_get_system_file_inode, i32 noundef 144, ptr noundef nonnull @.str, i64 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i66) #7
  br label %_ocfs2_get_system_file_inode.exit.thread

if.end21.i:                                       ; preds = %if.end.i
  %34 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %if.else.i68 [
    i32 13, label %if.end21.i.if.then29.i_crit_edge
    i32 14, label %if.end21.i.if.then29.i_crit_edge94
    i32 10, label %if.end21.i.if.then29.i_crit_edge95
  ]

if.end21.i.if.then29.i_crit_edge95:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.end21.i.if.then29.i_crit_edge94:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.end21.i.if.then29.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.end21.i.if.then29.i_crit_edge, %if.end21.i.if.then29.i_crit_edge94, %if.end21.i.if.then29.i_crit_edge95
  %l_lockdep_map.i = getelementptr i8, ptr %call5.i, i32 -848
  %35 = ptrtoint ptr %l_lockdep_map.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %l_lockdep_map.i, align 8
  br label %_ocfs2_get_system_file_inode.exit

if.else.i68:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %l_lockdep_map33.i = getelementptr i8, ptr %call5.i, i32 -848
  %arrayidx34.i = getelementptr [15 x %struct.lock_class_key], ptr @ocfs2_sysfile_cluster_lock_key, i32 0, i32 %type
  call void @lockdep_init_map_type(ptr noundef %l_lockdep_map33.i, ptr noundef %26, ptr noundef %arrayidx34.i, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %_ocfs2_get_system_file_inode.exit

_ocfs2_get_system_file_inode.exit.thread:         ; preds = %do.body.i, %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge, %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge90, %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge91, %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge92, %if.then7.i._ocfs2_get_system_file_inode.exit.thread_crit_edge93, %ocfs2_sprintf_system_inode_name.exit.i._ocfs2_get_system_file_inode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %namebuf.i) #7
  br label %if.end45

_ocfs2_get_system_file_inode.exit:                ; preds = %if.else.i68, %if.then29.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %namebuf.i) #7
  %tobool22.not = icmp eq ptr %call5.i, null
  %or.cond = select i1 %tobool2.not7480, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %_ocfs2_get_system_file_inode.exit.if.end45_crit_edge, label %if.then23

_ocfs2_get_system_file_inode.exit.if.end45_crit_edge: ; preds = %_ocfs2_get_system_file_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then23:                                        ; preds = %_ocfs2_get_system_file_inode.exit
  %call24 = call ptr @igrab(ptr noundef nonnull %call5.i) #7
  %36 = ptrtoint ptr %arr.07284 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call24, ptr %arr.07284, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.body36, label %if.then23.if.end45_crit_edge, !prof !50

if.then23.if.end45_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.body36:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/sysfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #7, !srcloc !55
  unreachable

if.end45:                                         ; preds = %if.then23.if.end45_crit_edge, %_ocfs2_get_system_file_inode.exit.if.end45_crit_edge, %_ocfs2_get_system_file_inode.exit.thread
  %inode.0.i89 = phi ptr [ null, %_ocfs2_get_system_file_inode.exit.thread ], [ %call5.i, %if.then23.if.end45_crit_edge ], [ %call5.i, %_ocfs2_get_system_file_inode.exit.if.end45_crit_edge ]
  call void @mutex_unlock(ptr noundef %system_file_mutex7382) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then3.cleanup_crit_edge
  %retval.0 = phi ptr [ %inode.0.i89, %if.end45 ], [ %call4, %if.then3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lookup_ino_from_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_iget(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__func__.get_local_system_inode, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/sysfile.c", i32 62, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__._ocfs2_get_system_file_inode, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/sysfile.c", i32 144, i32 3}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 1578, i32 30}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 353, i32 32}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 354, i32 41}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 357, i32 32}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 358, i32 32}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 359, i32 36}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 360, i32 33}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 361, i32 34}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 364, i32 33}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 365, i32 35}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 366, i32 34}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 367, i32 31}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 368, i32 34}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 369, i32 35}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 370, i32 39}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 371, i32 39}
!37 = !{ptr @ocfs2_system_inodes, !38, !"ocfs2_system_inodes", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/ocfs2_fs.h", i32 350, i32 39}
!39 = !{ptr @ocfs2_sysfile_cluster_lock_key, !40, !"ocfs2_sysfile_cluster_lock_key", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/sysfile.c", i32 31, i32 30}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2154770349, i64 2154770831, i64 2154770386, i64 2154770442, i64 2154770476, i64 2154770500, i64 2154770541, i64 2154770562, i64 2154770590, i64 2154770624}
!52 = !{i64 2154772112, i64 2154772594, i64 2154772149, i64 2154772205, i64 2154772239, i64 2154772263, i64 2154772304, i64 2154772325, i64 2154772353, i64 2154772387}
!53 = !{!"auto-init"}
!54 = !{i64 2154774667, i64 2154775150, i64 2154774704, i64 2154774760, i64 2154774794, i64 2154774818, i64 2154774859, i64 2154774880, i64 2154774908, i64 2154774942}
!55 = !{i64 2154780291, i64 2154780774, i64 2154780328, i64 2154780384, i64 2154780418, i64 2154780442, i64 2154780483, i64 2154780504, i64 2154780532, i64 2154780566}
