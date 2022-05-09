; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/notify.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/notify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.3 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_put_v0 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvif_ioctl_ntfy_put_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.4 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_get_v0 }
%struct.nvif_ioctl_ntfy_get_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_notify_rep_v0 = type { i8, [6 x i8], i8, i64, [0 x i8] }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.1 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_del_v0 }
%struct.nvif_ioctl_ntfy_del_v0 = type { i8, i8, [6 x i8] }
%struct.anon.2 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_new_v0, %struct.nvif_notify_req_v0 }
%struct.nvif_ioctl_ntfy_new_v0 = type { i8, i8, i8, [5 x i8], [0 x i8] }
%struct.nvif_notify_req_v0 = type { i8, i8, [5 x i8], i8, i64, [0 x i8] }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/nouveau/nvif/notify.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvifNotify\00", [21 x i8] zeroinitializer }, align 32
@nvif_notify_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&notify->work)\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 121, i32 7 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 177, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nvif/notify.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 184, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @nvif_notify_ctor.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvif_notify_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_put(ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.anon.3, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true, !prof !16

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 3
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args.i) #5
  %4 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.3, ptr %args.i, i32 0, i32 1, i32 1
  %6 = call ptr @memset(ptr %args.i, i32 0, i32 32)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %4, align 1
  %index3.i = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 2
  %8 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3.i, align 4
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %5, align 1
  %putcnt.i = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %putcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr %putcnt.i, i32 1, i32 3, i32 1) #5
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %putcnt.i, ptr %putcnt.i, i32 1, ptr elementtype(i32) %putcnt.i) #5, !srcloc !18
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.nvif_notify_put_.exit_crit_edge

if.then.nvif_notify_put_.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_notify_put_.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 @nvif_object_ioctl(ptr noundef %3, ptr noundef nonnull %args.i, i32 noundef 32, ptr noundef null) #5
  br label %nvif_notify_put_.exit

nvif_notify_put_.exit:                            ; preds = %if.end.i, %if.then.nvif_notify_put_.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ 0, %if.then.nvif_notify_put_.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args.i) #5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %nvif_notify_put_.exit.return_crit_edge, label %if.then8

nvif_notify_put_.exit.return_crit_edge:           ; preds = %nvif_notify_put_.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then8:                                         ; preds = %nvif_notify_put_.exit
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 9
  %call9 = call zeroext i1 @flush_work(ptr noundef %work) #5
  br label %return

return:                                           ; preds = %if.then8, %nvif_notify_put_.exit.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.then8 ], [ %retval.0.i, %nvif_notify_put_.exit.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_get(ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.anon.4, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true, !prof !16

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args.i) #5
  %4 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.4, ptr %args.i, i32 0, i32 1, i32 1
  %6 = call ptr @memset(ptr %args.i, i32 0, i32 32)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 11, ptr %4, align 1
  %index3.i = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 2
  %8 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3.i, align 4
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %5, align 1
  %putcnt.i = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %putcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %putcnt.i, i32 1, i32 3, i32 1) #5
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %putcnt.i, ptr %putcnt.i, i32 1, ptr elementtype(i32) %putcnt.i) #5, !srcloc !21
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.nvif_notify_get_.exit_crit_edge

if.then.nvif_notify_get_.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_notify_get_.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 @nvif_object_ioctl(ptr noundef %3, ptr noundef nonnull %args.i, i32 noundef 32, ptr noundef null) #5
  br label %nvif_notify_get_.exit

nvif_notify_get_.exit:                            ; preds = %if.end.i, %if.then.nvif_notify_get_.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ 0, %if.then.nvif_notify_get_.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args.i) #5
  br label %return

return:                                           ; preds = %nvif_notify_get_.exit, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nvif_notify_get_.exit ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_notify(ptr nocapture noundef readonly %header, i32 noundef %length, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.anon.4, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %length)
  %cmp = icmp eq i32 %length, 16
  br i1 %cmp, label %land.lhs.true, label %entry.do.end46_crit_edge

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %header, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.do.end46_crit_edge

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

if.then:                                          ; preds = %land.lhs.true
  %route = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %header, i32 0, i32 2
  %2 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %route, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end27, label %do.end, !prof !23

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #5
  br label %cleanup109

