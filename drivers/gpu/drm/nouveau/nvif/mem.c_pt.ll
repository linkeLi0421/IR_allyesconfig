; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/mem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_mem_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.anon.1 = type { i8, i8 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nvifMem\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [38 x i8] c"../drivers/gpu/drm/nouveau/nvif/mem.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 72, i32 53 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_mem_ctor_map(ptr noundef %mmu, ptr noundef %name, i8 noundef zeroext %type, i64 noundef %size, ptr noundef %mem) local_unnamed_addr #0 align 64 {
entry:
  %stack.i.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mem1 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 6
  %0 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem1, align 8
  %2 = or i8 %type, 32
  %client.i = getelementptr inbounds %struct.nvif_object, ptr %mem, i32 0, i32 1
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %client.i, align 4
  %type_nr.i = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 3
  %type2.i = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 8
  %tobool12.not.i.i = icmp eq ptr %name, null
  %spec.select.i.i = select i1 %tobool12.not.i.i, ptr @.str, ptr %name
  %type21.i.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 1
  %page23.i.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 2
  %addr24.i.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 3
  %size26.i.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 4
  %type7.i.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %stack.i.i, i32 0, i32 1
  %page8.i.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %stack.i.i, i32 0, i32 2
  %size9.i.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %stack.i.i, i32 0, i32 4
  %addr.i.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %stack.i.i, i32 0, i32 5
  %4 = getelementptr inbounds i8, ptr %stack.i.i, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry
  %i.019.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %ret.018.i = phi i32 [ -22, %entry ], [ %ret.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %5 = ptrtoint ptr %type_nr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type_nr.i, align 2
  %conv.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.019.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %i.019.i, %conv.i
  br i1 %cmp.i, label %for.body.i, label %land.rhs.i.if.end6_crit_edge

land.rhs.i.if.end6_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

for.body.i:                                       ; preds = %land.rhs.i
  %7 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type2.i, align 8
  %arrayidx.i = getelementptr %struct.anon.1, ptr %8, i32 %i.019.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %and17.i = and i8 %10, %2
  call void @__sanitizer_cov_trace_cmp1(i8 %and17.i, i8 %2)
  %cmp7.i = icmp eq i8 %and17.i, %2
  br i1 %cmp7.i, label %if.end.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack.i.i) #4
  %11 = call ptr @memset(ptr %4, i32 255, i32 125)
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %client.i, align 4
  %13 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %stack.i.i, align 8
  %conv.i.i = trunc i32 %i.019.i to i8
  %14 = ptrtoint ptr %type7.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i.i, ptr %type7.i.i, align 1
  %15 = ptrtoint ptr %page8.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %page8.i.i, align 2
  %16 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %size, ptr %size9.i.i, align 8
  %call15.i.i = call i32 @nvif_object_ctor(ptr noundef %mmu, ptr noundef nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %stack.i.i, i32 noundef 24, ptr noundef %mem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end.i.i.if.end27.i.i_crit_edge

if.end.i.i.if.end27.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i.i

if.then18.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type2.i, align 8
  %arrayidx.i.i = getelementptr %struct.anon.1, ptr %18, i32 %i.019.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %21 = ptrtoint ptr %type21.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %type21.i.i, align 8
  %22 = ptrtoint ptr %page8.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %page8.i.i, align 2
  %24 = ptrtoint ptr %page23.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %page23.i.i, align 1
  %25 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr.i.i, align 8
  %27 = ptrtoint ptr %addr24.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %addr24.i.i, align 8
  %28 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size9.i.i, align 8
  %30 = ptrtoint ptr %size26.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %size26.i.i, align 8
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then18.i.i, %if.end.i.i.if.end27.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack.i.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end27.i.i, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %call15.i.i, %if.end27.i.i ], [ %ret.018.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %tobool.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool.not.i, label %if.then, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

if.then:                                          ; preds = %for.inc.i
  %call4 = call i32 @nvif_object_map(ptr noundef %mem, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @nvif_object_dtor(ptr noundef %mem) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %land.rhs.i.if.end6_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then5 ], [ 0, %if.then.if.end6_crit_edge ], [ %ret.018.i, %land.rhs.i.if.end6_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_mem_ctor(ptr noundef %mmu, ptr noundef %name, i32 noundef %oclass, i8 noundef zeroext %type, i8 noundef zeroext %page, i64 noundef %size, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %mem) local_unnamed_addr #0 align 64 {
entry:
  %stack.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvif_object, ptr %mem, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %client, align 4
  %type_nr = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 3
  %type2 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 8
  %add.i = add i32 %argc, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp1.i = icmp ugt i32 %add.i, 128
  %tobool12.not.i = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool12.not.i, ptr @.str, ptr %name
  %type21.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 1
  %page23.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 2
  %addr24.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 3
  %size26.i = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %ret.018 = phi i32 [ -22, %entry ], [ %ret.1, %for.inc.land.rhs_crit_edge ]
  %1 = ptrtoint ptr %type_nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type_nr, align 2
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.019, i32 %conv)
  %cmp = icmp ult i32 %i.019, %conv
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %3 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type2, align 8
  %arrayidx = getelementptr %struct.anon.1, ptr %4, i32 %i.019
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %and17 = and i8 %6, %type
  call void @__sanitizer_cov_trace_cmp1(i8 %and17, i8 %type)
  %cmp7 = icmp eq i8 %and17, %type
  br i1 %cmp7, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack.i) #4
  %7 = call ptr @memset(ptr %stack.i, i32 255, i32 128)
  %8 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %client, align 4
  br i1 %cmp1.i, label %if.end8.i.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.end8.i.i:                                      ; preds = %if.end.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.nvif_mem_ctor_type.exit_crit_edge, label %if.end8.i.i.if.end6.i_crit_edge

if.end8.i.i.if.end6.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.end8.i.i.nvif_mem_ctor_type.exit_crit_edge:    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_mem_ctor_type.exit

if.end6.i:                                        ; preds = %if.end8.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %args.0.i = phi ptr [ %call9.i.i, %if.end8.i.i.if.end6.i_crit_edge ], [ %stack.i, %if.end.i.if.end6.i_crit_edge ]
  %9 = ptrtoint ptr %args.0.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %args.0.i, align 8
  %conv.i = trunc i32 %i.019 to i8
  %type7.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %type7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %type7.i, align 1
  %page8.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %page8.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %page, ptr %page8.i, align 2
  %size9.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %size9.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %size, ptr %size9.i, align 8
  %data.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0.i, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %data.i, ptr %argv, i32 %argc)
  %call15.i = call i32 @nvif_object_ctor(ptr noundef %mmu, ptr noundef nonnull %spec.select.i, i32 noundef 0, i32 noundef %oclass, ptr noundef nonnull %args.0.i, i32 noundef %add.i, ptr noundef %mem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then18.i, label %if.end6.i.if.end27.i_crit_edge

if.end6.i.if.end27.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

if.then18.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type2, align 8
  %arrayidx.i = getelementptr %struct.anon.1, ptr %15, i32 %i.019
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %18 = ptrtoint ptr %type21.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %type21.i, align 8
  %19 = ptrtoint ptr %page8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %page8.i, align 2
  %21 = ptrtoint ptr %page23.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %page23.i, align 1
  %addr.i = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0.i, i32 0, i32 5
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr.i, align 8
  %24 = ptrtoint ptr %addr24.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %addr24.i, align 8
  %25 = ptrtoint ptr %size9.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %size9.i, align 8
  %27 = ptrtoint ptr %size26.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %size26.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then18.i, %if.end6.i.if.end27.i_crit_edge
  %cmp29.not.i = icmp eq ptr %args.0.i, %stack.i
  br i1 %cmp29.not.i, label %if.end27.i.nvif_mem_ctor_type.exit_crit_edge, label %if.then31.i

if.end27.i.nvif_mem_ctor_type.exit_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvif_mem_ctor_type.exit

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %args.0.i) #4
  br label %nvif_mem_ctor_type.exit

