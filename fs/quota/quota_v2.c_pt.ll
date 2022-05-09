; ModuleID = '/llk/IR_all_yes/fs/quota/quota_v2.c_pt.bc'
source_filename = "../fs/quota/quota_v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.quota_format_type = type { i32, ptr, ptr, ptr }
%struct.quota_format_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qtree_fmt_operations = type { ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v2_disk_dqheader = type { i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v2_disk_dqinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.qtree_mem_dqinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i32, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.67, i32 }
%union.anon.67 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.v2r0_disk_dqblk = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.v2r1_disk_dqblk = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@__UNIQUE_ID_author213 = internal constant [25 x i8] c"quota_v2.author=Jan Kara\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [45 x i8] c"quota_v2.description=Quota format v2 support\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [32 x i8] c"quota_v2.file=fs/quota/quota_v2\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [21 x i8] c"quota_v2.license=GPL\00", section ".modinfo", align 1
@v2r0_quota_format = internal global { %struct.quota_format_type, [16 x i8] } { %struct.quota_format_type { i32 2, ptr @v2_format_ops, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@v2r1_quota_format = internal global { %struct.quota_format_type, [16 x i8] } { %struct.quota_format_type { i32 4, ptr @v2_format_ops, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_quota_v2__217_436_init_v2_quota_format6 = internal global ptr @init_v2_quota_format, section ".initcall6.init", align 4
@__exitcall_exit_v2_quota_format = internal global ptr @exit_v2_quota_format, section ".exitcall.exit", align 4
@v2_format_ops = internal constant { %struct.quota_format_ops, [32 x i8] } { %struct.quota_format_ops { ptr @v2_check_quota_file, ptr @v2_read_file_info, ptr @v2_write_file_info, ptr @v2_free_file_info, ptr @v2_read_dquot, ptr @v2_write_dquot, ptr @v2_release_dquot, ptr @v2_get_next_id }, [32 x i8] zeroinitializer }, align 32
@v2_check_quota_file.quota_magics = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -641720559, i32 -641722073, i32 -641712364], [20 x i8] zeroinitializer }, align 32
@v2_check_quota_file.quota_versions = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@__func__.v2_read_header = private unnamed_addr constant [15 x i8] c"v2_read_header\00", align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed header read: expected=%zd got=%zd\00", [55 x i8] zeroinitializer }, align 32
@__func__.v2_read_file_info = private unnamed_addr constant [18 x i8] c"v2_read_file_info\00", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't read info structure\00", [38 x i8] zeroinitializer }, align 32
@v2r0_qtree_ops = internal constant { %struct.qtree_fmt_operations, [20 x i8] } { %struct.qtree_fmt_operations { ptr @v2r0_mem2diskdqb, ptr @v2r0_disk2memdqb, ptr @v2r0_is_id }, [20 x i8] zeroinitializer }, align 32
@v2r1_qtree_ops = internal constant { %struct.qtree_fmt_operations, [20 x i8] } { %struct.qtree_fmt_operations { ptr @v2r1_mem2diskdqb, ptr @v2r1_disk2memdqb, ptr @v2r1_is_id }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Number of blocks too big for quota file size (%llu > %llu).\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Free block number too big (%u >= %u).\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Block with free entry too big (%u >= %u).\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@dq_data_lock = external dso_local global %struct.spinlock, align 4
@__func__.v2_write_file_info = private unnamed_addr constant [19 x i8] c"v2_write_file_info\00", align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't write info structure\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"v2r0_quota_format\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 408, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"v2r1_quota_format\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 414, i32 33 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"v2_format_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 397, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"quota_magics\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 78, i32 20 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"quota_versions\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 79, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 65, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 115, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"v2r0_qtree_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 32, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"v2r1_qtree_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 38, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 164, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 170, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 175, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [23 x i8] c"../fs/quota/quota_v2.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 214, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_exit_v2_quota_format, ptr @__initcall__kmod_quota_v2__217_436_init_v2_quota_format6, ptr @exit_v2_quota_format, ptr @v2r0_quota_format, ptr @v2r1_quota_format, ptr @v2_format_ops, ptr @v2_check_quota_file.quota_magics, ptr @v2_check_quota_file.quota_versions, ptr @.str, ptr @.str.1, ptr @v2r0_qtree_ops, ptr @v2r1_qtree_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2r0_quota_format to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2r1_quota_format to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2_format_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2_check_quota_file.quota_magics to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2_check_quota_file.quota_versions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2r0_qtree_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2r1_qtree_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_v2_quota_format() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_quota_format(ptr noundef nonnull @v2r0_quota_format) #10
  tail call void @unregister_quota_format(ptr noundef nonnull @v2r1_quota_format) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_quota_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_v2_quota_format() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_quota_format(ptr noundef nonnull @v2r0_quota_format) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @register_quota_format(ptr noundef nonnull @v2r1_quota_format) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_check_quota_file(ptr noundef %sb, i32 noundef %type) #2 align 64 {
entry:
  %dqhead = alloca %struct.v2_disk_dqheader, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dqhead) #10
  %0 = ptrtoint ptr %dqhead to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dqhead, align 4, !annotation !49
  %1 = getelementptr inbounds %struct.v2_disk_dqheader, ptr %dqhead, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !49
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %3 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %quota_read.i, align 4
  %call.i = call i32 %6(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dqhead, i32 noundef 8, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 8
  br i1 %cmp.not.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.v2_read_header, ptr noundef nonnull @.str, i32 noundef 8, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dqhead to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dqhead, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx = getelementptr [3 x i32], ptr @v2_check_quota_file.quota_magics, i32 0, i32 %type
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx1 = getelementptr [3 x i32], ptr @v2_check_quota_file.quota_versions, i32 0, i32 %type
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp2 = icmp ule i32 %14, %16
  %spec.select = zext i1 %cmp2 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dqhead) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_read_file_info(ptr noundef %sb, i32 noundef %type) #2 align 64 {
entry:
  %dinfo = alloca %struct.v2_disk_dqinfo, align 4
  %dqhead = alloca %struct.v2_disk_dqheader, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dinfo) #10
  %0 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 3
  %2 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 4
  %3 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 5
  %4 = call ptr @memset(ptr %dinfo, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dqhead) #10
  %5 = ptrtoint ptr %dqhead to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dqhead, align 4, !annotation !49
  %6 = getelementptr inbounds %struct.v2_disk_dqheader, ptr %dqhead, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !49
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 1
  tail call void @down_read(ptr noundef %dqio_sem) #10
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %8 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %quota_read.i, align 4
  %call.i = call i32 %11(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dqhead, i32 noundef 8, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 8
  br i1 %cmp.not.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.v2_read_header, ptr noundef nonnull @.str, i32 noundef 8, i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1.i, i32 %call.i, i32 -5
  br label %out

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  %dqi_fmt_id = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 1
  %14 = ptrtoint ptr %dqi_fmt_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dqi_fmt_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp3 = icmp ne i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.not = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp6 = icmp ne i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %13)
  %cmp8.not = icmp eq i32 %13, 16777216
  %or.cond144 = select i1 %cmp6, i1 true, i1 %cmp8.not
  br i1 %or.cond144, label %if.end10, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_op.i, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %quota_read, align 4
  %call11 = call i32 %19(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dinfo, i32 noundef 24, i64 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 24
  br i1 %cmp12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.v2_read_file_info, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp14 = icmp slt i32 %call11, 0
  %call11. = select i1 %cmp14, i32 %call11, i32 -5
  br label %out

if.end17:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3136, i32 noundef 40) #13
  %dqi_priv = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 8
  %21 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i, ptr %dqi_priv, align 8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end21:                                         ; preds = %if.end17
  %spec.select154 = select i1 %cmp4.not, i64 4398046510080, i64 9223372036854775807
  %spec.select155 = select i1 %cmp4.not, i64 4294967295, i64 9223372036854775807
  %22 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %spec.select154, ptr %22, align 8
  %24 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 7
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %spec.select155, ptr %24, align 8
  %26 = ptrtoint ptr %dinfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dinfo, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %dqi_bgrace29 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 4
  %29 = ptrtoint ptr %dqi_bgrace29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dqi_bgrace29, align 4
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %dqi_igrace30 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 5
  %33 = ptrtoint ptr %dqi_igrace30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dqi_igrace30, align 8
  %dqi_flags = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 3
  %34 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dqi_flags, align 8
  %35 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sb, ptr %call7.i, align 8
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 1
  %36 = ptrtoint ptr %dqi_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %type, ptr %dqi_type, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %dqi_blocks31 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 2
  %40 = ptrtoint ptr %dqi_blocks31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dqi_blocks31, align 8
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %2, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %dqi_free_blk32 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 3
  %44 = ptrtoint ptr %dqi_free_blk32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dqi_free_blk32, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %dqi_free_entry33 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 4
  %48 = ptrtoint ptr %dqi_free_entry33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %dqi_free_entry33, align 8
  %dqi_blocksize_bits = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 5
  %49 = ptrtoint ptr %dqi_blocksize_bits to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 10, ptr %dqi_blocksize_bits, align 4
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 7
  %50 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1024, ptr %dqi_usable_bs, align 4
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 8
  %51 = ptrtoint ptr %dqi_qtree_depth to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %dqi_qtree_depth, align 8
  %.sink153 = select i1 %cmp4.not, i32 48, i32 72
  %v2r1_qtree_ops.sink = select i1 %cmp4.not, ptr @v2r0_qtree_ops, ptr @v2r1_qtree_ops
  %52 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 6
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink153, ptr %52, align 8
  %54 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %call7.i, i32 0, i32 9
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %v2r1_qtree_ops.sink, ptr %54, align 4
  %56 = ptrtoint ptr %dqi_blocks31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dqi_blocks31, align 8
  %conv = zext i32 %57 to i64
  %58 = load i32, ptr %dqi_blocksize_bits, align 4
  %sh_prom = zext i32 %58 to i64
  %shl = shl i64 %conv, %sh_prom
  %arrayidx44 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %59 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx44, align 4
  %call45 = call fastcc i64 @i_size_read(ptr noundef %60)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call45)
  %cmp46 = icmp sgt i64 %shl, %call45
  br i1 %cmp46, label %if.then48, label %if.end58

if.then48:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %dqi_blocks31 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dqi_blocks31, align 8
  %conv50 = zext i32 %62 to i64
  %63 = ptrtoint ptr %dqi_blocksize_bits to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dqi_blocksize_bits, align 4
  %sh_prom52 = zext i32 %64 to i64
  %shl53 = shl i64 %conv50, %sh_prom52
  %65 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx44, align 4
  %call57 = call fastcc i64 @i_size_read(ptr noundef %66)
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.v2_read_file_info, ptr noundef nonnull @.str.2, i64 noundef %shl53, i64 noundef %call57) #10
  br label %if.then76