if.end27:                                         ; preds = %if.then
  %token = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %header, i32 0, i32 3
  %4 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %token, align 8
  %conv26 = trunc i64 %5 to i32
  %6 = inttoptr i32 %conv26 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv26)
  %cmp29 = icmp eq i32 %conv26, 0
  br i1 %cmp29, label %if.end27.do.end46_crit_edge, label %if.then61.critedge, !prof !16

if.end27.do.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

do.end46:                                         ; preds = %if.end27.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %entry.do.end46_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef null) #5
  br label %cleanup109

if.then61.critedge:                               ; preds = %if.end27
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %client62 = getelementptr inbounds %struct.nvif_object, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %client62 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client62, align 4
  %size64 = getelementptr inbounds %struct.nvif_notify, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %size64 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %size)
  %cmp65.not = icmp eq i32 %12, %size
  br i1 %cmp65.not, label %if.then97.critedge, label %do.end82, !prof !23

do.end82:                                         ; preds = %if.then61.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #5
  br label %cleanup109

if.then97.critedge:                               ; preds = %if.then61.critedge
  %putcnt = getelementptr inbounds %struct.nvif_notify, ptr %6, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %putcnt, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %putcnt, i32 1, i32 3, i32 1) #5
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %putcnt, ptr %putcnt, i32 1, ptr elementtype(i32) %putcnt) #5, !srcloc !24
  %flags = getelementptr inbounds %struct.nvif_notify, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool98.not = icmp eq i32 %16, 0
  %data103 = getelementptr inbounds %struct.nvif_notify, ptr %6, i32 0, i32 7
  br i1 %tobool98.not, label %if.end102, label %cleanup

if.end102:                                        ; preds = %if.then97.critedge
  %17 = ptrtoint ptr %data103 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %data103, align 4
  %driver = getelementptr inbounds %struct.nvif_client, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 8
  %keep = getelementptr inbounds %struct.nvif_driver, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %keep to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %keep, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool104.not = icmp eq i8 %21, 0
  %func.i = getelementptr inbounds %struct.nvif_notify, ptr %6, i32 0, i32 6
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func.i, align 4
  %call.i = tail call i32 %23(ptr noundef nonnull %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end102.if.then.i_crit_edge, label %lor.lhs.false.i

if.end102.if.then.i_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end102
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.nvif_notify_func.exit_crit_edge

lor.lhs.false.i.nvif_notify_func.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_notify_func.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end102.if.then.i_crit_edge
  br i1 %tobool104.not, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %putcnt, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %putcnt, i32 1, i32 3, i32 1) #5
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %putcnt, ptr %putcnt, i32 1, ptr elementtype(i32) %putcnt) #5, !srcloc !26
  br label %nvif_notify_func.exit

if.else.i:                                        ; preds = %if.then.i
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args.i.i) #5
  %27 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.anon.4, ptr %args.i.i, i32 0, i32 1, i32 1
  %29 = call ptr @memset(ptr %args.i.i, i32 0, i32 32)
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 11, ptr %27, align 1
  %index3.i.i = getelementptr inbounds %struct.nvif_notify, ptr %6, i32 0, i32 2
  %31 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index3.i.i, align 4
  %conv.i.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i.i, ptr %28, align 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %putcnt, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %putcnt, i32 1, i32 3, i32 1) #5
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %putcnt, ptr %putcnt, i32 1, ptr elementtype(i32) %putcnt) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.else.i.nvif_notify_get_.exit.i_crit_edge

if.else.i.nvif_notify_get_.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_notify_get_.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = call i32 @nvif_object_ioctl(ptr noundef %26, ptr noundef nonnull %args.i.i, i32 noundef 32, ptr noundef null) #5
  br label %nvif_notify_get_.exit.i

nvif_notify_get_.exit.i:                          ; preds = %if.end.i.i, %if.else.i.nvif_notify_get_.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args.i.i) #5
  br label %nvif_notify_func.exit

nvif_notify_func.exit:                            ; preds = %nvif_notify_get_.exit.i, %if.then3.i, %lor.lhs.false.i.nvif_notify_func.exit_crit_edge
  %35 = ptrtoint ptr %data103 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %data103, align 4
  br label %cleanup109

cleanup:                                          ; preds = %if.then97.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %data103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data103, align 4
  %38 = call ptr @memcpy(ptr %37, ptr %data, i32 %size)
  %work = getelementptr inbounds %struct.nvif_notify, ptr %6, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i128 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #5
  br label %cleanup109

