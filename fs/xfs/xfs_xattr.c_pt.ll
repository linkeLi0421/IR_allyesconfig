; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_xattr.c_pt.bc'
source_filename = "../fs/xfs/xfs_xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.xfs_attr_list_context = type { ptr, ptr, %struct.xfs_attrlist_cursor_kern, ptr, i32, i8, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.xfs_attrlist_cursor_kern = type { i32, i32, i32, i16, i8, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.86, %struct.list_head, %struct.list_head, %union.anon.87 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.86 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.87 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xfs_xattr_user_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str, i32 0, ptr null, ptr @xfs_xattr_get, ptr @xfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@xfs_xattr_trusted_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.1, i32 2, ptr null, ptr @xfs_xattr_get, ptr @xfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@xfs_xattr_security_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.2, i32 4, ptr null, ptr @xfs_xattr_get, ptr @xfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@xfs_xattr_handlers = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @xfs_xattr_user_handler, ptr @xfs_xattr_trusted_handler, ptr @xfs_xattr_security_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"context->count >= 0\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_xattr.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SGI_ACL_FILE\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"system.\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"posix_acl_access\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SGI_ACL_DEFAULT\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"posix_acl_default\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 15]
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"xfs_xattr_user_handler\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 65, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"xfs_xattr_trusted_handler\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 72, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"xfs_xattr_security_handler\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 79, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"xfs_xattr_handlers\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 86, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 66, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 73, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 80, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 143, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 148, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 151, i32 15 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 153, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 156, i32 19 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [22 x i8] c"../fs/xfs/xfs_xattr.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 161, i32 6 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @xfs_xattr_user_handler, ptr @xfs_xattr_trusted_handler, ptr @xfs_xattr_security_handler, ptr @xfs_xattr_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_xattr_user_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_xattr_trusted_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_xattr_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_vn_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %context = alloca %struct.xfs_attr_list_context, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %context) #5
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = call ptr @memset(ptr %context, i32 0, i32 68)
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %dp = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %dp, align 4
  %resynch = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 11
  %4 = ptrtoint ptr %resynch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %resynch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %spec.select = select i1 %tobool.not, ptr null, ptr %data
  %buffer = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 3
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %buffer, align 4
  %bufsize = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 8
  %6 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %bufsize, align 4
  %firstu = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 9
  %7 = ptrtoint ptr %firstu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %firstu, align 4
  %put_listent = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 12
  %8 = ptrtoint ptr %put_listent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xfs_xattr_put_listent, ptr %put_listent, align 4
  %call3 = call i32 @xfs_attr_list(ptr noundef nonnull %context) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %count = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 6
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  %. = select i1 %cmp, i32 -34, i32 %10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %context) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_xattr_put_listent(ptr nocapture noundef %context, i32 noundef %flags, ptr nocapture noundef readonly %name, i32 noundef %namelen, i32 noundef %valuelen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !36

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 143) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else15, label %if.then

if.then:                                          ; preds = %cond.end
  %2 = zext i32 %namelen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %namelen, label %if.then.if.end11_crit_edge [
    i32 12, label %land.lhs.true
    i32 15, label %land.lhs.true7
  ]

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(13) @.str.5, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %if.then5.if.end11_crit_edge, label %lor.lhs.false.i

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

lor.lhs.false.i:                                  ; preds = %if.then5
  %seen_enough.i = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  %5 = ptrtoint ptr %seen_enough.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seen_enough.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.if.end11_crit_edge

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.i:                                         ; preds = %lor.lhs.false.i
  %buffer.i = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 3
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.end.i.compute_size.i_crit_edge, label %if.end3.i

if.end.i.compute_size.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %compute_size.i

if.end3.i:                                        ; preds = %if.end.i
  %add6.i = add nuw i32 %4, 24
  %firstu.i = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 9
  %9 = ptrtoint ptr %firstu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %firstu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %10)
  %cmp7.i = icmp sgt i32 %add6.i, %10
  br i1 %cmp7.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %count, align 4
  %12 = ptrtoint ptr %seen_enough.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %seen_enough.i, align 4
  br label %if.end11

if.end11.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %8, i32 %4
  %13 = call ptr @memcpy(ptr %add.ptr.i, ptr @.str.6, i32 7)
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 7
  %14 = call ptr @memcpy(ptr %add.ptr14.i, ptr @.str.7, i32 16)
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 16
  %15 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %add.ptr16.i, align 1
  br label %compute_size.i

