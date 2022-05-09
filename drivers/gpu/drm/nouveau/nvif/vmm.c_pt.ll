; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/vmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/vmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_vmm_unmap_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_vmm_map_v0 = type { i8, [7 x i8], i64, i64, i64, i64, [0 x i8] }
%struct.nvif_vmm_put_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.nvif_vmm_get_v0 = type { i8, i8, i8, i8, i8, [3 x i8], i64, i64 }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_vmm_page_v0 = type { i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.nvif_vmm_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.anon.0 = type { i8, i8 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/nouveau/nvif/vmm.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nvifVmm\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 68, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [38 x i8] c"../drivers/gpu/drm/nouveau/nvif/vmm.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 133, i32 53 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_unmap(ptr noundef %vmm, i64 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvif_vmm_unmap_v0, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.nvif_vmm_unmap_v0, ptr %.compoundliteral, i32 0, i32 2
  %0 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %.compoundliteral, align 8
  %1 = ptrtoint ptr %addr1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %addr, ptr %addr1, align 8
  %call = call i32 @nvif_object_mthd(ptr noundef %vmm, i32 noundef 4, ptr noundef nonnull %.compoundliteral, i32 noundef 16) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_map(ptr noundef %vmm, i64 noundef %addr, i64 noundef %size, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %mem, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %stack = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stack) #4
  %0 = call ptr @memset(ptr %stack, i32 255, i32 48)
  %add = add i32 %argc, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %add)
  %cmp = icmp ugt i32 %add, 48
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
  %addr4 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %args.0, i32 0, i32 2
  %2 = ptrtoint ptr %addr4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %addr, ptr %addr4, align 8
  %size5 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %args.0, i32 0, i32 3
  %3 = ptrtoint ptr %size5 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %size, ptr %size5, align 8
  %4 = ptrtoint ptr %mem to i32
  %conv = zext i32 %4 to i64
  %memory = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %args.0, i32 0, i32 4
  %5 = ptrtoint ptr %memory to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %memory, align 8
  %offset6 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %args.0, i32 0, i32 5
  %6 = ptrtoint ptr %offset6 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %offset, ptr %offset6, align 8
  %data = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %args.0, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %data, ptr %argv, i32 %argc)
  %call10 = call i32 @nvif_object_mthd(ptr noundef %vmm, i32 noundef 3, ptr noundef nonnull %args.0, i32 noundef %add) #4
  %cmp12.not = icmp eq ptr %args.0, %stack
  br i1 %cmp12.not, label %if.end3.cleanup_crit_edge, label %if.then14

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %args.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end3.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.cleanup_crit_edge ], [ %call10, %if.then14 ], [ %call10, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stack) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_vmm_put(ptr noundef %vmm, ptr nocapture noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvif_vmm_put_v0, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nvif_vma, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.nvif_vmm_put_v0, ptr %.compoundliteral, i32 0, i32 2
  %2 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %.compoundliteral, align 8
  %3 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %vma, align 8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %addr, align 8
  %call = call i32 @nvif_object_mthd(ptr noundef %vmm, i32 noundef 2, ptr noundef nonnull %.compoundliteral, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end, !prof !13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %size, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_get(ptr noundef %vmm, i32 noundef %type, i1 noundef zeroext %sparse, i8 noundef zeroext %page, i8 noundef zeroext %align, i64 noundef %size, ptr nocapture noundef writeonly %vma) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nvif_vmm_get_v0, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %sparse to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #4
  %0 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %args, i32 0, i32 2
  %1 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %args, i32 0, i32 3
  %2 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %args, i32 0, i32 4
  %3 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %args, i32 0, i32 6
  %4 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %args, i32 0, i32 7
  %size1 = getelementptr inbounds %struct.nvif_vma, ptr %vma, i32 0, i32 1
  %5 = call ptr @memset(ptr %args, i32 255, i32 24)
  %6 = ptrtoint ptr %size1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %size1, align 8
  %7 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %args, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %0, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %page, ptr %1, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %align, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %size, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %12 = icmp ult i32 %type, 3
  br i1 %12, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %13 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %args, i32 0, i32 1
  %switch.idx.cast = trunc i32 %type to i8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %switch.idx.cast, ptr %13, align 1
  %call = call i32 @nvif_object_mthd(ptr noundef %vmm, i32 noundef 1, ptr noundef nonnull %args, i32 noundef 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then27, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %4, align 8
  %17 = ptrtoint ptr %vma to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %vma, align 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %3, align 8
  %20 = ptrtoint ptr %size1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %size1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then27 ], [ %call, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_vmm_dtor(ptr noundef %vmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.nvif_vmm, ptr %vmm, i32 0, i32 3
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 8
  tail call void @kfree(ptr noundef %1) #4
  tail call void @nvif_object_dtor(ptr noundef %vmm) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_vmm_ctor(ptr noundef %mmu, ptr noundef %name, i32 noundef %oclass, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %vmm) local_unnamed_addr #0 align 64 {
entry:
  %args25 = alloca %struct.nvif_vmm_page_v0, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %argc, 24
  %client = getelementptr inbounds %struct.nvif_object, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %client, align 4
  %page = getelementptr inbounds %struct.nvif_vmm, ptr %vmm, i32 0, i32 3
  %1 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %page, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup75

if.end:                                           ; preds = %entry
  %frombool = zext i1 %managed to i8
  %2 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call9.i, align 128
  %managed2 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %call9.i, i32 0, i32 2
  %3 = ptrtoint ptr %managed2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %managed2, align 2
  %addr3 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %call9.i, i32 0, i32 4
  %4 = ptrtoint ptr %addr3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %addr, ptr %addr3, align 8
  %size4 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %call9.i, i32 0, i32 5
  %5 = ptrtoint ptr %size4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %size, ptr %size4, align 16
  %data = getelementptr inbounds %struct.nvif_vmm_v0, ptr %call9.i, i32 0, i32 6
  %6 = call ptr @memcpy(ptr %data, ptr %argv, i32 %argc)
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.1, ptr %name
  %call8 = tail call i32 @nvif_object_ctor(ptr noundef %mmu, ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef %oclass, ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef %vmm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.if.then73_crit_edge

if.end.if.then73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then73

if.end11:                                         ; preds = %if.end
  %7 = ptrtoint ptr %addr3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %addr3, align 8
  %start = getelementptr inbounds %struct.nvif_vmm, ptr %vmm, i32 0, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %start, align 8
  %10 = ptrtoint ptr %size4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size4, align 16
  %limit = getelementptr inbounds %struct.nvif_vmm, ptr %vmm, i32 0, i32 2
  %12 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %limit, align 8
  %page_nr = getelementptr inbounds %struct.nvif_vmm_v0, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %page_nr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %page_nr, align 1
  %conv14 = zext i8 %14 to i32
  %page_nr15 = getelementptr inbounds %struct.nvif_vmm, ptr %vmm, i32 0, i32 4
  %15 = ptrtoint ptr %page_nr15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv14, ptr %page_nr15, align 4
  %16 = shl nuw nsw i32 %conv14, 1
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #7
  %17 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i, ptr %page, align 8
  %tobool20.not = icmp eq ptr %call8.i, null
  br i1 %tobool20.not, label %if.end11.if.then73_crit_edge, label %for.cond.preheader

if.end11.if.then73_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then73

for.cond.preheader:                               ; preds = %if.end11
  %18 = ptrtoint ptr %page_nr15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_nr15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp137 = icmp sgt i32 %19, 0
  br i1 %cmp137, label %for.body.lr.ph, label %for.cond.preheader.if.end74_crit_edge

for.cond.preheader.if.end74_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %20 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %args25, i32 0, i32 1
  %21 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %args25, i32 0, i32 2
  %22 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %args25, i32 0, i32 3
  %23 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %args25, i32 0, i32 4
  %24 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %args25, i32 0, i32 5
  %25 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %args25, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args25) #4
  %26 = ptrtoint ptr %args25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %args25, align 1
  %conv27 = trunc i32 %i.0138 to i8
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv27, ptr %20, align 1
  %28 = call ptr @memset(ptr %21, i32 0, i32 6)
  %call29 = call i32 @nvif_object_mthd(ptr noundef %vmm, i32 noundef 0, ptr noundef nonnull %args25, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args25) #4
  br label %if.then73

for.inc:                                          ; preds = %for.body
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %21, align 1
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page, align 8
  %arrayidx = getelementptr %struct.anon.0, ptr %32, i32 %i.0138
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %arrayidx, align 1
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %page, align 8
  %sparse40 = getelementptr %struct.anon.0, ptr %37, i32 %i.0138, i32 1
  %38 = ptrtoint ptr %sparse40 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %sparse40, align 1
  %bf.shl = select i1 %tobool37.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %sparse40, align 1
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool43.not = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %page, align 8
  %vram46 = getelementptr %struct.anon.0, ptr %42, i32 %i.0138, i32 1
  %43 = ptrtoint ptr %vram46 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load47 = load i8, ptr %vram46, align 1
  %bf.shl48 = select i1 %tobool43.not, i8 0, i8 64
  %bf.clear49 = and i8 %bf.load47, -65
  %bf.set50 = or i8 %bf.clear49, %bf.shl48
  store i8 %bf.set50, ptr %vram46, align 1
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool53.not = icmp eq i8 %45, 0
  %46 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %page, align 8
  %host56 = getelementptr %struct.anon.0, ptr %47, i32 %i.0138, i32 1
  %48 = ptrtoint ptr %host56 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load57 = load i8, ptr %host56, align 1
  %bf.shl58 = select i1 %tobool53.not, i8 0, i8 32
  %bf.clear59 = and i8 %bf.load57, -33
  %bf.set60 = or i8 %bf.clear59, %bf.shl58
  store i8 %bf.set60, ptr %host56, align 1
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool63.not = icmp eq i8 %50, 0
  %51 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %page, align 8
  %comp66 = getelementptr %struct.anon.0, ptr %52, i32 %i.0138, i32 1
  %53 = ptrtoint ptr %comp66 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load67 = load i8, ptr %comp66, align 1
  %bf.shl68 = select i1 %tobool63.not, i8 0, i8 16
  %bf.clear69 = and i8 %bf.load67, -17
  %bf.set70 = or i8 %bf.clear69, %bf.shl68
  store i8 %bf.set70, ptr %comp66, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args25) #4
  %inc = add nuw nsw i32 %i.0138, 1
  %54 = ptrtoint ptr %page_nr15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_nr15, align 4
  %cmp = icmp slt i32 %inc, %55
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end74_crit_edge

for.inc.if.end74_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.then73:                                        ; preds = %cleanup, %if.end11.if.then73_crit_edge, %if.end.if.then73_crit_edge
  %ret.1.ph = phi i32 [ -12, %if.end11.if.then73_crit_edge ], [ %call29, %cleanup ], [ %call8, %if.end.if.then73_crit_edge ]
  %56 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page, align 8
  call void @kfree(ptr noundef %57) #4
  call void @nvif_object_dtor(ptr noundef %vmm) #4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.inc.if.end74_crit_edge, %for.cond.preheader.if.end74_crit_edge
  %ret.1135 = phi i32 [ %ret.1.ph, %if.then73 ], [ 0, %for.cond.preheader.if.end74_crit_edge ], [ 0, %for.inc.if.end74_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #4
  br label %cleanup75

cleanup75:                                        ; preds = %if.end74, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ %ret.1135, %if.end74 ], [ -12, %entry.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/vmm.c", i32 68, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvif/vmm.c", i32 133, i32 53}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