cleanup109:                                       ; preds = %cleanup, %nvif_notify_func.exit, %do.end82, %do.end46, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ 0, %cleanup ], [ 0, %do.end46 ], [ 0, %do.end82 ], [ %call.i, %nvif_notify_func.exit ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_dtor(ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.anon.1, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args) #5
  %2 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.1, ptr %args, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %args, i32 0, i32 32)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %2, align 1
  %index3 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 2
  %6 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index3, align 4
  %conv = trunc i32 %7 to i8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %3, align 1
  %call = tail call i32 @nvif_notify_put(ptr noundef %notify)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 @nvif_object_ioctl(ptr noundef nonnull %1, ptr noundef nonnull %args, i32 noundef 32, ptr noundef null) #5
  %9 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %notify, align 4
  %data = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  call void @kfree(ptr noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_ctor(ptr noundef %object, ptr noundef %name, ptr noundef %func, i1 noundef zeroext %work, i8 noundef zeroext %event, ptr nocapture noundef readonly %data, i32 noundef %size, i32 noundef %reply, ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.anon.1, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %object, ptr %notify, align 4
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str.1, ptr %name
  %name2 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 1
  %1 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select, ptr %name2, align 4
  %flags = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %putcnt = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %putcnt, i32 noundef 4) #5
  %3 = ptrtoint ptr %putcnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %putcnt, align 4
  %func3 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 6
  %4 = ptrtoint ptr %func3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %func3, align 4
  %data4 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 7
  %5 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data4, align 4
  %size5 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 8
  %6 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %reply, ptr %size5, align 4
  br i1 %work, label %do.body, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body:                                          ; preds = %entry
  %work7 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work7, i32 noundef 0) #5
  %7 = ptrtoint ptr %work7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work7, align 4
  %lockdep_map = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvif_notify_ctor.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry12 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 9, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry12, ptr %prev.i, align 4
  %func14 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %func14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvif_notify_work, ptr %func14, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #5
  %11 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size5, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #8
  %13 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %data4, align 4
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %do.body.if.then45_crit_edge, label %do.body.if.end21_crit_edge

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body.if.then45_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

if.end21:                                         ; preds = %do.body.if.end21_crit_edge, %entry.if.end21_crit_edge
  %add = add i32 %size, 48
  %call9.i108 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #8
  %tobool23.not = icmp eq ptr %call9.i108, null
  br i1 %tobool23.not, label %if.end21.if.then45_crit_edge, label %done

if.end21.if.then45_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

done:                                             ; preds = %if.end21
  %14 = ptrtoint ptr %call9.i108 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %call9.i108, align 128
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i108, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %type, align 1
  %ntfy = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 0, i32 1
  %16 = ptrtoint ptr %ntfy to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ntfy, align 8
  %event29 = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %event29 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %event, ptr %event29, align 1
  %req = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 0, i32 2
  %18 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %req, align 32
  %19 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size5, align 4
  %conv = trunc i32 %20 to i8
  %reply33 = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %reply33 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %reply33, align 1
  %route = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %route, align 1
  %23 = ptrtoint ptr %notify to i32
  %conv35 = zext i32 %23 to i64
  %token = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv35, ptr %token, align 8
  %data38 = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 1
  %25 = call ptr @memcpy(ptr %data38, ptr %data, i32 %size)
  %call40 = tail call i32 @nvif_object_ioctl(ptr noundef %object, ptr noundef nonnull %call9.i108, i32 noundef %add, ptr noundef null) #5
  %index = getelementptr inbounds %struct.anon.2, ptr %call9.i108, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index, align 2
  %conv42 = zext i8 %27 to i32
  %index43 = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 2
  %28 = ptrtoint ptr %index43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv42, ptr %index43, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool44.not = icmp eq i32 %call40, 0
  br i1 %tobool44.not, label %done.if.end47_crit_edge, label %done.if.then45_crit_edge

done.if.then45_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

