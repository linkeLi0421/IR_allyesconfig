; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/object.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.4 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_unmap }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvif_ioctl_unmap = type {}
%struct.anon.6 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_del }
%struct.nvif_ioctl_del = type {}
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.0 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_sclass_v0 }
%struct.nvif_ioctl_sclass_v0 = type { i8, i8, [6 x i8], [0 x %struct.nvif_ioctl_sclass_oclass_v0] }
%struct.nvif_ioctl_sclass_oclass_v0 = type { i32, i16, i16 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.anon.1 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_rd_v0 }
%struct.nvif_ioctl_rd_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.anon.2 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_wr_v0 }
%struct.nvif_ioctl_wr_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.anon.3 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_mthd_v0 }
%struct.nvif_ioctl_mthd_v0 = type { i8, i8, [6 x i8], [0 x i8] }
%struct.anon.5 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_map_v0 }
%struct.nvif_ioctl_map_v0 = type { i8, i8, [6 x i8], i64, i64, [0 x i8] }
%struct.anon.7 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_new_v0 }
%struct.nvif_ioctl_new_v0 = type { i8, [6 x i8], i8, i64, i64, i32, i32, [0 x i8] }

@__const.nvif_object_unmap_handle.args = private unnamed_addr constant %struct.anon.4 { %struct.nvif_ioctl_v0 { i8 0, i8 8, [4 x i8] zeroinitializer, i8 0, i8 0, i64 0, i64 0, [0 x i8] zeroinitializer }, %struct.nvif_ioctl_unmap zeroinitializer }, align 8
@__const.nvif_object_dtor.args = private unnamed_addr constant %struct.anon.6 { %struct.nvif_ioctl_v0 { i8 0, i8 3, [4 x i8] zeroinitializer, i8 0, i8 0, i64 0, i64 0, [0 x i8] zeroinitializer }, %struct.nvif_ioctl_del zeroinitializer }, align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvifObject\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nvif/object.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 272, i32 31 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_object_ioctl(ptr noundef %object, ptr noundef %data, i32 noundef %size, ptr noundef %hack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %size)
  %cmp = icmp ugt i32 %size, 23
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2 = icmp eq i8 %3, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %cmp5.not = icmp eq ptr %1, %object
  %4 = ptrtoint ptr %object to i32
  %conv8 = zext i32 %4 to i64
  %conv8.sink = select i1 %cmp5.not, i64 0, i64 %conv8
  %5 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv8.sink, ptr %5, align 8
  %owner = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %owner, align 2
  %driver = getelementptr inbounds %struct.nvif_client, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 8
  %ioctl = getelementptr inbounds %struct.nvif_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioctl, align 4
  %priv = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %call = tail call i32 %11(ptr noundef %13, ptr noundef %data, i32 noundef %size, ptr noundef %hack) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_object_sclass_put(ptr nocapture noundef %psclass) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psclass to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psclass, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %psclass to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %psclass, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_object_sclass_get(ptr noundef %object, ptr nocapture noundef %psclass) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %object to i32
  %conv8.i = zext i32 %0 to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %conv15, %if.end12 ]
  %mul = shl nuw nsw i32 %cnt.0, 3
  %add = add nuw nsw i32 %mul, 32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %nvif_object_ioctl.exit

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nvif_object_ioctl.exit:                           ; preds = %while.cond
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call9.i, align 128
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %type, align 1
  %sclass = getelementptr inbounds %struct.anon.0, ptr %call9.i, i32 0, i32 1
  %3 = ptrtoint ptr %sclass to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %sclass, align 8
  %conv = trunc i32 %cnt.0 to i8
  %count = getelementptr inbounds %struct.anon.0, ptr %call9.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %count, align 1
  %5 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i, align 4
  %cmp5.not.i = icmp eq ptr %6, %object
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %7 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv8.sink.i, ptr %7, align 16
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 3
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %owner.i, align 2
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 5
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 4
  %call.i = tail call i32 %13(ptr noundef %15, ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true, label %nvif_object_ioctl.exit.cleanup.sink.split_crit_edge

nvif_object_ioctl.exit.cleanup.sink.split_crit_edge: ; preds = %nvif_object_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %nvif_object_ioctl.exit
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %count, align 1
  %conv8 = zext i8 %17 to i32
  %cmp9.not = icmp ult i32 %cnt.0, %conv8
  br i1 %cmp9.not, label %if.end12, label %if.end7.i.i

if.end12:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %count, align 1
  %conv15 = zext i8 %19 to i32
  tail call void @kfree(ptr noundef nonnull %call9.i) #4
  br label %while.cond

if.end7.i.i:                                      ; preds = %land.lhs.true
  %conv8.le = zext i8 %17 to i32
  %20 = mul nuw nsw i32 %conv8.le, 12
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #7
  %21 = ptrtoint ptr %psclass to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %psclass, align 4
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.end7.i.i.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end7.i.i
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp2998.not = icmp eq i8 %23, 0
  br i1 %cmp2998.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %oclass = getelementptr inbounds %struct.anon.0, ptr %call9.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.nvif_ioctl_sclass_oclass_v0], ptr %oclass, i32 0, i32 %i.099
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 8
  %26 = ptrtoint ptr %psclass to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %psclass, align 4
  %arrayidx33 = getelementptr %struct.nvif_sclass, ptr %27, i32 %i.099
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %arrayidx33, align 4
  %minver = getelementptr inbounds %struct.nvif_ioctl_sclass_oclass_v0, ptr %arrayidx, i32 0, i32 1
  %29 = ptrtoint ptr %minver to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %minver, align 4
  %conv38 = sext i16 %30 to i32
  %31 = load ptr, ptr %psclass, align 4
  %minver40 = getelementptr %struct.nvif_sclass, ptr %31, i32 %i.099, i32 1
  %32 = ptrtoint ptr %minver40 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv38, ptr %minver40, align 4
  %maxver = getelementptr inbounds %struct.nvif_ioctl_sclass_oclass_v0, ptr %arrayidx, i32 0, i32 2
  %33 = ptrtoint ptr %maxver to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %maxver, align 2
  %conv44 = sext i16 %34 to i32
  %35 = load ptr, ptr %psclass, align 4
  %maxver46 = getelementptr %struct.nvif_sclass, ptr %35, i32 %i.099, i32 2
  %36 = ptrtoint ptr %maxver46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv44, ptr %maxver46, align 4
  %inc = add nuw nsw i32 %i.099, 1
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %count, align 1
  %conv28 = zext i8 %38 to i32
  %cmp29 = icmp ult i32 %inc, %conv28
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %if.end50.loopexit.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end50.loopexit.loopexit:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %phi.cast = zext i8 %38 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50.loopexit.loopexit, %for.cond.preheader.cleanup.sink.split_crit_edge, %if.end7.i.i.cleanup.sink.split_crit_edge, %nvif_object_ioctl.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %phi.cast, %if.end50.loopexit.loopexit ], [ 0, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ -12, %if.end7.i.i.cleanup.sink.split_crit_edge ], [ %call.i, %nvif_object_ioctl.exit.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ -12, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_object_rd(ptr noundef %object, i32 noundef %size, i64 noundef %addr) local_unnamed_addr #0 align 64 {
nvif_object_ioctl.exit:
  %args = alloca %struct.anon.1, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %args) #4
  %0 = call ptr @memset(ptr %args, i32 0, i32 32)
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %type, align 1
  %size2 = getelementptr inbounds %struct.anon.1, ptr %args, i32 0, i32 1, i32 1
  %conv = trunc i32 %size to i8
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %size2, align 1
  %addr3 = getelementptr inbounds %struct.anon.1, ptr %args, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %addr3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %addr, ptr %addr3, align 8
  %client1.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  %cmp5.not.i = icmp eq ptr %5, %object
  %6 = ptrtoint ptr %object to i32
  %conv8.i = zext i32 %6 to i64
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %7 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv8.sink.i, ptr %7, align 8
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 3
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %owner.i, align 2
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %13(ptr noundef %15, ptr noundef nonnull %args, i32 noundef 40, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %nvif_object_ioctl.exit.cleanup_crit_edge

nvif_object_ioctl.exit.cleanup_crit_edge:         ; preds = %nvif_object_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %nvif_object_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.anon.1, ptr %args, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nvif_object_ioctl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end ], [ 0, %nvif_object_ioctl.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %args) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_object_wr(ptr noundef %object, i32 noundef %size, i64 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
nvif_object_ioctl.exit:
  %args = alloca %struct.anon.2, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %args) #4
  %0 = call ptr @memset(ptr %args, i32 0, i32 16)
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 6, ptr %type, align 1
  %wr = getelementptr inbounds %struct.anon.2, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wr, align 8
  %size2 = getelementptr inbounds %struct.anon.2, ptr %args, i32 0, i32 1, i32 1
  %conv = trunc i32 %size to i8
  %3 = ptrtoint ptr %size2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %size2, align 1
  %pad02 = getelementptr inbounds %struct.anon.2, ptr %args, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %pad02 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %pad02, align 2
  %data3 = getelementptr inbounds %struct.anon.2, ptr %args, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %data, ptr %data3, align 4
  %addr4 = getelementptr inbounds %struct.anon.2, ptr %args, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %addr4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %addr, ptr %addr4, align 8
  %client1.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %7 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client1.i, align 4
  %cmp5.not.i = icmp eq ptr %8, %object
  %9 = ptrtoint ptr %object to i32
  %conv8.i = zext i32 %9 to i64
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %10 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv8.sink.i, ptr %10, align 8
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 3
  %12 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %owner.i, align 2
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %16(ptr noundef %18, ptr noundef nonnull %args, i32 noundef 40, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_object_mthd(ptr noundef %object, i32 noundef %mthd, ptr nocapture noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %stack = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack) #4
  %0 = call ptr @memset(ptr %stack, i32 255, i32 128)
  %add = add i32 %size, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp = icmp ugt i32 %add, 128
  br i1 %cmp, label %if.end8.i, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end3_crit_edge

if.end8.i.if.end3_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %args.0 = phi ptr [ %call9.i, %if.end8.i.if.end3_crit_edge ], [ %stack, %entry.if.end3_crit_edge ]
  %1 = ptrtoint ptr %args.0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %args.0, align 8
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.0, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %type, align 1
  %mthd5 = getelementptr inbounds %struct.anon.3, ptr %args.0, i32 0, i32 1
  %3 = ptrtoint ptr %mthd5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %mthd5, align 8
  %conv = trunc i32 %mthd to i8
  %method = getelementptr inbounds %struct.anon.3, ptr %args.0, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %method, align 1
  %data9 = getelementptr inbounds %struct.anon.3, ptr %args.0, i32 1
  %5 = call ptr @memcpy(ptr %data9, ptr %data, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add)
  %cmp.i36 = icmp ugt i32 %add, 23
  br i1 %cmp.i36, label %if.then.i37, label %if.end3.nvif_object_ioctl.exit_crit_edge

if.end3.nvif_object_ioctl.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_ioctl.exit

if.then.i37:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %client1.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %6 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1.i, align 4
  %cmp5.not.i = icmp eq ptr %7, %object
  %8 = ptrtoint ptr %object to i32
  %conv8.i = zext i32 %8 to i64
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %9 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.0, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv8.sink.i, ptr %9, align 8
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.0, i32 0, i32 3
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %owner.i, align 2
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %15(ptr noundef %17, ptr noundef nonnull %args.0, i32 noundef %add, ptr noundef null) #4
  br label %nvif_object_ioctl.exit

nvif_object_ioctl.exit:                           ; preds = %if.then.i37, %if.end3.nvif_object_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i37 ], [ -38, %if.end3.nvif_object_ioctl.exit_crit_edge ]
  %18 = call ptr @memcpy(ptr %data, ptr %data9, i32 %size)
  %cmp17.not = icmp eq ptr %args.0, %stack
  br i1 %cmp17.not, label %nvif_object_ioctl.exit.cleanup_crit_edge, label %if.then19

