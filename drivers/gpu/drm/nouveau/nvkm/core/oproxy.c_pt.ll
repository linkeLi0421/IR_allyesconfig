; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/oproxy.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/oproxy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nvkm_oproxy_func = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_oproxy_dtor, ptr @nvkm_oproxy_init, ptr @nvkm_oproxy_fini, ptr @nvkm_oproxy_mthd, ptr @nvkm_oproxy_ntfy, ptr @nvkm_oproxy_map, ptr @nvkm_oproxy_unmap, ptr @nvkm_oproxy_rd08, ptr @nvkm_oproxy_rd16, ptr @nvkm_oproxy_rd32, ptr @nvkm_oproxy_wr08, ptr @nvkm_oproxy_wr16, ptr @nvkm_oproxy_wr32, ptr @nvkm_oproxy_bind, ptr @nvkm_oproxy_sclass }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"nvkm_oproxy_func\00", align 1
@___asan_gen_.2 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/oproxy.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 175, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nvkm_oproxy_func], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_oproxy_func to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_oproxy_ctor(ptr noundef %func, ptr noundef %oclass, ptr noundef %oproxy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nvkm_oproxy, ptr %oproxy, i32 0, i32 1
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_oproxy_func, ptr noundef %oclass, ptr noundef %base) #3
  %0 = ptrtoint ptr %oproxy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %oproxy, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_oproxy_new_(ptr noundef %func, ptr noundef %oclass, ptr nocapture noundef writeonly %poproxy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #6
  %1 = ptrtoint ptr %poproxy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %poproxy, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %base.i = getelementptr inbounds %struct.nvkm_oproxy, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_oproxy_func, ptr noundef %oclass, ptr noundef %base.i) #3
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_oproxy_dtor(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %add.ptr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %object4 = getelementptr i8, ptr %object, i32 72
  tail call void @nvkm_object_del(ptr noundef %object4) #3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %arrayidx7 = getelementptr [2 x ptr], ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(ptr noundef %add.ptr) #3
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_init(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %init = getelementptr inbounds %struct.nvkm_oproxy_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %add.ptr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %object7 = getelementptr i8, ptr %object, i32 72
  %4 = ptrtoint ptr %object7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %object7, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %init9 = getelementptr inbounds %struct.nvkm_object_func, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %init9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init9, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end6.if.end20_crit_edge, label %if.then11

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then11:                                        ; preds = %if.end6
  %call16 = tail call i32 %9(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then11.if.end20_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end20:                                         ; preds = %if.then11.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %arrayidx23 = getelementptr %struct.nvkm_oproxy_func, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %if.end20.if.end33_crit_edge, label %if.then25

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then25:                                        ; preds = %if.end20
  %call29 = tail call i32 %13(ptr noundef %add.ptr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then25.if.end33_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.end33:                                         ; preds = %if.then25.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then25.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call, %if.then.cleanup_crit_edge ], [ %call16, %if.then11.cleanup_crit_edge ], [ %call29, %if.then25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_fini(ptr noundef %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %fini = getelementptr inbounds %struct.nvkm_oproxy_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %add.ptr, i1 noundef zeroext %suspend) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp ne i32 %call, 0
  %4 = and i1 %tobool5.not, %suspend
  br i1 %4, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %object9 = getelementptr i8, ptr %object, i32 72
  %5 = ptrtoint ptr %object9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %object9, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %fini11 = getelementptr inbounds %struct.nvkm_object_func, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %fini11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fini11, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end8.if.end25_crit_edge, label %if.then13

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then13:                                        ; preds = %if.end8
  %call19 = tail call i32 %10(ptr noundef %6, i1 noundef zeroext %suspend) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp ne i32 %call19, 0
  %11 = and i1 %tobool20.not, %suspend
  br i1 %11, label %if.then13.cleanup_crit_edge, label %if.then13.if.end25_crit_edge

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.then13.if.end25_crit_edge, %if.end8.if.end25_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %arrayidx28 = getelementptr %struct.nvkm_oproxy_func, ptr %13, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %if.end25.if.end41_crit_edge, label %if.then30

if.end25.if.end41_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then30:                                        ; preds = %if.end25
  %call35 = tail call i32 %15(ptr noundef %add.ptr, i1 noundef zeroext %suspend) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp ne i32 %call35, 0
  %16 = and i1 %tobool36.not, %suspend
  br i1 %16, label %if.then30.cleanup_crit_edge, label %if.then30.if.end41_crit_edge

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end41:                                         ; preds = %if.then30.if.end41_crit_edge, %if.end25.if.end41_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then30.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call, %if.then.cleanup_crit_edge ], [ %call19, %if.then13.cleanup_crit_edge ], [ %call35, %if.then30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_mthd(ptr noundef %1, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_ntfy(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %pevent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_ntfy(ptr noundef %1, i32 noundef %mthd, ptr noundef %pevent) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_map(ptr nocapture noundef readonly %object, ptr noundef %argv, i32 noundef %argc, ptr noundef %type, ptr noundef %addr, ptr noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_map(ptr noundef %1, ptr noundef %argv, i32 noundef %argc, ptr noundef %type, ptr noundef %addr, ptr noundef %size) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_unmap(ptr nocapture noundef readonly %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_unmap(ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_rd08(ptr nocapture noundef readonly %object, i64 noundef %addr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_rd08(ptr noundef %1, i64 noundef %addr, ptr noundef %data) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_rd16(ptr nocapture noundef readonly %object, i64 noundef %addr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_rd16(ptr noundef %1, i64 noundef %addr, ptr noundef %data) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_rd32(ptr nocapture noundef readonly %object, i64 noundef %addr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_rd32(ptr noundef %1, i64 noundef %addr, ptr noundef %data) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_wr08(ptr nocapture noundef readonly %object, i64 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_wr08(ptr noundef %1, i64 noundef %addr, i8 noundef zeroext %data) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_wr16(ptr nocapture noundef readonly %object, i64 noundef %addr, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_wr16(ptr noundef %1, i64 noundef %addr, i16 noundef zeroext %data) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_wr32(ptr nocapture noundef readonly %object, i64 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_wr32(ptr noundef %1, i64 noundef %addr, i32 noundef %data) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %call = tail call i32 @nvkm_object_bind(ptr noundef %1, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_sclass(ptr nocapture noundef readonly %object, i32 noundef %index, ptr noundef %oclass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 8
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent, align 4
  %3 = load ptr, ptr %object1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %sclass = getelementptr inbounds %struct.nvkm_object_func, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sclass, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %index, ptr noundef %oclass) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_ntfy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd08(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd16(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd32(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr08(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr16(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nvkm_oproxy_func, !1, !"nvkm_oproxy_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/oproxy.c", i32 175, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
