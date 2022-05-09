; ModuleID = '/llk/IR_all_yes/fs/udf/symlink.c_pt.bc'
source_filename = "../fs/udf/symlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.user_namespace = type opaque
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.63, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.pathComponent = type { i8, i8, i16, [0 x i8] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }

@udf_symlink_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @udf_symlink_filler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@udf_symlink_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udf_symlink_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"../\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"udf_symlink_aops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 185, i32 39 }
@___asan_gen_.11 = private constant [20 x i8] c"../fs/udf/symlink.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 66, i32 14 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 260, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 416, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @udf_symlink_aops, ptr @.str, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_symlink_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_symlink_filler(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #4
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp = icmp sgt i64 %5, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @udf_block_map(ptr noundef %3, i64 noundef 0) #4
  %i_data_sem = getelementptr i8, ptr %3, i32 -168
  tail call void @down_read(ptr noundef %i_data_sem) #4
  %i_alloc_type = getelementptr i8, ptr %3, i32 -192
  %10 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp4 = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %i_data = getelementptr i8, ptr %3, i32 -188
  %11 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_data, align 4
  %i_lenEAttr = getelementptr i8, ptr %3, i32 -224
  %13 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  br label %if.end12

if.else:                                          ; preds = %if.end
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %conv8 = zext i32 %call3 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %conv8, i32 noundef %20, i32 noundef 8) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else.out_unlock_inode_crit_edge, label %if.end11

if.else.out_unlock_inode_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock_inode

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then6
  %bh.0 = phi ptr [ null, %if.then6 ], [ %call.i, %if.end11 ]
  %symlink.0 = phi ptr [ %add.ptr, %if.then6 ], [ %22, %if.end11 ]
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %25 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_size, align 8
  %conv15 = trunc i64 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15)
  %cmp2.i = icmp sgt i32 %conv15, 0
  br i1 %cmp2.i, label %while.body.lr.ph.i, label %if.end12.while.end.i_crit_edge

if.end12.while.end.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end12
  %incdec.ptr.i = getelementptr i8, ptr %call, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.05.i = phi ptr [ %call, %while.body.lr.ph.i ], [ %p.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %elen.04.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %elen.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %tolen.addr.03.i = phi i32 [ 4095, %while.body.lr.ph.i ], [ %tolen.addr.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %add.ptr.i47 = getelementptr i8, ptr %symlink.0, i32 %elen.04.i
  %add.i = add i32 %elen.04.i, 4
  %27 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i47, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %28, label %while.body.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %while.body.i.sw.bb7.i_crit_edge
    i8 3, label %sw.bb13.i
    i8 4, label %sw.bb19.i
    i8 5, label %sw.bb26.i
  ]

while.body.i.sw.bb7.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7.i

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  %lengthComponentIdent.i = getelementptr inbounds %struct.pathComponent, ptr %add.ptr.i47, i32 0, i32 1
  %30 = ptrtoint ptr %lengthComponentIdent.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lengthComponentIdent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp2.not.i = icmp eq i8 %31, 0
  br i1 %cmp2.not.i, label %sw.bb.i.sw.bb7.i_crit_edge, label %if.then.i48

sw.bb.i.sw.bb7.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7.i

if.then.i48:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i = zext i8 %31 to i32
  %add6.i = add i32 %add.i, %conv1.i
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %sw.bb.i.sw.bb7.i_crit_edge, %while.body.i.sw.bb7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tolen.addr.03.i)
  %cmp8.i = icmp eq i32 %tolen.addr.03.i, 0
  br i1 %cmp8.i, label %sw.bb7.i.udf_pc_to_char.exit_crit_edge, label %if.end11.i

sw.bb7.i.udf_pc_to_char.exit_crit_edge:           ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_pc_to_char.exit

if.end11.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 47, ptr %call, align 1
  %dec12.i = add i32 %tolen.addr.03.i, -1
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tolen.addr.03.i)
  %cmp14.i = icmp slt i32 %tolen.addr.03.i, 3
  br i1 %cmp14.i, label %sw.bb13.i.udf_pc_to_char.exit_crit_edge, label %if.end17.i

sw.bb13.i.udf_pc_to_char.exit_crit_edge:          ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_pc_to_char.exit

if.end17.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = call ptr @memcpy(ptr %p.05.i, ptr @.str, i32 3)
  %add.ptr18.i = getelementptr i8, ptr %p.05.i, i32 3
  %sub.i = add nsw i32 %tolen.addr.03.i, -3
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tolen.addr.03.i)
  %cmp20.i = icmp slt i32 %tolen.addr.03.i, 2
  br i1 %cmp20.i, label %sw.bb19.i.udf_pc_to_char.exit_crit_edge, label %if.end23.i

sw.bb19.i.udf_pc_to_char.exit_crit_edge:          ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_pc_to_char.exit

