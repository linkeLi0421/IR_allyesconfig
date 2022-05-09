; ModuleID = '/llk/IR_all_yes/fs/squashfs/xattr.c_pt.bc'
source_filename = "../fs/squashfs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.squashfs_xattr_entry = type { i16, i16, [0 x i8] }
%struct.squashfs_xattr_val = type { i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.73 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }

@squashfs_xattr_user_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str, i32 0, ptr null, ptr @squashfs_xattr_handler_get, ptr null }, [40 x i8] zeroinitializer }, align 32
@squashfs_xattr_trusted_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.1, i32 1, ptr @squashfs_trusted_xattr_handler_list, ptr @squashfs_xattr_handler_get, ptr null }, [40 x i8] zeroinitializer }, align 32
@squashfs_xattr_security_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.2, i32 2, ptr null, ptr @squashfs_xattr_handler_get, ptr null }, [40 x i8] zeroinitializer }, align 32
@squashfs_xattr_handlers = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @squashfs_xattr_user_handler, ptr @squashfs_xattr_trusted_handler, ptr @squashfs_xattr_security_handler, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@switch.table.squashfs_listxattr = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @squashfs_xattr_user_handler, ptr @squashfs_xattr_trusted_handler, ptr @squashfs_xattr_security_handler], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [28 x i8] c"squashfs_xattr_user_handler\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 216, i32 35 }
@___asan_gen_.6 = private unnamed_addr constant [31 x i8] c"squashfs_xattr_trusted_handler\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 230, i32 35 }
@___asan_gen_.9 = private unnamed_addr constant [32 x i8] c"squashfs_xattr_security_handler\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 240, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [24 x i8] c"squashfs_xattr_handlers\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 265, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 217, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 231, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [23 x i8] c"../fs/squashfs/xattr.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 241, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [32 x i8] c"switch.table.squashfs_listxattr\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @squashfs_xattr_user_handler, ptr @squashfs_xattr_trusted_handler, ptr @squashfs_xattr_security_handler, ptr @squashfs_xattr_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @switch.table.squashfs_listxattr], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_xattr_user_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_xattr_trusted_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.squashfs_listxattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @squashfs_listxattr(ptr noundef %d, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %start = alloca i64, align 8
  %offset = alloca i32, align 4
  %entry8 = alloca %struct.squashfs_xattr_entry, align 2
  %val = alloca %struct.squashfs_xattr_val, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #6
  %xattr = getelementptr i8, ptr %1, i32 -40
  %6 = ptrtoint ptr %xattr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %xattr, align 8
  %shr = lshr i64 %7, 16
  %conv2 = and i64 %shr, 4294967295
  %xattr_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %xattr_table to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %xattr_table, align 8
  %add = add i64 %conv2, %9
  %10 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add, ptr %start, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #6
  %11 = ptrtoint ptr %xattr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %xattr, align 8
  %13 = trunc i64 %12 to i32
  %conv5 = and i32 %13, 65535
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv5, ptr %offset, align 4
  %xattr_id_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %xattr_id_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xattr_id_table, align 4
  %cmp = icmp eq ptr %16, null
  br i1 %cmp, label %entry.cleanup71_crit_edge, label %while.cond.preheader

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

while.cond.preheader:                             ; preds = %entry
  %xattr_count = getelementptr i8, ptr %1, i32 -28
  %17 = ptrtoint ptr %xattr_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xattr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not146 = icmp eq i32 %18, 0
  br i1 %tobool.not146, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %19 = getelementptr inbounds %struct.squashfs_xattr_entry, ptr %entry8, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup64.while.body_crit_edge, %while.body.lr.ph
  %dec151.in = phi i32 [ %18, %while.body.lr.ph ], [ %dec151, %cleanup64.while.body_crit_edge ]
  %rest.0149 = phi i32 [ %buffer_size, %while.body.lr.ph ], [ %rest.2, %cleanup64.while.body_crit_edge ]
  %buffer.addr.0147 = phi ptr [ %buffer, %while.body.lr.ph ], [ %buffer.addr.4, %cleanup64.while.body_crit_edge ]
  %dec151 = add i32 %dec151.in, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry8) #6
  %20 = ptrtoint ptr %entry8 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %entry8, align 2, !annotation !23
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %19, align 2, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val, align 4, !annotation !23
  %call9 = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %entry8, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %while.body.cleanup64.thread_crit_edge, label %if.end13