nvif_mem_ctor_type.exit:                          ; preds = %if.then31.i, %if.end27.i.nvif_mem_ctor_type.exit_crit_edge, %if.end8.i.i.nvif_mem_ctor_type.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.end8.i.i.nvif_mem_ctor_type.exit_crit_edge ], [ %call15.i, %if.then31.i ], [ %call15.i, %if.end27.i.nvif_mem_ctor_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack.i) #4
  br label %for.inc

for.inc:                                          ; preds = %nvif_mem_ctor_type.exit, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %nvif_mem_ctor_type.exit ], [ %ret.018, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.019, 1
  %tobool.not = icmp eq i32 %ret.1, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ %ret.018, %land.rhs.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_mem_dtor(ptr noundef %mem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvif_object_dtor(ptr noundef %mem) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_mem_ctor_type(ptr noundef %mmu, ptr noundef %name, i32 noundef %oclass, i32 noundef %type, i8 noundef zeroext %page, i64 noundef %size, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %mem) local_unnamed_addr #0 align 64 {
entry:
  %stack = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack) #4
  %0 = call ptr @memset(ptr %stack, i32 255, i32 128)
  %client = getelementptr inbounds %struct.nvif_object, ptr %mem, i32 0, i32 1
  %1 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp slt i32 %type, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %argc, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp1 = icmp ugt i32 %add, 128
  br i1 %cmp1, label %if.end8.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end6_crit_edge

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %args.0 = phi ptr [ %call9.i, %if.end8.i.if.end6_crit_edge ], [ %stack, %if.end.if.end6_crit_edge ]
  %2 = ptrtoint ptr %args.0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %args.0, align 8
  %conv = trunc i32 %type to i8
  %type7 = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0, i32 0, i32 1
  %3 = ptrtoint ptr %type7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %type7, align 1
  %page8 = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0, i32 0, i32 2
  %4 = ptrtoint ptr %page8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %page, ptr %page8, align 2
  %size9 = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0, i32 0, i32 4
  %5 = ptrtoint ptr %size9 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %size, ptr %size9, align 8
  %data = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0, i32 0, i32 6
  %6 = call ptr @memcpy(ptr %data, ptr %argv, i32 %argc)
  %tobool12.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool12.not, ptr @.str, ptr %name
  %call15 = call i32 @nvif_object_ctor(ptr noundef %mmu, ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef %oclass, ptr noundef nonnull %args.0, i32 noundef %add, ptr noundef %mem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end6.if.end27_crit_edge

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %type19 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 8
  %7 = ptrtoint ptr %type19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type19, align 8
  %arrayidx = getelementptr %struct.anon.1, ptr %8, i32 %type
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %type21 = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 1
  %11 = ptrtoint ptr %type21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %type21, align 8
  %12 = ptrtoint ptr %page8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %page8, align 2
  %page23 = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 2
  %14 = ptrtoint ptr %page23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %page23, align 1
  %addr = getelementptr inbounds %struct.nvif_mem_v0, ptr %args.0, i32 0, i32 5
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr, align 8
  %addr24 = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 3
  %17 = ptrtoint ptr %addr24 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %addr24, align 8
  %18 = ptrtoint ptr %size9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size9, align 8
  %size26 = getelementptr inbounds %struct.nvif_mem, ptr %mem, i32 0, i32 4
  %20 = ptrtoint ptr %size26 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %size26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %if.end6.if.end27_crit_edge
  %cmp29.not = icmp eq ptr %args.0, %stack
  br i1 %cmp29.not, label %if.end27.cleanup_crit_edge, label %if.then31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %args.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end27.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call15, %if.then31 ], [ %call15, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/mem.c", i32 72, i32 53}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
