; ModuleID = '/llk/IR_all_yes/fs/9p/xattr.c_pt.bc'
source_filename = "../fs/9p/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { i64 }

@__func__.v9fs_fid_xattr_get = private unnamed_addr constant [19 x i8] c"v9fs_fid_xattr_get\00", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"p9_client_attrwalk failed %zd\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.v9fs_xattr_get = private unnamed_addr constant [15 x i8] c"v9fs_xattr_get\00", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"name = %s value_len = %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.v9fs_fid_xattr_set = private unnamed_addr constant [19 x i8] c"v9fs_fid_xattr_set\00", align 1
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"name = %s value_len = %zu flags = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"p9_client_xattrcreate failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@v9fs_xattr_user_handler = internal global { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.4, i32 0, ptr null, ptr @v9fs_xattr_handler_get, ptr @v9fs_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@v9fs_xattr_trusted_handler = internal global { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.5, i32 0, ptr null, ptr @v9fs_xattr_handler_get, ptr @v9fs_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@v9fs_xattr_acl_access_handler = external dso_local constant %struct.xattr_handler, align 4
@v9fs_xattr_acl_default_handler = external dso_local constant %struct.xattr_handler, align 4
@v9fs_xattr_security_handler = internal global { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.6, i32 0, ptr null, ptr @v9fs_xattr_handler_get, ptr @v9fs_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@v9fs_xattr_handlers = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @v9fs_xattr_user_handler, ptr @v9fs_xattr_trusted_handler, ptr @v9fs_xattr_acl_access_handler, ptr @v9fs_xattr_acl_default_handler, ptr @v9fs_xattr_security_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 32, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 68, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 114, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 127, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"v9fs_xattr_user_handler\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 162, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"v9fs_xattr_trusted_handler\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 168, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"v9fs_xattr_security_handler\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 175, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"v9fs_xattr_handlers\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 182, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 163, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 169, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [17 x i8] c"../fs/9p/xattr.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 176, i32 12 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @v9fs_xattr_user_handler, ptr @v9fs_xattr_trusted_handler, ptr @v9fs_xattr_security_handler, ptr @v9fs_xattr_handlers, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_xattr_user_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_xattr_trusted_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_xattr_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_fid_xattr_get(ptr noundef %fid, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %attr_size = alloca i64, align 8
  %kvec = alloca %struct.kvec, align 4
  %to = alloca %struct.iov_iter, align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attr_size) #3
  %0 = ptrtoint ptr %attr_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %attr_size, align 8, !annotation !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kvec) #3
  %1 = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 1
  %2 = ptrtoint ptr %kvec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buffer, ptr %kvec, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %buffer_size, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #3
  %4 = call ptr @memset(ptr %to, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #3
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %err, align 4, !annotation !34
  call void @iov_iter_kvec(ptr noundef nonnull %to, i32 noundef 0, ptr noundef nonnull %kvec, i32 noundef 1, i32 noundef %buffer_size) #3
  %call = call ptr @p9_client_xattrwalk(ptr noundef %fid, ptr noundef %name, ptr noundef nonnull %attr_size) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %call to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_fid_xattr_get, ptr noundef nonnull @.str, i32 noundef %6) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %attr_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %attr_size, align 8
  %conv = zext i32 %buffer_size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp = icmp ugt i64 %8, %conv
  br i1 %cmp, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_size)
  %tobool.not = icmp eq i32 %buffer_size, 0
  %conv7 = trunc i64 %8 to i32
  %spec.select30 = select i1 %tobool.not, i32 %conv7, i32 -34
  br label %if.end14

if.else9:                                         ; preds = %if.end
  %count1.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %9 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count1.i, align 8
  %conv.i = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv.i)
  %cmp.i31 = icmp ult i64 %8, %conv.i
  br i1 %cmp.i31, label %if.then.i, label %if.else9.iov_iter_truncate.exit_crit_edge

if.else9.iov_iter_truncate.exit_crit_edge:        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #5
  br label %iov_iter_truncate.exit

if.then.i:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #5
  %conv3.i = trunc i64 %8 to i32
  %11 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3.i, ptr %count1.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i, %if.else9.iov_iter_truncate.exit_crit_edge
  %call10 = call i32 @p9_client_read(ptr noundef %call, i64 noundef 0, ptr noundef nonnull %to, ptr noundef nonnull %err) #3
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool11.not, i32 %call10, i32 %13
  br label %if.end14