while.body.cleanup64.thread_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.thread

if.end13:                                         ; preds = %while.body
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %19, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %conv14 = zext i16 %25 to i32
  %26 = ptrtoint ptr %entry8 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %entry8, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %28)
  %tobool.not.i = icmp ult i16 %28, 512
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i:                                         ; preds = %if.end13
  %trunc.i = trunc i16 %28 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %trunc.i)
  %29 = icmp ult i8 %trunc.i, 3
  br i1 %29, label %switch.lookup, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

switch.lookup:                                    ; preds = %if.end.i
  %30 = sext i8 %trunc.i to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.squashfs_listxattr, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %list = getelementptr inbounds %struct.xattr_handler, ptr %switch.load, i32 0, i32 3
  %32 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %list, align 4
  %tobool18.not = icmp eq ptr %33, null
  br i1 %tobool18.not, label %switch.lookup.if.then22_crit_edge, label %lor.lhs.false

switch.lookup.if.then22_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false:                                    ; preds = %switch.lookup
  %call20 = call zeroext i1 %33(ptr noundef %d) #6
  br i1 %call20, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %switch.lookup.if.then22_crit_edge
  %prefix23 = getelementptr inbounds %struct.xattr_handler, ptr %switch.load, i32 0, i32 1
  %34 = ptrtoint ptr %prefix23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prefix23, align 4
  %tobool24.not = icmp eq ptr %35, null
  br i1 %tobool24.not, label %cond.false, label %if.then22.cond.end_crit_edge

if.then22.cond.end_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %switch.load to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %switch.load, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then22.cond.end_crit_edge
  %cond = phi ptr [ %37, %cond.false ], [ %35, %if.then22.cond.end_crit_edge ]
  %call25 = call i32 @strlen(ptr noundef %cond) #9
  %tobool26.not = icmp eq ptr %buffer.addr.0147, null
  br i1 %tobool26.not, label %if.end34.thread, label %if.then27

if.then27:                                        ; preds = %cond.end
  %add28 = add nuw nsw i32 %conv14, 1
  %add29 = add i32 %add28, %call25
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %rest.0149)
  %cmp30 = icmp ugt i32 %add29, %rest.0149
  br i1 %cmp30, label %if.then27.cleanup64.thread_crit_edge, label %if.end34

if.then27.cleanup64.thread_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.thread

if.end34:                                         ; preds = %if.then27
  %38 = call ptr @memcpy(ptr %buffer.addr.0147, ptr %cond, i32 %call25)
  %add.ptr = getelementptr i8, ptr %buffer.addr.0147, i32 %call25
  %call35 = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef %add.ptr, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef %conv14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.cleanup64.thread_crit_edge, label %if.end39

if.end34.cleanup64.thread_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.thread

if.end34.thread:                                  ; preds = %cond.end
  %call35126 = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef %conv14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35126)
  %cmp36127 = icmp slt i32 %call35126, 0
  br i1 %cmp36127, label %if.end34.thread.cleanup64.thread_crit_edge, label %if.end34.thread.cleanup_crit_edge

if.end34.thread.cleanup_crit_edge:                ; preds = %if.end34.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34.thread.cleanup64.thread_crit_edge:       ; preds = %if.end34.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.thread

if.end39:                                         ; preds = %if.end34
  %tobool40.not = icmp eq ptr %add.ptr, null
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %conv14
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx, align 1
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 %add28
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %if.end34.thread.cleanup_crit_edge
  %buffer.addr.2 = phi ptr [ %add.ptr43, %if.then41 ], [ null, %if.end39.cleanup_crit_edge ], [ null, %if.end34.thread.cleanup_crit_edge ]
  %add45 = add i32 %call25, %conv14
  %add46.neg = xor i32 %add45, -1
  %sub = add i32 %rest.0149, %add46.neg
  br label %if.end53

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.end13.if.else_crit_edge
  %call48 = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef %conv14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.else.cleanup64.thread_crit_edge, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else.cleanup64.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.thread

if.end53:                                         ; preds = %if.else.if.end53_crit_edge, %cleanup
  %buffer.addr.4 = phi ptr [ %buffer.addr.2, %cleanup ], [ %buffer.addr.0147, %if.else.if.end53_crit_edge ]
  %rest.2 = phi i32 [ %sub, %cleanup ], [ %rest.0149, %if.else.if.end53_crit_edge ]
  %call54 = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %val, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.cleanup64.thread_crit_edge, label %if.end58