compute_size.i:                                   ; preds = %if.end11.i, %if.end.i.compute_size.i_crit_edge
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %add20.i = add i32 %17, 24
  store i32 %add20.i, ptr %count, align 4
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.then
  %call8 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.8, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true7
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i32 = icmp slt i32 %19, 0
  br i1 %cmp.i32, label %if.then10.if.end11_crit_edge, label %lor.lhs.false.i35

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

lor.lhs.false.i35:                                ; preds = %if.then10
  %seen_enough.i33 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  %20 = ptrtoint ptr %seen_enough.i33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seen_enough.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i34 = icmp eq i32 %21, 0
  br i1 %tobool.not.i34, label %if.end.i38, label %lor.lhs.false.i35.if.end11_crit_edge

lor.lhs.false.i35.if.end11_crit_edge:             ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.i38:                                       ; preds = %lor.lhs.false.i35
  %buffer.i36 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 3
  %22 = ptrtoint ptr %buffer.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer.i36, align 4
  %tobool1.not.i37 = icmp eq ptr %23, null
  br i1 %tobool1.not.i37, label %if.end.i38.compute_size.i51_crit_edge, label %if.end3.i42

if.end.i38.compute_size.i51_crit_edge:            ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %compute_size.i51

if.end3.i42:                                      ; preds = %if.end.i38
  %add6.i39 = add nuw i32 %19, 25
  %firstu.i40 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 9
  %24 = ptrtoint ptr %firstu.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %firstu.i40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i39, i32 %25)
  %cmp7.i41 = icmp sgt i32 %add6.i39, %25
  br i1 %cmp7.i41, label %if.then8.i43, label %if.end11.i49

if.then8.i43:                                     ; preds = %if.end3.i42
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %count, align 4
  %27 = ptrtoint ptr %seen_enough.i33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %seen_enough.i33, align 4
  br label %if.end11

if.end11.i49:                                     ; preds = %if.end3.i42
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i44 = getelementptr i8, ptr %23, i32 %19
  %28 = call ptr @memcpy(ptr %add.ptr.i44, ptr @.str.6, i32 7)
  %add.ptr14.i46 = getelementptr i8, ptr %add.ptr.i44, i32 7
  %29 = call ptr @memcpy(ptr %add.ptr14.i46, ptr @.str.9, i32 17)
  %add.ptr16.i48 = getelementptr i8, ptr %add.ptr14.i46, i32 17
  %30 = ptrtoint ptr %add.ptr16.i48 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %add.ptr16.i48, align 1
  br label %compute_size.i51

compute_size.i51:                                 ; preds = %if.end11.i49, %if.end.i38.compute_size.i51_crit_edge
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  %add20.i50 = add i32 %32, 25
  store i32 %add20.i50, ptr %count, align 4
  br label %if.end11

if.end11:                                         ; preds = %compute_size.i51, %if.then8.i43, %lor.lhs.false.i35.if.end11_crit_edge, %if.then10.if.end11_crit_edge, %land.lhs.true7.if.end11_crit_edge, %compute_size.i, %if.then8.i, %lor.lhs.false.i.if.end11_crit_edge, %if.then5.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %call12 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call12, label %if.end11.if.end21_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.else15:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %and16 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %.str..str.2 = select i1 %tobool17.not, ptr @.str, ptr @.str.2
  %. = select i1 %tobool17.not, i32 5, i32 9
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %if.end11.if.end21_crit_edge
  %prefix.0 = phi ptr [ @.str.1, %if.end11.if.end21_crit_edge ], [ %.str..str.2, %if.else15 ]
  %prefix_len.0 = phi i32 [ 8, %if.end11.if.end21_crit_edge ], [ %., %if.else15 ]
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i54 = icmp slt i32 %34, 0
  br i1 %cmp.i54, label %if.end21.cleanup_crit_edge, label %lor.lhs.false.i57

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i57:                                ; preds = %if.end21
  %seen_enough.i55 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  %35 = ptrtoint ptr %seen_enough.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seen_enough.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i56 = icmp eq i32 %36, 0
  br i1 %tobool.not.i56, label %if.end.i60, label %lor.lhs.false.i57.cleanup_crit_edge

lor.lhs.false.i57.cleanup_crit_edge:              ; preds = %lor.lhs.false.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i60:                                       ; preds = %lor.lhs.false.i57
  %buffer.i58 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 3
  %37 = ptrtoint ptr %buffer.i58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer.i58, align 4
  %tobool1.not.i59 = icmp eq ptr %38, null
  %.pre.i = add i32 %namelen, 1
  %.pre42.i = add i32 %.pre.i, %prefix_len.0
  br i1 %tobool1.not.i59, label %if.end.i60.compute_size.i73_crit_edge, label %if.end3.i64