if.end14:                                         ; preds = %iov_iter_truncate.exit, %if.then5
  %retval1.0 = phi i32 [ %spec.select, %iov_iter_truncate.exit ], [ %spec.select30, %if.then5 ]
  %call15 = call i32 @p9_client_clunk(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %retval1.0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kvec) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attr_size) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_xattrwalk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_read(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_xattr_get(ptr noundef %dentry, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_xattr_get, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %buffer_size) #3
  %call = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @v9fs_fid_xattr_get(ptr noundef %call, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size)
  %call4 = tail call i32 @p9_client_clunk(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_fid_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_xattr_set(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @v9fs_fid_xattr_set(ptr noundef %call, ptr noundef %name, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags)
  %call4 = tail call i32 @p9_client_clunk(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_fid_xattr_set(ptr noundef %fid, ptr noundef %name, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %kvec = alloca %struct.kvec, align 4
  %from = alloca %struct.iov_iter, align 8
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kvec) #3
  %0 = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 1
  %1 = ptrtoint ptr %kvec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %value, ptr %kvec, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %value_len, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #3
  %3 = call ptr @memset(ptr %from, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #3
  call void @iov_iter_kvec(ptr noundef nonnull %from, i32 noundef 1, ptr noundef nonnull %kvec, i32 noundef 1, i32 noundef %value_len) #3
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_fid_xattr_set, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %value_len, i32 noundef %flags) #3
  %cmp.i.i = icmp ugt ptr %fid, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.clone_fid.exit_crit_edge, label %cond.false.i

entry.clone_fid.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %clone_fid.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = call ptr @p9_client_walk(ptr noundef %fid, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #3
  br label %clone_fid.exit

clone_fid.exit:                                   ; preds = %cond.false.i, %entry.clone_fid.exit_crit_edge
  %cond.i = phi ptr [ %call1.i, %cond.false.i ], [ %fid, %entry.clone_fid.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %cond.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %clone_fid.exit
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %cond.i to i32
  br label %cleanup

if.end:                                           ; preds = %clone_fid.exit
  %conv = zext i32 %value_len to i64
  %call4 = call i32 @p9_client_xattrcreate(ptr noundef %cond.i, ptr noundef %name, i64 noundef %conv, i32 noundef %flags) #3
  %5 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_fid_xattr_set, ptr noundef nonnull @.str.3, i32 noundef %call4) #3
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = call i32 @p9_client_write(ptr noundef %cond.i, i64 noundef 0, ptr noundef nonnull %from, ptr noundef nonnull %retval1) #3
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %call9 = call i32 @p9_client_clunk(ptr noundef %cond.i) #3
  %6 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call9, ptr %retval1, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %9 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %10, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kvec) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_xattrcreate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_write(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_listxattr(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_xattr_get, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef %buffer_size) #3
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #3
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call.i to i32
  br label %v9fs_xattr_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @v9fs_fid_xattr_get(ptr noundef %call.i, ptr noundef null, ptr noundef %buffer, i32 noundef %buffer_size) #3
  %call4.i = tail call i32 @p9_client_clunk(ptr noundef %call.i) #3
  br label %v9fs_xattr_get.exit

v9fs_xattr_get.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ %call3.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_xattr_handler_get(ptr noundef %handler, ptr noundef %dentry, ptr nocapture noundef readnone %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #3
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_xattr_get, ptr noundef nonnull @.str.1, ptr noundef %call, i32 noundef %size) #3
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #3
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call.i to i32
  br label %v9fs_xattr_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @v9fs_fid_xattr_get(ptr noundef %call.i, ptr noundef %call, ptr noundef %buffer, i32 noundef %size) #3
  %call4.i = tail call i32 @p9_client_clunk(ptr noundef %call.i) #3
  br label %v9fs_xattr_get.exit

v9fs_xattr_get.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ %call3.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_xattr_handler_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr nocapture noundef readnone %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #3
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #3
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call.i to i32
  br label %v9fs_xattr_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @v9fs_fid_xattr_set(ptr noundef %call.i, ptr noundef %call, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #3
  %call4.i = tail call i32 @p9_client_clunk(ptr noundef %call.i) #3
  br label %v9fs_xattr_set.exit

v9fs_xattr_set.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ %call3.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__func__.v9fs_fid_xattr_get, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/xattr.c", i32 32, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.v9fs_xattr_get, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/9p/xattr.c", i32 68, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.v9fs_fid_xattr_set, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/9p/xattr.c", i32 114, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/9p/xattr.c", i32 127, i32 3}
!11 = !{ptr @v9fs_xattr_handlers, !12, !"v9fs_xattr_handlers", i1 false, i1 false}
!12 = !{!"../fs/9p/xattr.c", i32 182, i32 29}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/9p/xattr.c", i32 163, i32 12}
!15 = !{ptr @v9fs_xattr_user_handler, !16, !"v9fs_xattr_user_handler", i1 false, i1 false}
!16 = !{!"../fs/9p/xattr.c", i32 162, i32 29}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/9p/xattr.c", i32 169, i32 12}
!19 = !{ptr @v9fs_xattr_trusted_handler, !20, !"v9fs_xattr_trusted_handler", i1 false, i1 false}
!20 = !{!"../fs/9p/xattr.c", i32 168, i32 29}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/9p/xattr.c", i32 176, i32 12}
!23 = !{ptr @v9fs_xattr_security_handler, !24, !"v9fs_xattr_security_handler", i1 false, i1 false}
!24 = !{!"../fs/9p/xattr.c", i32 175, i32 29}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