if.end53.cleanup64.thread_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.thread

if.end58:                                         ; preds = %if.end53
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %call59 = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end58.cleanup64.thread_crit_edge, label %cleanup64

if.end58.cleanup64.thread_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.thread

cleanup64.thread:                                 ; preds = %if.end58.cleanup64.thread_crit_edge, %if.end53.cleanup64.thread_crit_edge, %if.else.cleanup64.thread_crit_edge, %if.end34.thread.cleanup64.thread_crit_edge, %if.end34.cleanup64.thread_crit_edge, %if.then27.cleanup64.thread_crit_edge, %while.body.cleanup64.thread_crit_edge
  %err.1.ph = phi i32 [ %call54, %if.end53.cleanup64.thread_crit_edge ], [ %call48, %if.else.cleanup64.thread_crit_edge ], [ %call9, %while.body.cleanup64.thread_crit_edge ], [ %call35126, %if.end34.thread.cleanup64.thread_crit_edge ], [ %call35, %if.end34.cleanup64.thread_crit_edge ], [ -34, %if.then27.cleanup64.thread_crit_edge ], [ %call59, %if.end58.cleanup64.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry8) #6
  br label %cleanup71

cleanup64:                                        ; preds = %if.end58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry8) #6
  %tobool.not = icmp eq i32 %dec151, 0
  br i1 %tobool.not, label %cleanup64.while.end_crit_edge, label %cleanup64.while.body_crit_edge

cleanup64.while.body_crit_edge:                   ; preds = %cleanup64
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup64.while.end_crit_edge:                    ; preds = %cleanup64
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup64.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %rest.0.lcssa = phi i32 [ %buffer_size, %while.cond.preheader.while.end_crit_edge ], [ %rest.2, %cleanup64.while.end_crit_edge ]
  %sub70 = sub i32 %buffer_size, %rest.0.lcssa
  br label %cleanup71

cleanup71:                                        ; preds = %while.end, %cleanup64.thread, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup71_crit_edge ], [ %sub70, %while.end ], [ %err.1.ph, %cleanup64.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_xattr_handler_get(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  %start.i = alloca i64, align 8
  %offset.i = alloca i32, align 4
  %entry9.i = alloca %struct.squashfs_xattr_entry, align 2
  %val.i = alloca %struct.squashfs_xattr_val, align 4
  %xattr_val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #6
  %xattr.i = getelementptr i8, ptr %inode, i32 -40
  %6 = ptrtoint ptr %xattr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %xattr.i, align 8
  %shr.i = lshr i64 %7, 16
  %conv1.i = and i64 %shr.i, 4294967295
  %xattr_table.i = getelementptr inbounds %struct.squashfs_sb_info, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %xattr_table.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %xattr_table.i, align 8
  %add.i = add i64 %conv1.i, %9
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add.i, ptr %start.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #6
  %11 = trunc i64 %7 to i32
  %conv4.i = and i32 %11, 65535
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv4.i, ptr %offset.i, align 4
  %xattr_count.i = getelementptr i8, ptr %inode, i32 -28
  %13 = ptrtoint ptr %xattr_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xattr_count.i, align 4
  %call6.i = tail call i32 @strlen(ptr noundef %name) #10
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call6.i, i32 noundef 3264) #11
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %entry.squashfs_xattr_get.exit_crit_edge, label %for.cond.preheader.i

entry.squashfs_xattr_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %squashfs_xattr_get.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not169.i = icmp eq i32 %14, 0
  br i1 %tobool.not169.i, label %for.cond.preheader.i.failed.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.failed.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %15 = getelementptr inbounds %struct.squashfs_xattr_entry, ptr %entry9.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.0170.i = phi i32 [ %14, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry9.i) #6
  %16 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %entry9.i, align 2, !annotation !23
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %15, align 2, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i, align 4, !annotation !23
  %call10.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %entry9.i, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %for.body.i.cleanup94.thread.i_crit_edge, label %if.end14.i

for.body.i.cleanup94.thread.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

if.end14.i:                                       ; preds = %for.body.i
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %15, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20) #6
  %conv15.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %entry9.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %entry9.i, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23) #6
  %conv17.i = zext i16 %24 to i32
  %and18.i = and i32 %conv17.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i, i32 %1)
  %cmp19.i = icmp eq i32 %and18.i, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %conv15.i)
  %cmp21.i = icmp eq i32 %call6.i, %conv15.i
  %or.cond.i = select i1 %cmp19.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %if.end26.i, label %if.end26.thread.i