if.end58:                                         ; preds = %if.end21
  %67 = ptrtoint ptr %dqi_free_blk32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dqi_free_blk32, align 4
  %69 = ptrtoint ptr %dqi_blocks31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dqi_blocks31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp61.not = icmp ult i32 %68, %70
  br i1 %cmp61.not, label %if.end66, label %if.then63

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.v2_read_file_info, ptr noundef nonnull @.str.3, i32 noundef %68, i32 noundef %70) #10
  br label %if.then76

if.end66:                                         ; preds = %if.end58
  %71 = ptrtoint ptr %dqi_free_entry33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dqi_free_entry33, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp69.not = icmp ult i32 %72, %70
  br i1 %cmp69.not, label %if.end66.out_crit_edge, label %if.then71

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.v2_read_file_info, ptr noundef nonnull @.str.4, i32 noundef %72, i32 noundef %70) #10
  br label %if.then76

if.then76:                                        ; preds = %if.then71, %if.then63, %if.then48
  %73 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dqi_priv, align 8
  call void @kfree(ptr noundef %74) #10
  %75 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %dqi_priv, align 8
  br label %out

out:                                              ; preds = %if.then76, %if.end66.out_crit_edge, %if.end17.out_crit_edge, %if.then13, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %if.then.i
  %ret.1 = phi i32 [ -117, %if.then76 ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %call11., %if.then13 ], [ -12, %if.end17.out_crit_edge ], [ 0, %if.end66.out_crit_edge ], [ %spec.select, %if.then.i ]
  call void @up_read(ptr noundef %dqio_sem) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dqhead) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dinfo) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_write_file_info(ptr noundef %sb, i32 noundef %type) #2 align 64 {