if.end.i60.compute_size.i73_crit_edge:            ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %compute_size.i73

if.end3.i64:                                      ; preds = %if.end.i60
  %add6.i61 = add i32 %.pre42.i, %34
  %firstu.i62 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 9
  %39 = ptrtoint ptr %firstu.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %firstu.i62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i61, i32 %40)
  %cmp7.i63 = icmp sgt i32 %add6.i61, %40
  br i1 %cmp7.i63, label %if.then8.i65, label %if.end11.i71

if.then8.i65:                                     ; preds = %if.end3.i64
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %count, align 4
  %42 = ptrtoint ptr %seen_enough.i55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %seen_enough.i55, align 4
  br label %cleanup

if.end11.i71:                                     ; preds = %if.end3.i64
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i66 = getelementptr i8, ptr %38, i32 %34
  %call.i67 = tail call ptr @strncpy(ptr noundef %add.ptr.i66, ptr noundef nonnull %prefix.0, i32 noundef %prefix_len.0) #5
  %add.ptr14.i68 = getelementptr i8, ptr %add.ptr.i66, i32 %prefix_len.0
  %call15.i69 = tail call ptr @strncpy(ptr noundef %add.ptr14.i68, ptr noundef %name, i32 noundef %namelen) #5
  %add.ptr16.i70 = getelementptr i8, ptr %add.ptr14.i68, i32 %namelen
  %43 = ptrtoint ptr %add.ptr16.i70 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %add.ptr16.i70, align 1
  br label %compute_size.i73

compute_size.i73:                                 ; preds = %if.end11.i71, %if.end.i60.compute_size.i73_crit_edge
  %44 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count, align 4
  %add20.i72 = add i32 %45, %.pre42.i
  store i32 %add20.i72, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %compute_size.i73, %if.then8.i65, %lor.lhs.false.i57.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_xattr_get(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  %args = alloca %struct.xfs_da_args, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args) #5
  %0 = call ptr @memset(ptr %args, i32 0, i32 112)
  %name1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %call = tail call i32 @strlen(ptr noundef %name) #8
  %2 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %namelen, align 8
  %value2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %3 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %value, ptr %value2, align 8
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %valuelen, align 4
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %7 = ptrtoint ptr %attr_filter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %attr_filter, align 8
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %8 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %dp, align 8
  %call4 = call i32 @xfs_attr_get(ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %valuelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valuelen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_xattr_set(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %args = alloca %struct.xfs_da_args, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args) #5
  %0 = call ptr @memset(ptr %args, i32 0, i32 112)
  %name1 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 4
  %namelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %call = tail call i32 @strlen(ptr noundef %name) #8
  %2 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %namelen, align 8
  %value2 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %3 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %value, ptr %value2, align 8
  %valuelen = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %valuelen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %valuelen, align 4
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  %flags3 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags3, align 4
  %7 = ptrtoint ptr %attr_filter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %attr_filter, align 8
  %attr_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 7
  %8 = ptrtoint ptr %attr_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %attr_flags, align 4
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %9 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %dp, align 8
  %call5 = call i32 @xfs_attr_set(ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags3, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @xfs_forget_acl(ptr noundef %inode, ptr noundef %name) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args) #5
  ret i32 %call5
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_forget_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @xfs_xattr_handlers, !1, !"xfs_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_xattr.c", i32 86, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_xattr.c", i32 66, i32 12}
!4 = !{ptr @xfs_xattr_user_handler, !5, !"xfs_xattr_user_handler", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_xattr.c", i32 65, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_xattr.c", i32 73, i32 12}
!8 = !{ptr @xfs_xattr_trusted_handler, !9, !"xfs_xattr_trusted_handler", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_xattr.c", i32 72, i32 35}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_xattr.c", i32 80, i32 12}
!12 = !{ptr @xfs_xattr_security_handler, !13, !"xfs_xattr_security_handler", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_xattr.c", i32 79, i32 35}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_xattr.c", i32 143, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_xattr.c", i32 148, i32 21}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_xattr.c", i32 151, i32 15}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_xattr.c", i32 153, i32 6}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_xattr.c", i32 156, i32 19}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_xattr.c", i32 161, i32 6}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