if.end26.i:                                       ; preds = %if.end14.i
  %call24.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef %call6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp27.i = icmp slt i32 %call24.i, 0
  br i1 %cmp27.i, label %if.end26.i.cleanup94.thread.i_crit_edge, label %land.lhs.true36.i

if.end26.i.cleanup94.thread.i_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

if.end26.thread.i:                                ; preds = %if.end14.i
  %call25.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef null, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef %conv15.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27157.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27157.i, label %if.end26.thread.i.cleanup94.thread.i_crit_edge, label %if.end26.thread.i.if.end82.i_crit_edge

if.end26.thread.i.if.end82.i_crit_edge:           ; preds = %if.end26.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i

if.end26.thread.i.cleanup94.thread.i_crit_edge:   ; preds = %if.end26.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

land.lhs.true36.i:                                ; preds = %if.end26.i
  %call37.i = call i32 @strncmp(ptr noundef nonnull %call9.i.i, ptr noundef %name, i32 noundef %call6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp eq i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %land.lhs.true36.i.if.end82.i_crit_edge

land.lhs.true36.i.if.end82.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i

if.then40.i:                                      ; preds = %land.lhs.true36.i
  %and41.i = and i32 %conv17.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then40.i.if.end63.i_crit_edge, label %if.then43.i

if.then40.i.if.end63.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then43.i:                                      ; preds = %if.then40.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xattr_val.i) #6
  %25 = ptrtoint ptr %xattr_val.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %xattr_val.i, align 8, !annotation !23
  %call45.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %val.i, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %if.then43.i.cleanup.thread.i_crit_edge, label %if.end49.i

if.then43.i.cleanup.thread.i_crit_edge:           ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end49.i:                                       ; preds = %if.then43.i
  %call50.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %xattr_val.i, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.end49.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.end49.i.cleanup.thread.i_crit_edge:            ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end49.i.cleanup.thread.i_crit_edge, %if.then43.i.cleanup.thread.i_crit_edge
  %err.1.ph.i = phi i32 [ %call50.i, %if.end49.i.cleanup.thread.i_crit_edge ], [ %call45.i, %if.then43.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xattr_val.i) #6
  br label %cleanup94.thread.i

cleanup.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %xattr_val.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %xattr_val.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #6
  %shr55.i = lshr i64 %28, 16
  %conv57.i = and i64 %shr55.i, 4294967295
  %29 = ptrtoint ptr %xattr_table.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %xattr_table.i, align 8
  %add59.i = add i64 %conv57.i, %30
  %31 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add59.i, ptr %start.i, align 8
  %32 = trunc i64 %28 to i32
  %conv61.i = and i32 %32, 65535
  %33 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv61.i, ptr %offset.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xattr_val.i) #6
  br label %if.end63.i

if.end63.i:                                       ; preds = %cleanup.i, %if.then40.i.if.end63.i_crit_edge
  %call64.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %val.i, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %if.end63.i.cleanup94.thread.i_crit_edge, label %if.end68.i

if.end63.i.cleanup94.thread.i_crit_edge:          ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

if.end68.i:                                       ; preds = %if.end63.i
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #6
  %tobool70.not.i = icmp eq ptr %buffer, null
  br i1 %tobool70.not.i, label %if.end68.i.cleanup94.i_crit_edge, label %if.then71.i

if.end68.i.cleanup94.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %size)
  %cmp72.i = icmp ugt i32 %36, %size
  br i1 %cmp72.i, label %if.then71.i.cleanup94.thread.i_crit_edge, label %if.end75.i

if.then71.i.cleanup94.thread.i_crit_edge:         ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

if.end75.i:                                       ; preds = %if.then71.i
  %call76.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %buffer, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %if.end75.i.cleanup94.thread.i_crit_edge, label %if.end75.i.cleanup94.i_crit_edge

if.end75.i.cleanup94.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.i

if.end75.i.cleanup94.thread.i_crit_edge:          ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