nvif_object_ioctl.exit.cleanup_crit_edge:         ; preds = %nvif_object_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then19:                                        ; preds = %nvif_object_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %args.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %nvif_object_ioctl.exit.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.cleanup_crit_edge ], [ %retval.0.i, %if.then19 ], [ %retval.0.i, %nvif_object_ioctl.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_object_unmap_handle(ptr noundef %object) local_unnamed_addr #0 align 64 {
nvif_object_ioctl.exit:
  %args = alloca %struct.anon.4, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #4
  %0 = call ptr @memcpy(ptr %args, ptr @__const.nvif_object_unmap_handle.args, i32 16)
  %client1.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1.i, align 4
  %cmp5.not.i = icmp eq ptr %2, %object
  %3 = ptrtoint ptr %object to i32
  %conv8.i = zext i32 %3 to i64
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %4 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv8.sink.i, ptr %4, align 8
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 3
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %owner.i, align 2
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %10(ptr noundef %12, ptr noundef nonnull %args, i32 noundef 24, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_object_map_handle(ptr noundef %object, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr nocapture noundef writeonly %handle, ptr nocapture noundef writeonly %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %argc, 48
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 7, ptr %type, align 1
  %data = getelementptr inbounds %struct.anon.5, ptr %call9.i.i, i32 1
  %1 = call ptr @memcpy(ptr %data, ptr %argv, i32 %argc)
  %client1.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %2 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add)
  %cmp.i = icmp ugt i32 %add, 23
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.nvif_object_ioctl.exit_crit_edge

if.end.nvif_object_ioctl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_ioctl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2.i = icmp eq i8 %5, 0
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.nvif_object_ioctl.exit_crit_edge

land.lhs.true.i.nvif_object_ioctl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_ioctl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %cmp5.not.i = icmp eq ptr %3, %object
  %6 = ptrtoint ptr %object to i32
  %conv8.i = zext i32 %6 to i64
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %7 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv8.sink.i, ptr %7, align 16
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %owner.i, align 2
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 4
  %call.i = tail call i32 %13(ptr noundef %15, ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef null) #4
  br label %nvif_object_ioctl.exit

nvif_object_ioctl.exit:                           ; preds = %if.then.i, %land.lhs.true.i.nvif_object_ioctl.exit_crit_edge, %if.end.nvif_object_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -38, %land.lhs.true.i.nvif_object_ioctl.exit_crit_edge ], [ -38, %if.end.nvif_object_ioctl.exit_crit_edge ]
  %handle3 = getelementptr inbounds %struct.anon.5, ptr %call9.i.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %handle3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %handle3, align 32
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %handle, align 8
  %length5 = getelementptr inbounds %struct.anon.5, ptr %call9.i.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %length5 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length5, align 8
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %length, align 8
  %type7 = getelementptr inbounds %struct.anon.5, ptr %call9.i.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %type7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type7, align 1
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  %conv9 = zext i1 %cmp to i32
  %spec.select = select i1 %tobool8.not, i32 %conv9, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %nvif_object_ioctl.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %spec.select, %nvif_object_ioctl.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_object_unmap(ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.anon.4, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %map = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %driver = getelementptr inbounds %struct.nvif_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %unmap = getelementptr inbounds %struct.nvif_driver, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unmap, align 4
  %conv = trunc i64 %5 to i32
  tail call void %9(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %conv) #4
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %map, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #4
  %12 = call ptr @memcpy(ptr %args.i, ptr @__const.nvif_object_unmap_handle.args, i32 16)
  %13 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client1, align 4
  %cmp5.not.i.i = icmp eq ptr %14, %object
  %15 = ptrtoint ptr %object to i32
  %conv8.i.i = zext i32 %15 to i64
  %conv8.sink.i.i = select i1 %cmp5.not.i.i, i64 0, i64 %conv8.i.i
  %16 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv8.sink.i.i, ptr %16, align 8
  %owner.i.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i, i32 0, i32 3
  %18 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %owner.i.i, align 2
  %driver.i.i = getelementptr inbounds %struct.nvif_client, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i.i, align 8
  %ioctl.i.i = getelementptr inbounds %struct.nvif_driver, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %ioctl.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioctl.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.nvif_object, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i.i, align 4
  %call.i.i = call i32 %22(ptr noundef %24, ptr noundef nonnull %args.i, i32 noundef 24, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_object_map(ptr noundef %object, ptr nocapture noundef readonly %argv, i32 noundef %argc) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.anon.4, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %add.i = add i32 %argc, 48
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %type.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %type.i, align 1
  %data.i = getelementptr inbounds %struct.anon.5, ptr %call9.i.i.i, i32 1
  %3 = call ptr @memcpy(ptr %data.i, ptr %argv, i32 %argc)
  %4 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %add.i, 23
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.nvif_object_ioctl.exit.i_crit_edge

if.end.i.nvif_object_ioctl.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_ioctl.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %6 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2.i.i = icmp eq i8 %7, 0
  br i1 %cmp2.i.i, label %if.then.i.i, label %land.lhs.true.i.i.nvif_object_ioctl.exit.i_crit_edge

land.lhs.true.i.i.nvif_object_ioctl.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_ioctl.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cmp5.not.i.i = icmp eq ptr %5, %object
  %8 = ptrtoint ptr %object to i32
  %conv8.i.i = zext i32 %8 to i64
  %conv8.sink.i.i = select i1 %cmp5.not.i.i, i64 0, i64 %conv8.i.i
  %9 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv8.sink.i.i, ptr %9, align 16
  %owner.i.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %owner.i.i, align 2
  %driver.i.i = getelementptr inbounds %struct.nvif_client, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i.i, align 8
  %ioctl.i.i = getelementptr inbounds %struct.nvif_driver, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ioctl.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioctl.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.nvif_object, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %17, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, ptr noundef null) #4
  br label %nvif_object_ioctl.exit.i

nvif_object_ioctl.exit.i:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.nvif_object_ioctl.exit.i_crit_edge, %if.end.i.nvif_object_ioctl.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -38, %land.lhs.true.i.i.nvif_object_ioctl.exit.i_crit_edge ], [ -38, %if.end.i.nvif_object_ioctl.exit.i_crit_edge ]
  %handle3.i = getelementptr inbounds %struct.anon.5, ptr %call9.i.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %handle3.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %handle3.i, align 32
  %length5.i = getelementptr inbounds %struct.anon.5, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %length5.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %length5.i, align 8
  %type7.i = getelementptr inbounds %struct.anon.5, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %type7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type7.i, align 1
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool8.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool8.not.i, label %if.then, label %nvif_object_map_handle.exit

nvif_object_map_handle.exit:                      ; preds = %nvif_object_ioctl.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp = icmp sgt i32 %retval.0.i.i, -1
  br i1 %cmp, label %nvif_object_map_handle.exit.if.then2_crit_edge, label %nvif_object_map_handle.exit.cleanup_crit_edge

nvif_object_map_handle.exit.cleanup_crit_edge:    ; preds = %nvif_object_map_handle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nvif_object_map_handle.exit.if.then2_crit_edge:   ; preds = %nvif_object_map_handle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then:                                          ; preds = %nvif_object_ioctl.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i.not = icmp eq i8 %23, 0
  br i1 %cmp.i.not, label %if.then.if.then2_crit_edge, label %if.else

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2:                                         ; preds = %if.then.if.then2_crit_edge, %nvif_object_map_handle.exit.if.then2_crit_edge
  %driver = getelementptr inbounds %struct.nvif_client, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver, align 8
  %map = getelementptr inbounds %struct.nvif_driver, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %conv = trunc i64 %21 to i32
  %call3 = tail call ptr %27(ptr noundef %1, i64 noundef %19, i32 noundef %conv) #4
  %map4 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6
  %28 = ptrtoint ptr %map4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call3, ptr %map4, align 8
  %tobool7.not = icmp eq ptr %call3, null
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %size = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %21, ptr %size, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv10 = trunc i64 %19 to i32
  %30 = inttoptr i32 %conv10 to ptr
  %map11 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6
  %31 = ptrtoint ptr %map11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %map11, align 8
  br label %cleanup

if.end13:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #4
  %32 = call ptr @memcpy(ptr %args.i, ptr @__const.nvif_object_unmap_handle.args, i32 16)
  %33 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client1, align 4
  %cmp5.not.i.i28 = icmp eq ptr %34, %object
  %35 = ptrtoint ptr %object to i32
  %conv8.i.i29 = zext i32 %35 to i64
  %conv8.sink.i.i30 = select i1 %cmp5.not.i.i28, i64 0, i64 %conv8.i.i29
  %36 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i, i32 0, i32 6
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv8.sink.i.i30, ptr %36, align 8
  %owner.i.i31 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i, i32 0, i32 3
  %38 = ptrtoint ptr %owner.i.i31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %owner.i.i31, align 2
  %driver.i.i32 = getelementptr inbounds %struct.nvif_client, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %driver.i.i32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver.i.i32, align 8
  %ioctl.i.i33 = getelementptr inbounds %struct.nvif_driver, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %ioctl.i.i33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioctl.i.i33, align 4
  %priv.i.i34 = getelementptr inbounds %struct.nvif_object, ptr %34, i32 0, i32 5
  %43 = ptrtoint ptr %priv.i.i34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i.i34, align 4
  %call.i.i35 = call i32 %42(ptr noundef %44, ptr noundef nonnull %args.i, i32 noundef 24, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else, %if.then8, %nvif_object_map_handle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.else ], [ -12, %if.end13 ], [ %retval.0.i.i, %nvif_object_map_handle.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_object_dtor(ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.anon.4, align 8
  %args = alloca %struct.anon.6, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #4
  %0 = call ptr @memcpy(ptr %args, ptr @__const.nvif_object_dtor.args, i32 24)
  %client = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %map.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6
  %3 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.nvif_object_unmap.exit_crit_edge, label %if.then.i

if.end.nvif_object_unmap.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_unmap.exit

if.then.i:                                        ; preds = %if.end
  %size.i = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool3.not.i = icmp eq i64 %6, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i, align 8
  %unmap.i = getelementptr inbounds %struct.nvif_driver, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unmap.i, align 4
  %conv.i = trunc i64 %6 to i32
  tail call void %10(ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef %conv.i) #4
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %size.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %map.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i.i) #4
  %13 = call ptr @memcpy(ptr %args.i.i, ptr @__const.nvif_object_unmap_handle.args, i32 16)
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %cmp5.not.i.i.i = icmp eq ptr %15, %object
  %16 = ptrtoint ptr %object to i32
  %conv8.i.i.i = zext i32 %16 to i64
  %conv8.sink.i.i.i = select i1 %cmp5.not.i.i.i, i64 0, i64 %conv8.i.i.i
  %17 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv8.sink.i.i.i, ptr %17, align 8
  %owner.i.i.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %owner.i.i.i, align 2
  %driver.i.i.i = getelementptr inbounds %struct.nvif_client, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver.i.i.i, align 8
  %ioctl.i.i.i = getelementptr inbounds %struct.nvif_driver, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ioctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioctl.i.i.i, align 4
  %priv.i.i.i = getelementptr inbounds %struct.nvif_object, ptr %15, i32 0, i32 5
  %24 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i.i.i, align 4
  %call.i.i.i = call i32 %23(ptr noundef %25, ptr noundef nonnull %args.i.i, i32 noundef 24, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i.i) #4
  br label %nvif_object_unmap.exit

nvif_object_unmap.exit:                           ; preds = %if.end.i, %if.end.nvif_object_unmap.exit_crit_edge
  %26 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp2.i = icmp eq i8 %27, 0
  br i1 %cmp2.i, label %if.then.i7, label %nvif_object_unmap.exit.nvif_object_ioctl.exit_crit_edge

nvif_object_unmap.exit.nvif_object_ioctl.exit_crit_edge: ; preds = %nvif_object_unmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_ioctl.exit

if.then.i7:                                       ; preds = %nvif_object_unmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 4
  %cmp5.not.i = icmp eq ptr %29, %object
  %30 = ptrtoint ptr %object to i32
  %conv8.i = zext i32 %30 to i64
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %31 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 6
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv8.sink.i, ptr %31, align 8
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 3
  %33 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %owner.i, align 2
  %driver.i6 = getelementptr inbounds %struct.nvif_client, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %driver.i6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver.i6, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %29, i32 0, i32 5
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i, align 4
  %call.i = call i32 %37(ptr noundef %39, ptr noundef nonnull %args, i32 noundef 24, ptr noundef null) #4
  br label %nvif_object_ioctl.exit

nvif_object_ioctl.exit:                           ; preds = %if.then.i7, %nvif_object_unmap.exit.nvif_object_ioctl.exit_crit_edge
  %40 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %client, align 4
  br label %cleanup

cleanup:                                          ; preds = %nvif_object_ioctl.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_object_ctor(ptr noundef %parent, ptr noundef %name, i32 noundef %handle, i32 noundef %oclass, ptr nocapture noundef %data, i32 noundef %size, ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %client, align 4
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str, ptr %name
  %name1 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 2
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select, ptr %name1, align 8
  %handle2 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 3
  %2 = ptrtoint ptr %handle2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %handle, ptr %handle2, align 4
  %oclass3 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 4
  %3 = ptrtoint ptr %oclass3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %oclass, ptr %oclass3, align 8
  %map = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %map, align 8
  %size5 = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %size5 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %size5, align 8
  %tobool6.not = icmp eq ptr %parent, null
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %add = add i32 %size, 56
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #7
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_dtor(ptr noundef %object)
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %object, align 8
  %9 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call9.i, align 128
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %type, align 1
  %new = getelementptr inbounds %struct.anon.7, ptr %call9.i, i32 0, i32 1
  %11 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %new, align 8
  %client13 = getelementptr inbounds %struct.nvif_object, ptr %parent, i32 0, i32 1
  %12 = ptrtoint ptr %client13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client13, align 4
  %route = getelementptr inbounds %struct.nvif_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %route, align 8
  %route15 = getelementptr inbounds %struct.anon.7, ptr %call9.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %route15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %route15, align 1
  %17 = ptrtoint ptr %object to i32
  %conv = zext i32 %17 to i64
  %token = getelementptr inbounds %struct.anon.7, ptr %call9.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %token, align 32
  %object19 = getelementptr inbounds %struct.anon.7, ptr %call9.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %object19 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %object19, align 8
  %handle21 = getelementptr inbounds %struct.anon.7, ptr %call9.i, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %handle21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %handle, ptr %handle21, align 16
  %oclass23 = getelementptr inbounds %struct.anon.7, ptr %call9.i, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %oclass23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %oclass, ptr %oclass23, align 4
  %data25 = getelementptr inbounds %struct.anon.7, ptr %call9.i, i32 1
  %22 = call ptr @memcpy(ptr %data25, ptr %data, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add)
  %cmp.i77 = icmp ugt i32 %add, 23
  br i1 %cmp.i77, label %if.then.i78, label %if.end.nvif_object_ioctl.exit_crit_edge

if.end.nvif_object_ioctl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_object_ioctl.exit

if.then.i78:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %client13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client13, align 4
  %priv = getelementptr inbounds %struct.nvif_object, ptr %object, i32 0, i32 5
  %cmp5.not.i = icmp eq ptr %24, %parent
  %25 = ptrtoint ptr %parent to i32
  %conv8.i = zext i32 %25 to i64
  %conv8.sink.i = select i1 %cmp5.not.i, i64 0, i64 %conv8.i
  %26 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv8.sink.i, ptr %26, align 16
  %owner.i = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 3
  %28 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %owner.i, align 2
  %driver.i = getelementptr inbounds %struct.nvif_client, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver.i, align 8
  %ioctl.i = getelementptr inbounds %struct.nvif_driver, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioctl.i, align 4
  %priv.i = getelementptr inbounds %struct.nvif_object, ptr %24, i32 0, i32 5
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 4
  %call.i = tail call i32 %32(ptr noundef %34, ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef %priv) #4
  br label %nvif_object_ioctl.exit

nvif_object_ioctl.exit:                           ; preds = %if.then.i78, %if.end.nvif_object_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i78 ], [ -38, %if.end.nvif_object_ioctl.exit_crit_edge ]
  %35 = call ptr @memcpy(ptr %data, ptr %data25, i32 %size)
  tail call void @kfree(ptr noundef nonnull %call9.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.then32, label %if.then38

if.then32:                                        ; preds = %nvif_object_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %client13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client13, align 4
  %38 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %client, align 4
  br label %cleanup

if.then38:                                        ; preds = %nvif_object_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_dtor(ptr noundef %object)
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.then32, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then8 ], [ %retval.0.i, %if.then38 ], [ 0, %if.then32 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/object.c", i32 272, i32 31}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