done.if.end47_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then45:                                        ; preds = %done.if.then45_crit_edge, %if.end21.if.then45_crit_edge, %do.body.if.then45_crit_edge
  %ret.0122 = phi i32 [ %call40, %done.if.then45_crit_edge ], [ -12, %if.end21.if.then45_crit_edge ], [ -12, %do.body.if.then45_crit_edge ]
  %29 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %notify, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args.i) #5
  %31 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.anon.1, ptr %args.i, i32 0, i32 1, i32 1
  %33 = call ptr @memset(ptr %args.i, i32 0, i32 32)
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 10, ptr %31, align 1
  %index3.i = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 2
  %35 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index3.i, align 4
  %conv.i = trunc i32 %36 to i8
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %32, align 1
  %call.i = tail call i32 @nvif_notify_put(ptr noundef %notify) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i112 = icmp slt i32 %call.i, 0
  %tobool.not.i = icmp eq ptr %30, null
  %or.cond.i = select i1 %cmp.i112, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.then45.nvif_notify_dtor.exit_crit_edge, label %if.then.i113

if.then45.nvif_notify_dtor.exit_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_notify_dtor.exit

if.then.i113:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 @nvif_object_ioctl(ptr noundef nonnull %30, ptr noundef nonnull %args.i, i32 noundef 32, ptr noundef null) #5
  %38 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %notify, align 4
  %39 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data4, align 4
  call void @kfree(ptr noundef %40) #5
  br label %nvif_notify_dtor.exit

nvif_notify_dtor.exit:                            ; preds = %if.then.i113, %if.then45.nvif_notify_dtor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args.i) #5
  br label %if.end47

if.end47:                                         ; preds = %nvif_notify_dtor.exit, %done.if.end47_crit_edge
  %ret.0123 = phi i32 [ %ret.0122, %nvif_notify_dtor.exit ], [ 0, %done.if.end47_crit_edge ]
  ret i32 %ret.0123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvif_notify_work(ptr noundef %work) #0 align 64 {
entry:
  %args.i.i = alloca %struct.anon.4, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %func.i = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func.i, align 4
  %call.i = tail call i32 %1(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %flags.i = getelementptr i8, ptr %work, i32 -24
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.nvif_notify_func.exit_crit_edge

lor.lhs.false.i.nvif_notify_func.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_notify_func.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args.i.i) #5
  %4 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %args.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.4, ptr %args.i.i, i32 0, i32 1, i32 1
  %6 = call ptr @memset(ptr %args.i.i, i32 0, i32 32)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 11, ptr %4, align 1
  %index3.i.i = getelementptr i8, ptr %work, i32 -28
  %8 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3.i.i, align 4
  %conv.i.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i.i, ptr %5, align 1
  %putcnt.i.i = getelementptr i8, ptr %work, i32 -20
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %putcnt.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %putcnt.i.i, i32 1, i32 3, i32 1) #5
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %putcnt.i.i, ptr %putcnt.i.i, i32 1, ptr elementtype(i32) %putcnt.i.i) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.nvif_notify_get_.exit.i_crit_edge

if.then.i.nvif_notify_get_.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_notify_get_.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = call i32 @nvif_object_ioctl(ptr noundef %3, ptr noundef nonnull %args.i.i, i32 noundef 32, ptr noundef null) #5
  br label %nvif_notify_get_.exit.i

nvif_notify_get_.exit.i:                          ; preds = %if.end.i.i, %if.then.i.nvif_notify_get_.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args.i.i) #5
  br label %nvif_notify_func.exit

nvif_notify_func.exit:                            ; preds = %nvif_notify_get_.exit.i, %lor.lhs.false.i.nvif_notify_func.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/notify.c", i32 121, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvif/notify.c", i32 177, i32 31}
!4 = !{ptr @nvif_notify_ctor.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvif/notify.c", i32 184, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148678151}
!18 = !{i64 2148593436, i64 2148593468, i64 2148593497, i64 2148593531, i64 2148593562, i64 2148593585}
!19 = !{i64 2148678380}
!20 = !{i64 2148681192}
!21 = !{i64 2148595901, i64 2148595933, i64 2148595962, i64 2148595996, i64 2148596027, i64 2148596050}
!22 = !{i64 2148681421}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2148592716, i64 2148592742, i64 2148592771, i64 2148592805, i64 2148592836, i64 2148592859}
!25 = !{i8 0, i8 2}
!26 = !{i64 2148595181, i64 2148595207, i64 2148595236, i64 2148595270, i64 2148595301, i64 2148595324}