entry:
  %dinfo = alloca %struct.v2_disk_dqinfo, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dinfo) #10
  %0 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 2
  %2 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 3
  %3 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 4
  %4 = getelementptr inbounds %struct.v2_disk_dqinfo, ptr %dinfo, i32 0, i32 5
  %dqi_priv = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 8
  %5 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dqi_priv, align 8
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 1
  tail call void @down_write(ptr noundef %dqio_sem) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #10
  %dqi_flags = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 3
  %7 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dqi_flags, align 8
  %and = and i32 %8, -131073
  store i32 %and, ptr %dqi_flags, align 8
  %dqi_bgrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 4
  %9 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dqi_bgrace, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %dinfo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dinfo, align 4
  %dqi_igrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 5
  %13 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dqi_igrace, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %1, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #10
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %6, i32 0, i32 2
  %18 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dqi_blocks, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 4
  %dqi_free_blk = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %6, i32 0, i32 3
  %22 = ptrtoint ptr %dqi_free_blk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dqi_free_blk, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %3, align 4
  %dqi_free_entry = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %6, i32 0, i32 4
  %26 = ptrtoint ptr %dqi_free_entry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dqi_free_entry, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %4, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %30 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_op, align 4
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %quota_write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %quota_write, align 4
  %call8 = call i32 %33(ptr noundef %sb, i32 noundef %type, ptr noundef nonnull %dinfo, i32 noundef 24, i64 noundef 8) #10
  call void @up_write(ptr noundef %dqio_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 24
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.v2_write_file_info, ptr noundef nonnull @.str.5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dinfo) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_free_file_info(ptr nocapture noundef readonly %sb, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_read_dquot(ptr noundef %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 1
  tail call void @down_read(ptr noundef %dqio_sem) #10
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %5, i32 8
  %6 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dqi_priv, align 8
  %call3 = tail call i32 @qtree_read_dquot(ptr noundef %7, ptr noundef %dquot) #10
  tail call void @up_read(ptr noundef %dqio_sem) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_write_dquot(ptr noundef %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %2 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dq_off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @down_write(ptr noundef %dqio_sem) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @down_read(ptr noundef %dqio_sem) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %7, i32 8
  %8 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dqi_priv, align 8
  %call4 = tail call i32 @qtree_write_dquot(ptr noundef %9, ptr noundef %dquot) #10
  %dqio_sem7 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 1
  br i1 %tobool.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %dqio_sem7) #10
  br label %if.end10

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %dqio_sem7) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_release_dquot(ptr noundef %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 1
  tail call void @down_write(ptr noundef %dqio_sem) #10
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %5, i32 8
  %6 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dqi_priv, align 8
  %call3 = tail call i32 @qtree_release_dquot(ptr noundef %7, ptr noundef %dquot) #10
  tail call void @up_write(ptr noundef %dqio_sem) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_get_next_id(ptr noundef %sb, ptr noundef %qid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 1
  tail call void @down_read(ptr noundef %dqio_sem) #10
  %type = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %1, i32 8
  %2 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_priv, align 8
  %call2 = tail call i32 @qtree_get_next_id(ptr noundef %3, ptr noundef %qid) #10
  tail call void @up_read(ptr noundef %dqio_sem) #10
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__quota_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !50
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !51
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !52

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !53
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !55
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v2r0_mem2diskdqb(ptr noundef %dp, ptr nocapture noundef readonly %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  %dqb_ihardlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dqb_ihardlimit, align 8
  %conv = trunc i64 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %dqb_ihardlimit1 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 1
  %9 = ptrtoint ptr %dqb_ihardlimit1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dqb_ihardlimit1, align 4
  %dqb_isoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dqb_isoftlimit, align 8
  %conv2 = trunc i64 %11 to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv2)
  %dqb_isoftlimit3 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 2
  %13 = ptrtoint ptr %dqb_isoftlimit3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dqb_isoftlimit3, align 8
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %14 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dqb_curinodes, align 8
  %conv4 = trunc i64 %15 to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv4)
  %dqb_curinodes5 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 3
  %17 = ptrtoint ptr %dqb_curinodes5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dqb_curinodes5, align 4
  %dqb_itime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %18 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dqb_itime, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %dqb_itime6 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 8
  %21 = ptrtoint ptr %dqb_itime6 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %dqb_itime6, align 8
  %22 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dq_dqb, align 8
  %sub.i = add i64 %23, 1023
  %24 = lshr i64 %sub.i, 10
  %conv8 = trunc i64 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv8)
  %dqb_bhardlimit9 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 4
  %26 = ptrtoint ptr %dqb_bhardlimit9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dqb_bhardlimit9, align 8
  %dqb_bsoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dqb_bsoftlimit, align 8
  %sub.i41 = add i64 %28, 1023
  %29 = lshr i64 %sub.i41, 10
  %conv11 = trunc i64 %29 to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv11)
  %dqb_bsoftlimit12 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 5
  %31 = ptrtoint ptr %dqb_bsoftlimit12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dqb_bsoftlimit12, align 4
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dqb_curspace, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %dqb_curspace13 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 6
  %35 = ptrtoint ptr %dqb_curspace13 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %dqb_curspace13, align 8
  %dqb_btime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %36 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dqb_btime, align 8
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %dqb_btime14 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 7
  %39 = ptrtoint ptr %dqb_btime14 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %dqb_btime14, align 8
  %40 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack = load i32, ptr %dq_id, align 8
  %41 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack40 = load i32, ptr %type, align 4
  %43 = insertvalue [2 x i32] %41, i32 %.unpack40, 1
  %call16 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %43) #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %call16)
  %45 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %dp, align 8
  %call17 = tail call i32 @qtree_entry_unused(ptr noundef %5, ptr noundef %dp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %dqb_itime6 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 72057594037927936, ptr %dqb_itime6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @v2r0_disk2memdqb(ptr nocapture noundef writeonly %dquot, ptr nocapture noundef readonly %dp) #7 align 64 {
entry:
  %empty = alloca %struct.v2r0_disk_dqblk, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %empty) #10
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dqb_ihardlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 1
  %0 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqb_ihardlimit, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  %dqb_ihardlimit1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %3 = ptrtoint ptr %dqb_ihardlimit1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %dqb_ihardlimit1, align 8
  %dqb_isoftlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 2
  %4 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dqb_isoftlimit, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %conv2 = zext i32 %6 to i64
  %dqb_isoftlimit3 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %7 = ptrtoint ptr %dqb_isoftlimit3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv2, ptr %dqb_isoftlimit3, align 8
  %dqb_curinodes = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 3
  %8 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dqb_curinodes, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %conv4 = zext i32 %10 to i64
  %dqb_curinodes5 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %11 = ptrtoint ptr %dqb_curinodes5 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv4, ptr %dqb_curinodes5, align 8
  %dqb_itime = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 8
  %12 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dqb_itime, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %dqb_itime6 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %15 = ptrtoint ptr %dqb_itime6 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %dqb_itime6, align 8
  %dqb_bhardlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 4
  %16 = ptrtoint ptr %dqb_bhardlimit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dqb_bhardlimit, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %conv7 = zext i32 %18 to i64
  %shl.i = shl nuw nsw i64 %conv7, 10
  %19 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shl.i, ptr %dq_dqb, align 8
  %dqb_bsoftlimit = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 5
  %20 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dqb_bsoftlimit, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %conv9 = zext i32 %22 to i64
  %shl.i33 = shl nuw nsw i64 %conv9, 10
  %dqb_bsoftlimit11 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %dqb_bsoftlimit11 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl.i33, ptr %dqb_bsoftlimit11, align 8
  %dqb_curspace = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 6
  %24 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dqb_curspace, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %dqb_curspace12 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %dqb_curspace12 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %dqb_curspace12, align 8
  %dqb_btime = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %dp, i32 0, i32 7
  %28 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_btime, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %dqb_btime13 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %31 = ptrtoint ptr %dqb_btime13 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %dqb_btime13, align 8
  %32 = call ptr @memset(ptr %empty, i32 0, i32 40)
  %dqb_itime14 = getelementptr inbounds %struct.v2r0_disk_dqblk, ptr %empty, i32 0, i32 8
  %33 = ptrtoint ptr %dqb_itime14 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 72057594037927936, ptr %dqb_itime14, align 8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %empty, ptr noundef dereferenceable(48) %dp, i32 48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dqb_itime6 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %dqb_itime6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %empty) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2r0_is_id(ptr noundef %dp, ptr nocapture noundef readonly %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  %call1 = tail call i32 @qtree_entry_unused(ptr noundef %5, ptr noundef %dp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #10, !noalias !58
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #10, !noalias !58
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #10, !noalias !58
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !noalias !58, !srcloc !61
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %7, 1
  %12 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %dq_id, align 8
  %13 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack12 = load i32, ptr %type, align 4
  %15 = insertvalue [2 x i32] %13, i32 %.unpack12, 1
  %call5 = tail call zeroext i1 @qid_eq([2 x i32] %.fca.1.insert, [2 x i32] %15) #10
  %conv = zext i1 %call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %make_kqid.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %make_kqid.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_entry_unused(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qid_eq([2 x i32], [2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v2r1_mem2diskdqb(ptr noundef %dp, ptr nocapture noundef readonly %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  %dqb_ihardlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dqb_ihardlimit, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %dqb_ihardlimit1 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 2
  %9 = ptrtoint ptr %dqb_ihardlimit1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %dqb_ihardlimit1, align 8
  %dqb_isoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dqb_isoftlimit, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %dqb_isoftlimit2 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 3
  %13 = ptrtoint ptr %dqb_isoftlimit2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %dqb_isoftlimit2, align 8
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %14 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dqb_curinodes, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %dqb_curinodes3 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 4
  %17 = ptrtoint ptr %dqb_curinodes3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %dqb_curinodes3, align 8
  %dqb_itime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %18 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dqb_itime, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %dqb_itime4 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 9
  %21 = ptrtoint ptr %dqb_itime4 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %dqb_itime4, align 8
  %22 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dq_dqb, align 8
  %sub.i = add i64 %23, 1023
  %shr.i = ashr i64 %sub.i, 10
  %24 = tail call i64 @llvm.bswap.i64(i64 %shr.i)
  %dqb_bhardlimit6 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 5
  %25 = ptrtoint ptr %dqb_bhardlimit6 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %dqb_bhardlimit6, align 8
  %dqb_bsoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_bsoftlimit, align 8
  %sub.i38 = add i64 %27, 1023
  %shr.i39 = ashr i64 %sub.i38, 10
  %28 = tail call i64 @llvm.bswap.i64(i64 %shr.i39)
  %dqb_bsoftlimit8 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 6
  %29 = ptrtoint ptr %dqb_bsoftlimit8 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %dqb_bsoftlimit8, align 8
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_curspace, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %dqb_curspace9 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 7
  %33 = ptrtoint ptr %dqb_curspace9 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %dqb_curspace9, align 8
  %dqb_btime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %34 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dqb_btime, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35)
  %dqb_btime10 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 8
  %37 = ptrtoint ptr %dqb_btime10 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %dqb_btime10, align 8
  %38 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack = load i32, ptr %dq_id, align 8
  %39 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack37 = load i32, ptr %type, align 4
  %41 = insertvalue [2 x i32] %39, i32 %.unpack37, 1
  %call12 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %41) #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %call12)
  %43 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dp, align 8
  %dqb_pad = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 1
  %44 = ptrtoint ptr %dqb_pad to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %dqb_pad, align 4
  %call13 = tail call i32 @qtree_entry_unused(ptr noundef %5, ptr noundef %dp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dqb_itime4 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 72057594037927936, ptr %dqb_itime4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @v2r1_disk2memdqb(ptr nocapture noundef writeonly %dquot, ptr nocapture noundef readonly %dp) #7 align 64 {
entry:
  %empty = alloca %struct.v2r1_disk_dqblk, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %empty) #10
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dqb_ihardlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 2
  %0 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dqb_ihardlimit, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %dqb_ihardlimit1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %3 = ptrtoint ptr %dqb_ihardlimit1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %dqb_ihardlimit1, align 8
  %dqb_isoftlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 3
  %4 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dqb_isoftlimit, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %dqb_isoftlimit2 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %7 = ptrtoint ptr %dqb_isoftlimit2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %dqb_isoftlimit2, align 8
  %dqb_curinodes = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 4
  %8 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dqb_curinodes, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %dqb_curinodes3 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %11 = ptrtoint ptr %dqb_curinodes3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %dqb_curinodes3, align 8
  %dqb_itime = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 9
  %12 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dqb_itime, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %dqb_itime4 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %15 = ptrtoint ptr %dqb_itime4 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %dqb_itime4, align 8
  %dqb_bhardlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 5
  %16 = ptrtoint ptr %dqb_bhardlimit to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dqb_bhardlimit, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %shl.i = shl i64 %18, 10
  %19 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shl.i, ptr %dq_dqb, align 8
  %dqb_bsoftlimit = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 6
  %20 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dqb_bsoftlimit, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %shl.i29 = shl i64 %22, 10
  %dqb_bsoftlimit7 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %dqb_bsoftlimit7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl.i29, ptr %dqb_bsoftlimit7, align 8
  %dqb_curspace = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 7
  %24 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dqb_curspace, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %dqb_curspace8 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %dqb_curspace8 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %dqb_curspace8, align 8
  %dqb_btime = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %dp, i32 0, i32 8
  %28 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_btime, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %dqb_btime9 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %31 = ptrtoint ptr %dqb_btime9 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %dqb_btime9, align 8
  %32 = call ptr @memset(ptr %empty, i32 0, i32 64)
  %dqb_itime10 = getelementptr inbounds %struct.v2r1_disk_dqblk, ptr %empty, i32 0, i32 9
  %33 = ptrtoint ptr %dqb_itime10 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 72057594037927936, ptr %dqb_itime10, align 8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(72) %empty, ptr noundef dereferenceable(72) %dp, i32 72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dqb_itime4 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %dqb_itime4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %empty) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2r1_is_id(ptr noundef %dp, ptr nocapture noundef readonly %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %3, i32 8
  %4 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dqi_priv, align 8
  %call1 = tail call i32 @qtree_entry_unused(ptr noundef %5, ptr noundef %dp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %7, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #10, !noalias !62
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #10, !noalias !62
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #10, !noalias !62
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !noalias !62, !srcloc !61
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %call8.sink.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %7, 1
  %12 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %dq_id, align 8
  %13 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack12 = load i32, ptr %type, align 4
  %15 = insertvalue [2 x i32] %13, i32 %.unpack12, 1
  %call5 = tail call zeroext i1 @qid_eq([2 x i32] %.fca.1.insert, [2 x i32] %15) #10
  %conv = zext i1 %call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %make_kqid.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %make_kqid.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_read_dquot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_write_dquot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_release_dquot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtree_get_next_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_quota_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__UNIQUE_ID_author213, !1, !"__UNIQUE_ID_author213", i1 false, i1 false}
!1 = !{!"../fs/quota/quota_v2.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description214, !3, !"__UNIQUE_ID_description214", i1 false, i1 false}
!3 = !{!"../fs/quota/quota_v2.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file215, !5, !"__UNIQUE_ID_file215", i1 false, i1 false}
!5 = !{!"../fs/quota/quota_v2.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license216, !5, !"__UNIQUE_ID_license216", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_quota_v2__217_436_init_v2_quota_format6, !8, !"__initcall__kmod_quota_v2__217_436_init_v2_quota_format6", i1 false, i1 false}
!8 = !{!"../fs/quota/quota_v2.c", i32 436, i32 1}
!9 = !{ptr @__exitcall_exit_v2_quota_format, !10, !"__exitcall_exit_v2_quota_format", i1 false, i1 false}
!10 = !{!"../fs/quota/quota_v2.c", i32 437, i32 1}
!11 = !{ptr @v2r0_quota_format, !12, !"v2r0_quota_format", i1 false, i1 false}
!12 = !{!"../fs/quota/quota_v2.c", i32 408, i32 33}
!13 = !{ptr @v2_format_ops, !14, !"v2_format_ops", i1 false, i1 false}
!14 = !{!"../fs/quota/quota_v2.c", i32 397, i32 38}
!15 = !{ptr @v2_check_quota_file.quota_magics, !16, !"quota_magics", i1 false, i1 false}
!16 = !{!"../fs/quota/quota_v2.c", i32 78, i32 20}
!17 = !{ptr @v2_check_quota_file.quota_versions, !18, !"quota_versions", i1 false, i1 false}
!18 = !{!"../fs/quota/quota_v2.c", i32 79, i32 20}
!19 = !{ptr @__func__.v2_read_header, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/quota/quota_v2.c", i32 65, i32 3}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__func__.v2_read_file_info, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/quota/quota_v2.c", i32 115, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/quota/quota_v2.c", i32 164, i32 3}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/quota/quota_v2.c", i32 170, i32 3}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/quota/quota_v2.c", i32 175, i32 3}
!31 = !{ptr @v2r0_qtree_ops, !32, !"v2r0_qtree_ops", i1 false, i1 false}
!32 = !{!"../fs/quota/quota_v2.c", i32 32, i32 42}
!33 = !{ptr @v2r1_qtree_ops, !34, !"v2r1_qtree_ops", i1 false, i1 false}
!34 = !{!"../fs/quota/quota_v2.c", i32 38, i32 42}
!35 = !{ptr @__func__.v2_write_file_info, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/quota/quota_v2.c", i32 214, i32 3}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @v2r1_quota_format, !39, !"v2r1_quota_format", i1 false, i1 false}
!39 = !{!"../fs/quota/quota_v2.c", i32 414, i32 33}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i64 1069446, i64 1069507}
!51 = !{i64 1072178}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 1072463}
!54 = !{i64 2152506059}
!55 = !{i64 2152505901}
!56 = !{i64 2152506229}
!57 = !{i64 2150092043}
!58 = !{!59}
!59 = distinct !{!59, !60, !"make_kqid: %agg.result"}
!60 = distinct !{!60, !"make_kqid"}
!61 = !{i64 2152484853, i64 2152485339, i64 2152484890, i64 2152484946, i64 2152484980, i64 2152485004, i64 2152485045, i64 2152485066, i64 2152485094, i64 2152485128}
!62 = !{!63}
!63 = distinct !{!63, !64, !"make_kqid: %agg.result"}
!64 = distinct !{!64, !"make_kqid"}