if.end82.i:                                       ; preds = %land.lhs.true36.i.if.end82.i_crit_edge, %if.end26.thread.i.if.end82.i_crit_edge
  %call83.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef nonnull %val.i, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.i = icmp slt i32 %call83.i, 0
  br i1 %cmp84.i, label %if.end82.i.cleanup94.thread.i_crit_edge, label %if.end87.i

if.end82.i.cleanup94.thread.i_crit_edge:          ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

if.end87.i:                                       ; preds = %if.end82.i
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #6
  %call89.i = call i32 @squashfs_read_metadata(ptr noundef %3, ptr noundef null, ptr noundef nonnull %start.i, ptr noundef nonnull %offset.i, i32 noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %cmp90.i = icmp slt i32 %call89.i, 0
  br i1 %cmp90.i, label %if.end87.i.cleanup94.thread.i_crit_edge, label %for.inc.i

if.end87.i.cleanup94.thread.i_crit_edge:          ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94.thread.i

cleanup94.thread.i:                               ; preds = %if.end87.i.cleanup94.thread.i_crit_edge, %if.end82.i.cleanup94.thread.i_crit_edge, %if.end75.i.cleanup94.thread.i_crit_edge, %if.then71.i.cleanup94.thread.i_crit_edge, %if.end63.i.cleanup94.thread.i_crit_edge, %cleanup.thread.i, %if.end26.thread.i.cleanup94.thread.i_crit_edge, %if.end26.i.cleanup94.thread.i_crit_edge, %for.body.i.cleanup94.thread.i_crit_edge
  %err.3.ph.i = phi i32 [ %err.1.ph.i, %cleanup.thread.i ], [ %call76.i, %if.end75.i.cleanup94.thread.i_crit_edge ], [ -34, %if.then71.i.cleanup94.thread.i_crit_edge ], [ %call64.i, %if.end63.i.cleanup94.thread.i_crit_edge ], [ %call25.i, %if.end26.thread.i.cleanup94.thread.i_crit_edge ], [ %call83.i, %if.end82.i.cleanup94.thread.i_crit_edge ], [ %call24.i, %if.end26.i.cleanup94.thread.i_crit_edge ], [ %call10.i, %for.body.i.cleanup94.thread.i_crit_edge ], [ %call89.i, %if.end87.i.cleanup94.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry9.i) #6
  br label %failed.i

cleanup94.i:                                      ; preds = %if.end75.i.cleanup94.i_crit_edge, %if.end68.i.cleanup94.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry9.i) #6
  br label %failed.i

for.inc.i:                                        ; preds = %if.end87.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry9.i) #6
  %dec.i = add i32 %count.0170.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.failed.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.failed.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

failed.i:                                         ; preds = %for.inc.i.failed.i_crit_edge, %cleanup94.i, %cleanup94.thread.i, %for.cond.preheader.i.failed.i_crit_edge
  %err.4.i = phi i32 [ %err.3.ph.i, %cleanup94.thread.i ], [ %36, %cleanup94.i ], [ -61, %for.cond.preheader.i.failed.i_crit_edge ], [ -61, %for.inc.i.failed.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %squashfs_xattr_get.exit

squashfs_xattr_get.exit:                          ; preds = %failed.i, %entry.squashfs_xattr_get.exit_crit_edge
  %retval.0.i = phi i32 [ %err.4.i, %failed.i ], [ -12, %entry.squashfs_xattr_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @squashfs_trusted_xattr_handler_list(ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #6
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @squashfs_xattr_handlers, !1, !"squashfs_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/squashfs/xattr.c", i32 265, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/squashfs/xattr.c", i32 217, i32 12}
!4 = !{ptr @squashfs_xattr_user_handler, !5, !"squashfs_xattr_user_handler", i1 false, i1 false}
!5 = !{!"../fs/squashfs/xattr.c", i32 216, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/squashfs/xattr.c", i32 231, i32 12}
!8 = !{ptr @squashfs_xattr_trusted_handler, !9, !"squashfs_xattr_trusted_handler", i1 false, i1 false}
!9 = !{!"../fs/squashfs/xattr.c", i32 230, i32 35}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/squashfs/xattr.c", i32 241, i32 12}
!12 = !{ptr @squashfs_xattr_security_handler, !13, !"squashfs_xattr_security_handler", i1 false, i1 false}
!13 = !{!"../fs/squashfs/xattr.c", i32 240, i32 35}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