if.end23.i:                                       ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %p.05.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 11823, ptr %p.05.i, align 1
  %add.ptr24.i = getelementptr i8, ptr %p.05.i, i32 2
  %sub25.i = add nsw i32 %tolen.addr.03.i, -2
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %while.body.i
  %lengthComponentIdent27.i = getelementptr inbounds %struct.pathComponent, ptr %add.ptr.i47, i32 0, i32 1
  %35 = ptrtoint ptr %lengthComponentIdent27.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %lengthComponentIdent27.i, align 1
  %conv28.i = zext i8 %36 to i32
  %add29.i = add i32 %add.i, %conv28.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %conv15)
  %cmp30.i = icmp sgt i32 %add29.i, %conv15
  br i1 %cmp30.i, label %sw.bb26.i.udf_pc_to_char.exit_crit_edge, label %if.end33.i

sw.bb26.i.udf_pc_to_char.exit_crit_edge:          ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_pc_to_char.exit

if.end33.i:                                       ; preds = %sw.bb26.i
  %componentIdent.i = getelementptr inbounds %struct.pathComponent, ptr %add.ptr.i47, i32 0, i32 3
  %call.i49 = tail call i32 @udf_get_filename(ptr noundef %24, ptr noundef %componentIdent.i, i32 noundef %conv28.i, ptr noundef %p.05.i, i32 noundef %tolen.addr.03.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp36.i = icmp slt i32 %call.i49, 0
  br i1 %cmp36.i, label %if.end33.i.udf_pc_to_char.exit_crit_edge, label %if.end39.i

if.end33.i.udf_pc_to_char.exit_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_pc_to_char.exit

if.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %tolen.addr.03.i, i32 %call.i49)
  %cmp42.i = icmp eq i32 %tolen.addr.03.i, %call.i49
  br i1 %cmp42.i, label %if.end39.i.udf_pc_to_char.exit_crit_edge, label %if.end45.i

if.end39.i.udf_pc_to_char.exit_crit_edge:         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_pc_to_char.exit

if.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr40.i = getelementptr i8, ptr %p.05.i, i32 %call.i49
  %incdec.ptr46.i = getelementptr i8, ptr %add.ptr40.i, i32 1
  %37 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 47, ptr %add.ptr40.i, align 1
  %38 = xor i32 %call.i49, -1
  %dec47.i = add i32 %tolen.addr.03.i, %38
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end45.i, %if.end23.i, %if.end17.i, %if.end11.i, %if.then.i48, %while.body.i.sw.epilog.i_crit_edge
  %tolen.addr.1.i = phi i32 [ %tolen.addr.03.i, %while.body.i.sw.epilog.i_crit_edge ], [ %dec47.i, %if.end45.i ], [ %sub25.i, %if.end23.i ], [ %sub.i, %if.end17.i ], [ %dec12.i, %if.end11.i ], [ %tolen.addr.03.i, %if.then.i48 ]
  %elen.1.i = phi i32 [ %add.i, %while.body.i.sw.epilog.i_crit_edge ], [ %add29.i, %if.end45.i ], [ %add.i, %if.end23.i ], [ %add.i, %if.end17.i ], [ %add.i, %if.end11.i ], [ %add6.i, %if.then.i48 ]
  %p.1.i = phi ptr [ %p.05.i, %while.body.i.sw.epilog.i_crit_edge ], [ %incdec.ptr46.i, %if.end45.i ], [ %add.ptr24.i, %if.end23.i ], [ %add.ptr18.i, %if.end17.i ], [ %incdec.ptr.i, %if.end11.i ], [ %p.05.i, %if.then.i48 ]
  %cmp.i = icmp slt i32 %elen.1.i, %conv15
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.while.end.i_crit_edge

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i.while.end.i_crit_edge, %if.end12.while.end.i_crit_edge
  %p.0.lcssa.i = phi ptr [ %call, %if.end12.while.end.i_crit_edge ], [ %p.1.i, %sw.epilog.i.while.end.i_crit_edge ]
  %add.ptr48.i = getelementptr i8, ptr %call, i32 1
  %cmp49.i = icmp ugt ptr %p.0.lcssa.i, %add.ptr48.i
  %arrayidx.sink.idx.i = sext i1 %cmp49.i to i32
  %arrayidx.sink.i = getelementptr i8, ptr %p.0.lcssa.i, i32 %arrayidx.sink.idx.i
  %39 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx.sink.i, align 1
  br label %udf_pc_to_char.exit

udf_pc_to_char.exit:                              ; preds = %while.end.i, %if.end39.i.udf_pc_to_char.exit_crit_edge, %if.end33.i.udf_pc_to_char.exit_crit_edge, %sw.bb26.i.udf_pc_to_char.exit_crit_edge, %sw.bb19.i.udf_pc_to_char.exit_crit_edge, %sw.bb13.i.udf_pc_to_char.exit_crit_edge, %sw.bb7.i.udf_pc_to_char.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.end.i ], [ -36, %sw.bb7.i.udf_pc_to_char.exit_crit_edge ], [ -36, %sw.bb13.i.udf_pc_to_char.exit_crit_edge ], [ -36, %sw.bb19.i.udf_pc_to_char.exit_crit_edge ], [ -5, %sw.bb26.i.udf_pc_to_char.exit_crit_edge ], [ %call.i49, %if.end33.i.udf_pc_to_char.exit_crit_edge ], [ -36, %if.end39.i.udf_pc_to_char.exit_crit_edge ]
  %tobool.not.i50 = icmp eq ptr %bh.0, null
  br i1 %tobool.not.i50, label %udf_pc_to_char.exit.brelse.exit_crit_edge, label %if.then.i51

udf_pc_to_char.exit.brelse.exit_crit_edge:        ; preds = %udf_pc_to_char.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then.i51:                                      ; preds = %udf_pc_to_char.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__brelse(ptr noundef nonnull %bh.0) #4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i51, %udf_pc_to_char.exit.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool17.not, label %if.end19, label %brelse.exit.out_unlock_inode_crit_edge

brelse.exit.out_unlock_inode_crit_edge:           ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock_inode

if.end19:                                         ; preds = %brelse.exit
  tail call void @up_read(ptr noundef %i_data_sem) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !26
  %40 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !27

if.then.i.i.i:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !28
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #4
  br label %cleanup

out_unlock_inode:                                 ; preds = %brelse.exit.out_unlock_inode_crit_edge, %if.else.out_unlock_inode_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %brelse.exit.out_unlock_inode_crit_edge ], [ -5, %if.else.out_unlock_inode_crit_edge ]
  tail call void @up_read(ptr noundef %i_data_sem) #4
  %43 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !27

if.then.i:                                        ; preds = %out_unlock_inode
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #4, !srcloc !29
  unreachable

do.body7.i:                                       ; preds = %out_unlock_inode
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %43, align 4
  %and.i31.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !27

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %47, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %48, %if.end.i.i ]
  %49 = inttoptr i32 %retval.0.i.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp.i.not.i = icmp eq i32 %51, -1
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %43, align 4
  %and.i32.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !30

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !27

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i34.i = add i32 %53, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %54, %if.end.i36.i ]
  %55 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.5) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !27

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i41.i = add i32 %53, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %56, %if.end.i43.i ]
  %57 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %57) #4
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageUptodate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %SetPageUptodate.exit ], [ %err.0, %SetPageError.exit ], [ -36, %entry.cleanup_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_symlink_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @page_address(ptr noundef %call.i) #4
  %call6 = tail call i32 @strlen(ptr noundef %call5) #7
  %conv = zext i32 %call6 to i64
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size, align 8
  %8 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !27

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !30

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.6) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #4, !srcloc !32
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #4
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #4, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@udf_symlink_getattr, %if.then.i.i.i.i.i)) #4
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !36

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #4
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__put_page(ptr noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_block_map(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_filename(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @udf_symlink_aops, !1, !"udf_symlink_aops", i1 false, i1 false}
!1 = !{!"../fs/udf/symlink.c", i32 185, i32 39}
!2 = !{ptr @udf_symlink_inode_operations, !3, !"udf_symlink_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/udf/symlink.c", i32 189, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/udf/symlink.c", i32 66, i32 14}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/udf/symlink.c", i32 73, i32 14}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 717, i32 2}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2151378973}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2150628010, i64 2150628501, i64 2150628047, i64 2150628103, i64 2150628137, i64 2150628161, i64 2150628202, i64 2150628223, i64 2150628251, i64 2150628285}
!29 = !{i64 2150689600, i64 2150689773, i64 2150689788, i64 2150689840, i64 2150689899, i64 2150689923, i64 2150689964, i64 2150689985, i64 2150690013, i64 2150690045}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2150690475, i64 2150690648, i64 2150690663, i64 2150690715, i64 2150690774, i64 2150690798, i64 2150690839, i64 2150690860, i64 2150690888, i64 2150690920}
!32 = !{i64 2153231028, i64 2153231511, i64 2153231065, i64 2153231121, i64 2153231155, i64 2153231179, i64 2153231220, i64 2153231241, i64 2153231269, i64 2153231303}
!33 = !{i64 2148807741}
!34 = !{i64 2148722450, i64 2148722482, i64 2148722511, i64 2148722545, i64 2148722576, i64 2148722599}
!35 = !{i64 2148807970}
!36 = !{i64 2148543863, i64 2148543868, i64 2148543881, i64 2148543925, i64 2148543959, i64 2148543980}
